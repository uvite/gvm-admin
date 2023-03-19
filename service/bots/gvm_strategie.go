package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmStrategieService struct {
}

// CreateGvmStrategie 创建GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) CreateGvmStrategie(gvmStrategie bots.GvmStrategie) (err error) {
	err = global.GVA_DB.Create(&gvmStrategie).Error
	return err
}

// DeleteGvmStrategie 删除GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) DeleteGvmStrategie(gvmStrategie bots.GvmStrategie) (err error) {
	err = global.GVA_DB.Delete(&gvmStrategie).Error
	return err
}

// DeleteGvmStrategieByIds 批量删除GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) DeleteGvmStrategieByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmStrategie{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateGvmStrategie 更新GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) UpdateGvmStrategie(gvmStrategie bots.GvmStrategie) (err error) {
	err = global.GVA_DB.Save(&gvmStrategie).Error
	return err
}

// GetGvmStrategie 根据id获取GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) GetGvmStrategie(id uint) (gvmStrategie bots.GvmStrategie, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmStrategie).Error
	return
}

// GetGvmStrategieInfoList 分页获取GvmStrategie记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmStrategieService *GvmStrategieService) GetGvmStrategieInfoList(info botsReq.GvmStrategieSearch) (list []bots.GvmStrategie, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&bots.GvmStrategie{})
	var gvmStrategies []bots.GvmStrategie
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Find(&gvmStrategies).Error
	return gvmStrategies, total, err
}

func (gvmStrategieService *GvmStrategieService) GetGvmStrategieInfoAll(info botsReq.GvmStrategieSearch) (list []bots.GvmStrategie , err error) {

	// 创建db
	db := global.GVA_DB.Model(&bots.GvmStrategie{})
	var gvmStrategies []bots.GvmStrategie


	err = db.Find(&gvmStrategies).Error
	return gvmStrategies, err
}
