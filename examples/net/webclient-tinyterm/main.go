// This example runs on wioterminal.  It gets an URL using http.Get() and
// displays the output on the wioterminal LCD screen.
//
// Note: It may be necessary to increase the stack size when using "net/http".
// Use the -stack-size=4KB command line option.

//go:build wioterminal

// +build: wioterminal

package main

import (
	"fmt"
	"image/color"
	"io"
	"log"
	"machine"
	"net/http"
	"net/url"
	"strings"
	"time"

	"tinygo.org/x/drivers"
	"tinygo.org/x/drivers/ili9341"
	"tinygo.org/x/drivers/rtl8720dn"
	"tinygo.org/x/tinyfont/proggy"
	"tinygo.org/x/tinyterm"
)

var (
	ssid string
	pass string
)

var (
	netcfg = rtl8720dn.Config{
		Ssid:       ssid,
		Passphrase: pass,
		En:         machine.RTL8720D_CHIP_PU,
		Uart:       machine.UART3,
		Tx:         machine.PB24,
		Rx:         machine.PC24,
		Baudrate:   614400,
	}

	netdev = rtl8720dn.New(&netcfg)

	display = ili9341.NewSPI(
		machine.SPI3,
		machine.LCD_DC,
		machine.LCD_SS_PIN,
		machine.LCD_RESET,
	)

	backlight = machine.LCD_BACKLIGHT

	terminal = tinyterm.NewTerminal(display)

	black = color.RGBA{0, 0, 0, 255}
	white = color.RGBA{255, 255, 255, 255}
	red   = color.RGBA{255, 0, 0, 255}
	blue  = color.RGBA{0, 0, 255, 255}
	green = color.RGBA{0, 255, 0, 255}

	font = &proggy.TinySZ8pt7b
)

func notify(e drivers.NetlinkEvent) {
	switch e {
	case drivers.NetlinkEventNetUp:
		fmt.Println("Wifi connection UP")
		fmt.Fprintf(terminal, "Wifi connection UP")
	case drivers.NetlinkEventNetDown:
		fmt.Println("Wifi connection DOWN")
		fmt.Fprintf(terminal, "Wifi connection DOWN")
	}
}

func main() {

	machine.SPI3.Configure(machine.SPIConfig{
		SCK:       machine.LCD_SCK_PIN,
		SDO:       machine.LCD_SDO_PIN,
		SDI:       machine.LCD_SDI_PIN,
		Frequency: 40000000,
	})

	display.Configure(ili9341.Config{})
	display.FillScreen(black)

	backlight.Configure(machine.PinConfig{machine.PinOutput})
	backlight.High()

	terminal.Configure(&tinyterm.Config{
		Font:       font,
		FontHeight: 10,
		FontOffset: 6,
	})

	fmt.Fprintf(terminal, "Connecting to %s...\r\n", ssid)

	netdev.NetNotify(notify)

	if err := netdev.NetConnect(); err != nil {
		log.Fatal(err)
	}

	name := "John Doe"
	occupation := "gardener"

	params := "name=" + url.QueryEscape(name) + "&" +
		"occupation=" + url.QueryEscape(occupation)

	path := fmt.Sprintf("https://httpbin.org/get?%s", params)

	cnt := 0
	for {
		fmt.Fprintf(terminal, "Getting %s\r\n\r\n", path)
		resp, err := http.Get(path)
		if err != nil {
			fmt.Fprintf(terminal, "%s\r\n", err.Error())
			time.Sleep(10 * time.Second)
			continue
		}

		fmt.Fprintf(terminal, "%s %s\r\n", resp.Proto, resp.Status)
		for k, v := range resp.Header {
			fmt.Fprintf(terminal, "%s: %s\r\n", k, strings.Join(v, " "))
		}
		fmt.Fprintf(terminal, "\r\n")

		body, err := io.ReadAll(resp.Body)
		fmt.Fprintf(terminal, string(body))
		resp.Body.Close()

		cnt++
		fmt.Fprintf(terminal, "-------- %d --------\r\n", cnt)
		time.Sleep(10 * time.Second)
	}
}
