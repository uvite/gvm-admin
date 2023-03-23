package socketio

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"log"
	"net/http"
)

var wsChan = make(chan WsPayload)

var clients = make(map[WebSocketConnection]string)

// upgradeConnection is the websocket upgrader from gorilla/websockets
var upgradeConnection = websocket.Upgrader{
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,
	CheckOrigin:     func(r *http.Request) bool { return true },
}

// WsEndpoint upgrades connection to websocket
func WsEndpoint(c *gin.Context) {
	ws, err := upgradeConnection.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		log.Println(err)
	}

	log.Println("Client connected to endpoint")

	var response WsJsonResponse
	response.Action = "Connected"
	response.Title = `<em><small>Connected to server</small></em>`

	conn := WebSocketConnection{Conn: ws}
	clients[conn] = ""

	err = ws.WriteJSON(response)
	if err != nil {
		log.Println(err)
	}

	go ListenForWs(&conn)
}

func ListenForWs(conn *WebSocketConnection) {
	defer func() {
		if r := recover(); r != nil {
			log.Println("Error", fmt.Sprintf("%v", r))
		}
	}()

	var payload WsPayload

	for {
		err := conn.ReadJSON(&payload)
		if err != nil {
			// do nothing
			_ = conn.Close()
			//fmt.Println("[socket] err", err)
		} else {
			payload.Conn = *conn
			wsChan <- payload
		}
	}
}

func ListenToWsChannel() {
	var response WsJsonResponse

	for {
		e := <-wsChan

		// response.Action = "Got here"
		response.Title = e.Title
		response.Color = e.Color
		response.Linewidth = e.Linewidth
		response.Sname = e.Sname
		response.Series = e.Series
		// broadcastToAll(response)
		fmt.Printf("listion [1] %+v", response)
		switch e.Action {
		case "init":
			// get a list of all users
			clients[e.Conn] = response.Sname
		//case "left":
		//	_ = clients[response.Sname].Close()
		//	delete(clients, response.Sname)

		case "plot":
			response.Action = "plot"
			SendMessage(response)
		}

	}
}
func SendMessage(response WsJsonResponse) {
	for client, user := range clients {
		fmt.Println(user, response.Sname)
		if user == response.Sname {
			err := client.WriteJSON(response)
			if err != nil {
				log.Println("websocket err")
				_ = client.Close()
				delete(clients, client)
			}
		}
	}
}

//
////func broadcastToAll(response WsJsonResponse) {
//	for client := range clients {
//		err := client.WriteJSON(response)
//		if err != nil {
//			log.Println("websocket err")
//			_ = client.Close()
//			delete(clients, client)
//		}
//	}
////}
