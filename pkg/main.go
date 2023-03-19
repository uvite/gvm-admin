package main

import (
	"crypto/rand"
	"encoding/base64"
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/pkg/hdwallet"
	"math/big"
)

func main1() {
	n, err := rand.Int(rand.Reader, big.NewInt(128))
	if err == nil {
		fmt.Println("rand.Int：", n, n.BitLen())
	}
	//2、Prime
	p, err := rand.Prime(rand.Reader, 5)
	if err == nil {
		fmt.Println("rand.Prime：", p)
	}
	//3、Read
	b := make([]byte, 32)
	m, err := rand.Read(b)
	if err == nil {
		fmt.Println("rand.Read：", b[:m])
		fmt.Println("rand.Read：", base64.URLEncoding.EncodeToString(b))
	}
}
func main() {
	main1()
	// 1. BIP39 Process :
	// 1-1. Generate mnemonic code
	// 1-2. Generate master seed
	language := "english"
	pwd := "abcd1234!@"
	byteSize := 64 // 256bit
	mnemonicCode := hdwallet.GenerateMnemonicCode(language, byteSize)
	fmt.Println("mnemonicCode : ", mnemonicCode)

	//masterSeed := Seed(mnemonicCode, pwd)
	masterSeed := hdwallet.Seed(mnemonicCode, pwd)
	fmt.Println("masterSeed : ", masterSeed)

	// 2. BIP32 Process
	// 2-1. Generate Master key
	masterKey, _ := hdwallet.NewMasterKey(masterSeed)
	fmt.Println("masterKey : ", masterKey)

	// 3. Calculating Dreiven path index(uint32) and generate derive childkey form path
	// example => ethPath = "m/44'/60'/0'/0/0"
	ethPath := "m/44'/60'/0'/0/0"
	childKey, err := hdwallet.DeriveKeyFromPath(masterKey, ethPath)
	if err != nil {
		fmt.Println("error : ", err)
	}

	fmt.Println("private key : ", childKey)
	fmt.Println("public key : ", childKey.PublicKey())

	// 4. From BIP32 Key to ECDSA(spec256k1)
	privKey, _ := hdwallet.Bip32KeyToECDSA(*childKey)
	pubKey := privKey.PublicKey

	// 5. Generate Etherieum address
	addressETH := hdwallet.GenerateAddressETH(pubKey)

	fmt.Println("ETH Address : ", addressETH)

}
