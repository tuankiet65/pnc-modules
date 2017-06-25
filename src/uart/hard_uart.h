#ifndef HARD_UART_H
	#define HARD_UART_H
	
	#include <avr/io.h>
	#include <avr/interrupt.h>

	#include "util/bit.h"
	
	#define BAUD 9600
	#include <util/setbaud.h>

	#define STATE_IDLE 0
	#define STATE_TYPE 1
	#define STATE_LEN 2
	#define STATE_DATA 3

	#define BUF_SIZE 10

	#define NEXT_BUF_PTR(ptr) ((ptr + 1) % BUF_SIZE)
	#define INC_BUF_PTR(ptr) ((ptr) = NEXT_BUF_PTR(ptr))

	typedef struct {
		volatile uint8_t head = 0;
		volatile uint8_t tail = 0;
		volatile uint8_t data[BUF_SIZE];
	} ring_buffer;

	class _Serial {
	private:
		
	public:
		ring_buffer rx_buf, tx_buf;	
		bool is_read_error(){
			static volatile uint8_t ucsra_tmp = UCSRA;
			return bit_is_on(ucsra_tmp, FE) && bit_is_on(ucsra_tmp, DOR);
		}

		void send_byte(uint8_t byte){
			UDR = byte;
		}

		uint8_t get_byte(){
			return UDR;
		}

		void begin(uint32_t baud);
		void send(uint8_t chr);

		uint8_t available();
		uint8_t read();

		void tx_ready_interrupt();
		void rx_available_interrupt();
	};
	extern _Serial Serial;

#endif