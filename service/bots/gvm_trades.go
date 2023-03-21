package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmTradesService struct {
}

// CreateGvmTrades 创建GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) CreateGvmTrades(gvmTrades bots.GvmTrades) (err error) {
	err = global.GVA_DB.Create(&gvmTrades).Error
	return err
}

// DeleteGvmTrades 删除GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) DeleteGvmTrades(gvmTrades bots.GvmTrades) (err error) {
	err = global.GVA_DB.Delete(&gvmTrades).Error
	return err
}

// DeleteGvmTradesByIds 批量删除GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) DeleteGvmTradesByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmTrades{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateGvmTrades 更新GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) UpdateGvmTrades(gvmTrades bots.GvmTrades) (err error) {
	err = global.GVA_DB.Save(&gvmTrades).Error
	return err
}

// GetGvmTrades 根据id获取GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) GetGvmTrades(id uint64) (gvmTrades bots.GvmTrades, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmTrades).Error
	return
}

// GetGvmTradesInfoList 分页获取GvmTrades记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmTradesService *GvmTradesService) GetGvmTradesInfoList(info botsReq.GvmTradesSearch) (list []bots.GvmTrades, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&bots.GvmTrades{})
	var gvmTradess []bots.GvmTrades
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	if info.ExchangeId != "" {
		db = db.Where("`exchange_id` = ?", info.ExchangeId)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Order("id desc").Find(&gvmTradess).Error
	return gvmTradess, total, err
}
