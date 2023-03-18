package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/system"
	systemReq "github.com/flipped-aurora/gin-vue-admin/server/model/system/request"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type SystemPostService struct {
}

// CreateSystemPost 创建SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) CreateSystemPost(systemPost system.SystemPost) (err error) {
	err = global.GVA_DB.Create(&systemPost).Error
	return err
}

// DeleteSystemPost 删除SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) DeleteSystemPost(systemPost system.SystemPost) (err error) {
	err = global.GVA_DB.Delete(&systemPost).Error
	return err
}

// DeleteSystemPostByIds 批量删除SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) DeleteSystemPostByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]system.SystemPost{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateSystemPost 更新SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) UpdateSystemPost(systemPost system.SystemPost) (err error) {
	err = global.GVA_DB.Save(&systemPost).Error
	return err
}

// GetSystemPost 根据id获取SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) GetSystemPost(id uint) (systemPost system.SystemPost, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&systemPost).Error
	return
}

// GetSystemPostInfoList 分页获取SystemPost记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemPostService *SystemPostService) GetSystemPostInfoList(info systemReq.SystemPostSearch) (list []system.SystemPost, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&system.SystemPost{})
	var systemPosts []system.SystemPost
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Find(&systemPosts).Error
	return systemPosts, total, err
}

func (systemPostService *SystemPostService) ChangeStatus(req system.SystemPost) (err error) {
	return global.GVA_DB.Model(&system.SystemPost{}).
		Select("updated_at", "status").
		Where("id=?", req.ID).
		Updates(map[string]interface{}{
			"updated_at": time.Now(),
			"status":     req.Status,
		}).Error
}
func (systemPostService *SystemPostService) ChangeSort(req system.SystemPost) (err error) {
	return global.GVA_DB.Model(&system.SystemPost{}).
		Select("updated_at", "sort").
		Where("id=?", req.ID).
		Updates(map[string]interface{}{
			"updated_at": time.Now(),
			"sort":       req.Sort,
		}).Error
}
