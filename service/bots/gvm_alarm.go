package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
    botsReq "github.com/flipped-aurora/gin-vue-admin/server/model/bots/request"
)

type GvmAlarmService struct {
}

// CreateGvmAlarm 创建GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService) CreateGvmAlarm(gvmAlarm bots.GvmAlarm) (err error) {
	err = global.GVA_DB.Create(&gvmAlarm).Error
	return err
}

// DeleteGvmAlarm 删除GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService)DeleteGvmAlarm(gvmAlarm bots.GvmAlarm) (err error) {
	err = global.GVA_DB.Delete(&gvmAlarm).Error
	return err
}

// DeleteGvmAlarmByIds 批量删除GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService)DeleteGvmAlarmByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]bots.GvmAlarm{},"id in ?",ids.Ids).Error
	return err
}

// UpdateGvmAlarm 更新GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService)UpdateGvmAlarm(gvmAlarm bots.GvmAlarm) (err error) {
	err = global.GVA_DB.Save(&gvmAlarm).Error
	return err
}

// GetGvmAlarm 根据id获取GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService)GetGvmAlarm(id uint) (gvmAlarm bots.GvmAlarm, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&gvmAlarm).Error
	return
}

// GetGvmAlarmInfoList 分页获取GvmAlarm记录
// Author [piexlmax](https://github.com/piexlmax)
func (gvmAlarmService *GvmAlarmService)GetGvmAlarmInfoList(info botsReq.GvmAlarmSearch) (list []bots.GvmAlarm, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&bots.GvmAlarm{})
    var gvmAlarms []bots.GvmAlarm
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }

	err = db.Limit(limit).Offset(offset).Find(&gvmAlarms).Error
	return  gvmAlarms, total, err
}
