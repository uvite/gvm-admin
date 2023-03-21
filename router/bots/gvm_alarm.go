package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type GvmAlarmRouter struct {
}

// InitGvmAlarmRouter 初始化 GvmAlarm 路由信息
func (s *GvmAlarmRouter) InitGvmAlarmRouter(Router *gin.RouterGroup) {
	gvmAlarmRouter := Router.Group("gvmAlarm").Use(middleware.OperationRecord())
	gvmAlarmRouterWithoutRecord := Router.Group("gvmAlarm")
	var gvmAlarmApi = v1.ApiGroupApp.BotsApiGroup.GvmAlarmApi
	{
		gvmAlarmRouter.POST("createGvmAlarm", gvmAlarmApi.CreateGvmAlarm)   // 新建GvmAlarm
		gvmAlarmRouter.DELETE("deleteGvmAlarm", gvmAlarmApi.DeleteGvmAlarm) // 删除GvmAlarm
		gvmAlarmRouter.DELETE("deleteGvmAlarmByIds", gvmAlarmApi.DeleteGvmAlarmByIds) // 批量删除GvmAlarm
		gvmAlarmRouter.PUT("updateGvmAlarm", gvmAlarmApi.UpdateGvmAlarm)    // 更新GvmAlarm
	}
	{
		gvmAlarmRouterWithoutRecord.GET("findGvmAlarm", gvmAlarmApi.FindGvmAlarm)        // 根据ID获取GvmAlarm
		gvmAlarmRouterWithoutRecord.GET("getGvmAlarmList", gvmAlarmApi.GetGvmAlarmList)  // 获取GvmAlarm列表
	}
}
