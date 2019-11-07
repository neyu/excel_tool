package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"
	_ "time"

	xlsx "github.com/excelize"
)

var (
	xlsxFiles []string
	lineFeed  string
	confMap   map[string]interface{}

	chSig      = make(chan bool, 256)
	numCpu     int
	maxRoutine int
)

func init() {
	if runtime.GOOS == "windows" {
		lineFeed = "\r\n"
	} else {
		lineFeed = "\n"
	}
	lineFeed = "\n"

	numCpu = runtime.NumCPU()
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
	fmt.Println("usage: excel_tool convert excel to txt.json...format file...")

	loadConf(&confMap, "config.json")

	fmt.Println("input:", confMap["input"].(string))
	fmt.Println("output:", confMap["output"].(string))
	fmt.Println("use_for:", confMap["use_for"].(string))

	readAllXlsxFile()
	// writeXlsx()
	// readXlsx()
	// writeFile()
	// readFile()
	// readFileByLine()

	waitToExit()
}

func waitToExit() {
	fmt.Println()
	fmt.Println("执行完毕，按回车结束。。。")
	var char byte
	fmt.Scanf("%b", &char)
}

func fixPathSeparator(dir string) string {
	if runtime.GOOS == "windows" {
		dir = strings.Replace(dir, "/", "\\", -1)
	} else {
		dir = strings.Replace(dir, "\\", "/", -1)
	}
	return dir
}

func readAllXlsxFile() {
	startTm := time.Now().UnixNano() / 1e6

	xlsxDir := confMap["input"].(string)
	xlsxDir = fixPathSeparator(xlsxDir)
	xlsxFiles = getFilelist(xlsxDir)
	n := len(xlsxFiles)
	for idx, fullPath := range xlsxFiles {
		fmt.Println(idx+1, fullPath)

		num := runtime.NumGoroutine()
		if num < numCpu*2 {
			go convertXlsxToTxt(fullPath)
		} else {
			convertXlsxToTxt(fullPath)
		}
		num = runtime.NumGoroutine()
		if num > maxRoutine {
			maxRoutine = num
		}
	}
	for i := 0; i < n; i++ {
		<-chSig
	}
	// time.Sleep(3 * 1e9)

	overTm := time.Now().UnixNano() / 1e6
	fmt.Printf("使用cup核心:%d,最大协程数:%d\n", numCpu, maxRoutine)
	fmt.Printf("遍历xlsx文件结束! 耗时%dms\n", overTm-startTm)
}

func convertXlsxToTxt(fullPath string) {
	f, err := xlsx.OpenFile(fullPath)
	if err != nil {
		fmt.Println("open file err:", fullPath, err)

		chSig <- false
		return
	}

	baseName := filepath.Base(fullPath)
	idx1 := strings.Index(fullPath, string(os.PathSeparator))
	idx2 := strings.LastIndex(fullPath, string(os.PathSeparator))
	basePath := ""
	if idx1 != idx2 {
		basePath = fullPath[idx1+1 : idx2]
	}

	distPath := confMap["output"].(string) + string(os.PathSeparator)
	if basePath != "" {
		distPath += basePath + string(os.PathSeparator)
	}
	distPath = fixPathSeparator(distPath)
	err = os.MkdirAll(distPath, os.ModeDir)
	if err != nil {
		fmt.Println("create dist file path err:", distPath, err)

		chSig <- false
		return
	}

	firstName := baseName[:len(baseName)-len(".xlsx")]
	txtFileName := firstName + ".txt"
	txtFullPath := distPath + txtFileName
	txtFile, err := os.Create(txtFullPath)
	if err != nil {
		fmt.Println("create txt file err:", txtFullPath, err)

		chSig <- false
		return
	}
	defer txtFile.Close()

	bufW := bufio.NewWriter(txtFile)

	name := f.GetSheetName(1)
	rows, err := f.GetRows(name)
	for _, row := range rows {
		for _, cell := range row {
			bufW.WriteString(cell)
			bufW.WriteByte('\t')
		}
		bufW.Write([]byte(lineFeed))
	}
	bufW.Flush()
	fmt.Printf("  导出成功: [%s]===>[%s]\n", fullPath, txtFullPath)

	chSig <- true
}

func checkErr(err error) {
	if err != nil {
		fmt.Println("err:", err)
	}
}

func getFilelist(dir string) []string {
	var fileList []string
	err := filepath.Walk(dir, func(fullPath string, f os.FileInfo, err error) error {
		if f == nil {
			return err
		}
		if f.IsDir() {
			return nil
		}
		// fmt.Println(fullPath)
		if filepath.Ext(fullPath) == ".xlsx" {
			// fileName := filepath.Base(fullPath)
			// fmt.Println("xlsx file:", fileName[:len(fileName)-len(".xlsx")])
			fileList = append(fileList, fullPath)
		}
		return nil
	})
	if err != nil {
		fmt.Printf("filepath.Walk() %s returned %v\n", dir, err)
	}
	fmt.Println("遍历xlsx文件完成，文件数:", len(fileList))
	return fileList
}

func GetAllFile(pathname string) error {
	rd, err := ioutil.ReadDir(pathname)
	if err != nil {
		fmt.Println("read dir err:", pathname, err)
		return err
	}
	for _, fi := range rd {
		if fi.IsDir() {
			fmt.Printf("[%s]\n", pathname+"/"+fi.Name())
			GetAllFile(pathname + "/" + fi.Name())
		} else {
			fmt.Println(fi.Name())
		}
	}
	return err
}

func listXlsxFiles() {
	// fmt.Println("os env:", os.Environ())
	name, err := os.Hostname()
	if err != nil {
		fmt.Println("host name err:", err)
	} else {
		fmt.Println("os host:", name)
	}

	getFilelist("excel")
	// GetAllFile("excel")
}

func writeXlsx() {
	f := xlsx.NewFile()

	// Create a new sheet.
	index := f.NewSheet("Sheet2")
	fmt.Println("sheet2 index:", index)
	index = f.GetSheetIndex("Sheet1")
	fmt.Println("sheet1 index:", index)
	f.SetSheetName("Sheet1", "测试")

	// Set value of a cell.
	err := f.SetCellValue("Sheet2", "A2", "Hello world.")
	checkErr(err)
	err = f.SetCellValue("测试", "B2", 100)
	checkErr(err)

	// Set active sheet of the workbook.
	f.SetActiveSheet(index)

	// Save xlsx file by the given path.
	err = f.SaveAs("./Book1.xlsx")
	if err != nil {
		fmt.Println(err)
	}
}

func readXlsx() {
	f, err := xlsx.OpenFile("./Book1.xlsx")
	if err != nil {
		fmt.Println(err)
		return
	}

	// Get value from cell by given worksheet name and axis.
	cell, err := f.GetCellValue("Sheet1", "B2")
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(cell)
	// Get all the rows in the Sheet1.
	rows, err := f.GetRows("Sheet1")
	for _, row := range rows {
		for _, colCell := range row {
			fmt.Print(colCell, "\t")
		}
		fmt.Println()
	}
}

var demoFile = "demo.txt"

func readFile() {
	fmt.Println("ready to read file...")
	f, err := os.Open(demoFile)
	if err != nil {
		fmt.Println("open file err:", err)
		return
	}
	defer f.Close()

	// buf := make([]byte, 7)
	var buf []byte
	buf = make([]byte, 1024)

	n, err := f.Read(buf)
	if err != nil && err != io.EOF {
		fmt.Println("read file err:", err)
		return
	}
	fmt.Println("buf:", n, string(buf))
}

func writeFile() {
	f, err := os.Create(demoFile)
	if err != nil {
		fmt.Println("create err:", err)
		return
	}
	defer f.Close()

	var buf string
	for i := 0; i < 5; i++ {
		buf = fmt.Sprintf("i = %d\n", i)

		n, err := f.WriteString(buf)
		if err != nil {
			fmt.Println("write string err:", err)
		}
		fmt.Println("n:", n)
	}
}

func readFileByLine() {
	f, err := os.Open(demoFile)
	if err != nil {
		fmt.Println("open file err:", err)
		return
	}
	defer f.Close()

	r := bufio.NewReader(f)
	ttSize := 0
	for {
		buf, err := r.ReadBytes('\n')
		// buf, isPre, err := r.ReadLine()
		// rune, size, err := r.ReadRune()
		if err != nil {
			if err == io.EOF {
				break
			}
			fmt.Println("err:", err)
		}
		ttSize += len(buf)
		// ttSize += size
		fmt.Println("isPre/buf:", string(buf))
		// fmt.Println("size/rune:", size, string(rune))
	}
	fmt.Println("total size:", ttSize)
}
