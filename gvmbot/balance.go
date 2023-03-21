package gvmbot

import (
	"context"
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	"github.com/uvite/gvmbot/pkg/bbgo"
	"github.com/uvite/gvmbot/pkg/types"
)

func (ex Exchange) GetBalance() (balance *types.Balance, ok error) {
	ctx := context.Background()
	environ := bbgo.NewEnvironment()
	if err := environ.ConfigureDatabase(ctx); err != nil {

	}

	if err := environ.ConfigureExchangeSessions(ex.userConfig); err != nil {

	}
	fmt.Println("[0]", ex.sessionName)

	if len(ex.sessionName) > 0 {
		session, ok := environ.Session(ex.sessionName)
		if !ok {

		}

		a, err := session.Exchange.QueryAccountBalances(ctx)

		if err != nil {

		}

		balance, ok := a.Copy()["USDT"]
		fmt.Printf("%s", balance.String())
		db := global.GVA_DB
		dt := &bots.GvmBalance{
			ExchangeId:      ex.exchangeId,
			Available: balance.Available.String(),
			Locked:    balance.Locked.String(),
		}
		db.Create(dt)

	}

	return &types.Balance{}, nil
}
