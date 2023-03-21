// 自动生成模板GvmTrades
package bots

import (
	"github.com/uvite/gvmbot/pkg/types"
)

// GvmTrades 结构体
type GvmTrades struct {
	ExchangeId         string    `json:"exchange_id" form:"exchange_id" gorm:"column:exchange_id;comment:;size:20;"`
	types.Trade
}

// TableName GvmTrades 表名
func (GvmTrades) TableName() string {
	return "gvm_trades"
}
