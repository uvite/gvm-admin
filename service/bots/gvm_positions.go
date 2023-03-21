package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type GvmPositionsService struct {
}

// CreateGvmPositions 创建GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService) CreateGvmPositions(gvmPositions bots.GvmPositions) (err error) {
	err = global.GVA_DB.Create(&gvmPositions).Error
	return err
}

// DeleteGvmPositions 删除GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService)DeleteGvmPositions(gvmPositions bots.GvmPositions) (err error) {
	err = global.GVA_DB.Delete(&gvmPositions).Error
	return err
}

// DeleteGvmPositionsByIds 批量删除GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService)DeleteGvmPositionsByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmPositions{},"id in ?",ids.Ids).Error
	return err
}

// UpdateGvmPositions 更新GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService)UpdateGvmPositions(gvmPositions bots.GvmPositions) (err error) {
	err = global.GVA_DB.Save(&gvmPositions).Error
	return err
}

// GetGvmPositions 根据id获取GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService)GetGvmPositions(id int) (gvmPositions bots.GvmPositions, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmPositions).Error
	return
}

// GetGvmPositionsInfoList 分页获取GvmPositions记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmPositionsService *GvmPositionsService)GetGvmPositionsInfoList(info botsReq.GvmPositionsSearch) (list []bots.GvmPositions, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&bots.GvmPositions{})
    var gvmPositionss []bots.GvmPositions
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
	if info.ExchangeId != "" {
		db = db.Where("`exchange_id` = ?", info.ExchangeId)
	}
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }

	err = db.Limit(limit).Offset(offset).Order("id desc").Find(&gvmPositionss).Error
	return  gvmPositionss, total, err
}
