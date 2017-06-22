#include <util/delay.h>
#include <string.h>

#include "mcu/mcu.h"
#include "io/io.h"
#include "lcd/hd44780.h"
#include "uart/hard_user.h"

LCD_HD44780_16x2 lcd(PIN_PA1, PIN_PA0, PIN_PD2,
	                 PIN_PD3, PIN_PD4, PIN_PD5, PIN_PB4,
	                 PIN_PB3, PIN_PB2, PIN_PB1, PIN_PB0);

int main(){
	set_pin_mode(PIN_PD6, OUTPUT);
	digital_write(PIN_PD6, HIGH);

	lcd.begin();
	set_pin_mode(PIN_PD0, INPUT);
	set_pin_mode(PIN_PD1, INPUT);

	while (1){
		lcd.clear();

		char c;
		for (c = 'P'; c >= 'A'; c--){
			lcd.write(c);
			_delay_ms(10);
		}

		lcd.set_position(1, 0);

		for (c = 'A'; c <= 'P'; c++){
			lcd.write(c);
			_delay_ms(10);
		}
	}
}
