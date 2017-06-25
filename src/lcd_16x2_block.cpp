#include <util/delay.h>
#include <string.h>

#include "mcu/mcu.h"
#include "io/io.h"
#include "lcd/hd44780.h"
#include "uart/hard_uart.h"
#include "protocol/protocol.h"

LCD_HD44780_16x2 lcd(PIN_PA1, PIN_PA0, PIN_PD2,
	                 PIN_PD3, PIN_PD4, PIN_PD5, PIN_PB4,
	                 PIN_PB3, PIN_PB2, PIN_PB1, PIN_PB0);

data_packet rx_data;
uint8_t rx_state = STATE_TYPE, rx_ptr;

void print(uint8_t n){
	lcd.write(48 + (n / 10));
	lcd.write(48 + (n % 10));
	lcd.write(' ');
}

void command(){
	switch (rx_data.type){
		case CMD_LCD_HOME:
			lcd.home();
			break;
		case CMD_LCD_CLEAR:
			lcd.clear();
			break;
		case CMD_LCD_WRITE:
			lcd.write((char*)rx_data.data, rx_data.data_len);
			break;
		case CMD_LCD_TOGGLE_DISPLAY:
			if (rx_data.data_len != 1){
				break;
			}

			lcd.set_display(rx_data.data[0]);
			break;
		case CMD_LCD_TOGGLE_CURSOR:
			if (rx_data.data_len != 1){
				break;
			}

			lcd.set_cursor(rx_data.data[0]);
			break;
		case CMD_LCD_TOGGLE_BLINK:
			if (rx_data.data_len != 1){
				break;
			}

			lcd.set_blink(rx_data.data[0]);
			break;
		case CMD_LCD_SET_POSITION:
			if (rx_data.data_len != 2){
				break;
			}

			lcd.set_position(rx_data.data[0], rx_data.data[1]);
			break;
		default:
			break;
	}
}

int main(){
	set_pin_mode(PIN_PD6, OUTPUT);
	digital_write(PIN_PD6, HIGH);

	lcd.begin();
	Serial.begin(1200);
	while (1){
		if (Serial.available()){
			switch (rx_state){
				case STATE_TYPE:
					rx_data.type = Serial.read();
					rx_state = STATE_LEN;
					break;
				case STATE_LEN:
					// read in len then move to STATE_DATA, ready to read data
					rx_data.data_len = Serial.read();
					if (rx_data.data_len > sizeof(rx_data.data)){
						// size is too large, discarding
						rx_state = STATE_TYPE;	
					} else {
						rx_ptr = 0;
						rx_state = STATE_DATA;

						if (rx_data.data_len == 0){
							command();
							rx_state = STATE_TYPE;
						}
					}
					break;
				case STATE_DATA:
					// Read byte and increase pointer
					rx_data.data[rx_ptr] = Serial.read();
					rx_ptr++;

					if (rx_ptr >= rx_data.data_len){
						// All bytes have been received, calling handler
						command();
						rx_state = STATE_TYPE;
					}
					break;
			}
		}
	}
}