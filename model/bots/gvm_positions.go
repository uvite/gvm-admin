// 自动生成模板GvmPositions
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// GvmPositions 结构体
type GvmPositions struct {
      global.GVA_MODEL
      Gid  *int `json:"gid" form:"gid" gorm:"column:gid;comment:;size:20;"`
      Strategy  string `json:"strategy" form:"strategy" gorm:"column:strategy;comment:;size:32;"`
      StrategyInstanceId  string `json:"strategyInstanceId" form:"strategyInstanceId" gorm:"column:strategy_instance_id;comment:;size:64;"`
      Symbol  string `json:"symbol" form:"symbol" gorm:"column:symbol;comment:;size:20;"`
      QuoteCurrency  string `json:"quoteCurrency" form:"quoteCurrency" gorm:"column:quote_currency;comment:;size:10;"`
      BaseCurrency  string `json:"baseCurrency" form:"baseCurrency" gorm:"column:base_currency;comment:;size:10;"`
      AverageCost  *float64 `json:"averageCost" form:"averageCost" gorm:"column:average_cost;comment:;size:16;"`
      Base  *float64 `json:"base" form:"base" gorm:"column:base;comment:;size:16;"`
      Quote  *float64 `json:"quote" form:"quote" gorm:"column:quote;comment:;size:16;"`
      Profit  *float64 `json:"profit" form:"profit" gorm:"column:profit;comment:;size:16;"`
      TradeId  *int `json:"tradeId" form:"tradeId" gorm:"column:trade_id;comment:;size:20;"`
      Side  string `json:"side" form:"side" gorm:"column:side;comment:;size:4;"`
      Exchange  string `json:"exchange" form:"exchange" gorm:"column:exchange;comment:;size:12;"`
      TradedAt  *time.Time `json:"tradedAt" form:"tradedAt" gorm:"column:traded_at;comment:;"`
}


// TableName GvmPositions 表名
func (GvmPositions) TableName() string {
  return "gvm_positions"
}

