# set microcontroller type
MCU = attiny25
# ISP
ISP = stk500
# microcontroller chip
IC =  t25
PORT = /dev/ttyUSB0


# toolchain
CC = avr-gcc
OBJCOPY = avr-objcopy
FORMAT = ihex


# fuse settings
FUSES = -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m


firmware: main.c
	$(CC) -mmcu=$(MCU) main.c -o firmware.elf
	$(OBJCOPY) -j .text -j .data -O ihex firmware.elf firmware.hex
	rm firmware.elf

flash: firmware
        # write firmware
	avrdude -c $(ISP) -p $(IC) -U flash:w:firmware.hex $(FUSES) -P $(PORT)
        # verify firmware
	avrdude -c $(ISP) -p $(IC) -U flash:v:firmware.hex $(FUSES) -P $(PORT)
