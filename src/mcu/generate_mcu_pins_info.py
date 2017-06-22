#!/usr/bin/env python3

pins = {
	# "<port name>": <number of pins in port>
	"A": 3,
	"B": 8,
	"D": 7,
}

for port_name, pin_count in pins.items():
	for pin in range(pin_count):
		pin_info = ((ord(port_name) - ord('A')) << 3) | (pin)
		print("#define PIN_P{}{} {:#010b}".format(port_name, pin, pin_info))