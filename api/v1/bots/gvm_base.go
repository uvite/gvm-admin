package bots

import (
	"context"
	"fmt"
	"github.com/adshao/go-binance/v2"
	"github.com/dop251/goja"
	vite "github.com/uvite/gvm/tart/floats"
	"github.com/uvite/gvmbot/pkg/fixedpoint"

	"github.com/uvite/gvmbot/pkg/types"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/gvmbot"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/gin-gonic/gin"

	"github.com/spf13/afero"
	"github.com/uvite/gvm/engine"
	"github.com/uvite/gvm/pkg/lib"
	"os"
	"path/filepath"
)

// /策略现场
type GvmOptions struct {
	Exchange string `json:"exchange" form:"exchange"`
	Symbol   string `json:"symbol" form:"symbol"`
	Interval string `json:"interval" form:"interval"`
	Code     string `json:"code" form:"code"`
}
type GvmBotTest struct {
	GvmOptions
	close  *vite.Slice
	high   *vite.Slice
	low    *vite.Slice
	open   *vite.Slice
	volume *vite.Slice
}
type GvmBaseApi struct {
	Cancel context.CancelFunc
}

// 机器人功能 执行文件,需要验证
func (GvmBaseApi *GvmBaseApi) Run(c *gin.Context) {
	var options request.GvmBotsLogin
	err := c.ShouldBindJSON(&options)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	exbots, ok := c.Get("exbots")
	if !ok {
		response.FailWithMessage("获取失败，不存在交易所Api", c)
	}
	bot := exbots.(bots.GvmBots)
	fmt.Printf("[bot]:%+v", bot)
	file := options.File + ".js"
	pwd, _ := os.Getwd()

	fmt.Printf("%+v", options)

	_cwd := fmt.Sprintf("%s/%s", pwd, "js")
	//_cwd := "/gvm/gvmbot/js"
	file = filepath.Join(_cwd, file)

	envpath := fmt.Sprintf("%s/%s", bot.Path, ".env.local")
	configpath := fmt.Sprintf("%s/%s", bot.Path, "bbgo.yaml")

	fmt.Println("envpath", envpath)
	fmt.Println("configpath", configpath)
	fmt.Println("code", *bot.ExchangeCode)
	ex := gvmbot.New(envpath, configpath, *bot.ExchangeCode)
	res, err := GvmBaseApi.RunCode(ex, file, options)
	if err != nil {
		response.FailWithMessage(fmt.Sprintf("执行错误:%s", err), c)

	}
	response.OkWithData(res, c)

}

// 交易数据同步
func (GvmBaseApi *GvmBaseApi) RunTest(c *gin.Context) {
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

	ex := &gvmbot.Exchange{}
	res, err := GvmBaseApi.RunCode(ex, file, options)
	if err != nil {
		response.FailWithMessage(fmt.Sprintf("执行错误:%s", err), c)

	}
	response.OkWithData(res, c)

}

func (GvmBaseApi *GvmBaseApi) RunCode(ex *gvmbot.Exchange, file string, options request.GvmBotsLogin) (goja.Value, error) {
	vm, _ := engine.NewGvm()
	fmt.Println(file)
	err := vm.LoadFile(file)
	fmt.Println(err)
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	vm.Ctx = ctx
	vm.Init()

	vm.Set("options", options)
	vm.Set("ex", ex)
	value, ok := vm.Vu.RunDefault()
	fmt.Println(ok)
	if ok != nil {
		return nil, ok
	}
	return value, ok

}

func (GvmBaseApi *GvmBaseApi) RunTestCode(c *gin.Context) {
	if GvmBaseApi.Cancel != nil {
		GvmBaseApi.Cancel()
	}
	var options GvmBotTest
	err := c.ShouldBindJSON(&options)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	options.close = &vite.Slice{}
	options.high = &vite.Slice{}
	options.low = &vite.Slice{}
	options.open = &vite.Slice{}
	options.volume = &vite.Slice{}

	gvm, _ := engine.NewGvm()
	pwd, _ := os.Getwd()
	fs := afero.NewOsFs()

	filepath := fmt.Sprintf("%s/js/test/%s", pwd, "file")
	rtOpts := lib.RuntimeOptions{}
	r, err := gvm.GetSimpleRunner(filepath, fmt.Sprintf(`
			import {Nats} from 'k6/x/nats';
			import ta from 'k6/x/ta';
			import {sleep} from 'k6'; 

			%s

			`, options.Code),
		fs, rtOpts)

	//fmt.Println(err)

	gvm.Runner = r
	gvm.Runtime = r.Bundle.Vm

	ctx, cancel := context.WithCancel(context.Background())
	GvmBaseApi.Cancel = cancel
	defer cancel()
	gvm.Ctx = ctx
	gvm.Init()

	gvm.Set("close", options.close)
	gvm.Set("open", options.open)
	gvm.Set("low", options.low)
	gvm.Set("high", options.high)
	gvm.Set("volume", options.volume)
	gvm.Set("symbol", options.Symbol)

	go func() {
		GvmBaseApi.Kline(options, gvm)
	}()
	fmt.Println("[2]")
	gvm.Vu.RunOnce()

}
func (g *GvmBaseApi) Kline(gb GvmBotTest, vm *engine.Gvm) {

	var client = binance.NewClient("", "")

	klines, err := client.NewKlinesService().Symbol(gb.Symbol).
		Interval(gb.Interval).Do(context.Background())
	if err != nil {
		fmt.Println(err)
		return
	}

	for _, event := range klines {
		//fmt.Println(event.CloseTime)
		time1 := types.NewTimeFromUnix(0, event.CloseTime*int64(time.Millisecond))
		isClosed := time.Now().After(time1.Time())
		if isClosed {
			//fmt.Printf("[1]%+v", event)
			gb.close.Push(fixedpoint.MustNewFromString(event.Close).Float64())
			gb.high.Push(fixedpoint.MustNewFromString(event.High).Float64())
			gb.low.Push(fixedpoint.MustNewFromString(event.Low).Float64())
			gb.open.Push(fixedpoint.MustNewFromString(event.Open).Float64())
			gb.volume.Push(fixedpoint.MustNewFromString(event.Volume).Float64())
		}

	}

	wsKlineHandler := func(event *binance.WsKlineEvent) {
		//fmt.Printf("[2]%+v", event)
		if event.Kline.IsFinal {
			//fmt.Printf("[2]%+v", event)

			gb.close.Push(fixedpoint.MustNewFromString(event.Kline.Close).Float64())
			gb.high.Push(fixedpoint.MustNewFromString(event.Kline.High).Float64())
			gb.low.Push(fixedpoint.MustNewFromString(event.Kline.Low).Float64())
			gb.open.Push(fixedpoint.MustNewFromString(event.Kline.Open).Float64())
			gb.volume.Push(fixedpoint.MustNewFromString(event.Kline.Volume).Float64())

		}
	}
	errHandler := func(err error) {
		fmt.Println(err)
	}
	fmt.Println("[3]", 1)

	doneC, _, err := binance.WsKlineServe(gb.Symbol, gb.Interval, wsKlineHandler, errHandler)
	if err != nil {
		fmt.Println(err)
		return
	}
	<-doneC
}
