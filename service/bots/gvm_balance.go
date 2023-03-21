package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmBalanceService struct {
}

// CreateGvmBalance 创建GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) CreateGvmBalance(gvmBalance bots.GvmBalance) (err error) {
	err = global.GVA_DB.Create(&gvmBalance).Error
	return err
}

// DeleteGvmBalance 删除GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) DeleteGvmBalance(gvmBalance bots.GvmBalance) (err error) {
	err = global.GVA_DB.Delete(&gvmBalance).Error
	return err
}

// DeleteGvmBalanceByIds 批量删除GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) DeleteGvmBalanceByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmBalance{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateGvmBalance 更新GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) UpdateGvmBalance(gvmBalance bots.GvmBalance) (err error) {
	err = global.GVA_DB.Save(&gvmBalance).Error
	return err
}

// GetGvmBalance 根据id获取GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) GetGvmBalance(id uint) (gvmBalance bots.GvmBalance, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmBalance).Error
	return
}

// GetGvmBalanceInfoList 分页获取GvmBalance记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmBalanceService *GvmBalanceService) GetGvmBalanceInfoList(info botsReq.GvmBalanceSearch) (list []bots.GvmBalance, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&bots.GvmBalance{})
	var gvmBalances []bots.GvmBalance
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Find(&gvmBalances).Error
	return gvmBalances, total, err
}

func (gvmBalanceService *GvmBalanceService) GetGvmBalanceByExchange(exchange_id string) (gvmBalance bots.GvmBalance, err error) {
	err = global.GVA_DB.Where("exchange_id = ?", exchange_id).Order("id desc").First(&gvmBalance).Error
	return
}
