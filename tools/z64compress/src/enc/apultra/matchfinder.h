/*
 * matchfinder.h - LZ match finder definitions
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

#ifndef _MATCHFINDER_H
#define _MATCHFINDER_H

#ifdef __cplusplus
extern "C" {
#endif

/* Forward declarations */
typedef struct _apultra_match apultra_match;
typedef struct _apultra_compressor apultra_compressor;

/**
 * Parse input data, build suffix array and overlaid data structures to speed up match finding
 *
 * @param pCompressor compression context
 * @param pInWindow pointer to input data window (previously compressed bytes + bytes to compress)
 * @param nInWindowSize total input size in bytes (previously compressed bytes + bytes to compress)
 *
 * @return 0 for success, non-zero for failure
 */
int apultra_build_suffix_array(apultra_compressor *pCompressor, const unsigned char *pInWindow, const int nInWindowSize);

/**
 * Find matches at the specified offset in the input window
 *
 * @param pCompressor compression context
 * @param nOffset offset to find matches at, in the input window
 * @param pMatches pointer to returned matches
 * @param pMatchDepth pointer to returned match depths
 * @param pMatch1 pointer to 1-byte length, 4 bit offset match
 * @param nMaxMatches maximum number of matches to return (0 for none)
 * @param nBlockFlags bit 0: 1 for first block, 0 otherwise; bit 1: 1 for last block, 0 otherwise
 *
 * @return number of matches
 */
int apultra_find_matches_at(apultra_compressor *pCompressor, const int nOffset, apultra_match *pMatches, unsigned short *pMatchDepth, unsigned char *pMatch1, const int nMaxMatches, const int nBlockFlags);

/**
 * Skip previously compressed bytes
 *
 * @param pCompressor compression context
 * @param nStartOffset current offset in input window (typically 0)
 * @param nEndOffset offset to skip to in input window (typically the number of previously compressed bytes)
 */
void apultra_skip_matches(apultra_compressor *pCompressor, const int nStartOffset, const int nEndOffset);

/**
 * Find all matches for the data to be compressed
 *
 * @param pCompressor compression context
 * @param nMatchesPerOffset maximum number of matches to store for each offset
 * @param nStartOffset current offset in input window (typically the number of previously compressed bytes)
 * @param nEndOffset offset to end finding matches at (typically the size of the total input window in bytes
 * @param nBlockFlags bit 0: 1 for first block, 0 otherwise; bit 1: 1 for last block, 0 otherwise
 */
void apultra_find_all_matches(apultra_compressor *pCompressor, const int nMatchesPerOffset, const int nStartOffset, const int nEndOffset, const int nBlockFlags);

#ifdef __cplusplus
}
#endif

#endif /* _MATCHFINDER_H */
