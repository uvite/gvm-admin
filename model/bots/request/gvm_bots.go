package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type GvmBotsSearch struct {
	bots.GvmBots
	StartCreatedAt *time.Time `json:"startCreatedAt" form:"startCreatedAt"`
	EndCreatedAt   *time.Time `json:"endCreatedAt" form:"endCreatedAt"`
	request.PageInfo
}

type GvmBotsLogin struct {
	AppId     string `json:"app_id" form:"app_id"`
	AppSecret string `json:"app_secret" form:"app_secret" `
}
