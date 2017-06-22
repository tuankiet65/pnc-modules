#ifndef MCU_ATTINY85_H

	#define MCU_ATTINY85_H
	
	#define PIN_PB0 0
	#define PIN_PB1 1
	#define PIN_PB2 2
	#define PIN_PB3 3
	#define PIN_PB4 4
	#define PIN_PB5 5

	inline pin_definition get_pin_definition(uint8_t pin_num){
		static pin_definition pin;

		pin.dd = &DDRB;
		pin.port = &PORTB;
		pin.pin = &PINB;
		pin.bit = pin_num;
		
		return pin;
	}

#endif