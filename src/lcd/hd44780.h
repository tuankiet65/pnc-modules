#ifndef HD44780_H

#define HD44780_H

// Per datasheet page 24 + 25
#define CMD_CLEAR_DISPLAY()                  0b00000001
#define CMD_RETURN_HOME()                    0b00000010
#define CMD_ENTRY_MODE()     0b00000111 // Incrementing cursor, shift display
#define CMD_DISP_ONOFF(status)  0b00001000 | status
#define CMD_DISP_SHIFT(target, direction)    0b00010000 | ((bool)target << 3)    | ((bool)direction << 2)
#define CMD_FUNC_SET() 0b00111000 // 8 bit, 2 lines, 5x8 font
#define CMD_SET_CGADDR(address)              0b01000000 | (address)
#define CMD_SET_DDADDR(address)              0b10000000 | (address)

#define DISPLAY 2
#define CURSOR 1
#define BLINK 0

#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stddef.h>
#include "io/io.h"

const PROGMEM uint8_t LCD_START_ADDR[4] {
	0x00,
	0x40,
	0x10,
	0x30
};

class LCD_HD44780_16x2 {
private:
	uint8_t rs, rw, en, d[8], backlight_pin;
	
	uint8_t disp_onoff_status = _BV(DISPLAY);

	void enable();
	void do_command(uint8_t command);
	void _pin_write(uint8_t rw_state, uint8_t rs_state, uint8_t d);
public:
	LCD_HD44780_16x2(uint8_t rs, uint8_t rw, uint8_t en,
		uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3,
		uint8_t d4, uint8_t d5, uint8_t d6, uint8_t d7,
		uint8_t backlight_pin){
		this->rs = rs;
		this->rw = rw;
		this->en = en;
		this->d[0] = d0;
		this->d[1] = d1;
		this->d[2] = d2;
		this->d[3] = d3;
		this->d[4] = d4;
		this->d[5] = d5;
		this->d[6] = d6;
		this->d[7] = d7;
		this->backlight_pin = backlight_pin;
	}

	void begin();
	void clear();
	void home();
	void write(char c);
	void write(char *str, size_t len);
	void set_position(uint8_t col, uint8_t row);
	void set_cursor(bool state);
	void set_blink(bool state);
	void set_display(bool state);
	void set_backlight(bool state);
};

#endif