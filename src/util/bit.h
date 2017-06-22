#ifndef BIT_H

#define BIT_H

#include <stdint.h>

#define bit_is_on(num, bit) (((*num) >> bit) & 1)
#define bit_is_off(num, bit) !(bit_is_on(num, bit))
#define bit_set_on(num, bit) (*num) |= (uint8_t)(1 << bit)
#define bit_set_off(num, bit) (*num) &= ~(uint8_t)(1 << bit)

#endif