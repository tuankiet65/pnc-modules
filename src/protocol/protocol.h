#ifndef PROTOCOL_H
	
	#define PROTOCOL_H
	
	#include "uart/stream.h"
	
	#define PROTOCOL_BAUD 38400
	
	#define STATE_IDLE 0
	#define STATE_TYPE 1
	#define STATE_LEN 2
	#define STATE_DATA 3
	
	#define MAX_EMPTY_CYCLE_COUNT 255

	typedef struct {
		uint8_t type;
		uint8_t data_len;
		uint8_t data[8];
	} data_packet;

	class DataPacketStream {
	private:
		Stream *stream = nullptr;
		data_packet rx_data;
		uint8_t rx_state = STATE_TYPE, rx_ptr;
		bool unread = false;
		uint8_t empty_cycle_count = 0;

		void fail(uint8_t error_type);
	public:
		DataPacketStream(Stream *stream) {
			this->stream = stream;
		}

		void rx_loop();

		bool available(){
			return unread;
		}

		data_packet read(){
			unread = false;
			return rx_data;
		}
		
		void send(data_packet &tx);
	};

	// need lcd reinit command
	#define CMD_INFO 0
	#define CMD_LCD_WRITE 1
	#define CMD_LCD_HOME 2
	#define CMD_LCD_CLEAR 3
	#define CMD_LCD_TOGGLE_DISPLAY 4
	#define CMD_LCD_TOGGLE_CURSOR 5
	#define CMD_LCD_TOGGLE_BLINK 6
	#define CMD_LCD_SET_POSITION 7
	#define CMD_LCD_TOGGLE_BACKLIGHT 8
	#define CMD_INIT 9

	#define CMD_NUMPAD_GET_BUTTON 10

	#define RESP_SUCCESS 0
	#define RESP_FAILURE 1
	#define RESP_WORKING 2

	#define ERROR_TIMEOUT 0
	#define ERROR_SIZE_TOO_LARGE 1
	#define ERROR_WRONG_NUMBER_OF_ARGUMENT 2
	#define ERROR_INVALID_COMMAND 3

	#define MODULE_TYPE_LCD 1
	#define MODULE_TYPE_NUMPAD 2
#endif