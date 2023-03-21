package bots

import (
	"context"
	"fmt"
	"github.com/dop251/goja"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/gvmbot"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/gin-gonic/gin"
	"github.com/uvite/gvm/engine"
	"go.uber.org/zap"
	"os"
	"path/filepath"
)

type GvmBaseApi struct {
}

// 交易数据同步
func (GvmBaseApi *GvmBaseApi) RunSync(c *gin.Context) {
	var options request.GvmBotsLogin
	err := c.ShouldBindJSON(&options)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	if regvmExchange, err := gvmExchangeService.GetGvmExchangeByCode(options.ExchangeCode); err != nil {
		global.GVA_LOG.Error("不存在交易所Api!", zap.Error(err))
		response.FailWithMessage("不存在交易所Api", c)
	} else {
		file := options.File + ".js"
		pwd, _ := os.Getwd()

		fmt.Printf("%+v", options)

		_cwd := fmt.Sprintf("%s/%s", pwd, "js")
		//_cwd := "/gvm/gvmbot/js"
		file = filepath.Join(_cwd, file)

		envpath := fmt.Sprintf("%s/%s", regvmExchange.Path, ".env.local")
		configpath := fmt.Sprintf("%s/%s", regvmExchange.Path, "bbgo.yaml")

		ex := gvmbot.New(envpath, configpath, regvmExchange.Code)
		res, err := GvmBaseApi.RunCode(ex, file, options)
		if err != nil {
			response.FailWithMessage(fmt.Sprintf("执行错误:%s", err), c)

		}
		response.OkWithData(res, c)
	}

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

		ex := gvmbot.New(envpath, configpath, *vmBots.ExchangeId)
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
