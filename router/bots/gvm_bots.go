package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmBotsRouter struct {
}

// InitGvmBotsRouter 初始化 GvmBots 路由信息
func (s *GvmBotsRouter) InitGvmBotsRouter(Router *gin.RouterGroup) {
	gvmBotsRouter := Router.Group("gvmBots").Use(middleware.OperationRecord())
	gvmBotsRouterWithoutRecord := Router.Group("gvmBots")
	var gvmBotsApi = v1.ApiGroupApp.BotsApiGroup.GvmBotsApi
	{
		gvmBotsRouter.POST("createGvmBots", gvmBotsApi.CreateGvmBots)             // 新建GvmBots
		gvmBotsRouter.DELETE("deleteGvmBots", gvmBotsApi.DeleteGvmBots)           // 删除GvmBots
		gvmBotsRouter.DELETE("deleteGvmBotsByIds", gvmBotsApi.DeleteGvmBotsByIds) // 批量删除GvmBots
		gvmBotsRouter.PUT("updateGvmBots", gvmBotsApi.UpdateGvmBots)              // 更新GvmBots
	}
	{
		gvmBotsRouterWithoutRecord.GET("findGvmBots", gvmBotsApi.FindGvmBots)                // 根据ID获取GvmBots
		gvmBotsRouterWithoutRecord.GET("getGvmBotsList", gvmBotsApi.GetGvmBotsList)          // 获取GvmBots列表
		gvmBotsRouterWithoutRecord.GET("getGvmBotsAppSecret", gvmBotsApi.GetGvmBotAppSecret) // 获取GvmBots列表
		gvmBotsRouterWithoutRecord.POST("login", gvmBotsApi.GetGvmBotAppLogin)               // 获取GvmBots列表
		gvmBotsRouterWithoutRecord.GET("login", gvmBotsApi.GetGvmBotAppLogin)                // 获取GvmBots列表
	}
}
