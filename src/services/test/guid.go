package main

import (
	"core/util"
	"fmt"
	"time"
)

func main() {
	guid := util.NewGuid(10)

	fmt.Printf("time:%d %x\n", time.Now().Unix(), time.Now().Unix())
	fmt.Printf("time:%d %x\n", time.Now().UnixNano()/1e6, time.Now().UnixNano()/1e6)
	fmt.Println()

	fmt.Printf("guid:%x \n", guid.NewID())
	fmt.Printf("guid:%x \n", guid.NewID())
	fmt.Printf("guid:%x \n", guid.NewID())
	fmt.Printf("guid:%x \n", guid.NewID())

	fmt.Println()
	// id2 使用起来还是比较靠谱的
	worker, _ := util.NewWorker(1)
	fmt.Printf("wkid:%x \n", worker.GetId())
	fmt.Printf("wkid:%x \n", worker.GetId())
	fmt.Printf("wkid:%x \n", worker.GetId())
	fmt.Printf("wkid:%x \n", worker.GetId())

}
