/*
 * (c) Copyright 2015 by Einar Saukas. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * The name of its author may not be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "zx7.h"

#ifdef __cplusplus
extern "C" {
#endif

static unsigned char *d_input_data;
static unsigned char *d_output_data;
static unsigned int d_input_index;
static unsigned int d_output_index;
static unsigned int d_input_size;
static int bit_mask;
static int bit_value;

static
int d_read_byte(void) {
    return d_input_data[d_input_index++];
}

static
int d_read_bit(void) {
    bit_mask >>= 1;
    if (bit_mask == 0) {
        bit_mask = 128;
        bit_value = d_read_byte();
    }
    return bit_value & bit_mask ? 1 : 0;
}

static
int read_elias_gamma(void) {
    int i;
    int value;

    i = 0;
    while (!d_read_bit()) {
        i++;
    }
    if (i > 15) {
        return -1;
    }
    value = 1;
    while (i--) {
        value = value << 1 | d_read_bit();
    }
    return value;
}

int read_offset(void) {
    int value;
    int i;

    value = d_read_byte();
    if (value < 128) {
        return value;
    } else {
        i = d_read_bit();
        i = i << 1 | d_read_bit();
        i = i << 1 | d_read_bit();
        i = i << 1 | d_read_bit();
        return ((value & 127) | (i << 7)) + 128;
    }
}

static
void d_write_byte(int value) {
    d_output_data[d_output_index++] = value;
}

void d_write_bytes(int offset, int length) {
    int i;
    while (length-- > 0) {
        i = d_output_index-offset;
        d_write_byte(d_output_data[i]);
    }
}

unsigned int ZX7GetDecompressedSize(unsigned char* compressedData) {
	return compressedData[0] * 65536 + compressedData[1] * 256 + compressedData[2];
}

int ZX7Decompress(unsigned char* srcData, unsigned char* destData, unsigned int destLength) {
	if (destLength < ZX7GetDecompressedSize(srcData) || !srcData || !destData) {
		return -1;
	}

    int length;

	d_input_data = srcData + 3;
	d_output_data = destData;

    d_input_size = 0;
    d_input_index = 0;
    d_output_index = 0;
    bit_mask = 0;

    d_write_byte(d_read_byte());
    while (1) {
        if (!d_read_bit()) {
            d_write_byte(d_read_byte());
        } else {
            length = read_elias_gamma()+1;
            if (length == 0) {
                return 0;
            }
            d_write_bytes(read_offset()+1, length);
        }
    }
}

#ifdef __cplusplus
}
#endif
