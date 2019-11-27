package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"regexp"
	"runtime"
	"strconv"
	"strings"
	"time"

	xlsx "github.com/excelize"
	// "core/util"
	// charset "golang.org/x/text/encoding/simplifiedchinese"
)

var (
	confMap map[string]interface{}

	sigCount int
	chSig    = make(chan bool, 1024)

	maxRoutine int
	numCpu     int

	regInt     *regexp.Regexp
	regFloat   *regexp.Regexp
	regIntArr  *regexp.Regexp
	regIntArr2 *regexp.Regexp
)

type fnWorker func(srcPath string)

func init() {
	loadConf(&confMap, "config.json")

	fmt.Println("inPath:", confMap["inPath"].(string))
	fmt.Println("outPath:", confMap["outPath"].(string))
	fmt.Println("inExt:", confMap["inExt"].(string))
	fmt.Println("outExt:", confMap["outExt"].(string))

	regInt, _ = regexp.Compile(`^-?\d+$`)
	regFloat, _ = regexp.Compile(`^-?\d+\.\d+$`)
	regIntArr, _ = regexp.Compile("^[0-9]+(:[0-9]+)+$")                          // 一维数组
	regIntArr2, _ = regexp.Compile("^[0-9]+(:[0-9]+)+;([0-9]+(:[0-9]+)+[;]?)*$") // 二维数组
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
	fmt.Println("usage:", confMap["detail"].(string))

	numCpu = runtime.NumCPU()
	runtime.GOMAXPROCS(numCpu)

	startTm := time.Now().UnixNano() / 1e6

	if confMap["inExt"].(string) == ".txt" && confMap["outExt"].(string) == ".xlsx" {
		listFile(convTxt2Xlsx)
	} else if confMap["inExt"].(string) == ".txt" && confMap["outExt"].(string) == ".lua" {
		listFile(convTxt2Lua)
	} else if confMap["inExt"].(string) == ".xlsx" && confMap["outExt"].(string) == ".txt" {
		listFile(convXlsx2Txt)
	} else if confMap["inExt"].(string) == ".xlsx" && confMap["outExt"].(string) == ".lua" {
		listFile(convXlsx2Lua)
	}

	for i := 0; i < sigCount; i++ {
		<-chSig
	}
	endTm := time.Now().UnixNano() / 1e6
	fmt.Printf("使用cup核心:%d,最大协程数:%d\n", numCpu, maxRoutine)
	fmt.Printf("遍历完%s目录的所有%s文件，共计:%d 耗时:%dms\n",
		confMap["inPath"].(string), confMap["inExt"].(string), sigCount, endTm-startTm)
	waitToExit()
}

func waitToExit() {
	fmt.Println()
	fmt.Println("执行完毕，按回车结束。。。")
	var char byte
	fmt.Scanf("%b", &char)
}

func listFile(worker fnWorker) {
	src := confMap["inPath"].(string)
	filepath.Walk(src, func(fullPath string, info os.FileInfo, err error) error {
		if info == nil {
			return err
		}
		if info.IsDir() {
			return nil
		}
		if filepath.Ext(fullPath) == confMap["inExt"].(string) {
			sigCount++
			num := runtime.NumGoroutine()
			if num < numCpu*2 {
				go worker(fullPath)
			} else {
				worker(fullPath)
			}
			num = runtime.NumGoroutine()
			if num > maxRoutine {
				maxRoutine = num
			}
		}
		return nil
	})
}

func fixPathSeparator(dir string) string {
	if runtime.GOOS == "windows" {
		dir = strings.Replace(dir, "/", "\\", -1)
	} else {
		dir = strings.Replace(dir, "\\", "/", -1)
	}
	return dir
}

// 字符串转数字32
func str2Num(str string) int32 {
	i, err := strconv.Atoi(str)
	if err != nil {
		// fmt.Printf("%s convert to int32 err:%s", str, err)
		return 0
	}
	return int32(i)
}
func str2Float(str string) float64 {
	f, err := strconv.ParseFloat(str, 64)
	if err != nil {
		// fmt.Printf("%s convert to float err:%s", str, err)
		return 0
	}
	return f
}

func convTxt2Xlsx(srcFilePath string) {
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

	dist := confMap["outPath"].(string)
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

	firstName := baseName[:len(baseName)-len(confMap["inExt"].(string))]
	firstName = strings.ToLower(firstName)
	fullName := firstName + confMap["outExt"].(string)

	distFullPath := distPath + fullName
	distFile := xlsx.NewFile()

	_txt2XlsxParser(bufR, distFile)

	err = distFile.SaveAs(distFullPath)
	if err != nil {
		fmt.Println("save to dist file err:", distFullPath, err)

		chSig <- false
		return
	}

	fmt.Printf("##成功转换文件[%s]==>[%s]\n", srcFilePath, distFullPath)

	chSig <- true
}

// template format
// line1:comment
// line2:data name
// lineN:data
func _txt2XlsxParser(bufR *bufio.Reader, distF *xlsx.File) {
	line := 0
	axis := "A"
	samples := make([]string, 0, 64)
	for {
		row, err := bufR.ReadString('\n')
		if err != nil {
			if err == io.EOF {
				// fmt.Println("load template EOF:", err)
				break
			}
			fmt.Println("load template read/err:", err)
			return
		}
		line++
		axis = "A" + strconv.Itoa(line)
		row = strings.TrimSpace(row)
		cells := strings.Split(row, "\t")
		// fmt.Println("line:", line, cells)

		data := make([]interface{}, 0, len(cells))
		for idx, cell := range cells {
			if line == 1 && idx == 0 {
				// fmt.Printf("cell:%X %X\n", []byte(cell), "\xEF\xBB\xBF")
				matched, _ := regexp.Match("^\xEF\xBB\xBF", []byte(cell))
				if matched {
					cell = cell[3:]
				}
			}
			if idx == 0 && cell == "" {
				break
			}
			// 取样
			if line > 2 {
				if len(samples) <= idx {
					samples = append(samples, cell)
				}
				if cell != "" && samples[idx] == "" {
					samples[idx] = cell
				}
			}
			// gbk判断与转换都不准确，人工处理吧
			// if len(cell) >= 6 && util.IsGBK([]byte(cell)) {
			// 	utf8Bytes, _ := charset.GBK.NewDecoder().Bytes([]byte(cell))
			// 	cell = string(utf8Bytes)
			// }
			if regInt.MatchString(cell) {
				data = append(data, str2Num(cell))
			} else if regFloat.MatchString(cell) {
				data = append(data, str2Float(cell))
			} else {
				data = append(data, cell)
			}
		}
		if len(data) == len(cells) {
			distF.SetSheetRow("Sheet1", axis, &data)
		}
	}
	dataType := make([]string, 0, 64)
	for _, item := range samples {
		if regInt.MatchString(item) {
			dataType = append(dataType, "int")
		} else if regFloat.MatchString(item) {
			dataType = append(dataType, "float")
		} else {
			dataType = append(dataType, "string")
		}
	}
	distF.InsertRow("Sheet1", 3)
	distF.SetSheetRow("Sheet1", "A3", &dataType)
}

func convTxt2Lua(srcFilePath string) {
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

	dist := confMap["outPath"].(string)
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

	firstName := baseName[:len(baseName)-len(confMap["inExt"].(string))]
	firstName = strings.ToLower(firstName)
	fullName := "__tp" + firstName + confMap["outExt"].(string)

	distFullPath := distPath + fullName
	distFile, err := os.Create(distFullPath)
	if err != nil {
		fmt.Println("create dist file err:", distFile, err)

		chSig <- false
		return
	}
	defer distFile.Close()

	bufW := bufio.NewWriter(distFile)

	bufW.WriteString("local " + firstName + " = {\n")
	_txt2LuaParser(bufR, bufW)
	bufW.WriteString("}\n")
	bufW.WriteString("return " + firstName + "\n")
	bufW.Flush()
	fmt.Printf("##成功转换文件[%s]==>[%s]\n", srcFilePath, distFullPath)

	chSig <- true
}

// template format
// line1:comment
// line2:data name
// lineN:data
func _txt2LuaParser(bufR *bufio.Reader, bufW *bufio.Writer) {
	line := 0
	dataName := make([]string, 0, 64)
	for {
		row, err := bufR.ReadString('\n')
		if err != nil {
			if err == io.EOF {
				break
			}
			fmt.Println("load role template read/err:", err)
			return
		}
		line++
		row = row[:len(row)-2] // "\r\n"
		cells := strings.Split(row, "\t")
		if line == 1 {
			// for _, cell := range cells {
			// 	fmt.Print(cell + "|")
			// }
			// fmt.Println()
		} else if line == 2 {
			for _, cell := range cells {
				dataName = append(dataName, cell)
			}
		} else {
			// var key int32
			for idx, cell := range cells {
				if idx == 0 {
					if cell == "" {
						break
					}
					// key = str2Num(cell)
					// if key == 0 {
					// 	bufW.WriteString(cell + "\n")
					// 	break
					// }
					bufW.WriteString(`[` + cell + `] = {`)
				}
				if dataName[idx] == "" {
					continue
				}
				bufW.WriteString(dataName[idx] + `=`)
				cell = strings.TrimSpace(cell)
				if cell == "" {
					bufW.WriteString(`""`)
				} else if regInt.MatchString(cell) {
					// i := str2Num(cell)
					bufW.WriteString(cell)
				} else if regFloat.MatchString(cell) {
					// f := str2Float(cell)
					bufW.WriteString(cell)
				} else if regIntArr.MatchString(cell) {
					//arrInt := strings.Split(cell, ":")
					arrStr := "{"
					arrStr += strings.Replace(cell, ":", ",", -1)
					arrStr += "}"
					bufW.WriteString(arrStr)
				} else if regIntArr2.MatchString(cell) {
					arr2Str := "{"
					intArr2 := strings.Split(cell, ";")
					for idx, item := range intArr2 {
						if len(item) > 0 {
							if idx > 0 {
								arr2Str += ","
							}
							arr2Str += "{"
							arr2Str += strings.Replace(item, ":", ",", -1)
							arr2Str += "}"
						}
					}
					arr2Str += "}"
					bufW.WriteString(arr2Str)
				} else {
					cell = strings.Replace(cell, `"`, `\"`, -1)
					bufW.WriteString(`"` + cell + `"`)
				}
				if idx < len(cells)-1 {
					bufW.WriteString(`,`)
				} else {
					bufW.WriteString("},\n")
				}
			}
		}
	}
}

func _xlsx2TxtParser(srcFile *xlsx.File, bufW *bufio.Writer) {
	name := srcFile.GetSheetName(1)
	rows, _ := srcFile.GetRows(name)
	for _, row := range rows {
		for idx, cell := range row {
			bufW.WriteString(strings.TrimSpace(cell))

			if idx < len(row)-1 {
				bufW.WriteByte('\t')
			}
		}
		bufW.WriteByte('\n')
	}
}

func convXlsx2Txt(srcFilePath string) {
	baseName := filepath.Base(srcFilePath)
	idx1 := strings.Index(srcFilePath, string(os.PathSeparator))
	idx2 := strings.LastIndex(srcFilePath, string(os.PathSeparator))
	basePath := ""
	if idx1 != idx2 {
		basePath = srcFilePath[idx1+1 : idx2]
	}

	srcFile, err := xlsx.OpenFile(srcFilePath)
	if err != nil {
		fmt.Println("open src file err:", srcFile, err)

		chSig <- false
		return
	}

	dist := confMap["outPath"].(string)
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

	firstName := baseName[:len(baseName)-len(confMap["inExt"].(string))]
	firstName = strings.ToLower(firstName)
	fullName := firstName + confMap["outExt"].(string)

	distFullPath := distPath + fullName
	distFile, err := os.Create(distFullPath)
	if err != nil {
		fmt.Println("create dist file err:", distFile, err)

		chSig <- false
		return
	}
	defer distFile.Close()

	bufW := bufio.NewWriter(distFile)

	_xlsx2TxtParser(srcFile, bufW)

	bufW.Flush()
	fmt.Printf("##成功转换文件[%s]==>[%s]\n", srcFilePath, distFullPath)

	chSig <- true
}

func convXlsx2Lua(fullPath string) {
	//
}
