BUILD_FOLDER = build
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

lcd_block: io.o hd44780.o hard_uart.o protocol.o lcd_16x2_block.cpp
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) $(BUILD_FOLDER)/io.o $(BUILD_FOLDER)/hd44780.o $(BUILD_FOLDER)/hard_uart.o $(BUILD_FOLDER)/protocol.o lcd_16x2_block.cpp -o $(BUILD_FOLDER)/lcd_16x2_block.elf
	$(SIZE) build/lcd_16x2_block.elf -C --mcu=attiny2313
	$(OBJCOPY) -O ihex build/lcd_16x2_block.elf build/lcd_16x2_block.hex
	$(AVRDUDE) -c usbasp -p t2313 -U flash:w:build/lcd_16x2_block.hex:i

io.o: io/io.cpp io/io.h mcu/mcu.h util/bit.h
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) io/io.cpp -c -o $(BUILD_FOLDER)/io.o

hd44780.o: lcd/hd44780.cpp lcd/hd44780.h build/io.o 
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) lcd/hd44780.cpp -c -o $(BUILD_FOLDER)/hd44780.o

hard_uart.o: uart/hard_uart.h uart/hard_uart.cpp util/bit.h uart/stream.h
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) uart/hard_uart.cpp -c -o $(BUILD_FOLDER)/hard_uart.o

protocol.o: protocol/protocol.h protocol/protocol.cpp uart/stream.h
	$(CXX) $(CXX_FLAGS) $(CXX_FLAGS_ATTINY2313) protocol/protocol.cpp -c -o $(BUILD_FOLDER)/protocol.o