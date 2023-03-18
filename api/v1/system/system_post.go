package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/system"
	systemReq "github.com/flipped-aurora/gin-vue-admin/server/model/system/request"

	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type SystemPostApi struct {
}

var systemPostService = service.ServiceGroupApp.SystemServiceGroup.SystemPostService

// CreateSystemPost 创建SystemPost
// @Tags SystemPost
// @Summary 创建SystemPost
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SystemPost true "创建SystemPost"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /systemPost/createSystemPost [post]
func (systemPostApi *SystemPostApi) CreateSystemPost(c *gin.Context) {
	var systemPost system.SystemPost
	err := c.ShouldBindJSON(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := systemPostService.CreateSystemPost(systemPost); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteSystemPost 删除SystemPost
// @Tags SystemPost
// @Summary 删除SystemPost
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SystemPost true "删除SystemPost"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /systemPost/deleteSystemPost [delete]
func (systemPostApi *SystemPostApi) DeleteSystemPost(c *gin.Context) {
	var systemPost system.SystemPost
	err := c.ShouldBindJSON(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := systemPostService.DeleteSystemPost(systemPost); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteSystemPostByIds 批量删除SystemPost
// @Tags SystemPost
// @Summary 批量删除SystemPost
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除SystemPost"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /systemPost/deleteSystemPostByIds [delete]
func (systemPostApi *SystemPostApi) DeleteSystemPostByIds(c *gin.Context) {
	var IDS request.IdsReq
	err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := systemPostService.DeleteSystemPostByIds(IDS); err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateSystemPost 更新SystemPost
// @Tags SystemPost
// @Summary 更新SystemPost
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body system.SystemPost true "更新SystemPost"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /systemPost/updateSystemPost [put]
func (systemPostApi *SystemPostApi) UpdateSystemPost(c *gin.Context) {
	var systemPost system.SystemPost
	err := c.ShouldBindJSON(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := systemPostService.UpdateSystemPost(systemPost); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindSystemPost 用id查询SystemPost
// @Tags SystemPost
// @Summary 用id查询SystemPost
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query system.SystemPost true "用id查询SystemPost"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /systemPost/findSystemPost [get]
func (systemPostApi *SystemPostApi) FindSystemPost(c *gin.Context) {
	var systemPost system.SystemPost
	err := c.ShouldBindQuery(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if resystemPost, err := systemPostService.GetSystemPost(systemPost.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"resystemPost": resystemPost}, c)
	}
}

// GetSystemPostList 分页获取SystemPost列表
// @Tags SystemPost
// @Summary 分页获取SystemPost列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query systemReq.SystemPostSearch true "分页获取SystemPost列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /systemPost/getSystemPostList [get]
func (systemPostApi *SystemPostApi) GetSystemPostList(c *gin.Context) {
	var pageInfo systemReq.SystemPostSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := systemPostService.GetSystemPostInfoList(pageInfo); err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(response.PageResult{
			List:     list,
			Total:    total,
			Page:     pageInfo.Page,
			PageSize: pageInfo.PageSize,
		}, "获取成功", c)
	}
}

func (systemPostApi *SystemPostApi) ChangeSort(c *gin.Context) {

	var systemPost system.SystemPost
	err := c.ShouldBindJSON(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	err = systemPostService.ChangeSort(system.SystemPost{
		GVA_MODEL: global.GVA_MODEL{
			ID: systemPost.ID,
		},
		Sort: systemPost.Sort,
	})
	if err != nil {
		global.GVA_LOG.Error("设置失败!", zap.Error(err))
		response.FailWithMessage("设置失败", c)
		return
	}
	response.OkWithMessage("设置成功", c)

}

func (systemPostApi *SystemPostApi) ChangeStatus(c *gin.Context) {

	var systemPost system.SystemPost
	err := c.ShouldBindJSON(&systemPost)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	err = systemPostService.ChangeStatus(system.SystemPost{
		GVA_MODEL: global.GVA_MODEL{
			ID: systemPost.ID,
		},
		Status: systemPost.Status,
	})
	if err != nil {
		global.GVA_LOG.Error("设置失败!", zap.Error(err))
		response.FailWithMessage("设置失败", c)
		return
	}
	response.OkWithMessage("设置成功", c)

}
