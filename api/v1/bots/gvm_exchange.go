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
)

type GvmExchangeApi struct {
}

var gvmExchangeService = service.ServiceGroupApp.BotsServiceGroup.GvmExchangeService

// CreateGvmExchange 创建GvmExchange
// @Tags GvmExchange
// @Summary 创建GvmExchange
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmExchange true "创建GvmExchange"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmExchange/createGvmExchange [post]
func (gvmExchangeApi *GvmExchangeApi) CreateGvmExchange(c *gin.Context) {
	var gvmExchange bots.GvmExchange
	err := c.ShouldBindJSON(&gvmExchange)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	wallet := global.GVA_CONFIG.Wallet
	gvmExchange.Path = fmt.Sprintf("%s/%s", wallet.Path, gvmExchange.Code)
	if err := gvmExchangeService.CreateGvmExchange(gvmExchange); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmExchange 删除GvmExchange
// @Tags GvmExchange
// @Summary 删除GvmExchange
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmExchange true "删除GvmExchange"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmExchange/deleteGvmExchange [delete]
func (gvmExchangeApi *GvmExchangeApi) DeleteGvmExchange(c *gin.Context) {
	var gvmExchange bots.GvmExchange
	err := c.ShouldBindJSON(&gvmExchange)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmExchangeService.DeleteGvmExchange(gvmExchange); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmExchangeByIds 批量删除GvmExchange
// @Tags GvmExchange
// @Summary 批量删除GvmExchange
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmExchange"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmExchange/deleteGvmExchangeByIds [delete]
func (gvmExchangeApi *GvmExchangeApi) DeleteGvmExchangeByIds(c *gin.Context) {
	var IDS request.IdsReq
	err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmExchangeService.DeleteGvmExchangeByIds(IDS); err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmExchange 更新GvmExchange
// @Tags GvmExchange
// @Summary 更新GvmExchange
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmExchange true "更新GvmExchange"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmExchange/updateGvmExchange [put]
func (gvmExchangeApi *GvmExchangeApi) UpdateGvmExchange(c *gin.Context) {
	var gvmExchange bots.GvmExchange
	err := c.ShouldBindJSON(&gvmExchange)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	wallet := global.GVA_CONFIG.Wallet

	gvmExchange.Path = fmt.Sprintf("%s/%s", wallet.Path, gvmExchange.Code)

	if err := gvmExchangeService.UpdateGvmExchange(gvmExchange); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmExchange 用id查询GvmExchange
// @Tags GvmExchange
// @Summary 用id查询GvmExchange
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmExchange true "用id查询GvmExchange"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmExchange/findGvmExchange [get]
func (gvmExchangeApi *GvmExchangeApi) FindGvmExchange(c *gin.Context) {
	var gvmExchange bots.GvmExchange
	err := c.ShouldBindQuery(&gvmExchange)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmExchange, err := gvmExchangeService.GetGvmExchange(gvmExchange.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmExchange": regvmExchange}, c)
	}
}

// GetGvmExchangeList 分页获取GvmExchange列表
// @Tags GvmExchange
// @Summary 分页获取GvmExchange列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmExchangeSearch true "分页获取GvmExchange列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmExchange/getGvmExchangeList [get]
func (gvmExchangeApi *GvmExchangeApi) GetGvmExchangeList(c *gin.Context) {
	var pageInfo botsReq.GvmExchangeSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmExchangeService.GetGvmExchangeInfoList(pageInfo); err != nil {
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
func (gvmExchangeApi *GvmExchangeApi) GetGvmExchangeAll(c *gin.Context) {
	var pageInfo botsReq.GvmExchangeSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, err := gvmExchangeService.GetGvmExchangeInfoAll(); err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
	} else {
		response.OkWithDetailed(list, "获取成功", c)
	}
}
