package bots

import (
	socketio "github.com/flipped-aurora/gin-vue-admin/server/api/v1/websocket"
	"github.com/gin-gonic/gin"
)

type GwsRouter struct {
}

func (s *GwsRouter) InitGwsRouter(Router *gin.RouterGroup) {
	ws := Router.Group("ws")
	{
		ws.GET("", socketio.WsEndpoint)
	}

}
