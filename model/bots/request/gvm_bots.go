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
	Id           string `json:"id" form:"id"`
	AppId        string `json:"app_id" form:"app_id"`
	AppSecret    string `json:"app_secret" form:"app_secret"`
	ExchangePath string `json:"exchange_path" form:"exchange_path"`
	ExchangeCode string `json:"exchange_code" form:"exchange_code"`
	Code         string `json:"code" form:"code"`
	File         string `json:"file" form:"file"`
	Side         string `json:"side" form:"side"`
	Limit        string `json:"limit" form:"limit"`
	Stop         string `json:"stop" form:"stop"`
	Price        int    `json:"price" form:"price"`
	Size         int    `json:"size" form:"size"`
}
