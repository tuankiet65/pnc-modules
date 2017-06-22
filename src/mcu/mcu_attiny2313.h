#ifndef MCU_ATTINY2313_H

	#define MCU_ATTINY2313_H
	
	volatile uint8_t* PIN_DD_REGS[] = {
		&DDRA,   // Port A
		&DDRB,   // Port B
		nullptr, // Port C (not used)
		&DDRD,  // Port D
	};

	volatile uint8_t* PIN_PORT_REGS[] = {
		&PORTA,  // Port A
		&PORTB,  // Port B
		nullptr, // Port C (not used)
		&PORTD,  // Port D
	};

	volatile uint8_t* PIN_PIN_REGS[] = {
		&PINA,   // Port A
		&PINB,   // Port B
		nullptr, // Port C (not used)
		&PIND,   // Port D
	};

	#define PIN_PA0 0b00000000
	#define PIN_PA1 0b00000001
	#define PIN_PA2 0b00000010
	#define PIN_PB0 0b00001000
	#define PIN_PB1 0b00001001
	#define PIN_PB2 0b00001010
	#define PIN_PB3 0b00001011
	#define PIN_PB4 0b00001100
	#define PIN_PB5 0b00001101
	#define PIN_PB6 0b00001110
	#define PIN_PB7 0b00001111
	#define PIN_PD0 0b00011000
	#define PIN_PD1 0b00011001
	#define PIN_PD2 0b00011010
	#define PIN_PD3 0b00011011
	#define PIN_PD4 0b00011100
	#define PIN_PD5 0b00011101
	#define PIN_PD6 0b00011110

#endif