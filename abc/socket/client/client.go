package main

import (
	"fmt"
	"github.com/adshao/go-binance/v2"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/bots"
	socketio "github.com/flipped-aurora/gin-vue-admin/server/api/v1/websocket"
	"github.com/gorilla/websocket"
	vite "github.com/uvite/gvm/tart/floats"
)

func main() {
	qvm := bots.New()
	qvm.Init()

	//qvm.Alert("234234")
	data := make(map[string]interface{})

	data["color"] = "1820" //有价格为限价单
	data["name"] = "1888"  //有价格为限价单
	close := &vite.Slice{}
	close.Push(333)

	//qvm.Plot(close, data)

	url := "ws://0.0.0.0:7654/ws"
	c, _, err := websocket.DefaultDialer.Dial(url, nil)
	if err != nil {

	}
	var response socketio.WsJsonResponse
	response.Action = "get_users"
	response.Message = `<em><small>Connected to server</small></em>`
	c.WriteJSON(response)

	wsKlineHandler := func(event *binance.WsKlineEvent) {
		fmt.Println(event)
	}
	errHandler := func(err error) {
		fmt.Println(err)
	}
	doneC, _, err := binance.WsKlineServe("ETHUSDT", "1m", wsKlineHandler, errHandler)
	if err != nil {
		fmt.Println(err)
		return
	}
	<-doneC
}
