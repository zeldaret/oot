/*
 * (c) Copyright 2012-2016 by Einar Saukas. All rights reserved.
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

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#if !TARGET_PRIZM
	
typedef struct optimal_t {
    unsigned int bits;
    int offset;
    int len;
} Optimal;

#define MAX_OFFSET  2176  /* range 1..2176 */
#define MAX_LEN    65536  /* range 2..65536 */

Optimal *optimize(unsigned char *input_data, unsigned int input_size, unsigned long skip);

unsigned char *compress(Optimal *optimal, unsigned char *input_data, unsigned int input_size, long skip, unsigned int *output_size, unsigned char *dst);

// THOMAS : added these for my use:

// ZX7 Compress the given data, outData is malloc'd and the return value is the length (first 3 bytes of data will be 24-bit size result for convenience)
unsigned int ZX7Compress(unsigned char *srcData, unsigned int inLength, unsigned char *outData);

#endif

// Get decompressed size of ZX7Compress'd data
unsigned int ZX7GetDecompressedSize(unsigned char* compressedData);

// Decompress the given data. Returns 0 with no errors
int ZX7Decompress(unsigned char* srcData, unsigned char* destData, unsigned int destLength);

/* free reusable buffers */
void
zx7_shutdown(void);

#ifdef __cplusplus
}
#endif
