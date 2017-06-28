#include "protocol/protocol.h"

void DataPacketStream::rx_loop(){
	if (stream == nullptr){
		return;
	}
	
	if (stream->available()){
		empty_cycle_count = 0;
		unread = false;
		switch (rx_state){
			case STATE_TYPE:
				rx_data.type = stream->read();
				rx_state = STATE_LEN;
				break;
			case STATE_LEN:
				// read in len then move to STATE_DATA, ready to read data
				rx_data.data_len = stream->read();
				if (rx_data.data_len > sizeof(rx_data.data)){
					// size is too large, discarding
					rx_state = STATE_TYPE;
					fail(ERROR_SIZE_TOO_LARGE);
				} else {
					rx_ptr = 0;
					rx_state = STATE_DATA;

					if (rx_data.data_len == 0){
						unread = true;
						rx_state = STATE_TYPE;
					}
				}
				break;
			case STATE_DATA:
				// Read byte and increase pointer
				rx_data.data[rx_ptr] = stream->read();
				rx_ptr++;

				if (rx_ptr >= rx_data.data_len){
					// All bytes have been received, calling handler
					unread = true;
					rx_state = STATE_TYPE;
				}

				break;
		}
	} else {
		empty_cycle_count++;
	}

	if (rx_state != STATE_TYPE && empty_cycle_count >= MAX_EMPTY_CYCLE_COUNT){
		// timeout, quitting
		fail(ERROR_TIMEOUT);
		rx_state = STATE_TYPE;
		empty_cycle_count = 0;
	}
}

void DataPacketStream::send(data_packet &tx){
	uint8_t i;
	stream->send(tx.type);
	stream->send(tx.data_len);
	for (i = 0; i < tx.data_len; i++){
		stream->send(tx.data[i]);
	}
}

void DataPacketStream::fail(uint8_t error_type){
	stream->send(RESP_FAILURE);
	stream->send(0x01);
	stream->send(error_type);
}