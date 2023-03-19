package bots

import (
	"crypto/rand"
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/pkg/hdwallet"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"math"
	"math/big"
)

type GvmBotsApi struct {
}

var gvmBotsService = service.ServiceGroupApp.BotsServiceGroup.GvmBotsService

// CreateGvmBots 创建GvmBots
// @Tags GvmBots
// @Summary 创建GvmBots
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBots true "创建GvmBots"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmBots/createGvmBots [post]
func (gvmBotsApi *GvmBotsApi) CreateGvmBots(c *gin.Context) {
	var gvmBots bots.GvmBots
	err := c.ShouldBindJSON(&gvmBots)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBotsService.CreateGvmBots(gvmBots); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteGvmBots 删除GvmBots
// @Tags GvmBots
// @Summary 删除GvmBots
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBots true "删除GvmBots"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /gvmBots/deleteGvmBots [delete]
func (gvmBotsApi *GvmBotsApi) DeleteGvmBots(c *gin.Context) {
	var gvmBots bots.GvmBots
	err := c.ShouldBindJSON(&gvmBots)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBotsService.DeleteGvmBots(gvmBots); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteGvmBotsByIds 批量删除GvmBots
// @Tags GvmBots
// @Summary 批量删除GvmBots
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除GvmBots"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /gvmBots/deleteGvmBotsByIds [delete]
func (gvmBotsApi *GvmBotsApi) DeleteGvmBotsByIds(c *gin.Context) {
	var IDS request.IdsReq
	err := c.ShouldBindJSON(&IDS)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBotsService.DeleteGvmBotsByIds(IDS); err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateGvmBots 更新GvmBots
// @Tags GvmBots
// @Summary 更新GvmBots
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body bots.GvmBots true "更新GvmBots"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /gvmBots/updateGvmBots [put]
func (gvmBotsApi *GvmBotsApi) UpdateGvmBots(c *gin.Context) {
	var gvmBots bots.GvmBots
	err := c.ShouldBindJSON(&gvmBots)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err := gvmBotsService.UpdateGvmBots(gvmBots); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindGvmBots 用id查询GvmBots
// @Tags GvmBots
// @Summary 用id查询GvmBots
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query bots.GvmBots true "用id查询GvmBots"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /gvmBots/findGvmBots [get]
func (gvmBotsApi *GvmBotsApi) FindGvmBots(c *gin.Context) {
	var gvmBots bots.GvmBots
	err := c.ShouldBindQuery(&gvmBots)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if regvmBots, err := gvmBotsService.GetGvmBots(gvmBots.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"regvmBots": regvmBots}, c)
	}
}

// GetGvmBotsList 分页获取GvmBots列表
// @Tags GvmBots
// @Summary 分页获取GvmBots列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query botsReq.GvmBotsSearch true "分页获取GvmBots列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /gvmBots/getGvmBotsList [get]
func (gvmBotsApi *GvmBotsApi) GetGvmBotsList(c *gin.Context) {
	var pageInfo botsReq.GvmBotsSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if list, total, err := gvmBotsService.GetGvmBotsInfoList(pageInfo); err != nil {
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

// 获取秘钥
func (gvmBotsApi *GvmBotsApi) GetGvmBotAppSecret(c *gin.Context) {

	botId, err := rand.Int(rand.Reader, big.NewInt(128))

	seed, err := rand.Int(rand.Reader, big.NewInt(128))
	wallet := global.GVA_CONFIG.Wallet
	masterSeed := hdwallet.Seed(wallet.Mnemonic, wallet.Password)
	fmt.Println("masterSeed : ", masterSeed)

	// 2. BIP32 Process
	// 2-1. Generate Master key
	masterKey, _ := hdwallet.NewMasterKey(masterSeed)
	fmt.Println("masterKey : ", masterKey)

	// 3. Calculating Dreiven path index(uint32) and generate derive childkey form path
	// example => ethPath = "m/44'/60'/0'/0/0"
	ethPath := fmt.Sprintf("m/44'/60'/%d'/%d/0", botId, seed)
	fmt.Println(ethPath)
	childKey, err := hdwallet.DeriveKeyFromPath(masterKey, ethPath)
	if err != nil {
		fmt.Println("error : ", err)
	}

	fmt.Println("private key : ", childKey)
	fmt.Println("public key : ", childKey.PublicKey())

	// 4. From BIP32 Key to ECDSA(spec256k1)
	privKey, _ := hdwallet.Bip32KeyToECDSA(*childKey)
	pubKey := privKey.PublicKey

	// 5. Generate Etherieum address
	addressETH := hdwallet.GenerateAddressETH(pubKey)

	fmt.Println("ETH Address : ", addressETH)

	b := make([]byte, 32)
	m, err := rand.Read(b)
	response.OkWithData(gin.H{"app_id": b[:m], "app_secret": addressETH}, c)

}

func (gvmBotsApi *GvmBotsApi) GetGvmBotAppLogin(c *gin.Context) {


	var gvmBots botsReq.GvmBotsLogin
	err := c.ShouldBindQuery(&gvmBots)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}

	fmt.Printf("%+v", gvmBots)
	if regvmBots, err := gvmBotsService.GetGvmBotsLogin(gvmBots); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(regvmBots, c)
	}
}
