package models

import "time"

var SystemDictDataTbName = "system_dict_data"

// SystemDictData 字典数据表
type SystemDictData struct {
    Id int64 `gorm:"primaryKey;autoIncrement;column:id;type:bigint(20) unsigned;NOT NULL;comment:主键" json:"id"` // 主键
    TypeId int64 `gorm:"column:type_id;type:bigint(20) unsigned;NOT NULL;comment:字典类型ID" json:"type_id"` // 字典类型ID
    Label *string `gorm:"column:label;type:varchar(50);NULL;comment:字典标签" json:"label"` // 字典标签
    Value *string `gorm:"column:value;type:varchar(100);NULL;comment:字典值" json:"value"` // 字典值
    Code *string `gorm:"column:code;type:varchar(100);NULL;comment:字典标示" json:"code"` // 字典标示
    Sort *int16 `gorm:"column:sort;type:smallint(5) unsigned;NULL;comment:排序" json:"sort"` // 排序
    Status *int16 `gorm:"column:status;type:smallint(6);NULL;comment:状态 (1正常 2停用)" json:"status"` // 状态 (1正常 2停用)
    CreatedBy *int64 `gorm:"column:created_by;type:bigint(20);NULL;comment:创建者" json:"created_by"` // 创建者
    UpdatedBy *int64 `gorm:"column:updated_by;type:bigint(20);NULL;comment:更新者" json:"updated_by"` // 更新者
    CreatedAt *time.Time `gorm:"column:created_at;type:timestamp;NULL;comment:创建时间" json:"created_at"` // 创建时间
    UpdatedAt *time.Time `gorm:"column:updated_at;type:timestamp;NULL;comment:更新时间" json:"updated_at"` // 更新时间
    DeletedAt *time.Time `gorm:"column:deleted_at;type:timestamp;NULL;comment:删除时间" json:"deleted_at"` // 删除时间
    Remark *string `gorm:"column:remark;type:varchar(255);NULL;comment:备注" json:"remark"` // 备注
}