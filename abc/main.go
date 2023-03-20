package main

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/gvmbot"

	"os"
)

func main() {
	pwd, _ := os.Getwd()

	filepath := fmt.Sprintf("%s/%s", pwd, ".env.local")
	configpath := fmt.Sprintf("%s/%s", pwd, "bbgo.yaml")

	ex := gvmbot.New(filepath, configpath)
	//a, e := ex.GetAccount()
	//fmt.Println(a, e)
	//
	e := ex.GetTrades()
	fmt.Println(e)

}
