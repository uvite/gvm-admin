// 自动生成模板GvmBalance
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// GvmBalance 结构体
type GvmBalance struct {
      global.GVA_MODEL
      Uuid  string `json:"uuid" form:"uuid" gorm:"column:uuid;comment:;size:255;"`
      Balance  *float64 `json:"balance" form:"balance" gorm:"column:balance;comment:;size:10;"`
      Datetime  *time.Time `json:"datetime" form:"datetime" gorm:"column:datetime;comment:;"`
}


// TableName GvmBalance 表名
func (GvmBalance) TableName() string {
  return "gvm_balance"
}

