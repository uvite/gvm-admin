package middleware

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/service"

	"github.com/gin-gonic/gin"
)

var botService = service.ServiceGroupApp.BotsServiceGroup.GvmBotsService

func BotAuth() gin.HandlerFunc {
	return func(c *gin.Context) {
		// 我们这里jwt鉴权取头部信息 x-token 登录时回返回token信息 这里前端需要把token存储到cookie或者本地localStorage中 不过需要跟后端协商过期时间 可以约定刷新令牌或者重新登录
		botId := c.Request.Header.Get("X-Bot-Id")
		botSecret := c.Request.Header.Get("X-Bot-Secret")
		if botId == ""||botSecret=="" {
			response.FailWithDetailed(gin.H{"reload": true}, "未登录或非法访问", c)
			c.Abort()
			return
		}
		bot,err:=botService.CheckGvmBotsLogin(botId,botSecret)
		if err!=nil{
			response.FailWithDetailed(gin.H{"reload": true}, "机器人校验失败", c)
			c.Abort()
		}
		c.Set("exbots", bot)
		c.Next()
	}
}
