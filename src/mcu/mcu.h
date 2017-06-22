#ifndef MCU_H

#define MCU_H

#include <stdint.h>
#include <avr/io.h>

#if defined(__AVR_ATtiny2313__)
	#include "mcu_attiny2313.h"
#elif defined(__AVR_ATtiny85__)
	#include "mcu_attiny85.h"
#else
	#error "You haven't define a MCU, define it with -mmcu=<mcu type>"
#endif

#endif