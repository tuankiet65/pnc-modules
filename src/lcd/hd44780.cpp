#include "lcd/hd44780.h"

void LCD_HD44780_16x2::enable(){
	set_pin_mode(en, OUTPUT);

	digital_write(en, HIGH);
	// Per datasheet pg49, tcycE >= 1000ns
	_delay_us(2);

	digital_write(en, LOW);
	// Per datasheet pg49, tcycE >= 1000ns
	_delay_us(2);
}

void LCD_HD44780_16x2::do_command(uint8_t command){
	set_pin_mode(rw, OUTPUT);
	set_pin_mode(rs, OUTPUT);

	digital_write(rw, LOW);
	digital_write(rs, LOW);

	static volatile int i;
	for (i = 0; i < 8; i++){
		set_pin_mode(d[i], OUTPUT);
		digital_write(d[i], (command >> i) & 1);
	}

	enable();

	// delay for >= 37us (datasheet pg 24+25)
	_delay_us(40);
}

void LCD_HD44780_16x2::begin(){
	// Implemented according to the datasheet
	// https://www.sparkfun.com/datasheets/LCD/HD44780.pdf
	// Page 45

	// Wait for power supply
	_delay_ms(40);

	// Set function register to 8 bit
	do_command(CMD_FUNC_SET());
	// Delay for 5 msec (> 4.1msec according to datasheet)
	_delay_ms(5);

	// Second go
	do_command(CMD_FUNC_SET());
	// Delay for 200 usec (>= 100usec according to datasheet)
	_delay_us(200);

	// Third and final go
	do_command(CMD_FUNC_SET());

	// Initialization is finished here
	do_command(CMD_DISP_ONOFF(disp, cursor, blink));
	clear();
}

void LCD_HD44780_16x2::clear(){
	do_command(CMD_CLEAR_DISPLAY());
	_delay_ms(2);
}

void LCD_HD44780_16x2::home(){
	do_command(CMD_RETURN_HOME());
	_delay_ms(2);
}

void LCD_HD44780_16x2::write(char c){
	set_pin_mode(rw, OUTPUT);
	set_pin_mode(rs, OUTPUT);

	digital_write(rw, LOW);
	digital_write(rs, HIGH);

	static volatile int i;
	for (i = 0; i < 8; i++){
		set_pin_mode(d[i], OUTPUT);
		digital_write(d[i], (((uint8_t)c >> i) & 1));
	}

	enable();
}

void LCD_HD44780_16x2::write(char str[], size_t len){
	static volatile size_t i;
	for (i = 0; i < len; i++){
		write(str[i]);
	}
}

void LCD_HD44780_16x2::set_position(uint8_t row, uint8_t col){
	uint8_t addr = LCD_START_ADDR[row] + col;

	set_pin_mode(rw, OUTPUT);
	set_pin_mode(rs, OUTPUT);

	digital_write(rw, LOW);
	digital_write(rs, LOW);

	uint8_t command = CMD_SET_DDADDR(addr);
	static volatile int i;
	for (i = 0; i < 8; i++){
		set_pin_mode(d[i], OUTPUT);
		digital_write(d[i], (((uint8_t)command >> i) & 1));
	}

	enable();	
}

void LCD_HD44780_16x2::set_cursor(bool state){
	cursor = state;
	do_command(CMD_DISP_ONOFF(disp, cursor, blink));
}

void LCD_HD44780_16x2::set_blink(bool state){
	blink = state;
	do_command(CMD_DISP_ONOFF(disp, cursor, blink));
}

void LCD_HD44780_16x2::set_display(bool state){
	disp = state;
	do_command(CMD_DISP_ONOFF(disp, cursor, blink));	
}