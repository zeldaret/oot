/*
 * expand.h - decompressor definitions
 *
 * Copyright (C) 2019 Emmanuel Marty
 *
 * This software is provided 'as-is', without any express or implied
 * warranty.  In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

/*
 * Uses the libdivsufsort library Copyright (c) 2003-2008 Yuta Mori
 *
 * Inspired by cap by Sven-Åke Dahl. https://github.com/svendahl/cap
 * Also inspired by Charles Bloom's compression blog. http://cbloomrants.blogspot.com/
 * With ideas from LZ4 by Yann Collet. https://github.com/lz4/lz4
 * With help and support from spke <zxintrospec@gmail.com>
 *
 */

#ifndef _EXPAND_H
#define _EXPAND_H

#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Get maximum decompressed size of compressed data
 *
 * @param pInputData compressed data
 * @param nInputSize compressed size in bytes
 * @param nFlags compression flags (set to 0)
 *
 * @return maximum decompressed size
 */
size_t apultra_get_max_decompressed_size(const unsigned char *pInputData, size_t nInputSize, const unsigned int nFlags);

/**
 * Decompress data in memory
 *
 * @param pInputData compressed data
 * @param pOutBuffer buffer for decompressed data
 * @param nInputSize compressed size in bytes
 * @param nMaxOutBufferSize maximum capacity of decompression buffer
 * @param nDictionarySize size of dictionary in front of input data (0 for none)
 * @param nFlags compression flags (set to 0)
 *
 * @return actual decompressed size, or -1 for error
 */
size_t apultra_decompress(const unsigned char *pInputData, unsigned char *pOutBuffer, size_t nInputSize, size_t nMaxOutBufferSize, size_t nDictionarySize, const unsigned int nFlags);

#ifdef __cplusplus
}
#endif

#endif /* _EXPAND_H */
