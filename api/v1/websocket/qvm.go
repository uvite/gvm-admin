package socketio

import (
	"flag"
	"fmt"
	"github.com/dannywolfmx/go-tts/tts"

	"github.com/gorilla/websocket"
	log "github.com/sirupsen/logrus"
	vite "github.com/uvite/gvm/tart/floats"
	"github.com/uvite/gvmbot/pkg/strategy/u8"
	"sync"
	"time"
)

type Qvm struct {
	Conn  *websocket.Conn
	Voice *tts.TTS
	Wg    sync.WaitGroup
	Sname string
}
type PlotOptions struct {
	series *vite.Slice
	name   string `json:"name"`

	//value *vite.Slice `json:"value"`
	color string `json:"color"`
}

const lang = "zh"

var addr = flag.String("addr", "localhost:7654", "http service address")

const sampleRate = 27000

func New() *Qvm {

	voice := tts.NewTTS(lang, sampleRate)

	url := "ws://0.0.0.0:7654/ws"
	c, res, err := websocket.DefaultDialer.Dial(url, nil)
	if err != nil {
		log.Fatal("连接失败:", err)
	}
	log.Printf("响应:%s", fmt.Sprint(res))
	//defer c.Close()

	q := &Qvm{
		Voice: voice,
		Sname: "conn",
		Conn:  c,
	}

	return q
}

// 机器人功能 执行文件,需要验证
func (q *Qvm) SetName(name string) {
	q.Sname = name
}

// 机器人功能 执行文件,需要验证
func (q *Qvm) Alert(msg string) {
	q.Voice.Play()
	q.Wg.Add(1)
	go func() {
		time.Sleep(10 * time.Second)
		q.Voice.Next()
		q.Wg.Done()
	}()
	q.Voice.Add(msg)
	q.Wg.Wait()

}
func (q *Qvm) Plot(series *vite.Slice, data map[string]interface{}) {

	params := u8.Keys(data)

	var response WsJsonResponse
	response.Sname = q.Sname
	response.Action = "plot"
	response.Series = series
	for _, k := range params {
		switch k {
		case "color":
			response.Color = data["color"].(string)
		case "title":
			response.Title = data["title"].(string)
		case "linewidth":
			response.Linewidth = data["linewidth"].(int)

		}
	}

	fmt.Printf("[qvm:write]%+v", response)
	q.Conn.WriteJSON(response)

}
