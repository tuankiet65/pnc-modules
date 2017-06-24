#include "hard_uart.h"

_Serial Serial;

void _Serial::begin(uint32_t baud){
	sei(); // enabling interrupt

	// BAUD is set in hard_uart.h

	UBRRH = UBRRH_VALUE;
	UBRRL = UBRRL_VALUE;

	if (USE_2X){
		UCSRA |= _BV(U2X);
	}
	// No changes to UCSRA

	// UCSRB: Enable:
	// - RX complete interrupt
	// - TX complete interrupt
	// - RX
	// - TX
	UCSRB = _BV(RXCIE) | _BV(UDRIE) | _BV(RXEN) | _BV(TXEN);

	// No changes to UCSRC (UART, no parity, 1 stop bit, 8 bit character)
}

void _Serial::send(uint8_t chr){
	tx_buf.data[tx_buf.tail] = chr;
	bit_set_on(UCSRB, UDRIE);
	while (NEXT_BUF_PTR(tx_buf.tail) == tx_buf.head); // wait for buffer to empty up
	INC_BUF_PTR(tx_buf.tail);
}

void _Serial::tx_ready_interrupt(){
	if (tx_buf.head == tx_buf.tail){
		// nothing to send, buffer is empty
		// however we have to disable this interrupt or else it will be called again
		// We enable the interrupt again in _Serial::send()

		bit_set_off(UCSRB, UDRIE);

		return;
	}

	// UDRE is cleared by writing into UDR
	send_byte(tx_buf.data[tx_buf.head]);

	INC_BUF_PTR(tx_buf.head);
}

uint8_t _Serial::read(){
	if (rx_buf.tail == rx_buf.head){
		// Nothing to read, buffer is empty
		return 0;
	} else {
		uint8_t tmp = rx_buf.data[rx_buf.head];
		INC_BUF_PTR(rx_buf.head);
		return tmp;
	}
}

uint8_t _Serial::available(){
	return ((rx_buf.tail - rx_buf.head + BUF_SIZE) % BUF_SIZE);
}

void _Serial::rx_available_interrupt(){
	if (is_read_error()){
		!get_byte();
		return; // read fails, error
	}

	if (NEXT_BUF_PTR(rx_buf.tail) == rx_buf.head){
		// buffer is full, discarding oldest byte received
		INC_BUF_PTR(rx_buf.head);
	}

	rx_buf.data[rx_buf.tail] = get_byte();
	INC_BUF_PTR(rx_buf.tail);

}

ISR(USART_UDRE_vect){
	Serial.tx_ready_interrupt();
}

ISR(USART_RX_vect){
	//lcd.write(UDR);
	Serial.rx_available_interrupt();
}

// void _Serial::tx_ready_interrupt(){
// 	if (tx_state == STATE_LEN){
// 		send_byte(tx_data.data_len);
// 		tx_state = STATE_DATA;
// 		tx_ptr = 0;
// 	} else if (tx_state == STATE_DATA){
// 		if (tx_ptr >= tx_data.data_len){
// 			tx_state = STATE_IDLE;
// 		} else {
// 			send_byte(tx_data.data[tx_ptr]);
// 			tx_ptr++;
// 		}
// 	}
// }

// void _Serial::send(data_packet &tx){
// 	tx_data = tx;
// 	send_byte(tx_data.type);
// 	tx_state = STATE_LEN;
// 	while (tx_state != STATE_IDLE);
// }

// void _Serial::rx_available_interrupt(){
// 	while ((UCSRA & (_BV(RXC))) == 0);
// 	available = false;

// 	if (is_read_error()){
// 		// Read error occured, we abandoned currently received data

// 		rx_state = STATE_TYPE;

// 		// We still have to read out a byte, because if it isn't, then the RXC
// 		// bit is still on => this interrupt will be called again.
// 		get_byte();
// 		return;
// 	}

// 	if (rx_state == STATE_TYPE){
// 		// read in command then move to STATE_LEN, ready to read len
// 		rx_data.type = get_byte();
// 		rx_state = STATE_LEN;
// 	} else if (rx_state == STATE_LEN){
// 		// read in len then move to STATE_DATA, ready to read data
// 		rx_data.data_len = get_byte();
// 		if (rx_data.data_len > sizeof(rx_data.data)){
// 			// size is too large, discarding
// 			rx_state = STATE_TYPE;
// 			return;
// 		}
// 		rx_ptr = 0;
// 		rx_state = STATE_DATA;
// 	} else if (rx_state == STATE_DATA){
// 		// Read byte and increase pointer
// 		rx_data.data[rx_ptr] = get_byte();
// 		rx_ptr++;

// 		if (rx_ptr >= rx_data.data_len){
// 			// All bytes have been received, calling handler
// 			available = true;
// 			rx_state = STATE_TYPE;
// 		}
// 	}
// }