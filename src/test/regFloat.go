package main

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

func main() {
	origStr := `"由黑色陨石煅烧后打造而成的超稀有装备，装备上它立刻有想跟人干一架的冲动,包你百战百胜。"`
	fmt.Println(strings.Replace(origStr, `"`, `\"`, -1))

	// var err error
	data := []string{"", "123", "123.456", "789.", ".110", "我是字符串", "123iamnumber"}

	regInt, _ := regexp.Compile(`^[0-9]*$`)
	regFloat, _ := regexp.Compile(`^(\-|\+)?\d*(\.\d*)?$`)

	for _, item := range data {
		if regFloat.MatchString(item) {
			f, _ := strconv.ParseFloat(item, 64)
			fmt.Println("float:", f)
		} else if regInt.MatchString(item) {
			i, _ := strconv.Atoi(item)
			fmt.Println("number:", i)
		} else {
			fmt.Println("string:", item)
		}
	}
	fmt.Println()

	arrData := []string{"1:2", "3:4;", "5:6:7", "8:9:10;", "11:12;13:14", "15:16;17:18;", "19:20:21;22:23:24", "25:26:27;28:29:30;"}
	regIntArr, _ := regexp.Compile(`^[0-9]+(:[0-9]+)+$`)
	regIntArr2, _ := regexp.Compile(`^[0-9]+(:[0-9]+)+;([0-9]+(:[0-9]+)+[;]?)*$`)
	for _, item := range arrData {
		if regIntArr.MatchString(item) {
			arr := strings.Split(item, ":")
			fmt.Println("int arr:", arr)
		} else if regIntArr2.MatchString(item) {
			arr := strings.Split(item, ";")
			for _, av := range arr {
				v := strings.Split(av, ":")
				fmt.Println("int arr2:", v)
			}
		}
		fmt.Println()
	}
}
