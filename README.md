code for a useless machine
==========================

The useless machine uses an Atmel AVR ATtiny25 and a servo.

The internal clock frequency of the ATtiny is set to 8 MHz. That means
one step/clock cycle lasts 0.125 ms. 160 steps result in a 20ms cycle and are
the value of OCR0A register in CTC-mode.


references
----------
* [Atmel ATtiny25 page](http://www.atmel.com/devices/ATTINY25.aspx)
* Makefile help
    * [makefile template](https://github.com/ithron/AVR-Makefile)
    * [HackDC wiki](http://wiki.hacdc.org/index.php/AVR_Makefile)
* [AVR Fuse Calculator](http://www.engbedded.com/fusecalc/)