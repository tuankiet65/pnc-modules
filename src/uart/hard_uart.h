#ifndef HARD_UART_H
	#define HARD_UART_H
	
	#include <avr/io.h>
	#include <avr/interrupt.h>
	
	#include "uart/stream.h"
	#include "util/bit.h"
	
	#define BAUD 38400
	#include <util/setbaud.h>

	#define BUF_SIZE 4

	#define NEXT_BUF_PTR(ptr) ((ptr + 1) % BUF_SIZE)
	#define INC_BUF_PTR(ptr) ((ptr) = NEXT_BUF_PTR(ptr))

	typedef struct {
		volatile uint8_t head = 0;
		volatile uint8_t tail = 0;
		volatile uint8_t data[BUF_SIZE];
	} ring_buffer;

	class _Serial: public Stream {
	private:
		ring_buffer rx_buf, tx_buf;	
		bool is_read_error(){
			return (UCSRA & (_BV(FE) | _BV(DOR)));
		}

		inline void send_byte(uint8_t byte){
			UDR = byte;
		}

		inline uint8_t get_byte(){
			return UDR;
		}
	public:
		void begin(uint32_t baud);
		void send(uint8_t chr);

		uint8_t available();
		uint8_t read();

		void tx_ready_interrupt();
		void rx_available_interrupt();
	};

	extern _Serial Serial;

#endif