#ifndef PROTOCOL_H
	
	#define PROTOCOL_H
	
	#define PROTOCOL_BAUD 9600
	
	typedef struct {
		uint8_t type;
		uint8_t data_len;
		uint8_t data[8];
	} data_packet;

	#define CMD_INFO 0
	#define CMD_LCD_WRITE 1
	#define CMD_LCD_HOME 2
	#define CMD_LCD_CLEAR 3
	#define CMD_LCD_TOGGLE_DISPLAY 4
	#define CMD_LCD_TOGGLE_CURSOR 5
	#define CMD_LCD_TOGGLE_BLINK 6
	#define CMD_LCD_SET_POSITION 7

	#define RESP_SUCCESS 0
	#define RESP_FAILURE 1
	#define RESP_WORKING 2

#endif