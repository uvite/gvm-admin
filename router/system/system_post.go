package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type SystemPostRouter struct {
}

// InitSystemPostRouter 初始化 SystemPost 路由信息
func (s *SystemPostRouter) InitSystemPostRouter(Router *gin.RouterGroup) {
	systemPostRouter := Router.Group("systemPost").Use(middleware.OperationRecord())
	systemPostRouterWithoutRecord := Router.Group("systemPost")
	var systemPostApi = v1.ApiGroupApp.SystemApiGroup.SystemPostApi
	{
		systemPostRouter.POST("createSystemPost", systemPostApi.CreateSystemPost)             // 新建SystemPost
		systemPostRouter.DELETE("deleteSystemPost", systemPostApi.DeleteSystemPost)           // 删除SystemPost
		systemPostRouter.DELETE("deleteSystemPostByIds", systemPostApi.DeleteSystemPostByIds) // 批量删除SystemPost
		systemPostRouter.PUT("updateSystemPost", systemPostApi.UpdateSystemPost)              // 更新SystemPost
		systemPostRouter.PUT("changeStatus", systemPostApi.ChangeStatus)                      // 更新SysDictionaryDetail
		systemPostRouter.PUT("changeSort", systemPostApi.ChangeSort)

	}
	{
		systemPostRouterWithoutRecord.GET("findSystemPost", systemPostApi.FindSystemPost)       // 根据ID获取SystemPost
		systemPostRouterWithoutRecord.GET("getSystemPostList", systemPostApi.GetSystemPostList) // 获取SystemPost列表
	}
}
