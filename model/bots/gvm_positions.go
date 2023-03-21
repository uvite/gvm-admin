// 自动生成模板GvmPositions
package bots

import (
	"github.com/uvite/gvmbot/pkg/types"
)

// GvmPositions 结构体
type GvmPositions struct {
	ExchangeId string `json:"exchange_id" form:"exchange_id" gorm:"column:exchange_id;comment:;size:20;"`
	*types.Positions
}

// TableName GvmPositions 表名
func (GvmPositions) TableName() string {
	return "gvm_positions"
}
