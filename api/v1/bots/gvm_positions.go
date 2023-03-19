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

type GvmPositionsApi struct {
}

var gvmPositionsService = service.ServiceGroupApp.BotsServiceGroup.GvmPositionsService


// CreateGvmPositions 创建GvmPositions
// @Tags GvmPositions
// @Summary 创建GvmPositions
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmPositions true "创建GvmPositions"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmPositions/createGvmPositions [post]
func (gvmPositionsApi *GvmPositionsApi) CreateGvmPositions(c *gin.Context) {
	var gvmPositions bots.GvmPositions
	err := c.ShouldBindJSON(&gvmPositions)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmPositionsService.CreateGvmPositions(gvmPositions); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmPositions 删除GvmPositions
// @Tags GvmPositions
// @Summary 删除GvmPositions
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmPositions true "删除GvmPositions"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmPositions/deleteGvmPositions [delete]
func (gvmPositionsApi *GvmPositionsApi) DeleteGvmPositions(c *gin.Context) {
	var gvmPositions bots.GvmPositions
	err := c.ShouldBindJSON(&gvmPositions)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmPositionsService.DeleteGvmPositions(gvmPositions); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmPositionsByIds 批量删除GvmPositions
// @Tags GvmPositions
// @Summary 批量删除GvmPositions
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmPositions"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmPositions/deleteGvmPositionsByIds [delete]
func (gvmPositionsApi *GvmPositionsApi) DeleteGvmPositionsByIds(c *gin.Context) {
	var IDS request.IdsReq
    err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmPositionsService.DeleteGvmPositionsByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmPositions 更新GvmPositions
// @Tags GvmPositions
// @Summary 更新GvmPositions
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmPositions true "更新GvmPositions"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmPositions/updateGvmPositions [put]
func (gvmPositionsApi *GvmPositionsApi) UpdateGvmPositions(c *gin.Context) {
	var gvmPositions bots.GvmPositions
	err := c.ShouldBindJSON(&gvmPositions)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmPositionsService.UpdateGvmPositions(gvmPositions); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmPositions 用id查询GvmPositions
// @Tags GvmPositions
// @Summary 用id查询GvmPositions
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmPositions true "用id查询GvmPositions"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmPositions/findGvmPositions [get]
func (gvmPositionsApi *GvmPositionsApi) FindGvmPositions(c *gin.Context) {
	var gvmPositions bots.GvmPositions
	err := c.ShouldBindQuery(&gvmPositions)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmPositions, err := gvmPositionsService.GetGvmPositions(gvmPositions.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmPositions": regvmPositions}, c)
	}
}

// GetGvmPositionsList 分页获取GvmPositions列表
// @Tags GvmPositions
// @Summary 分页获取GvmPositions列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmPositionsSearch true "分页获取GvmPositions列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmPositions/getGvmPositionsList [get]
func (gvmPositionsApi *GvmPositionsApi) GetGvmPositionsList(c *gin.Context) {
	var pageInfo botsReq.GvmPositionsSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmPositionsService.GetGvmPositionsInfoList(pageInfo); err != nil {
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
