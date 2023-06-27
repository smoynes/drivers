#!/bin/sh
# These commands are run when running `make smoke-test`.
# They are all run in parallel with the -o flag changed to something unique (to
# avoid a race condition between writing the output and reading the result to
# get an md5sum).


tinygo build -size short -o ./build/test.hex -target=feather-rp2040 ./examples/adafruit4650
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/adt7410/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/adxl345/main.go
tinygo build -size short -o ./build/test.hex -target=pybadge ./examples/amg88xx
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/apa102/main.go
tinygo build -size short -o ./build/test.hex -target=nano-33-ble ./examples/apds9960/proximity/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/apa102/itsybitsy-m0/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/at24cx/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/bh1750/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/blinkm/main.go
tinygo build -size short -o ./build/test.hex -target=pinetime     ./examples/bma42x/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/bmi160/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/bmp180/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/bmp280/main.go
tinygo build -size short -o ./build/test.hex -target=trinket-m0 ./examples/bmp388/main.go
tinygo build -size short -o ./build/test.hex -target=bluepill ./examples/ds1307/sram/main.go
tinygo build -size short -o ./build/test.hex -target=bluepill ./examples/ds1307/time/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/ds3231/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/easystepper/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/flash/console/spi
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/flash/console/qspi
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/gc9a01/main.go
tinygo build -size short -o ./build/test.hex -target=feather-m0 ./examples/gps/i2c/main.go
tinygo build -size short -o ./build/test.hex -target=feather-m0 ./examples/gps/uart/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/hcsr04/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/hd44780/customchar/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/hd44780/text/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/hd44780i2c/main.go
tinygo build -size short -o ./build/test.hex -target=nano-33-ble ./examples/hts221/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/hub75/main.go
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/ili9341/basic
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/ili9341/basic
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/ili9341/pyportal_boing
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/ili9341/scroll
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/ili9341/scroll
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/ili9341/slideshow
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/lis3dh/main.go
tinygo build -size short -o ./build/test.hex -target=nano-33-ble ./examples/lps22hb/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/lsm303agr/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/lsm6ds3/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mag3110/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mcp23017/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mcp23017-multiple/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mcp3008/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mcp2515/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/microbitmatrix/main.go
tinygo build -size short -o ./build/test.hex -target=microbit-v2 ./examples/microbitmatrix/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mma8653/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/mpu6050/main.go
tinygo build -size short -o ./build/test.hex -target=p1am-100 ./examples/p1am/main.go
tinygo build -size short -o ./build/test.hex -target=pico ./examples/pca9685/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/pcd8544/setbuffer/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/pcd8544/setpixel/main.go
tinygo build -size short -o ./build/test.hex -target=arduino ./examples/servo
tinygo build -size short -o ./build/test.hex -target=pybadge ./examples/shifter/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/sht3x/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/sht4x/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/shtc3/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/ssd1306/i2c_128x32/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/ssd1306/spi_128x64/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/ssd1331/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/st7735/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/st7789/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/thermistor/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-bluefruit ./examples/tone
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/tm1637/main.go
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/touch/resistive/fourwire/main.go
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/touch/resistive/pyportal_touchpaint/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/vl53l1x/main.go
tinygo build -size short -o ./build/test.hex -target=itsybitsy-m0 ./examples/vl6180x/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/waveshare-epd/epd2in13/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/waveshare-epd/epd2in13x/main.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/waveshare-epd/epd4in2/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/ws2812
tinygo build -size short -o ./build/test.bin -target=m5stamp-c3          ./examples/ws2812
tinygo build -size short -o ./build/test.hex -target=feather-nrf52840 ./examples/is31fl3731/main.go
tinygo build -size short -o ./build/test.hex -target=arduino   ./examples/ws2812
tinygo build -size short -o ./build/test.hex -target=digispark ./examples/ws2812
tinygo build -size short -o ./build/test.hex -target=trinket-m0 ./examples/bme280/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/microphone/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/buzzer/main.go
tinygo build -size short -o ./build/test.hex -target=trinket-m0 ./examples/veml6070/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/l293x/simple/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/l293x/speed/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/l9110x/simple/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/l9110x/speed/main.go
tinygo build -size short -o ./build/test.hex -target=nucleo-f103rb ./examples/shiftregister/main.go
tinygo build -size short -o ./build/test.hex -target=hifive1b ./examples/ssd1351/main.go
tinygo build -size short -o ./build/test.hex -target=circuitplay-express ./examples/lis2mdl/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/max72xx/main.go
tinygo build -size short -o ./build/test.hex -target=feather-m0 ./examples/dht/main.go
# tinygo build -size short -o ./build/test.hex -target=arduino ./examples/keypad4x4/main.go
tinygo build -size short -o ./build/test.hex -target=feather-rp2040 ./examples/pcf8523/
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/pcf8563/alarm/
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/pcf8563/clkout/
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/pcf8563/time/
tinygo build -size short -o ./build/test.hex -target=xiao ./examples/pcf8563/timer/
tinygo build -size short -o ./build/test.hex -target=pico ./examples/qmi8658c/main.go
tinygo build -size short -o ./build/test.hex -target=feather-m0 ./examples/ina260/main.go
tinygo build -size short -o ./build/test.hex -target=nucleo-l432kc ./examples/aht20/main.go
tinygo build -size short -o ./build/test.hex -target=feather-m4 ./examples/sdcard/console/
tinygo build -size short -o ./build/test.hex -target=feather-m4 ./examples/i2csoft/adt7410/
tinygo build -size short -o ./build/test.elf -target=wioterminal ./examples/axp192/m5stack-core2-blinky/
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/xpt2046/main.go
tinygo build -size short -o ./build/test.elf -target=m5stack-core2 ./examples/ft6336/basic/
tinygo build -size short -o ./build/test.elf -target=m5stack-core2 ./examples/ft6336/touchpaint/
tinygo build -size short -o ./build/test.hex -target=nucleo-wl55jc ./examples/sx126x/lora_rxtx/
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/ssd1289/main.go
tinygo build -size short -o ./build/test.hex -target=pico ./examples/irremote/main.go
tinygo build -size short -o ./build/test.hex -target=badger2040 ./examples/uc8151/main.go
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/scd4x/main.go
tinygo build -size short -o ./build/test.uf2 -target=circuitplay-express ./examples/makeybutton/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/ds18b20/main.go
tinygo build -size short -o ./build/test.hex -target=nucleo-wl55jc ./examples/lora/lorawan/atcmd/
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/as560x/main.go
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/mpu6886/main.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/ttp229/main.go
tinygo build -size short -o ./build/test.hex -target=pico ./examples/ndir/main_ndir.go
tinygo build -size short -o ./build/test.hex -target=microbit ./examples/ndir/main_ndir.go
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/ndir/main_ndir.go
tinygo build -size short -o ./build/test.uf2 -target=pico ./examples/mpu9150/main.go
tinygo build -size short -o ./build/test.hex -target=macropad-rp2040 ./examples/sh1106/macropad_spi
# network examples (espat)
tinygo build -size short -o ./build/test.hex -target=challenger-rp2040 ./examples/net/ntpclient/
# network examples (wifinina)
tinygo build -size short -o ./build/test.hex -target=pyportal ./examples/net/http-get/
tinygo build -size short -o ./build/test.hex -target=arduino-nano33 ./examples/net/tcpclient/
tinygo build -size short -o ./build/test.hex -target=nano-rp2040 ./examples/net/websocket/dial/
tinygo build -size short -o ./build/test.hex -target=metro-m4-airlift ./examples/net/socket/
tinygo build -size short -o ./build/test.hex -target=matrixportal-m4 ./examples/net/webstatic/
tinygo build -size short -o ./build/test.hex -target=arduino-mkrwifi1010 ./examples/net/tlsclient/
tinygo build -size short -o ./build/test.hex -target=nano-rp2040 ./examples/net/mqttclient/natiu/
# network examples (rtl8720dn)
tinygo build -size short -o ./build/test.hex -target=wioterminal ./examples/net/webclient/
tinygo build -size short -o ./build/test.hex -target=wioterminal ./examples/net/webserver/
tinygo build -size short -o ./build/test.hex -target=wioterminal ./examples/net/mqttclient/paho/
