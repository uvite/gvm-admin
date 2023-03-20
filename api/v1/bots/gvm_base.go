package bots

import (
	"context"
	"fmt"
	"github.com/dop251/goja"
	"github.com/flipped-aurora/gin-vue-admin/server/gvmbot"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/gin-gonic/gin"
	"github.com/uvite/gvm/engine"
	"os"
	"path/filepath"
)

type GvmBaseApi struct {
}

func (GvmBaseApi *GvmBaseApi) RunVm(c *gin.Context) {
	var options request.GvmBotsLogin
	err := c.ShouldBindJSON(&options)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	file := options.File + ".js"
	pwd, _ := os.Getwd()

	fmt.Printf("%+v", options)

	_cwd := fmt.Sprintf("%s/%s", pwd, "js")
	//_cwd := "/gvm/gvmbot/js"
	file = filepath.Join(_cwd, file)

	if vmBots, err := gvmBotsService.GetGvmBotsLogin(options); err != nil {

		response.FailWithMessage("无权执行", c)
	} else {
		path := vmBots.Path

		envpath := fmt.Sprintf("%s/%s", path, ".env.local")
		configpath := fmt.Sprintf("%s/%s", path, "bbgo.yaml")

		ex := gvmbot.New(envpath, configpath)
		res, err := GvmBaseApi.RunCode(ex, file, options)
		if err != nil {
			response.FailWithMessage(fmt.Sprintf("执行错误:%s", err), c)

		}
		response.OkWithData(res, c)
	}

}

func (GvmBaseApi *GvmBaseApi) RunCode(ex *gvmbot.Exchange, file string, options request.GvmBotsLogin) (goja.Value, error) {
	vm, _ := engine.NewGvm()
	fmt.Println(file)
	err := vm.LoadFile(file)
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	vm.Ctx = ctx
	vm.Init()

	fmt.Println(err)
	//
	//vm.Set("close", s.close)
	//vm.Set("open", s.open)
	//vm.Set("low", s.low)
	//vm.Set("high", s.high)
	//vm.Set("volume", s.volume)
	//vm.Set("symbol", s.Symbol)
	//vm.Set("price", &s.Price)
	//vm.Set("postion", s.Position)
	//vm.Set("plot", Plot)
	//vm.Set("strategy", s)
	//vm.Set("log", log)
	vm.Set("options", options)
	vm.Set("ex", ex)
	value, ok := vm.Vu.RunDefault()
	fmt.Println(ok)
	if ok != nil {
		return nil, ok
	}
	return value, ok

}
