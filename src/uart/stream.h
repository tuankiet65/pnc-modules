#ifndef STREAM_H

#define STREAM_H

#include <stdint.h>

class Stream {
public:
	virtual void send(uint8_t chr) = 0;
	virtual uint8_t available() = 0;
	virtual uint8_t read() = 0;
};

#endif