package main

import (
	"core/dict"
	"services/fx/config"

	"fmt"
	"strconv"
	// "strings"
)

var (
	roomIdList = make(map[string]int64)
	userList   []int64
)

func main() {
	config.Init("local")

	tempId := 1
	strId := strconv.Itoa(int(tempId))

	fmt.Println("id:", dict.GetInt(config.TpltRole[strId], "id"))
	fmt.Println("name:", dict.GetString(config.TpltRole[strId], "name"))
	fmt.Println("icon:", dict.GetString(config.TpltRole[strId], "icon"))
	fmt.Println("sex:", dict.GetInt(config.TpltRole[strId], "sex"))

	fmt.Println("coin:", dict.GetInt64(config.GameData, "coin"))
	fmt.Println("diamond:", dict.GetInt64(config.GameData, "diamond"))
	fmt.Println("ticket:", dict.GetUint32(config.GameData, "ticket"))

	roomIdList["yuxj"] = 1125
	fmt.Println("room list1:", roomIdList)
	if roomId, exists := roomIdList["yuxj"]; exists {
		fmt.Println("room id:", roomId)
		delete(roomIdList, "yuxj")
	}
	fmt.Println("room list2:", roomIdList)

	fmt.Println()
	userList = make([]int64, 0, 100)
	fmt.Println("user list len/cap:", len(userList), cap(userList))
	userList = append(userList, 0)
	userList = append(userList, 0)
	userList = append(userList, 0)
	userList = append(userList, 0)
	fmt.Println("user list len/cap:", len(userList), cap(userList))
	fmt.Println("user list:", userList)

	// for idx, userId := range userList {
	// 	if userId == 0 {
	// 		userList = append(userList[:idx], userList[idx+1:]...)
	// 	}
	// }
	for idx := len(userList) - 1; idx >= 0; idx-- {
		if userList[idx] == 0 {
			userList = userList[:idx]
		}
	}
	// userList = append(userList[:0], userList[0+1:]...)
	fmt.Println("user list len/cap:", len(userList), cap(userList))
	fmt.Println("user list:", userList)
}
