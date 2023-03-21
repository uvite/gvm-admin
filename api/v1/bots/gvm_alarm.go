package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type GvmAlarmApi struct {
}

var gvmAlarmService = service.ServiceGroupApp.BotsServiceGroup.GvmAlarmService


// CreateGvmAlarm 创建GvmAlarm
// @Tags GvmAlarm
// @Summary 创建GvmAlarm
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmAlarm true "创建GvmAlarm"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmAlarm/createGvmAlarm [post]
func (gvmAlarmApi *GvmAlarmApi) CreateGvmAlarm(c *gin.Context) {
	var gvmAlarm bots.GvmAlarm
	err := c.ShouldBindJSON(&gvmAlarm)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmAlarmService.CreateGvmAlarm(gvmAlarm); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmAlarm 删除GvmAlarm
// @Tags GvmAlarm
// @Summary 删除GvmAlarm
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmAlarm true "删除GvmAlarm"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmAlarm/deleteGvmAlarm [delete]
func (gvmAlarmApi *GvmAlarmApi) DeleteGvmAlarm(c *gin.Context) {
	var gvmAlarm bots.GvmAlarm
	err := c.ShouldBindJSON(&gvmAlarm)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmAlarmService.DeleteGvmAlarm(gvmAlarm); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmAlarmByIds 批量删除GvmAlarm
// @Tags GvmAlarm
// @Summary 批量删除GvmAlarm
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmAlarm"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmAlarm/deleteGvmAlarmByIds [delete]
func (gvmAlarmApi *GvmAlarmApi) DeleteGvmAlarmByIds(c *gin.Context) {
	var IDS request.IdsReq
    err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmAlarmService.DeleteGvmAlarmByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmAlarm 更新GvmAlarm
// @Tags GvmAlarm
// @Summary 更新GvmAlarm
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmAlarm true "更新GvmAlarm"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmAlarm/updateGvmAlarm [put]
func (gvmAlarmApi *GvmAlarmApi) UpdateGvmAlarm(c *gin.Context) {
	var gvmAlarm bots.GvmAlarm
	err := c.ShouldBindJSON(&gvmAlarm)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmAlarmService.UpdateGvmAlarm(gvmAlarm); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmAlarm 用id查询GvmAlarm
// @Tags GvmAlarm
// @Summary 用id查询GvmAlarm
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmAlarm true "用id查询GvmAlarm"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmAlarm/findGvmAlarm [get]
func (gvmAlarmApi *GvmAlarmApi) FindGvmAlarm(c *gin.Context) {
	var gvmAlarm bots.GvmAlarm
	err := c.ShouldBindQuery(&gvmAlarm)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmAlarm, err := gvmAlarmService.GetGvmAlarm(gvmAlarm.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmAlarm": regvmAlarm}, c)
	}
}

// GetGvmAlarmList 分页获取GvmAlarm列表
// @Tags GvmAlarm
// @Summary 分页获取GvmAlarm列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmAlarmSearch true "分页获取GvmAlarm列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmAlarm/getGvmAlarmList [get]
func (gvmAlarmApi *GvmAlarmApi) GetGvmAlarmList(c *gin.Context) {
	var pageInfo botsReq.GvmAlarmSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmAlarmService.GetGvmAlarmInfoList(pageInfo); err != nil {
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
