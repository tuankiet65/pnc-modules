#include <util/delay.h>
#include <string.h>

#include "mcu/mcu.h"
#include "io/io.h"
#include "numpad/numpad.h"
#include "uart/hard_uart.h"
#include "protocol/protocol.h"

Numpad4x4 numpad(PIN_PB0, PIN_PB1, PIN_PB2, PIN_PB3,
	             PIN_PD2, PIN_PD3, PIN_PD4, PIN_PD5);

DataPacketStream dpstream(&Serial);

void command(data_packet rx){
	data_packet response;

	response.type = RESP_SUCCESS;
	response.data_len = 0;

	switch (rx.type){
		case CMD_INFO:
			response.data_len = 3;

			response.data[0] = MODULE_TYPE_NUMPAD;
			response.data[1] = 4;
			response.data[2] = 4;

			break;
		case CMD_NUMPAD_GET_BUTTON:
			response.data_len = 4;

			response.data[0] = numpad.get_row(0);
			response.data[1] = numpad.get_row(1);
			response.data[2] = numpad.get_row(2);
			response.data[3] = numpad.get_row(3);

			break;
		default:
			response.type = RESP_FAILURE;
			response.data_len = 1;
			response.data[0] = ERROR_INVALID_COMMAND;
			break;
	}

	dpstream.send(response);
}

int main(){
	numpad.begin();
	Serial.begin(1200);

	while (1){
		dpstream.rx_loop();
		if (dpstream.available()){
			command(dpstream.read());
		}
	}
}