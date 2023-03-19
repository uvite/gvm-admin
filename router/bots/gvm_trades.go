package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmTradesRouter struct {
}

// InitGvmTradesRouter 初始化 GvmTrades 路由信息
func (s *GvmTradesRouter) InitGvmTradesRouter(Router *gin.RouterGroup) {
	gvmTradesRouter := Router.Group("gvmTrades").Use(middleware.OperationRecord())
	gvmTradesRouterWithoutRecord := Router.Group("gvmTrades")
	var gvmTradesApi = v1.ApiGroupApp.BotsApiGroup.GvmTradesApi
	{
		gvmTradesRouter.POST("createGvmTrades", gvmTradesApi.CreateGvmTrades)   // 新建GvmTrades
		gvmTradesRouter.DELETE("deleteGvmTrades", gvmTradesApi.DeleteGvmTrades) // 删除GvmTrades
		gvmTradesRouter.DELETE("deleteGvmTradesByIds", gvmTradesApi.DeleteGvmTradesByIds) // 批量删除GvmTrades
		gvmTradesRouter.PUT("updateGvmTrades", gvmTradesApi.UpdateGvmTrades)    // 更新GvmTrades
	}
	{
		gvmTradesRouterWithoutRecord.GET("findGvmTrades", gvmTradesApi.FindGvmTrades)        // 根据ID获取GvmTrades
		gvmTradesRouterWithoutRecord.GET("getGvmTradesList", gvmTradesApi.GetGvmTradesList)  // 获取GvmTrades列表
	}
}
