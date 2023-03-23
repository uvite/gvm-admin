package main

import (
	"github.com/dannywolfmx/go-tts/tts"
	"sync"
	"time"
)

const lang = "zh"

const sampleRate = 27000

func main() {
	voice := tts.NewTTS(lang, sampleRate)
	voice.Play()
	var wg sync.WaitGroup

	wg.Add(1)
	go func() {
		time.Sleep(4 * time.Second)
		voice.Next()
		wg.Done()
	}()

	voice.Add("这个库来实现播放声音的功能")

	wg.Wait()
}
