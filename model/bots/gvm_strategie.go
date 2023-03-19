// 自动生成模板GvmStrategie
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	
)

// GvmStrategie 结构体
type GvmStrategie struct {
      global.GVA_MODEL
      Name  string `json:"name" form:"name" gorm:"column:name;comment:机器人名称;size:255;"`
      Uuid  string `json:"uuid" form:"uuid" gorm:"column:uuid;comment:;size:255;"`
      Env  string `json:"env" form:"env" gorm:"column:env;comment:;size:191;"`
      Path  string `json:"path" form:"path" gorm:"column:path;comment:;size:255;"`
      Remark  string `json:"remark" form:"remark" gorm:"column:remark;comment:;size:255;"`
      Code  string `json:"code" form:"code" gorm:"column:code;comment:;size:255;"`
}


// TableName GvmStrategie 表名
func (GvmStrategie) TableName() string {
  return "gvm_strategie"
}

