package main

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/gvmbot"
	"go.uber.org/zap"
	"os"

	"github.com/flipped-aurora/gin-vue-admin/server/core"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/initialize"
)

//go:generate go env -w GO111MODULE=on
//go:generate go env -w GOPROXY=https://goproxy.cn,direct
//go:generate go mod tidy
//go:generate go mod download

// @title                       Swagger Example API
// @version                     0.0.1
// @description                 This is a sample Server pets
// @securityDefinitions.apikey  ApiKeyAuth
// @in                          header
// @name                        x-token
// @BasePath                    /
func main() {
	global.GVA_VP = core.Viper() // 初始化Viper
	initialize.OtherInit()
	global.GVA_LOG = core.Zap() // 初始化zap日志库
	zap.ReplaceGlobals(global.GVA_LOG)
	global.GVA_DB = initialize.Gorm() // gorm连接数据库
	//dev()
	initialize.Timer()
	initialize.DBList()
	if global.GVA_DB != nil {
		initialize.RegisterTables() // 初始化表
		// 程序结束前关闭数据库链接
		db, _ := global.GVA_DB.DB()
		defer db.Close()
	}
	//dev()
	core.RunWindowsServer()
}

func dev() {
	pwd, _ := os.Getwd()

	filepath := fmt.Sprintf("%s/abc/%s", pwd, ".env.local")
	configpath := fmt.Sprintf("%s/abc/%s", pwd, "bbgo.yaml")

	ex := gvmbot.New(filepath, configpath, "abc")
	a := ex.GetPostions()
	fmt.Println(a)
	//
	//e := ex.GetTrades()
	//fmt.Println(e)

}
