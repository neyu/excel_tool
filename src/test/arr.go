package main

import (
	"fmt"
)

func main() {
	var arr1 [5]int
	var arr2 = [5]int{1, 3, 5, 7, 9}
	var arr3 = [...]int{2, 4, 6, 8, 10}
	arr4 := [5]int{11, 22, 33, 44, 55}
	arr5 := [...]int{66, 77, 88, 99, 110}
	// arr4 = append(arr4, 999) // error
	fmt.Println(arr1, arr2, arr3, arr4, arr5)

	var slice1 []int
	slice1 = append(slice1, 10)
	fmt.Println(slice1)

	slice2 := make([]int, 0, 5)
	fmt.Println(slice2)

	slice3 := make([]int, 3)
	fmt.Println(slice3)

	var slice4 = []int{}
	slice4 = append(slice4, 20)
	fmt.Println(slice4)

	content := []byte("do do you do do")
	content2 := []byte{'d', 'o', 'd', 'o', 'y', 'o', 'u', 'd', 'o', 'd', 'o'}
	fmt.Println("byte arr:", content)
	fmt.Println("byte arr:", content2)

	hello := "helle world"
	h := hello[4 : len(hello)-len("orld")]
	fmt.Println("h:", h)
}
