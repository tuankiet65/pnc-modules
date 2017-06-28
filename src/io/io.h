#ifndef IO_H

#define IO_H

#include <avr/interrupt.h>
#include <util/atomic.h>
#include <stdint.h>


#include "util/bit.h"

#define LOW false
#define HIGH true

#define INPUT 0
#define INPUT_PULLUP 1
#define OUTPUT 2

#define get_pin_definition(pin) {PIN_DD_REGS[pin >> 3],\
                                 PIN_PORT_REGS[pin >> 3], \
                                 PIN_PIN_REGS[pin >> 3], \
                                 (uint8_t)(pin & 0b00000111)}

extern volatile uint8_t* PIN_DD_REGS[];
extern volatile uint8_t* PIN_PORT_REGS[];
extern volatile uint8_t* PIN_PIN_REGS[];

typedef struct {
	volatile uint8_t *dd;
	volatile uint8_t *port;
	volatile uint8_t *pin;
	uint8_t bit;
} pin_definition;

uint8_t get_pin_mode(uint8_t pin_num);
void set_pin_mode(uint8_t pin_num, uint8_t mode);

bool digital_read(uint8_t pin_num);
void digital_write(uint8_t pin_num, bool state);

#endif
