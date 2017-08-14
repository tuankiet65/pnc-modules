#ifndef NUMPAD_H
	
	#define NUMPAD_H
	
	#include "io/io.h"

	class Numpad4x4 {
	private:
		uint8_t row[4], col[4];
	public:
		Numpad4x4(uint8_t row1, uint8_t row2, uint8_t row3, uint8_t row4,
			      uint8_t col1, uint8_t col2, uint8_t col3, uint8_t col4){
			row[0] = row1;
			row[1] = row2;
			row[2] = row3;
			row[3] = row4;

			col[0] = col1;
			col[1] = col2;
			col[2] = col3;
			col[3] = col4;
		}

		void begin(){

		}

		uint8_t get_row(int row_num){
			int i;

			for (i = 0; i < 4; i++){
				set_pin_mode(row[i], OUTPUT);
				if (i == row_num){
					digital_write(row[i], HIGH);
				} else {
					digital_write(row[i], LOW);
				}
			}

			for (i = 0; i < 4; i++){
				set_pin_mode(col[i], INPUT);
			}

			return ((digital_read(col[0]) << 0) |
				    (digital_read(col[1]) << 1) |
				    (digital_read(col[2]) << 2) |
				    (digital_read(col[3]) << 3));
		}
	};

#endif