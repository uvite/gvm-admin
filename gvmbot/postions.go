package gvmbot

import (
	"context"
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/bots"
	log "github.com/sirupsen/logrus"
	"github.com/uvite/gvmbot/pkg/bbgo"
	"github.com/uvite/gvmbot/pkg/types"
)

func (ex Exchange) GetPostions() (err error) {
	ctx := context.Background()
	environ := bbgo.NewEnvironment()
	if err := environ.ConfigureDatabase(ctx); err != nil {

	}

	if err := environ.ConfigureExchangeSessions(ex.userConfig); err != nil {

	}
	fmt.Println("[0]", ex.sessionName)

	session, ok := environ.Session(ex.sessionName)
	if !ok {

	}

	postions, err := session.Exchange.QueryPositions(ctx, ex.symbol)

	if err != nil {
		return err
	}

	 db := global.GVA_DB
	//if db==nil{
	//	global.GVA_DB = initialize.Gorm()
	//	db = global.GVA_DB
	//}

	//data := []bots.GvmTrades{}
	log.Infof("%d postions", len(postions),ex.exchangeId)
	for _, postion := range postions {
		dt := bots.GvmPositions{
			ExchangeId: ex.exchangeId,
		   Positions: postion,
		}
		db.Create(dt)
		//data = append(data, dt)

		log.Infof("Postion %+v  ",
			postion,
		)
	}
	//db.Create(data)

	return nil
}

func (ex Exchange) RealPostions() (postionsList []*types.Positions,err error) {
	ctx := context.Background()
	environ := bbgo.NewEnvironment()
	if err := environ.ConfigureDatabase(ctx); err != nil {

	}

	if err := environ.ConfigureExchangeSessions(ex.userConfig); err != nil {

	}
	fmt.Println("[0]", ex.sessionName)

	session, ok := environ.Session(ex.sessionName)
	if !ok {

	}

	postions, err := session.Exchange.QueryPositions(ctx, ex.symbol)

	if err != nil {
		return nil,err
	}


	return postions,nil
}
