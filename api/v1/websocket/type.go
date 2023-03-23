package socketio

import (
	"github.com/gorilla/websocket"
	vite "github.com/uvite/gvm/tart/floats"
)

type (
	WebSocketConnection struct {
		*websocket.Conn
	}

	// WsJsonResponse defines the response sent back from websocket
	WsJsonResponse struct {
		Sname     string      `json:"sname"`
		Action    string      `json:"action"`
		Series    *vite.Slice `json:"series"`
		Title     string      `json:"title"`
		Color     string      `json:"color"`
		Linewidth int         `json:"linewidth"`
	}

	// WsPayload defines the websocket request from the client
	WsPayload struct {
		WsJsonResponse

		Conn     WebSocketConnection `json:"-"`
	}
)
