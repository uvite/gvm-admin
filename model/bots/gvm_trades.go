// 自动生成模板GvmTrades
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

// GvmTrades 结构体
type GvmTrades struct {
      global.GVA_MODEL
      Gid  *int `json:"gid" form:"gid" gorm:"column:gid;comment:;size:20;"`
      OrderId  *int `json:"orderId" form:"orderId" gorm:"column:order_id;comment:;size:20;"`
      Exchange  string `json:"exchange" form:"exchange" gorm:"column:exchange;comment:;size:24;"`
      Symbol  string `json:"symbol" form:"symbol" gorm:"column:symbol;comment:;size:20;"`
      Price  *float64 `json:"price" form:"price" gorm:"column:price;comment:;size:16;"`
      Quantity  *float64 `json:"quantity" form:"quantity" gorm:"column:quantity;comment:;size:16;"`
      QuoteQuantity  *float64 `json:"quoteQuantity" form:"quoteQuantity" gorm:"column:quote_quantity;comment:;size:16;"`
      Fee  *float64 `json:"fee" form:"fee" gorm:"column:fee;comment:;size:16;"`
      FeeCurrency  string `json:"feeCurrency" form:"feeCurrency" gorm:"column:fee_currency;comment:;size:10;"`
      IsBuyer  *bool `json:"isBuyer" form:"isBuyer" gorm:"column:is_buyer;comment:;"`
      IsMaker  *bool `json:"isMaker" form:"isMaker" gorm:"column:is_maker;comment:;"`
      Side  string `json:"side" form:"side" gorm:"column:side;comment:;size:4;"`
      TradedAt  *time.Time `json:"tradedAt" form:"tradedAt" gorm:"column:traded_at;comment:;"`
      IsMargin  *bool `json:"isMargin" form:"isMargin" gorm:"column:is_margin;comment:;"`
      IsIsolated  *bool `json:"isIsolated" form:"isIsolated" gorm:"column:is_isolated;comment:;"`
      Strategy  string `json:"strategy" form:"strategy" gorm:"column:strategy;comment:;size:32;"`
      Pnl  *float64 `json:"pnl" form:"pnl" gorm:"column:pnl;comment:;size:10;"`
      IsFutures  *bool `json:"isFutures" form:"isFutures" gorm:"column:is_futures;comment:;"`
}


// TableName GvmTrades 表名
func (GvmTrades) TableName() string {
  return "gvm_trades"
}

