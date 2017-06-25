#include "io.h"

/* Pin mode

DDxn      PORTxn               State
 0           0            Input tri-state
 0           1            Input pull-up
 1           0            Output low
 1           1            Output high

*/

uint8_t get_pin_mode(uint8_t pin_num){
	pin_definition pin = get_pin_definition(pin_num);
	if (bit_is_on((*pin.dd), pin.bit)){
		// DDxn == 1
		return OUTPUT;
	} else {
		// DDxn == 0
		if (bit_is_on((*pin.port), pin.bit)){
			return INPUT_PULLUP; // PORTxn = 1
		} else {
			return INPUT; // PORTxn = 0
		}
	}
}

void set_pin_mode(uint8_t pin_num, uint8_t mode){
	pin_definition pin = get_pin_definition(pin_num);
	switch (mode){
		case INPUT:
			bit_set_off((*pin.dd), pin.bit); // DDxn = 0
			bit_set_off((*pin.port), pin.bit); // PORTxn = 0
			break;
		case INPUT_PULLUP:
			bit_set_off((*pin.dd), pin.bit); // DDxn = 0
			bit_set_on((*pin.port), pin.bit); // PORTxn = 1
			break;
		case OUTPUT:
			bit_set_on((*pin.dd), pin.bit);
			bit_set_off((*pin.port), pin.bit);
			break;
	}
}

bool digital_read(uint8_t pin_num){
	pin_definition pin = get_pin_definition(pin_num);

	return bit_is_on((*pin.pin), pin.bit);
}

void digital_write(uint8_t pin_num, bool state){
	pin_definition pin = get_pin_definition(pin_num);

	if (get_pin_mode(pin_num) == OUTPUT){
		if (state){
			bit_set_on((*pin.port), pin.bit);
		} else {
			bit_set_off((*pin.port), pin.bit);
		}
	}
}