package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmExchangeService struct {
}

// CreateGvmExchange 创建GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) CreateGvmExchange(gvmExchange bots.GvmExchange) (err error) {
	err = global.GVA_DB.Create(&gvmExchange).Error
	return err
}

// DeleteGvmExchange 删除GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) DeleteGvmExchange(gvmExchange bots.GvmExchange) (err error) {
	err = global.GVA_DB.Delete(&gvmExchange).Error
	return err
}

// DeleteGvmExchangeByIds 批量删除GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) DeleteGvmExchangeByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmExchange{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateGvmExchange 更新GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) UpdateGvmExchange(gvmExchange bots.GvmExchange) (err error) {
	err = global.GVA_DB.Save(&gvmExchange).Error
	return err
}

// GetGvmExchange 根据id获取GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) GetGvmExchange(id uint) (gvmExchange bots.GvmExchange, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmExchange).Error
	return
}

// GetGvmExchangeInfoList 分页获取GvmExchange记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmExchangeService *GvmExchangeService) GetGvmExchangeInfoList(info botsReq.GvmExchangeSearch) (list []bots.GvmExchange, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&bots.GvmExchange{})
	var gvmExchanges []bots.GvmExchange
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Find(&gvmExchanges).Error
	return gvmExchanges, total, err
}
func (gvmExchangeService *GvmExchangeService) GetGvmExchangeByCode(code string) (gvmExchange bots.GvmExchange, err error) {
	err = global.GVA_DB.Where("code = ?", code).First(&gvmExchange).Error
	return
}
func (gvmExchangeService *GvmExchangeService) GetGvmExchangeInfoAll( ) (list []bots.GvmExchange , err error) {

	// 创建db
	db := global.GVA_DB.Model(&bots.GvmExchange{})
	var gvmExchange []bots.GvmExchange


	err = db.Find(&gvmExchange).Error
	return gvmExchange, err
}
