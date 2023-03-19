package config

type WALLET struct {
	Mnemonic      string          `mapstructure:"mnemonic" json:"mnemonic" yaml:"mnemonic"`
	Password      string          `mapstructure:"password" json:"password" yaml:"password"`

}
