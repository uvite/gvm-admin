package gvmbot

import (
	"fmt"
	"github.com/joho/godotenv"
	"github.com/spf13/viper"
	"github.com/uvite/gvmbot/pkg/bbgo"
	"strings"
)

type Exchange struct {
	userConfig  *bbgo.Config
	sessionName string
	symbol      string
	exchangeId  string
	okQty       bool `json:"okLimit"` //操蛋的okex 张币转换

}

func New(dotenvFile string, configFile string, exchangeId string) *Exchange {

	if err := godotenv.Overload(dotenvFile); err != nil {
		fmt.Println(err, "error loading dotenv file")
	}
	viper.AutomaticEnv()
	viper.SetEnvKeyReplacer(strings.NewReplacer("-", "_"))

	//
	exchange, symbol := viper.GetString("exchange"),
		viper.GetString("symbol")
	fmt.Println("[exchange]", exchange, symbol, exchangeId)
	userConfig, err := bbgo.Load(configFile, false)
	if err != nil {
		fmt.Println(err)
	}
	return &Exchange{
		sessionName: exchange,
		symbol:      symbol,
		userConfig:  userConfig,
		exchangeId:  exchangeId,
	}

}
