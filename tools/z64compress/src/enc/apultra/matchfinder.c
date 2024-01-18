/*
 * matchfinder.c - LZ match finder implementation
 *
 * The following copying information applies to this specific source code file:
 *
 * Written in 2019 by Emmanuel Marty <marty.emmanuel@gmail.com>
 * Portions written in 2014-2015 by Eric Biggers <ebiggers3@gmail.com>
 *
 * To the extent possible under law, the author(s) have dedicated all copyright
 * and related and neighboring rights to this software to the public domain
 * worldwide via the Creative Commons Zero 1.0 Universal Public Domain
 * Dedication (the "CC0").
 *
 * This software is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the CC0 for more details.
 *
 * You should have received a copy of the CC0 along with this software; if not
 * see <http://creativecommons.org/publicdomain/zero/1.0/>.
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

#include <stdlib.h>
#include <string.h>
#include "matchfinder.h"
#include "format.h"
#include "libapultra.h"

/**
 * Hash index into TAG_BITS
 *
 * @param nIndex index value
 *
 * @return hash
 */
static inline int apultra_get_index_tag(unsigned int nIndex) {
   return (int)(((unsigned long long)nIndex * 11400714819323198485ULL) >> (64ULL - TAG_BITS));
}

/**
 * Parse input data, build suffix array and overlaid data structures to speed up match finding
 *
 * @param pCompressor compression context
 * @param pInWindow pointer to input data window (previously compressed bytes + bytes to compress)
 * @param nInWindowSize total input size in bytes (previously compressed bytes + bytes to compress)
 *
 * @return 0 for success, non-zero for failure
 */
int apultra_build_suffix_array(apultra_compressor *pCompressor, const unsigned char *pInWindow, const int nInWindowSize) {
   unsigned long long *intervals = pCompressor->intervals;

   /* Build suffix array from input data */
   saidx_t *suffixArray = (saidx_t*)intervals;
   if (divsufsort_build_array(&pCompressor->divsufsort_context, pInWindow, suffixArray, nInWindowSize) != 0) {
      return 100;
   }

   int i, r;

   for (i = nInWindowSize - 1; i >= 0; i--) {
      intervals[i] = suffixArray[i];
   }

   int *PLCP = (int*)pCompressor->pos_data;  /* Use temporarily */
   int *Phi = PLCP;
   int nCurLen = 0;

   /* Compute the permuted LCP first (Kärkkäinen method) */
   Phi[intervals[0]] = -1;
   for (i = 1; i < nInWindowSize; i++)
      Phi[intervals[i]] = (unsigned int)intervals[i - 1];
   for (i = 0; i < nInWindowSize; i++) {
      if (Phi[i] == -1) {
         PLCP[i] = 0;
         continue;
      }
      int nMaxLen = (i > Phi[i]) ? (nInWindowSize - i) : (nInWindowSize - Phi[i]);
      while (nCurLen < nMaxLen && pInWindow[i + nCurLen] == pInWindow[Phi[i] + nCurLen]) nCurLen++;
      PLCP[i] = nCurLen;
      if (nCurLen > 0)
         nCurLen--;
   }

   /* Rotate permuted LCP into the LCP. This has better cache locality than the direct Kasai LCP method. This also
    * saves us from having to build the inverse suffix array index, as the LCP is calculated without it using this method,
    * and the interval builder below doesn't need it either. */
   intervals[0] &= POS_MASK;

   for (i = 1; i < nInWindowSize; i++) {
      int nIndex = (int)(intervals[i] & POS_MASK);
      int nLen = PLCP[nIndex];
      if (nLen < MIN_MATCH_SIZE)
         nLen = 0;
      if (nLen > LCP_MAX)
         nLen = LCP_MAX;
      int nTaggedLen = 0;
      if (nLen)
         nTaggedLen = (nLen << TAG_BITS) | (apultra_get_index_tag((unsigned int)nIndex) & ((1 << TAG_BITS) - 1));
      intervals[i] = ((unsigned long long)nIndex) | (((unsigned long long)nTaggedLen) << LCP_SHIFT);
   }

   /**
    * Build intervals for finding matches
    *
    * Methodology and code fragment taken from wimlib (CC0 license):
    * https://wimlib.net/git/?p=wimlib;a=blob_plain;f=src/lcpit_matchfinder.c;h=a2d6a1e0cd95200d1f3a5464d8359d5736b14cbe;hb=HEAD
    */
   unsigned long long * const SA_and_LCP = intervals;
   unsigned long long *pos_data = pCompressor->pos_data;
   unsigned long long next_interval_idx;
   unsigned long long *top = pCompressor->open_intervals;
   unsigned long long prev_pos = SA_and_LCP[0] & POS_MASK;

   *top = 0;
   intervals[0] = 0;
   next_interval_idx = 1;

   for (r = 1; r < nInWindowSize; r++) {
      const unsigned long long next_pos = SA_and_LCP[r] & POS_MASK;
      const unsigned long long next_lcp = SA_and_LCP[r] & LCP_MASK;
      const unsigned long long top_lcp = *top & LCP_MASK;

      if (next_lcp == top_lcp) {
         /* Continuing the deepest open interval  */
         pos_data[prev_pos] = *top;
      }
      else if (next_lcp > top_lcp) {
         /* Opening a new interval  */
         *++top = next_lcp | next_interval_idx++;
         pos_data[prev_pos] = *top;
      }
      else {
         /* Closing the deepest open interval  */
         pos_data[prev_pos] = *top;
         for (;;) {
            const unsigned long long closed_interval_idx = *top-- & POS_MASK;
            const unsigned long long superinterval_lcp = *top & LCP_MASK;

            if (next_lcp == superinterval_lcp) {
               /* Continuing the superinterval */
               intervals[closed_interval_idx] = *top;
               break;
            }
            else if (next_lcp > superinterval_lcp) {
               /* Creating a new interval that is a
                * superinterval of the one being
                * closed, but still a subinterval of
                * its superinterval  */
               *++top = next_lcp | next_interval_idx++;
               intervals[closed_interval_idx] = *top;
               break;
            }
            else {
               /* Also closing the superinterval  */
               intervals[closed_interval_idx] = *top;
            }
         }
      }
      prev_pos = next_pos;
   }

   /* Close any still-open intervals.  */
   pos_data[prev_pos] = *top;
   for (; top > pCompressor->open_intervals; top--)
      intervals[*top & POS_MASK] = *(top - 1);

   /* Success */
   return 0;
}

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
int apultra_find_matches_at(apultra_compressor *pCompressor, const int nOffset, apultra_match *pMatches, unsigned short *pMatchDepth, unsigned char *pMatch1, const int nMaxMatches, const int nBlockFlags) {
   unsigned long long *intervals = pCompressor->intervals;
   unsigned long long *pos_data = pCompressor->pos_data;
   unsigned long long ref;
   unsigned long long super_ref;
   unsigned long long match_pos;
   apultra_match *matchptr;
   unsigned short *depthptr;
   const int nMaxOffset = pCompressor->max_offset;

   *pMatch1 = 0;

   /**
    * Find matches using intervals
    *
    * Taken from wimlib (CC0 license):
    * https://wimlib.net/git/?p=wimlib;a=blob_plain;f=src/lcpit_matchfinder.c;h=a2d6a1e0cd95200d1f3a5464d8359d5736b14cbe;hb=HEAD
    */

    /* Get the deepest lcp-interval containing the current suffix. */
   ref = pos_data[nOffset];

   pos_data[nOffset] = 0;

   /* Ascend until we reach a visited interval, the root, or a child of the
    * root.  Link unvisited intervals to the current suffix as we go.  */
   while ((super_ref = intervals[ref & POS_MASK]) & LCP_MASK) {
      intervals[ref & POS_MASK] = nOffset | VISITED_FLAG;
      ref = super_ref;
   }

   if (super_ref == 0) {
      /* In this case, the current interval may be any of:
       * (1) the root;
       * (2) an unvisited child of the root */

      if (ref != 0)  /* Not the root?  */
         intervals[ref & POS_MASK] = nOffset | VISITED_FLAG;
      return 0;
   }

   /* Ascend indirectly via pos_data[] links.  */
   match_pos = super_ref & EXCL_VISITED_MASK;
   matchptr = pMatches;
   depthptr = pMatchDepth;
   int nPrevOffset = 0;
   int nPrevLen = 0;
   int nCurDepth = 0;
   unsigned short *cur_depth = NULL;
   
   if (nOffset >= match_pos && (nBlockFlags & 3) == 3) {
      int nMatchOffset = (int)(nOffset - match_pos);
      int nMatchLen = (int)(ref >> (LCP_SHIFT + TAG_BITS));

      if ((matchptr - pMatches) < nMaxMatches) {
         if (nMatchOffset <= nMaxOffset) {
            if (nPrevOffset && nPrevLen > 2 && nMatchOffset == (nPrevOffset - 1) && nMatchLen == (nPrevLen - 1) && cur_depth && nCurDepth < LCP_MAX) {
               nCurDepth++;
               *cur_depth = nCurDepth;
            }
            else {
               nCurDepth = 0;

               cur_depth = depthptr;
               matchptr->length = nMatchLen;
               matchptr->offset = nMatchOffset;
               *depthptr = 0;
               matchptr++;
               depthptr++;
            }

            nPrevLen = nMatchLen;
            nPrevOffset = nMatchOffset;
         }
      }
   }

   for (;;) {
      if ((super_ref = pos_data[match_pos]) > ref) {
         match_pos = intervals[super_ref & POS_MASK] & EXCL_VISITED_MASK;

         if (nOffset >= match_pos && (nBlockFlags & 3) == 3) {
            int nMatchOffset = (int)(nOffset - match_pos);
            int nMatchLen = (int)(ref >> (LCP_SHIFT + TAG_BITS));

            if ((matchptr - pMatches) < nMaxMatches) {
               if (nMatchOffset <= nMaxOffset && abs(nMatchOffset - nPrevOffset) >= 128) {
                  if (nPrevOffset && nPrevLen > 2 && nMatchOffset == (nPrevOffset - 1) && nMatchLen == (nPrevLen - 1) && cur_depth && nCurDepth < LCP_MAX) {
                     nCurDepth++;
                     *cur_depth = nCurDepth | 0x8000;
                  }
                  else {
                     nCurDepth = 0;

                     cur_depth = depthptr;
                     matchptr->length = nMatchLen;
                     matchptr->offset = nMatchOffset;
                     *depthptr = 0x8000;
                     matchptr++;
                     depthptr++;
                  }

                  nPrevLen = nMatchLen;
                  nPrevOffset = nMatchOffset;
               }
            }
         }
      }

      while ((super_ref = pos_data[match_pos]) > ref) {
         match_pos = intervals[super_ref & POS_MASK] & EXCL_VISITED_MASK;

         if (nOffset > match_pos && (nBlockFlags & 3) == 3) {
            int nMatchOffset = (int)(nOffset - match_pos);
            int nMatchLen = (int)(ref >> (LCP_SHIFT + TAG_BITS));

            if ((matchptr - pMatches) < nMaxMatches) {
               if (nMatchOffset <= nMaxOffset && (nMatchLen >= 3 || (nMatchLen >= 2 && (matchptr - pMatches) < (nMaxMatches - 1))) && nMatchLen < 1280 && abs(nMatchOffset - nPrevOffset) >= 128) {
                  if (nPrevOffset && nPrevLen > 2 && nMatchOffset == (nPrevOffset - 1) && nMatchLen == (nPrevLen - 1) && cur_depth && nCurDepth < LCP_MAX) {
                     nCurDepth++;
                     *cur_depth = nCurDepth | 0x8000;
                  }
                  else {
                     nCurDepth = 0;

                     cur_depth = depthptr;
                     matchptr->length = nMatchLen;
                     matchptr->offset = nMatchOffset;
                     *depthptr = 0x8000;
                     matchptr++;
                     depthptr++;
                  }

                  nPrevLen = nMatchLen;
                  nPrevOffset = nMatchOffset;
               }
            }
         }
      }

      intervals[ref & POS_MASK] = nOffset | VISITED_FLAG;
      pos_data[match_pos] = (unsigned long long)ref;

      int nMatchOffset = (int)(nOffset - match_pos);
      int nMatchLen = (int)(ref >> (LCP_SHIFT + TAG_BITS));

      if ((matchptr - pMatches) < nMaxMatches) {
         if (nMatchOffset <= nMaxOffset && nMatchOffset != nPrevOffset) {
            if (nPrevOffset && nPrevLen > 2 && nMatchOffset == (nPrevOffset - 1) && nMatchLen == (nPrevLen - 1) && cur_depth && nCurDepth < LCP_MAX) {
               nCurDepth++;
               *cur_depth = nCurDepth;
            }
            else {
               nCurDepth = 0;

               cur_depth = depthptr;
               matchptr->length = nMatchLen;
               matchptr->offset = nMatchOffset;
               *depthptr = 0;
               matchptr++;
               depthptr++;
            }

            nPrevLen = nMatchLen;
            nPrevOffset = nMatchOffset;
         }
      }

      if (nMatchOffset && nMatchOffset < 16 && nMatchLen)
         *pMatch1 = nMatchOffset;

      if (super_ref == 0)
         break;
      ref = super_ref;
      match_pos = intervals[ref & POS_MASK] & EXCL_VISITED_MASK;

      if (nOffset > match_pos && (nBlockFlags & 3) == 3) {
         int nMatchOffset = (int)(nOffset - match_pos);
         int nMatchLen = (int)(ref >> (LCP_SHIFT + TAG_BITS));

         if ((matchptr - pMatches) < nMaxMatches) {
            if (nMatchOffset <= nMaxOffset && nMatchLen >= 2 && abs(nMatchOffset - nPrevOffset) >= 128) {
               if (nPrevOffset && nPrevLen > 2 && nMatchOffset == (nPrevOffset - 1) && nMatchLen == (nPrevLen - 1) && cur_depth && nCurDepth < LCP_MAX) {
                  nCurDepth++;
                  *cur_depth = nCurDepth | 0x8000;
               }
               else {
                  nCurDepth = 0;

                  cur_depth = depthptr;
                  matchptr->length = nMatchLen;
                  matchptr->offset = nMatchOffset;
                  *depthptr = 0x8000;
                  matchptr++;
                  depthptr++;
               }

               nPrevLen = nMatchLen;
               nPrevOffset = nMatchOffset;
            }
         }
      }
   }

   return (int)(matchptr - pMatches);
}

/**
 * Skip previously compressed bytes
 *
 * @param pCompressor compression context
 * @param nStartOffset current offset in input window (typically 0)
 * @param nEndOffset offset to skip to in input window (typically the number of previously compressed bytes)
 */
void apultra_skip_matches(apultra_compressor *pCompressor, const int nStartOffset, const int nEndOffset) {
   apultra_match match;
   unsigned short depth;
   unsigned char match1;
   int i;

   /* Skipping still requires scanning for matches, as this also performs a lazy update of the intervals. However,
    * we don't store the matches. */
   for (i = nStartOffset; i < nEndOffset; i++) {
      apultra_find_matches_at(pCompressor, i, &match, &depth, &match1, 0, 0);
   }
}

/**
 * Find all matches for the data to be compressed
 *
 * @param pCompressor compression context
 * @param nMatchesPerOffset maximum number of matches to store for each offset
 * @param nStartOffset current offset in input window (typically the number of previously compressed bytes)
 * @param nEndOffset offset to end finding matches at (typically the size of the total input window in bytes
 * @param nBlockFlags bit 0: 1 for first block, 0 otherwise; bit 1: 1 for last block, 0 otherwise
 */
void apultra_find_all_matches(apultra_compressor *pCompressor, const int nMatchesPerOffset, const int nStartOffset, const int nEndOffset, const int nBlockFlags) {
   apultra_match *pMatch = pCompressor->match;
   unsigned short *pMatchDepth = pCompressor->match_depth;
   unsigned char *pMatch1 = pCompressor->match1;
   int i;

   for (i = nStartOffset; i < nEndOffset; i++) {
      int nMatches = apultra_find_matches_at(pCompressor, i, pMatch, pMatchDepth, pMatch1, nMatchesPerOffset, nBlockFlags);

      while (nMatches < nMatchesPerOffset) {
         pMatch[nMatches].length = 0;
         pMatch[nMatches].offset = 0;
         pMatchDepth[nMatches] = 0;
         nMatches++;
      }

      pMatch += nMatchesPerOffset;
      pMatchDepth += nMatchesPerOffset;
      pMatch1++;
   }
}
