package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type GvmStrategieSearch struct{
    bots.GvmStrategie
    StartCreatedAt *time.Time `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt   *time.Time `json:"endCreatedAt" form:"endCreatedAt"`
    request.PageInfo
}
