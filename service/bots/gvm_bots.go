package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmBotsService struct {
}

// CreateGvmBots 创建GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService) CreateGvmBots(gvmBots bots.GvmBots) (err error) {
	err = global.GVA_DB.Create(&gvmBots).Error
	return err
}

// DeleteGvmBots 删除GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)DeleteGvmBots(gvmBots bots.GvmBots) (err error) {
	err = global.GVA_DB.Delete(&gvmBots).Error
	return err
}

// DeleteGvmBotsByIds 批量删除GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)DeleteGvmBotsByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmBots{},"id in ?",ids.Ids).Error
	return err
}

// UpdateGvmBots 更新GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)UpdateGvmBots(gvmBots bots.GvmBots) (err error) {
	err = global.GVA_DB.Save(&gvmBots).Error
	return err
}

// GetGvmBots 根据id获取GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)GetGvmBots(id uint) (gvmBots bots.GvmBots, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmBots).Error
	return
}
// GetGvmBots 根据id获取GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)GetGvmBotsLogin(bot botsReq.GvmBotsLogin) (gvmBots bots.GvmBots, err error) {
	err = global.GVA_DB.Where("app_id = ? and app_secret =?", bot.AppId,bot.AppSecret).First(&gvmBots).Error
	return
}
// GetGvmBots 根据id获取GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)CheckGvmBotsLogin(AppId string,AppSecret string) (gvmBots bots.GvmBots, err error) {
	err = global.GVA_DB.Where("app_id = ? and app_secret =?",  AppId, AppSecret).First(&gvmBots).Error
	return
}

// GetGvmBotsInfoList 分页获取GvmBots记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBotsService *GvmBotsService)GetGvmBotsInfoList(info botsReq.GvmBotsSearch) (list []bots.GvmBots, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&bots.GvmBots{})
    var gvmBotss []bots.GvmBots
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }

	err = db.Limit(limit).Offset(offset).Find(&gvmBotss).Error
	return  gvmBotss, total, err
}
