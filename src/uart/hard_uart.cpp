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
	// Put chr in tx buffer
	tx_buf.data[tx_buf.tail] = chr;

	// Wait for the buffer to empty up
	while (NEXT_BUF_PTR(tx_buf.tail) == tx_buf.head);

	INC_BUF_PTR(tx_buf.tail);

	// Enable UDR Ready Interrupt
	bit_set_on(UCSRB, UDRIE);
}

void _Serial::tx_ready_interrupt(){
	if (tx_buf.head == tx_buf.tail){
		// nothing to send, buffer is empty
		// however we have to disable this interrupt or else it will be called again
		// (pretty weird)
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
	Serial.rx_available_interrupt();
}
