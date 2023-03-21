// 自动生成模板GvmAlarm
package bots

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	
)

// GvmAlarm 结构体
type GvmAlarm struct {
      global.GVA_MODEL
      UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:;size:10;"`
      Exchange  string `json:"exchange" form:"exchange" gorm:"column:exchange;comment:交易所;size:191;"`
      Case  string `json:"case" form:"case" gorm:"column:case;comment:报警类型;size:191;"`
      Symbol  string `json:"symbol" form:"symbol" gorm:"column:symbol;comment:symbol;size:191;"`
      PriceJson  string `json:"priceJson" form:"priceJson" gorm:"column:price_json;comment:方法;size:4294967295;"`
      IndicatorJson  string `json:"indicatorJson" form:"indicatorJson" gorm:"column:indicator_json;comment:;size:4294967295;"`
      Status  *int `json:"status" form:"status" gorm:"column:status;comment:;size:10;"`
      Remark  string `json:"remark" form:"remark" gorm:"column:remark;comment:;size:255;"`
}


// TableName GvmAlarm 表名
func (GvmAlarm) TableName() string {
  return "gvm_alarm"
}

