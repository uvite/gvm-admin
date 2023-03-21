// 自动生成模板GvmExchange
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// GvmExchange 结构体
type GvmExchange struct {
	global.GVA_MODEL
	Exchange   string `json:"exchange" form:"exchange" gorm:"column:exchange;comment:api路径;size:191;"`
	Code       string `json:"code" form:"code" gorm:"column:code;comment:api路径;size:191;"`
	ApiKey     string `json:"apiKey" form:"apiKey" gorm:"column:api_key;comment:api中文描述;size:191;"`
	ApiSecret  string `json:"apiSecret" form:"apiSecret" gorm:"column:api_secret;comment:api组;size:191;"`
	Passpharse string `json:"passpharse" form:"passpharse" gorm:"column:passpharse;comment:方法;size:191;"`
	UserId     *int   `json:"userId" form:"userId" gorm:"column:user_id;comment:;size:10;"`
	Path       string `json:"path" form:"path" gorm:"column:path;comment:;size:100;"`
	Json       string `json:"json" form:"json" gorm:"column:json;comment:;size:255;"`
	Remark     string `json:"remark" form:"remark" gorm:"column:remark;comment:;size:255;"`
}

// TableName GvmExchange 表名
func (GvmExchange) TableName() string {
	return "gvm_exchange"
}
