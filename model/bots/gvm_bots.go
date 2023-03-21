// 自动生成模板GvmBots
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// GvmBots 结构体
type GvmBots struct {
	global.GVA_MODEL
	BotName     string `json:"bot_name" form:"bot_name" gorm:"column:bot_name;comment:机器人名称;size:255;"`
	AppId       string `json:"app_id" form:"app_id" gorm:"column:app_id;comment:;size:255;"`
	AppSecret   string `json:"app_secret" form:"app_secret" gorm:"column:app_secret;comment:;size:255;"`
	Env         string `json:"env" form:"env" gorm:"column:env;comment:;"`
	Port        string `json:"port" form:"port" gorm:"column:port;comment:;"`
	Path        string `json:"path" form:"path" gorm:"column:path;comment:;size:255;"`
	Status      *int   `json:"status" form:"status" gorm:"column:status;comment:状态 (1正常 2停用);"`
	Sort        *int   `json:"sort" form:"sort" gorm:"column:sort;comment:排序;"`
	StrategieId uint64 `json:"strategie_id" form:"strategie_id" gorm:"column:strategie_id;comment:排序;"`
	ExchangeId  *string    `json:"exchange_id" form:"exchange_id" gorm:"column:exchange_id;comment:;size:20;"`

	Remark string `json:"remark" form:"remark" gorm:"column:remark;comment:;size:255;"`
}

// TableName GvmBots 表名
func (GvmBots) TableName() string {
	return "gvm_bots"
}
