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
	"math"
)

type GvmStrategieApi struct {
}

var gvmStrategieService = service.ServiceGroupApp.BotsServiceGroup.GvmStrategieService

// CreateGvmStrategie 创建GvmStrategie
// @Tags GvmStrategie
// @Summary 创建GvmStrategie
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmStrategie true "创建GvmStrategie"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmStrategie/createGvmStrategie [post]
func (gvmStrategieApi *GvmStrategieApi) CreateGvmStrategie(c *gin.Context) {
	var gvmStrategie bots.GvmStrategie
	err := c.ShouldBindJSON(&gvmStrategie)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmStrategieService.CreateGvmStrategie(gvmStrategie); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmStrategie 删除GvmStrategie
// @Tags GvmStrategie
// @Summary 删除GvmStrategie
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmStrategie true "删除GvmStrategie"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmStrategie/deleteGvmStrategie [delete]
func (gvmStrategieApi *GvmStrategieApi) DeleteGvmStrategie(c *gin.Context) {
	var gvmStrategie bots.GvmStrategie
	err := c.ShouldBindJSON(&gvmStrategie)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmStrategieService.DeleteGvmStrategie(gvmStrategie); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmStrategieByIds 批量删除GvmStrategie
// @Tags GvmStrategie
// @Summary 批量删除GvmStrategie
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmStrategie"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmStrategie/deleteGvmStrategieByIds [delete]
func (gvmStrategieApi *GvmStrategieApi) DeleteGvmStrategieByIds(c *gin.Context) {
	var IDS request.IdsReq
	err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmStrategieService.DeleteGvmStrategieByIds(IDS); err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmStrategie 更新GvmStrategie
// @Tags GvmStrategie
// @Summary 更新GvmStrategie
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmStrategie true "更新GvmStrategie"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmStrategie/updateGvmStrategie [put]
func (gvmStrategieApi *GvmStrategieApi) UpdateGvmStrategie(c *gin.Context) {
	var gvmStrategie bots.GvmStrategie
	err := c.ShouldBindJSON(&gvmStrategie)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmStrategieService.UpdateGvmStrategie(gvmStrategie); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmStrategie 用id查询GvmStrategie
// @Tags GvmStrategie
// @Summary 用id查询GvmStrategie
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmStrategie true "用id查询GvmStrategie"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmStrategie/findGvmStrategie [get]
func (gvmStrategieApi *GvmStrategieApi) FindGvmStrategie(c *gin.Context) {
	var gvmStrategie bots.GvmStrategie
	err := c.ShouldBindQuery(&gvmStrategie)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmStrategie, err := gvmStrategieService.GetGvmStrategie(gvmStrategie.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmStrategie": regvmStrategie}, c)
	}
}

// GetGvmStrategieList 分页获取GvmStrategie列表
// @Tags GvmStrategie
// @Summary 分页获取GvmStrategie列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmStrategieSearch true "分页获取GvmStrategie列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmStrategie/getGvmStrategieList [get]
func (gvmStrategieApi *GvmStrategieApi) GetGvmStrategieList(c *gin.Context) {
	var pageInfo botsReq.GvmStrategieSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmStrategieService.GetGvmStrategieInfoList(pageInfo); err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		var p = response.ResponsePageInfo{
			Total:       total,
			TotalPage:   int64(math.Ceil(float64(total) / float64(pageInfo.PageSize))),
			CurrentPage: int64(pageInfo.Page),
		}
		response.OkWithDetailed(response.ReturnPage{
			List:             list,
			ResponsePageInfo: p,
		}, "获取成功", c)
	}
}

func (gvmStrategieApi *GvmStrategieApi) GetGvmStrategieAll(c *gin.Context) {
	var pageInfo botsReq.GvmStrategieSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, err := gvmStrategieService.GetGvmStrategieInfoAll(pageInfo); err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {

		response.OkWithDetailed(list, "获取成功", c)
	}
}
