#ifndef PROTOCOL_H

	#define PROTOCOL_H
	
	#define PROTOCOL_BAUD 38400

	typedef struct {
		volatile uint8_t command;
		volatile uint8_t data_len;
		volatile uint8_t data[8];
	} rx_data;

	typedef struct {
		volatile uint8_t response;
		volatile uint8_t data_len;
		volatile uint8_t data[8];
	} tx_data;

	#define CMD_INFO 0
	#define CMD_LCD_WRITE 1
	#define CMD_LCD_HOME 2
	#define CMD_LCD_CLEAR 3
	#define CMD_LCD_TOGGLE_DISPLAY 4
	#define CMD_LCD_TOGGLE_CURSOR 5
	#define CMD_LCD_TOOGLE_BLINK 6

	#define RESP_SUCCESS 0
	#define RESP_FAILURE 1
	#define RESP_WORKING 2

#endif