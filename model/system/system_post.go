// 自动生成模板SystemPost
package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// SystemPost 结构体
type SystemPost struct {
	global.GVA_MODEL
	Name      string `json:"name" form:"name" gorm:"column:name;comment:岗位名称;size:50;"`
	Code      string `json:"code" form:"code" gorm:"column:code;comment:岗位代码;size:100;"`
	Sort      *int   `json:"sort" form:"sort" gorm:"column:sort;comment:排序;"`
	Status    *int   `json:"status" form:"status" gorm:"column:status;comment:状态 (1正常 2停用);"`
	CreatedBy *int   `json:"createdBy" form:"createdBy" gorm:"column:created_by;comment:创建者;size:19;"`
	UpdatedBy *int   `json:"updatedBy" form:"updatedBy" gorm:"column:updated_by;comment:更新者;size:19;"`
	Remark    string `json:"remark" form:"remark" gorm:"column:remark;comment:备注;size:255;"`
}

// TableName SystemPost 表名
func (SystemPost) TableName() string {
	return "system_post"
}
