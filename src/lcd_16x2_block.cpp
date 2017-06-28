#include <util/delay.h>
#include <string.h>

#include "mcu/mcu.h"
#include "io/io.h"
#include "lcd/hd44780.h"
#include "uart/hard_uart.h"
#include "protocol/protocol.h"

LCD_HD44780_16x2 lcd(PIN_PA1, PIN_PA0, PIN_PD2,
	                 PIN_PD3, PIN_PD4, PIN_PD5, PIN_PB4,
	                 PIN_PB3, PIN_PB2, PIN_PB1, PIN_PB0,
	                 PIN_PD6);

DataPacketStream dpstream(&Serial);

void command(data_packet rx){
	data_packet response;

	response.type = RESP_SUCCESS;
	response.data_len = 0;

	switch (rx.type){
		case CMD_INFO:
			response.data_len = 3;
			response.data[0] = MODULE_TYPE_LCD;
			response.data[1] = 16;
			response.data[2] = 2;
			break;
		case CMD_LCD_HOME:
			lcd.home();
			break;
		case CMD_LCD_CLEAR:
			lcd.clear();
			break;
		case CMD_LCD_WRITE:
			lcd.write((char*)rx.data, rx.data_len);
			break;
		case CMD_LCD_TOGGLE_DISPLAY:
			if (rx.data_len != 1){
				response.type = RESP_FAILURE;
				response.data_len = 1;
				response.data[0] = ERROR_WRONG_NUMBER_OF_ARGUMENT;
				break;
			}

			lcd.set_display(rx.data[0]);
			break;
		case CMD_LCD_TOGGLE_CURSOR:
			if (rx.data_len != 1){
				response.type = RESP_FAILURE;
				response.data_len = 1;
				response.data[0] = ERROR_WRONG_NUMBER_OF_ARGUMENT;
				break;
			}

			lcd.set_cursor(rx.data[0]);
			break;
		case CMD_LCD_TOGGLE_BLINK:
			if (rx.data_len != 1){
				response.type = RESP_FAILURE;
				response.data_len = 1;
				response.data[0] = ERROR_WRONG_NUMBER_OF_ARGUMENT;
				break;
			}

			lcd.set_blink(rx.data[0]);
			break;
		case CMD_LCD_SET_POSITION:
			if (rx.data_len != 2){
				response.type = RESP_FAILURE;
				response.data_len = 1;
				response.data[0] = ERROR_WRONG_NUMBER_OF_ARGUMENT;
				break;
			}

			lcd.set_position(rx.data[0], rx.data[1]);
			break;
		case CMD_LCD_TOGGLE_BACKLIGHT:
			if (rx.data_len != 1){
				response.type = RESP_FAILURE;
				response.data_len = 1;
				response.data[0] = ERROR_WRONG_NUMBER_OF_ARGUMENT;
				break;
			}

			lcd.set_backlight(rx.data[0]);
			break;
		default:
			response.type = RESP_FAILURE;
			break;
	}
	dpstream.send(response);
}

int main(){
	lcd.begin();
	Serial.begin(1200);

	while (1){
		dpstream.rx_loop();
		if (dpstream.available()){
			command(dpstream.read());
		}
	}
}