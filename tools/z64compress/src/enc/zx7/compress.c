/*
 * (c) Copyright 2012-2016 by Einar Saukas. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *	 * Redistributions of source code must retain the above copyright
 *	   notice, this list of conditions and the following disclaimer.
 *	 * Redistributions in binary form must reproduce the above copyright
 *	   notice, this list of conditions and the following disclaimer in the
 *	   documentation and/or other materials provided with the distribution.
 *	 * The name of its author may not be used to endorse or promote products
 *	   derived from this software without specific prior written permission.
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

#if !TARGET_PRIZM

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>

static unsigned char* c_output_data;
static unsigned int c_output_index;
static unsigned int c_bit_index;
static int c_bit_mask;

static inline void c_write_byte(int value) {
   c_output_data[c_output_index++] = value;
}

static void c_write_bit(int value) {
	if (c_bit_mask == 0) {
		c_bit_mask = 128;
		c_bit_index = c_output_index;
		c_write_byte(0);
	}
	if (value > 0) {
		c_output_data[c_bit_index] |= c_bit_mask;
	}
	c_bit_mask >>= 1;
}

static void write_elias_gamma(int value) {
	int i;

	for (i = 2; i <= value; i <<= 1) {
		c_write_bit(0);
	}
	while ((i >>= 1) > 0) {
		c_write_bit(value & i);
	}
}

unsigned char *compress(
	Optimal *optimal
	, unsigned char *input_data
	, unsigned int input_size
	, long skip
	, unsigned int *output_size
	, unsigned char *dst
)
{
	unsigned int input_index;
	unsigned int input_prev;
	int offset1;
	int mask;
	int i;

	/* calculate and allocate output buffer */
	input_index = input_size-1;
	*output_size = (optimal[input_index].bits+18+7)/8 + 3;
	unsigned char *ret = dst;
	if (!ret) {
		return 0;
	}

	c_output_data = ret + 3;

	/* un-reverse optimal sequence */
	optimal[input_index].bits = 0;
	while (input_index != skip) {
		input_prev = input_index - (optimal[input_index].len > 0 ? optimal[input_index].len : 1);
		optimal[input_prev].bits = input_index;
		input_index = input_prev;
	}

	c_output_index = 0;
	c_bit_mask = 0;

	/* first byte is always literal */
	c_write_byte(input_data[input_index]);

	/* process remaining bytes */
	while ((input_index = optimal[input_index].bits) > 0) {
		if (optimal[input_index].len == 0) {

			/* literal indicator */
			c_write_bit(0);

			/* literal value */
			c_write_byte(input_data[input_index]);

		} else {

			/* sequence indicator */
			c_write_bit(1);

			/* sequence length */
			write_elias_gamma(optimal[input_index].len-1);

			/* sequence offset */
			offset1 = optimal[input_index].offset-1;
			if (offset1 < 128) {
				c_write_byte(offset1);
			} else {
				offset1 -= 128;
				c_write_byte((offset1 & 127) | 128);
				for (mask = 1024; mask > 127; mask >>= 1) {
					c_write_bit(offset1 & mask);
				}
			}
		}
	}

	/* sequence indicator */
	c_write_bit(1);

	/* end marker > MAX_LEN */
	for (i = 0; i < 16; i++) {
		c_write_bit(0);
	}
	c_write_bit(1);

	// decompressed size is first three bytes
	ret[0] = (input_size & 0xFF0000) >> 16;
	ret[1] = (input_size & 0x00FF00) >> 8;
	ret[2] = (input_size & 0x0000FF);

	return ret;
}

#ifdef __cplusplus
}
#endif

#endif
