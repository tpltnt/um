# set microcontroller type
MCU = attiny25

CC = avr-gcc

main: main.c
	$(CC) -mmcu=$(MCU) main.c -o firmware
