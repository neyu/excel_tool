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
}
