package gvmbot

import (
	"fmt"
	"github.com/joho/godotenv"
	"github.com/spf13/viper"
	"github.com/uvite/gvmbot/pkg/bbgo"
	"os"
	"strings"
)

type Exchange struct {
	userConfig  *bbgo.Config
	sessionName string
	symbol      string
}

func New(dotenvFile string,configFile string) *Exchange {

	if _, err := os.Stat(dotenvFile); err == nil {
		if err := godotenv.Load(dotenvFile); err != nil {
			fmt.Println(err, "error loading dotenv file")
		}
	}

	viper.AutomaticEnv()
	viper.SetEnvKeyReplacer(strings.NewReplacer("-", "_"))

	//
	exchange, symbol := viper.GetString("exchange"),
		viper.GetString("symbol")
	fmt.Println(exchange, symbol)
	userConfig, err := bbgo.Load(configFile, false)
	if err!=nil{
		fmt.Println(err)
	}
	return &Exchange{
		sessionName: exchange,
		symbol:      symbol,
		userConfig:  userConfig,
	}

}
