package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/system"
	systemReq "github.com/flipped-aurora/gin-vue-admin/server/model/system/request"
)

type SystemDeptService struct {
}

// CreateSystemDept 创建SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) CreateSystemDept(systemDept system.SystemDept) (err error) {
	err = global.GVA_DB.Create(&systemDept).Error
	return err
}

// DeleteSystemDept 删除SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) DeleteSystemDept(systemDept system.SystemDept) (err error) {
	err = global.GVA_DB.Delete(&systemDept).Error
	return err
}

// DeleteSystemDeptByIds 批量删除SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) DeleteSystemDeptByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]system.SystemDept{}, "id in ?", ids.Ids).Error
	return err
}

// UpdateSystemDept 更新SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) UpdateSystemDept(systemDept system.SystemDept) (err error) {
	err = global.GVA_DB.Save(&systemDept).Error
	return err
}

// GetSystemDept 根据id获取SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) GetSystemDept(id uint) (systemDept system.SystemDept, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&systemDept).Error
	return
}

// GetSystemDeptInfoList 分页获取SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) GetSystemDeptInfoList(info systemReq.SystemDeptSearch) (list []system.SystemDept, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&system.SystemDept{})
	var systemDepts []system.SystemDept
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Limit(limit).Offset(offset).Find(&systemDepts).Error
	return systemDepts, total, err
}

// GetSystemDeptInfoList 分页获取SystemDept记录
// Author [piexlmax](https://github.com/piexlmax)
func (systemDeptService *SystemDeptService) GetSystemDeptTree(info systemReq.SystemDeptSearch) (list []system.SystemDept, total int64, err error) {

	db := global.GVA_DB.Model(&system.SystemDept{})
	var systemDepts []system.SystemDept

	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Find(&systemDepts).Error
	return systemDepts, total, err
}
