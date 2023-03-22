package bots

import (
	"fmt"
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

type GvmBalanceApi struct {
}

var gvmBalanceService = service.ServiceGroupApp.BotsServiceGroup.GvmBalanceService

// CreateGvmBalance 创建GvmBalance
// @Tags GvmBalance
// @Summary 创建GvmBalance
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBalance true "创建GvmBalance"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmBalance/createGvmBalance [post]
func (gvmBalanceApi *GvmBalanceApi) CreateGvmBalance(c *gin.Context) {
	var gvmBalance bots.GvmBalance
	err := c.ShouldBindJSON(&gvmBalance)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBalanceService.CreateGvmBalance(gvmBalance); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmBalance 删除GvmBalance
// @Tags GvmBalance
// @Summary 删除GvmBalance
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBalance true "删除GvmBalance"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmBalance/deleteGvmBalance [delete]
func (gvmBalanceApi *GvmBalanceApi) DeleteGvmBalance(c *gin.Context) {
	var gvmBalance bots.GvmBalance
	err := c.ShouldBindJSON(&gvmBalance)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBalanceService.DeleteGvmBalance(gvmBalance); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmBalanceByIds 批量删除GvmBalance
// @Tags GvmBalance
// @Summary 批量删除GvmBalance
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmBalance"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmBalance/deleteGvmBalanceByIds [delete]
func (gvmBalanceApi *GvmBalanceApi) DeleteGvmBalanceByIds(c *gin.Context) {
	var IDS request.IdsReq
	err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBalanceService.DeleteGvmBalanceByIds(IDS); err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmBalance 更新GvmBalance
// @Tags GvmBalance
// @Summary 更新GvmBalance
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBalance true "更新GvmBalance"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmBalance/updateGvmBalance [put]
func (gvmBalanceApi *GvmBalanceApi) UpdateGvmBalance(c *gin.Context) {
	var gvmBalance bots.GvmBalance
	err := c.ShouldBindJSON(&gvmBalance)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBalanceService.UpdateGvmBalance(gvmBalance); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmBalance 用id查询GvmBalance
// @Tags GvmBalance
// @Summary 用id查询GvmBalance
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmBalance true "用id查询GvmBalance"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmBalance/findGvmBalance [get]
func (gvmBalanceApi *GvmBalanceApi) FindGvmBalance(c *gin.Context) {
	var gvmBalance bots.GvmBalance
	err := c.ShouldBindQuery(&gvmBalance)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmBalance, err := gvmBalanceService.GetGvmBalance(gvmBalance.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmBalance": regvmBalance}, c)
	}
}

// GetGvmBalanceList 分页获取GvmBalance列表
// @Tags GvmBalance
// @Summary 分页获取GvmBalance列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmBalanceSearch true "分页获取GvmBalance列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmBalance/getGvmBalanceList [get]
func (gvmBalanceApi *GvmBalanceApi) GetGvmBalanceList(c *gin.Context) {
	var pageInfo botsReq.GvmBalanceSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmBalanceService.GetGvmBalanceInfoList(pageInfo); err != nil {
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

//获取交易所资产

func (gvmBalanceApi *GvmBalanceApi) GetGvmBalance(c *gin.Context) {
	var gvmBalance bots.GvmBalance
	err := c.ShouldBindQuery(&gvmBalance)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	exbots, ok := c.Get("exbots")
	if !ok {
		response.FailWithMessage("获取失败", c)
	}
	bot := exbots.(bots.GvmBots)
	fmt.Printf("%+v", bot)

	if regvmBalance, err := gvmBalanceService.GetGvmBalanceByExchange(*bot.ExchangeCode); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(regvmBalance, c)
	}
}
