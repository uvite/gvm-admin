package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmBalanceRouter struct {
}

// InitGvmBalanceRouter 初始化 GvmBalance 路由信息
func (s *GvmBalanceRouter) InitGvmBalanceRouter(Router *gin.RouterGroup) {
	gvmBalanceRouter := Router.Group("gvmBalance").Use(middleware.OperationRecord())
	gvmBalanceRouterWithoutRecord := Router.Group("gvmBalance")
	botAuth:=Router.Group("gvmBalance").Use(middleware.BotAuth())
	var gvmBalanceApi = v1.ApiGroupApp.BotsApiGroup.GvmBalanceApi
	{
		gvmBalanceRouter.POST("createGvmBalance", gvmBalanceApi.CreateGvmBalance)             // 新建GvmBalance
		gvmBalanceRouter.DELETE("deleteGvmBalance", gvmBalanceApi.DeleteGvmBalance)           // 删除GvmBalance
		gvmBalanceRouter.DELETE("deleteGvmBalanceByIds", gvmBalanceApi.DeleteGvmBalanceByIds) // 批量删除GvmBalance
		gvmBalanceRouter.PUT("updateGvmBalance", gvmBalanceApi.UpdateGvmBalance)              // 更新GvmBalance
	}
	{

		gvmBalanceRouterWithoutRecord.GET("getGvmBalanceList", gvmBalanceApi.GetGvmBalanceList) // 获取GvmBalance列表
	}
	{
		botAuth.GET("getGvmBalance", gvmBalanceApi.GetGvmBalance)
	}
}
