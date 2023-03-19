package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmPositionsRouter struct {
}

// InitGvmPositionsRouter 初始化 GvmPositions 路由信息
func (s *GvmPositionsRouter) InitGvmPositionsRouter(Router *gin.RouterGroup) {
	gvmPositionsRouter := Router.Group("gvmPositions").Use(middleware.OperationRecord())
	gvmPositionsRouterWithoutRecord := Router.Group("gvmPositions")
	var gvmPositionsApi = v1.ApiGroupApp.BotsApiGroup.GvmPositionsApi
	{
		gvmPositionsRouter.POST("createGvmPositions", gvmPositionsApi.CreateGvmPositions)   // 新建GvmPositions
		gvmPositionsRouter.DELETE("deleteGvmPositions", gvmPositionsApi.DeleteGvmPositions) // 删除GvmPositions
		gvmPositionsRouter.DELETE("deleteGvmPositionsByIds", gvmPositionsApi.DeleteGvmPositionsByIds) // 批量删除GvmPositions
		gvmPositionsRouter.PUT("updateGvmPositions", gvmPositionsApi.UpdateGvmPositions)    // 更新GvmPositions
	}
	{
		gvmPositionsRouterWithoutRecord.GET("findGvmPositions", gvmPositionsApi.FindGvmPositions)        // 根据ID获取GvmPositions
		gvmPositionsRouterWithoutRecord.GET("getGvmPositionsList", gvmPositionsApi.GetGvmPositionsList)  // 获取GvmPositions列表
	}
}
