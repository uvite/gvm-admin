package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmExchangeRouter struct {
}

// InitGvmExchangeRouter 初始化 GvmExchange 路由信息
func (s *GvmExchangeRouter) InitGvmExchangeRouter(Router *gin.RouterGroup) {
	gvmExchangeRouter := Router.Group("gvmExchange").Use(middleware.OperationRecord())
	gvmExchangeRouterWithoutRecord := Router.Group("gvmExchange")
	var gvmExchangeApi = v1.ApiGroupApp.BotsApiGroup.GvmExchangeApi
	{
		gvmExchangeRouter.POST("createGvmExchange", gvmExchangeApi.CreateGvmExchange)   // 新建GvmExchange
		gvmExchangeRouter.DELETE("deleteGvmExchange", gvmExchangeApi.DeleteGvmExchange) // 删除GvmExchange
		gvmExchangeRouter.DELETE("deleteGvmExchangeByIds", gvmExchangeApi.DeleteGvmExchangeByIds) // 批量删除GvmExchange
		gvmExchangeRouter.PUT("updateGvmExchange", gvmExchangeApi.UpdateGvmExchange)    // 更新GvmExchange
	}
	{
		gvmExchangeRouterWithoutRecord.GET("findGvmExchange", gvmExchangeApi.FindGvmExchange)        // 根据ID获取GvmExchange
		gvmExchangeRouterWithoutRecord.GET("getGvmExchangeList", gvmExchangeApi.GetGvmExchangeList)  // 获取GvmExchange列表
	}
}
