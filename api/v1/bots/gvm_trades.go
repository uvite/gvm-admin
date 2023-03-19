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

type GvmTradesApi struct {
}

var gvmTradesService = service.ServiceGroupApp.BotsServiceGroup.GvmTradesService


// CreateGvmTrades 创建GvmTrades
// @Tags GvmTrades
// @Summary 创建GvmTrades
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmTrades true "创建GvmTrades"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmTrades/createGvmTrades [post]
func (gvmTradesApi *GvmTradesApi) CreateGvmTrades(c *gin.Context) {
	var gvmTrades bots.GvmTrades
	err := c.ShouldBindJSON(&gvmTrades)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmTradesService.CreateGvmTrades(gvmTrades); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmTrades 删除GvmTrades
// @Tags GvmTrades
// @Summary 删除GvmTrades
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmTrades true "删除GvmTrades"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmTrades/deleteGvmTrades [delete]
func (gvmTradesApi *GvmTradesApi) DeleteGvmTrades(c *gin.Context) {
	var gvmTrades bots.GvmTrades
	err := c.ShouldBindJSON(&gvmTrades)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmTradesService.DeleteGvmTrades(gvmTrades); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmTradesByIds 批量删除GvmTrades
// @Tags GvmTrades
// @Summary 批量删除GvmTrades
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmTrades"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmTrades/deleteGvmTradesByIds [delete]
func (gvmTradesApi *GvmTradesApi) DeleteGvmTradesByIds(c *gin.Context) {
	var IDS request.IdsReq
    err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmTradesService.DeleteGvmTradesByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmTrades 更新GvmTrades
// @Tags GvmTrades
// @Summary 更新GvmTrades
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmTrades true "更新GvmTrades"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmTrades/updateGvmTrades [put]
func (gvmTradesApi *GvmTradesApi) UpdateGvmTrades(c *gin.Context) {
	var gvmTrades bots.GvmTrades
	err := c.ShouldBindJSON(&gvmTrades)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmTradesService.UpdateGvmTrades(gvmTrades); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmTrades 用id查询GvmTrades
// @Tags GvmTrades
// @Summary 用id查询GvmTrades
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmTrades true "用id查询GvmTrades"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmTrades/findGvmTrades [get]
func (gvmTradesApi *GvmTradesApi) FindGvmTrades(c *gin.Context) {
	var gvmTrades bots.GvmTrades
	err := c.ShouldBindQuery(&gvmTrades)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmTrades, err := gvmTradesService.GetGvmTrades(gvmTrades.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmTrades": regvmTrades}, c)
	}
}

// GetGvmTradesList 分页获取GvmTrades列表
// @Tags GvmTrades
// @Summary 分页获取GvmTrades列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmTradesSearch true "分页获取GvmTrades列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmTrades/getGvmTradesList [get]
func (gvmTradesApi *GvmTradesApi) GetGvmTradesList(c *gin.Context) {
	var pageInfo botsReq.GvmTradesSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmTradesService.GetGvmTradesInfoList(pageInfo); err != nil {
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
