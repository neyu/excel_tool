package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"
)

var (
	confMap map[string]interface{}

	sigCount int
	chSig    = make(chan bool, 1024)

	maxRoutine int
	numCpu     int
)

func init() {
	loadConf(&confMap, "config.json")

	fmt.Println("input:", confMap["input"].(string))
	fmt.Println("output:", confMap["output"].(string))
	fmt.Println("ext:", confMap["ext"].(string))
}

func loadConf(data *map[string]interface{}, confPath string) {
	rawData, err := ioutil.ReadFile(confPath)
	if err != nil {
		fmt.Println("load conf err:", confPath, err)
		return
	}
	json.Unmarshal(rawData, data)
}

func main() {
	fmt.Println("usage: classify the same category file to dir...")

	numCpu = runtime.NumCPU()
	runtime.GOMAXPROCS(numCpu)

	startTm := time.Now().UnixNano() / 1e6
	listFile()

	for i := 0; i < sigCount; i++ {
		<-chSig
	}
	endTm := time.Now().UnixNano() / 1e6
	fmt.Printf("使用cup核心:%d,最大协程数:%d\n", numCpu, maxRoutine)
	fmt.Printf("遍历完%s目录的所有%s文件，共计:%d 耗时:%dms\n",
		confMap["input"].(string), confMap["ext"].(string), sigCount, endTm-startTm)
	waitToExit()
}

func waitToExit() {
	fmt.Println()
	fmt.Println("执行完毕，按回车结束。。。")
	var char byte
	fmt.Scanf("%b", &char)
}

func listFile() {
	src := confMap["input"].(string)
	filepath.Walk(src, func(fullPath string, info os.FileInfo, err error) error {
		if info == nil {
			return err
		}
		if info.IsDir() {
			return nil
		}
		if filepath.Ext(fullPath) == confMap["ext"].(string) {
			sigCount++
			num := runtime.NumGoroutine()
			if num < numCpu*2 {
				go copySrc2Dist(fullPath)
			} else {
				copySrc2Dist(fullPath)
			}
			num = runtime.NumGoroutine()
			if num > maxRoutine {
				maxRoutine = num
			}
		}
		return nil
	})
}

func copySrc2Dist(srcFilePath string) {
	baseName := filepath.Base(srcFilePath)
	idx1 := strings.Index(srcFilePath, string(os.PathSeparator))
	idx2 := strings.LastIndex(srcFilePath, string(os.PathSeparator))
	basePath := ""
	if idx1 != idx2 {
		basePath = srcFilePath[idx1+1 : idx2]
	}

	srcFile, err := os.Open(srcFilePath)
	if err != nil {
		fmt.Println("open src file err:", srcFile, err)

		chSig <- false
		return
	}
	defer srcFile.Close()
	bufR := bufio.NewReader(srcFile)

	dist := confMap["output"].(string)
	distPath := dist + string(os.PathSeparator)
	if basePath != "" {
		distPath = distPath + basePath + string(os.PathSeparator)
	}
	distPath = fixPathSeparator(distPath)
	if distPath != "" {
		err = os.MkdirAll(distPath, os.ModeDir)
		if err != nil {
			fmt.Println("create dist path err:", distPath, err)

			chSig <- false
			return
		}
	}

	distFullPath := distPath + baseName
	distFile, err := os.Create(distFullPath)
	if err != nil {
		fmt.Println("create dist file err:", distFile, err)

		chSig <- false
		return
	}
	defer distFile.Close()

	bufW := bufio.NewWriter(distFile)
	bufR.WriteTo(bufW)
	bufW.Flush()
	fmt.Printf("##成功移动文件[%s]==>[%s]\n", srcFilePath, distFullPath)

	chSig <- true
}

func fixPathSeparator(dir string) string {
	if runtime.GOOS == "windows" {
		dir = strings.Replace(dir, "/", "\\", -1)
	} else {
		dir = strings.Replace(dir, "\\", "/", -1)
	}
	return dir
}
