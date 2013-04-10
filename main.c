#ifndef F_CPU 
  // Attiny25V
  #define F_CPU 8000000UL 
#endif
#include <avr/io.h>

int main(void){
  // all pins as outputs
  DDRB = 0xff;

  // set up pwm
  TCCR0A = 0b00100010; // CTC-mode, OC0A disconnected, clear OC0B on match
  TCCR0B = 0b00000001; // no prescaler
  TCNT0 = 0;           // reset TCNT0
  
  /*
    set OCR0A to 160 -> 20ms pwm time
    OCR0B for down edge
   */
  return 0;
}
