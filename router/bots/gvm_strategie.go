package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmStrategieRouter struct {
}

// InitGvmStrategieRouter 初始化 GvmStrategie 路由信息
func (s *GvmStrategieRouter) InitGvmStrategieRouter(Router *gin.RouterGroup) {
	gvmStrategieRouter := Router.Group("gvmStrategie").Use(middleware.OperationRecord())
	gvmStrategieRouterWithoutRecord := Router.Group("gvmStrategie")
	var gvmStrategieApi = v1.ApiGroupApp.BotsApiGroup.GvmStrategieApi
	{
		gvmStrategieRouter.POST("createGvmStrategie", gvmStrategieApi.CreateGvmStrategie)             // 新建GvmStrategie
		gvmStrategieRouter.DELETE("deleteGvmStrategie", gvmStrategieApi.DeleteGvmStrategie)           // 删除GvmStrategie
		gvmStrategieRouter.DELETE("deleteGvmStrategieByIds", gvmStrategieApi.DeleteGvmStrategieByIds) // 批量删除GvmStrategie
		gvmStrategieRouter.PUT("updateGvmStrategie", gvmStrategieApi.UpdateGvmStrategie)              // 更新GvmStrategie
	}
	{
		gvmStrategieRouterWithoutRecord.GET("findGvmStrategie", gvmStrategieApi.FindGvmStrategie)       // 根据ID获取GvmStrategie
		gvmStrategieRouterWithoutRecord.GET("getGvmStrategieList", gvmStrategieApi.GetGvmStrategieList) // 获取GvmStrategie列表
		gvmStrategieRouterWithoutRecord.GET("getGvmStrategieAll", gvmStrategieApi.GetGvmStrategieAll)   // 获取GvmStrategie列表
	}
}
