package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmBaseRouter struct {
}

// 
func (s *GvmBaseRouter) InitGvmBaseRouter(Router *gin.RouterGroup) {
	gvmBaseRouter := Router.Group("gmvBase").Use(middleware.OperationRecord())
	gvmBaseAuthRouter := Router.Group("gmvBase").Use(middleware.BotAuth())
	var gvmBotsApi = v1.ApiGroupApp.BotsApiGroup.GvmBaseApi
	{


		gvmBaseRouter.POST("vm/file", gvmBotsApi.RunVm)             // 新建GvmBots
		gvmBaseRouter.POST("vm/sync", gvmBotsApi.RunSync)             // 新建GvmBots

	}
	{
		gvmBaseAuthRouter.POST("gvm/run", gvmBotsApi.Run)
		gvmBaseAuthRouter.POST("gvm/code", gvmBotsApi.RunSync)
	}

}
