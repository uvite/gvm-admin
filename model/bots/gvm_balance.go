// 自动生成模板GvmBalance
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// GvmBalance 结构体
type GvmBalance struct {
	global.GVA_MODEL

	ExchangeId  string    `json:"exchange_id" form:"exchange_id" gorm:"column:exchange_id;comment:;size:20;"`

	Available string    `json:"available" form:"available" gorm:"column:available;"`
	Locked    string    `json:"locked" form:"locked" gorm:"column:locked;"`
	Datetime  *time.Time `json:"datetime" form:"datetime" gorm:"column:datetime;comment:;"`
}

// TableName GvmBalance 表名
func (GvmBalance) TableName() string {
	return "gvm_balance"
}
