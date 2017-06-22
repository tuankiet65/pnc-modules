#ifndef HARD_UART_H
	#define HARD_UART_H
	
	#include <avr/io.h>

	#include "uart/protocol.h"
	#include "util/bit.h"
	
	typedef void (*receive_handler)(rx_data&);

	#define STATE_IDLE 0
	#define STATE_CMD 1
	#define STATE_LEN 2
	#define STATE_DATA 3

	class _Serial {
	private:
		bool if_read_error(){
			static uint8_t ucsra_tmp = UCSRA;
			return bit_is_on(ucsra_tmp, FE) && bit_is_on(ucsra_tmp, DOR);
		}

		inline void send_byte(uint8_t byte){
			UDR = byte;
		}

		inline uint8_t get_byte(){
			return UDR;
		}

		volatile uint8_t rx_state = STATE_CMD, tx_state = STATE_IDLE;
		volatile uint8_t rx_ptr, tx_ptr;
	public:
		rx_data received_data;
		tx_data transmit_data;

		receive_handler on_received;

		void begin();
		void send(tx_data &tx);
		void register_receive_handler(receive_handler recv){
			on_received = recv;
		}
	}

	extern _Serial Serial;

#endif