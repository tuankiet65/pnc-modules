CXX = avr-g++
SIZE = avr-size
OBJCOPY = avr-objcopy
AVRDUDE = avrdude
CXX_FLAGS = -Os \
            -fno-exceptions \
            -I. \
            -std=c++14 \
       	    -flto \
            -Wall \
            -Wextra \
            -fdata-sections \
            -ffunction-sections \
            -Wl,--gc-sections \
            -pedantic \
            -Wl,--relax \
            -fno-threadsafe-statics
CXX_FLAGS_ATTINY2313 = -mmcu=attiny2313 -DF_CPU=8000000UL

lcd_block: build/io.o lcd/hd44780.o lcd_16x2_block.cpp uart/hard_uart.o
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) build/io.o lcd/hd44780.o uart/hard_uart.o lcd_16x2_block.cpp -o build/lcd_16x2_block
	$(SIZE) build/lcd_16x2_block -C --mcu=attiny2313
	$(OBJCOPY) -O ihex build/lcd_16x2_block build/lcd_16x2_block.hex
	$(AVRDUDE) -c usbasp -p t2313 -U flash:w:build/lcd_16x2_block.hex:i

build/io.o: io/io.cpp io/io.h mcu/mcu.h util/bit.h
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) io/io.cpp -c -o build/io.o

lcd/hd44780.o: lcd/hd44780.cpp lcd/hd44780.h build/io.o 
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) lcd/hd44780.cpp -c -o lcd/hd44780.o

uart/hard_uart.o: uart/hard_uart.h uart/hard_uart.cpp util/bit.h
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) uart/hard_uart.cpp -c -o uart/hard_uart.o
