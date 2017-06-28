#include "lcd/hd44780.h"

void LCD_HD44780_16x2::_pin_write(uint8_t rw_state, uint8_t rs_state, uint8_t dv){
	set_pin_mode(rw, OUTPUT);
	set_pin_mode(rs, OUTPUT);

	digital_write(rw, rw_state);
	digital_write(rs, rs_state);

	uint8_t i;
	for (i = 0; i < 8; i++){
		set_pin_mode(d[i], OUTPUT);
		digital_write(d[i], (dv & 1));
		dv >>= 1;
	}

	enable();
}

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
	_pin_write(LOW, LOW, command);

	// delay for >= 37us (datasheet pg 24+25)
	_delay_us(40);
}

void LCD_HD44780_16x2::begin(){
	// Implemented according to the datasheet
	// https://www.sparkfun.com/datasheets/LCD/HD44780.pdf
	// Page 45

	// Wait for power supply
	_delay_ms(40);

	// Turn on the backlight first
	set_backlight(true);
	
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
	do_command(CMD_DISP_ONOFF(disp_onoff_status));
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
	_pin_write(LOW, HIGH, (uint8_t)c);
}

void LCD_HD44780_16x2::write(char str[], size_t len){
	size_t i;
	for (i = 0; i < len; i++){
		if (str[i]){
			write(str[i]);
		} else {
			return;
		}
	}
}

void LCD_HD44780_16x2::set_position(uint8_t row, uint8_t col){
	uint8_t addr = LCD_START_ADDR[row] + col;

	do_command(CMD_SET_DDADDR(addr));
}

void LCD_HD44780_16x2::set_cursor(bool state){
	if (state){
		bit_set_on(disp_onoff_status, CURSOR);
	} else {
		bit_set_off(disp_onoff_status, CURSOR);
	}
	do_command(CMD_DISP_ONOFF(disp_onoff_status));
}

void LCD_HD44780_16x2::set_blink(bool state){
	if (state){
		bit_set_on(disp_onoff_status, BLINK);
	} else {
		bit_set_off(disp_onoff_status, BLINK);
	}
	do_command(CMD_DISP_ONOFF(disp_onoff_status));
}

void LCD_HD44780_16x2::set_display(bool state){
	if (state){
		bit_set_on(disp_onoff_status, DISPLAY);
	} else {
		bit_set_off(disp_onoff_status, DISPLAY);
	}
	do_command(CMD_DISP_ONOFF(disp_onoff_status));	
}

void LCD_HD44780_16x2::set_backlight(bool state){
	set_pin_mode(backlight_pin, OUTPUT);
	digital_write(backlight_pin, state);
}