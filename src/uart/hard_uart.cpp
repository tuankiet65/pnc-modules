#include "hard_uart.h"

_Serial Serial;

void _Serial::begin(){
	#define BAUD PROTOCOL_BAUD

	UBRRH = UBRRH_VALUE;
	UBRRL = UBRRL_VALUE;

	// No changes to UCSRA

	// UCSRB: Enable:
	// - RX complete interrupt
	// - TX complete interrupt
	// - RX
	// - TX
	UCSRB = _BV(RXCIE) | _BV(UDRIE) | _BV(RXEN) | _BV(TXEN)

	// No changes to UCSRC (UART, no parity, 1 stop bit, 8 bit character)
}

void _Serial::send(tx_data &tx){
	transmit_data = tx;
	send_byte(transmit_data.response);
	state = STATE_LEN;
}

ISR(USART_UDRE_vect){
	if (state == STATE_LEN){
		send_byte(transmit_data.data_len);
		STATE = STATE_DATA;
		tx_ptr = 0;
	} else if (state == STATE_DATA){
		if (tx_ptr >= transmit_data.data_len){
			state == STATE_IDLE;
		} else {
			send_byte(transmit_data[tx_ptr]);
			tx_ptr++;
		}
	}
}

ISR(USART_RX_vect){
	if (is_read_error()){
		// Read error occured, we abandoned currently received data

		rx_state = STATE_CMD;

		// We still have to read out a byte
		// because if it isn't, then the RXC
		// bit is still on => the interrupt will
		// be called.
		read_byte();

		return;
	}

	if (rx_state == STATE_CMD){
		// read in command then move to STATE_LEN, ready to read len
		received_data.command = read_byte();
		rx_state = STATE_LEN;
	} else if (rx_state == STATE_LEN){
		// read in len then move to STATE_DATA, ready to read data
		received_data.data_len = read_byte();
		rx_ptr = 0;
		rx_state = STATE_DATA;
	} else if (rx_state == STATE_DATA){
		if (rx_ptr >= received_data.data_len){
			// All bytes have been received, calling handler
			on_received(received_data);
		} else {
			// Read byte and increase pointer
			received_data.data[rx_ptr] = read_byte();
			rx_ptr++;
		}
	}
}