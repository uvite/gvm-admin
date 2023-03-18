// 自动生成模板SysDictionaryDetail
package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// 如果含有time.Time 请自行import time包
type SysDictionaryDetail struct {
	global.GVA_MODEL
	Code           string `json:"code" form:"code" gorm:"column:code;comment:展示值"`                                  // 展示值
	Label           string `json:"label" form:"label" gorm:"column:label;comment:展示值"`                                  // 展示值
	Value           string `json:"value" form:"value" gorm:"column:value;comment:字典值"`                                  // 字典值
	Status          int    `json:"status" form:"status" gorm:"column:status;comment:启用状态"`                              // 启用状态
	Sort            int    `json:"sort" form:"sort" gorm:"column:sort;comment:排序标记"`                                    // 排序标记
	SysDictionaryID int    `json:"SysDictionaryID" form:"SysDictionaryID" gorm:"column:sys_dictionary_id;comment:关联标记"` // 关联标记

	Remark string `gorm:"column:remark;type:varchar(255);NULL;comment:备注" json:"remark"` // 备注

}

func (SysDictionaryDetail) TableName() string {
	return "system_dict_data"
}
