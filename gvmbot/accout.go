package gvmbot

import (
	"context"
	"fmt"
	"github.com/uvite/gvmbot/pkg/bbgo"
	"github.com/uvite/gvmbot/pkg/types"
)

func (ex Exchange) GetAccount() (balance *types.Balance, ok error) {
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

		a, err := session.Exchange.QueryAccount(ctx)

		if err != nil {

		}
		balance, ok := a.Balance("USDT")
		//fmt.Println(balance.Available, balance.Locked)
		//a.Print()
		return &balance, nil

	}

	return &types.Balance{}, nil
}
