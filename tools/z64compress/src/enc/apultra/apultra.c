#if 0
/*
 * apultra.c - command line compression utility for the apultra library
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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _WIN32
#include <windows.h>
#include <sys/timeb.h>
#else
#include <sys/time.h>
#endif
#include "libapultra.h"

#define OPT_VERBOSE        1
#define OPT_STATS          2
#define OPT_BACKWARD       4

#define TOOL_VERSION "1.4.1"

/*---------------------------------------------------------------------------*/

#ifdef _WIN32
LARGE_INTEGER hpc_frequency;
BOOL hpc_available = FALSE;
#endif

static void do_init_time() {
#ifdef _WIN32
   hpc_frequency.QuadPart = 0;
   hpc_available = QueryPerformanceFrequency(&hpc_frequency);
#endif
}

static long long do_get_time() {
   long long nTime;

#ifdef _WIN32
   if (hpc_available) {
      LARGE_INTEGER nCurTime;

      /* Use HPC hardware for best precision */
      QueryPerformanceCounter(&nCurTime);
      nTime = (long long)(nCurTime.QuadPart * 1000000LL / hpc_frequency.QuadPart);
   }
   else {
      struct _timeb tb;
      _ftime(&tb);

      nTime = ((long long)tb.time * 1000LL + (long long)tb.millitm) * 1000LL;
   }
#else
   struct timeval tm;
   gettimeofday(&tm, NULL);

   nTime = (long long)tm.tv_sec * 1000000LL + (long long)tm.tv_usec;
#endif
   return nTime;
}

static void do_reverse_buffer(unsigned char *pBuffer, size_t nBufferSize) {
   size_t nMidPoint = nBufferSize / 2;
   size_t i, j;

   for (i = 0, j = nBufferSize - 1; i < nMidPoint; i++, j--) {
      unsigned char c = pBuffer[i];
      pBuffer[i] = pBuffer[j];
      pBuffer[j] = c;
   }
}

/*---------------------------------------------------------------------------*/

static void compression_progress(long long nOriginalSize, long long nCompressedSize) {
   if (nOriginalSize >= 512 * 1024) {
      fprintf(stdout, "\r%lld => %lld (%g %%)     \b\b\b\b\b", nOriginalSize, nCompressedSize, (double)(nCompressedSize * 100.0 / nOriginalSize));
      fflush(stdout);
   }
}

static int do_compress(const char *pszInFilename, const char *pszOutFilename, const char *pszDictionaryFilename, const unsigned int nOptions, const unsigned int nMaxWindowSize) {
   long long nStartTime = 0LL, nEndTime = 0LL;
   size_t nOriginalSize = 0L, nCompressedSize = 0L, nMaxCompressedSize;
   int nFlags = 0;
   apultra_stats stats;
   unsigned char *pDecompressedData;
   unsigned char *pCompressedData;

   if (nOptions & OPT_VERBOSE) {
      nStartTime = do_get_time();
   }

   FILE* f_dict = NULL;
   size_t nDictionarySize = 0;
   if (pszDictionaryFilename) {
      /* Open the dictionary */
      f_dict = fopen(pszDictionaryFilename, "rb");
      if (!f_dict) {
         fprintf(stderr, "error opening dictionary '%s' for reading\n", pszDictionaryFilename);
         return 100;
      }

      /* Get dictionary size */
      fseek(f_dict, 0, SEEK_END);
      nDictionarySize = (size_t)ftell(f_dict);
      fseek(f_dict, 0, SEEK_SET);

      if (nDictionarySize > BLOCK_SIZE) nDictionarySize = BLOCK_SIZE;
   }

   /* Read the whole original file in memory */

   FILE *f_in = fopen(pszInFilename, "rb");
   if (!f_in) {
      if (f_dict) fclose(f_dict);
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nOriginalSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pDecompressedData = (unsigned char*)malloc(nDictionarySize + nOriginalSize);
   if (!pDecompressedData) {
      fclose(f_in);
      if (f_dict) fclose(f_dict);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nOriginalSize);
      return 100;
   }

   if (f_dict) {
      /* Read dictionary data */
      if (fread(pDecompressedData + ((nOptions & OPT_BACKWARD) ? nOriginalSize : 0), 1, nDictionarySize, f_dict) != nDictionarySize) {
         free(pDecompressedData);
         fclose(f_in);
         fclose(f_dict);
         fprintf(stderr, "I/O error while reading dictionary '%s'\n", pszDictionaryFilename);
         return 100;
      }

      fclose(f_dict);
      f_dict = NULL;
   }

   /* Read input file data */
   if (fread(pDecompressedData + ((nOptions & OPT_BACKWARD) ? 0 : nDictionarySize), 1, nOriginalSize, f_in) != nOriginalSize) {
      free(pDecompressedData);
      fclose(f_in);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pDecompressedData, nDictionarySize + nOriginalSize);

   /* Allocate max compressed size */

   nMaxCompressedSize = apultra_get_max_compressed_size(nDictionarySize + nOriginalSize);

   pCompressedData = (unsigned char*)malloc(nMaxCompressedSize);
   if (!pCompressedData) {
      free(pDecompressedData);
      fprintf(stderr, "out of memory for compressing '%s', %zd bytes needed\n", pszInFilename, nMaxCompressedSize);
      return 100;
   }

   memset(pCompressedData, 0, nMaxCompressedSize);

   nCompressedSize = apultra_compress(pDecompressedData, pCompressedData, nDictionarySize + nOriginalSize, nMaxCompressedSize, nFlags, nMaxWindowSize, nDictionarySize, compression_progress, &stats);

   if ((nOptions & OPT_VERBOSE)) {
      nEndTime = do_get_time();
   }

   if (nCompressedSize == -1) {
      free(pCompressedData);
      free(pDecompressedData);
      fprintf(stderr, "compression error for '%s'\n", pszInFilename);
      return 100;
   }

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pCompressedData, nCompressedSize);

   if (pszOutFilename) {
      FILE *f_out;

      /* Write whole compressed file out */

      f_out = fopen(pszOutFilename, "wb");
      if (f_out) {
         fwrite(pCompressedData, 1, nCompressedSize, f_out);
         fclose(f_out);
      }
   }

   free(pCompressedData);
   free(pDecompressedData);

   if ((nOptions & OPT_VERBOSE)) {
      double fDelta = ((double)(nEndTime - nStartTime)) / 1000000.0;
      double fSpeed = ((double)nOriginalSize / 1048576.0) / fDelta;
      fprintf(stdout, "\rCompressed '%s' in %g seconds, %.02g Mb/s, %d tokens (%g bytes/token), %d into %d bytes ==> %g %%\n",
         pszInFilename, fDelta, fSpeed, stats.commands_divisor, (double)nOriginalSize / (double)stats.commands_divisor,
         (int)nOriginalSize, (int)nCompressedSize, (double)(nCompressedSize * 100.0 / nOriginalSize));
   }

   if (nOptions & OPT_STATS) {
      fprintf(stdout, "Tokens: literals: %d short matches: %d normal matches: %d large matches: %d rep matches: %d EOD: %d\n",
         stats.num_literals, stats.num_4bit_matches, stats.num_7bit_matches, stats.num_variable_matches, stats.num_rep_matches, stats.num_eod);
      if (stats.match_divisor > 0) {
         fprintf(stdout, "Offsets: min: %d avg: %d max: %d count: %d\n", stats.min_offset, (int)(stats.total_offsets / (long long)stats.match_divisor), stats.max_offset, stats.match_divisor);
         fprintf(stdout, "Match lens: min: %d avg: %d max: %d count: %d\n", stats.min_match_len, stats.total_match_lens / stats.match_divisor, stats.max_match_len, stats.match_divisor);
      }
      else {
         fprintf(stdout, "Offsets: none\n");
         fprintf(stdout, "Match lens: none\n");
      }
      if (stats.rle1_divisor > 0) {
         fprintf(stdout, "RLE1 lens: min: %d avg: %d max: %d count: %d\n", stats.min_rle1_len, stats.total_rle1_lens / stats.rle1_divisor, stats.max_rle1_len, stats.rle1_divisor);
      }
      else {
         fprintf(stdout, "RLE1 lens: none\n");
      }
      if (stats.rle2_divisor > 0) {
         fprintf(stdout, "RLE2 lens: min: %d avg: %d max: %d count: %d\n", stats.min_rle2_len, stats.total_rle2_lens / stats.rle2_divisor, stats.max_rle2_len, stats.rle2_divisor);
      }
      else {
         fprintf(stdout, "RLE2 lens: none\n");
      }
      fprintf(stdout, "Safe distance: %d (0x%X)\n", stats.safe_dist, stats.safe_dist);
   }
   return 0;
}

/*---------------------------------------------------------------------------*/

static int do_decompress(const char *pszInFilename, const char *pszOutFilename, const char *pszDictionaryFilename, const unsigned int nOptions) {
   long long nStartTime = 0LL, nEndTime = 0LL;
   size_t nCompressedSize, nMaxDecompressedSize, nOriginalSize;
   unsigned char *pCompressedData;
   unsigned char *pDecompressedData;
   int nFlags = 0;

   /* Read the whole compressed file in memory */

   FILE *f_in = fopen(pszInFilename, "rb");
   if (!f_in) {
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nCompressedSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pCompressedData = (unsigned char*)malloc(nCompressedSize);
   if (!pCompressedData) {
      fclose(f_in);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nCompressedSize);
      return 100;
   }

   if (fread(pCompressedData, 1, nCompressedSize, f_in) != nCompressedSize) {
      free(pCompressedData);
      fclose(f_in);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pCompressedData, nCompressedSize);

   /* Get max decompressed size */

   nMaxDecompressedSize = apultra_get_max_decompressed_size(pCompressedData, nCompressedSize, nFlags);
   if (nMaxDecompressedSize == -1) {
      free(pCompressedData);
      fprintf(stderr, "invalid compressed format for file '%s'\n", pszInFilename);
      return 100;
   }

   FILE* f_dict = NULL;
   size_t nDictionarySize = 0;
   if (pszDictionaryFilename) {
      /* Open the dictionary */
      f_dict = fopen(pszDictionaryFilename, "rb");
      if (!f_dict) {
         fprintf(stderr, "error opening dictionary '%s' for reading\n", pszDictionaryFilename);
         return 100;
      }

      /* Get dictionary size */
      fseek(f_dict, 0, SEEK_END);
      nDictionarySize = (size_t)ftell(f_dict);
      fseek(f_dict, 0, SEEK_SET);

      if (nDictionarySize > BLOCK_SIZE) nDictionarySize = BLOCK_SIZE;
   }

   /* Allocate max decompressed size */

   pDecompressedData = (unsigned char*)malloc(nDictionarySize + nMaxDecompressedSize);
   if (!pDecompressedData) {
      free(pCompressedData);
      if (f_dict) fclose(f_dict);
      fprintf(stderr, "out of memory for decompressing '%s', %zd bytes needed\n", pszInFilename, nMaxDecompressedSize);
      return 100;
   }

   memset(pDecompressedData, 0, nDictionarySize + nMaxDecompressedSize);

   if (f_dict) {
      /* Read dictionary data */
      if (fread(pDecompressedData, 1, nDictionarySize, f_dict) != nDictionarySize) {
         free(pDecompressedData);
         fclose(f_in);
         fclose(f_dict);
         fprintf(stderr, "I/O error while reading dictionary '%s'\n", pszDictionaryFilename);
         return 100;
      }

      fclose(f_dict);
      f_dict = NULL;

      if (nOptions & OPT_BACKWARD)
         do_reverse_buffer(pDecompressedData, nDictionarySize);
   }

   if (nOptions & OPT_VERBOSE) {
      nStartTime = do_get_time();
   }

   nOriginalSize = apultra_decompress(pCompressedData, pDecompressedData, nCompressedSize, nMaxDecompressedSize, nDictionarySize, nFlags);
   if (nOriginalSize == -1) {
      free(pDecompressedData);
      free(pCompressedData);

      fprintf(stderr, "decompression error for '%s'\n", pszInFilename);
      return 100;
   }

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pDecompressedData + nDictionarySize, nOriginalSize);

   if (pszOutFilename) {
      FILE *f_out;

      /* Write whole decompressed file out */

      f_out = fopen(pszOutFilename, "wb");
      if (f_out) {
         fwrite(pDecompressedData + nDictionarySize, 1, nOriginalSize, f_out);
         fclose(f_out);
      }
   }

   free(pDecompressedData);
   free(pCompressedData);

   if (nOptions & OPT_VERBOSE) {
      nEndTime = do_get_time();
      double fDelta = ((double)(nEndTime - nStartTime)) / 1000000.0;
      double fSpeed = ((double)nOriginalSize / 1048576.0) / fDelta;
      fprintf(stdout, "Decompressed '%s' in %g seconds, %g Mb/s\n",
         pszInFilename, fDelta, fSpeed);
   }

   return 0;
}

/*---------------------------------------------------------------------------*/

static int do_compare(const char *pszInFilename, const char *pszOutFilename, const char *pszDictionaryFilename, const unsigned int nOptions) {
   long long nStartTime = 0LL, nEndTime = 0LL;
   size_t nCompressedSize, nMaxDecompressedSize, nOriginalSize, nDecompressedSize;
   unsigned char *pCompressedData = NULL;
   unsigned char *pOriginalData = NULL;
   unsigned char *pDecompressedData = NULL;
   int nFlags = 0;

   /* Read the whole compressed file in memory */

   FILE *f_in = fopen(pszInFilename, "rb");
   if (!f_in) {
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nCompressedSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pCompressedData = (unsigned char*)malloc(nCompressedSize);
   if (!pCompressedData) {
      fclose(f_in);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nCompressedSize);
      return 100;
   }

   if (fread(pCompressedData, 1, nCompressedSize, f_in) != nCompressedSize) {
      free(pCompressedData);
      fclose(f_in);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pCompressedData, nCompressedSize);

   /* Read the whole original file in memory */

   f_in = fopen(pszOutFilename, "rb");
   if (!f_in) {
      free(pCompressedData);
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nOriginalSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pOriginalData = (unsigned char*)malloc(nOriginalSize);
   if (!pOriginalData) {
      fclose(f_in);
      free(pCompressedData);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nOriginalSize);
      return 100;
   }

   if (fread(pOriginalData, 1, nOriginalSize, f_in) != nOriginalSize) {
      free(pOriginalData);
      fclose(f_in);
      free(pCompressedData);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   /* Get max decompressed size */

   nMaxDecompressedSize = apultra_get_max_decompressed_size(pCompressedData, nCompressedSize, nFlags);
   if (nMaxDecompressedSize == -1) {
      free(pOriginalData);
      free(pCompressedData);
      fprintf(stderr, "invalid compressed format for file '%s'\n", pszInFilename);
      return 100;
   }

   FILE* f_dict = NULL;
   size_t nDictionarySize = 0;
   if (pszDictionaryFilename) {
      /* Open the dictionary */
      f_dict = fopen(pszDictionaryFilename, "rb");
      if (!f_dict) {
         fprintf(stderr, "error opening dictionary '%s' for reading\n", pszDictionaryFilename);
         return 100;
      }

      /* Get dictionary size */
      fseek(f_dict, 0, SEEK_END);
      nDictionarySize = (size_t)ftell(f_dict);
      fseek(f_dict, 0, SEEK_SET);

      if (nDictionarySize > BLOCK_SIZE) nDictionarySize = BLOCK_SIZE;
   }

   /* Allocate max decompressed size */

   pDecompressedData = (unsigned char*)malloc(nDictionarySize + nMaxDecompressedSize);
   if (!pDecompressedData) {
      free(pOriginalData);
      free(pCompressedData);
      if (f_dict) fclose(f_dict);
      fprintf(stderr, "out of memory for decompressing '%s', %zd bytes needed\n", pszInFilename, nMaxDecompressedSize);
      return 100;
   }

   memset(pDecompressedData, 0, nDictionarySize + nMaxDecompressedSize);

   if (f_dict) {
      /* Read dictionary data */
      if (fread(pDecompressedData, 1, nDictionarySize, f_dict) != nDictionarySize) {
         free(pDecompressedData);
         fclose(f_in);
         fclose(f_dict);
         fprintf(stderr, "I/O error while reading dictionary '%s'\n", pszDictionaryFilename);
         return 100;
      }

      fclose(f_dict);
      f_dict = NULL;

      if (nOptions & OPT_BACKWARD)
         do_reverse_buffer(pDecompressedData, nDictionarySize);
   }

   if (nOptions & OPT_VERBOSE) {
      nStartTime = do_get_time();
   }

   nDecompressedSize = apultra_decompress(pCompressedData, pDecompressedData, nCompressedSize, nMaxDecompressedSize, nDictionarySize, nFlags);
   if (nDecompressedSize == -1) {
      free(pDecompressedData);
      free(pOriginalData);
      free(pCompressedData);

      fprintf(stderr, "decompression error for '%s'\n", pszInFilename);
      return 100;
   }

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pDecompressedData + nDictionarySize, nDecompressedSize);

   if (nDecompressedSize != nOriginalSize || memcmp(pDecompressedData + nDictionarySize, pOriginalData, nOriginalSize)) {
      fprintf(stderr, "error comparing compressed file '%s' with original '%s'\n", pszInFilename, pszOutFilename);
      return 100;
   }

   free(pDecompressedData);
   free(pOriginalData);
   free(pCompressedData);

   if (nOptions & OPT_VERBOSE) {
      nEndTime = do_get_time();
      double fDelta = ((double)(nEndTime - nStartTime)) / 1000000.0;
      double fSpeed = ((double)nOriginalSize / 1048576.0) / fDelta;
      fprintf(stdout, "Compared '%s' in %g seconds, %g Mb/s\n",
         pszInFilename, fDelta, fSpeed);
   }

   return 0;
}

/*---------------------------------------------------------------------------*/

static void generate_compressible_data(unsigned char *pBuffer, size_t nBufferSize, unsigned int nSeed, int nNumLiteralValues, float fMatchProbability) {
   size_t nIndex = 0;
   int nMatchProbability = (int)(fMatchProbability * 1023.0f);

   srand(nSeed);
   
   if (nIndex >= nBufferSize) return;
   pBuffer[nIndex++] = rand() % nNumLiteralValues;

   while (nIndex < nBufferSize) {
      if ((rand() & 1023) >= nMatchProbability) {
         size_t nLiteralCount = rand() & 127;
         if (nLiteralCount > (nBufferSize - nIndex))
            nLiteralCount = nBufferSize - nIndex;

         while (nLiteralCount--)
            pBuffer[nIndex++] = rand() % nNumLiteralValues;
      }
      else {
         size_t nMatchLength = MIN_MATCH_SIZE + (rand() & 1023);
         size_t nMatchOffset;

         if (nMatchLength > (nBufferSize - nIndex))
            nMatchLength = nBufferSize - nIndex;
         if (nMatchLength > nIndex)
            nMatchLength = nIndex;

         if (nMatchLength < nIndex)
            nMatchOffset = rand() % (nIndex - nMatchLength);
         else
            nMatchOffset = 0;

         while (nMatchLength--) {
            pBuffer[nIndex] = pBuffer[nIndex - nMatchOffset];
            nIndex++;
         }
      }
   }
}

static void xor_data(unsigned char *pBuffer, size_t nBufferSize, unsigned int nSeed, float fXorProbability) {
   size_t nIndex = 0;
   int nXorProbability = (int)(fXorProbability * 1023.0f);

   srand(nSeed);

   if (nIndex >= nBufferSize) return;

   while (nIndex < nBufferSize) {
      if ((rand() & 1023) < nXorProbability) {
         pBuffer[nIndex] ^= 0xff;
      }
      nIndex++;
   }
}

static int do_self_test(const unsigned int nOptions, const unsigned int nMaxWindowSize, const int nIsQuickTest) {
   unsigned char *pGeneratedData;
   unsigned char *pCompressedData;
   unsigned char *pTmpCompressedData;
   unsigned char *pTmpDecompressedData;
   size_t nGeneratedDataSize;
   size_t nMaxCompressedDataSize;
   unsigned int nSeed = 123;
   int nFlags = 0;
   int i;

   pGeneratedData = (unsigned char*)malloc(4 * BLOCK_SIZE);
   if (!pGeneratedData) {
      fprintf(stderr, "out of memory, %d bytes needed\n", 4 * BLOCK_SIZE);
      return 100;
   }

   nMaxCompressedDataSize = apultra_get_max_compressed_size(4 * BLOCK_SIZE);
   pCompressedData = (unsigned char*)malloc(nMaxCompressedDataSize);
   if (!pCompressedData) {
      free(pGeneratedData);
      pGeneratedData = NULL;

      fprintf(stderr, "out of memory, %zd bytes needed\n", nMaxCompressedDataSize);
      return 100;
   }

   pTmpCompressedData = (unsigned char*)malloc(nMaxCompressedDataSize);
   if (!pTmpCompressedData) {
      free(pCompressedData);
      pCompressedData = NULL;
      free(pGeneratedData);
      pGeneratedData = NULL;

      fprintf(stderr, "out of memory, %zd bytes needed\n", nMaxCompressedDataSize);
      return 100;
   }

   pTmpDecompressedData = (unsigned char*)malloc(4 * BLOCK_SIZE);
   if (!pTmpDecompressedData) {
      free(pTmpCompressedData);
      pTmpCompressedData = NULL;
      free(pCompressedData);
      pCompressedData = NULL;
      free(pGeneratedData);
      pGeneratedData = NULL;

      fprintf(stderr, "out of memory, %d bytes needed\n", 4 * BLOCK_SIZE);
      return 100;
   }

   memset(pGeneratedData, 0, 4 * BLOCK_SIZE);
   memset(pCompressedData, 0, nMaxCompressedDataSize);
   memset(pTmpCompressedData, 0, nMaxCompressedDataSize);

   /* Test compressing with a too small buffer to do anything, expect to fail cleanly */
   for (i = 0; i < 12; i++) {
      generate_compressible_data(pGeneratedData, i, nSeed, 256, 0.5f);
      apultra_compress(pGeneratedData, pCompressedData, i, i, nFlags, nMaxWindowSize, 0 /* dictionary size */, NULL, NULL);
   }

   size_t nDataSizeStep = 128;
   float fProbabilitySizeStep = nIsQuickTest ? 0.005f : 0.0005f;

   for (nGeneratedDataSize = 1024; nGeneratedDataSize <= (nIsQuickTest ? 1024U : (4U * BLOCK_SIZE)); nGeneratedDataSize += nDataSizeStep) {
      float fMatchProbability;

      fprintf(stdout, "size %zd", nGeneratedDataSize);
      for (fMatchProbability = 0; fMatchProbability <= 0.995f; fMatchProbability += fProbabilitySizeStep) {
         int nNumLiteralValues[12] = { 1, 2, 3, 15, 30, 56, 96, 137, 178, 191, 255, 256 };
         float fXorProbability;

         fputc('.', stdout);
         fflush(stdout);

         for (i = 0; i < 12; i++) {
            /* Generate data to compress */
            generate_compressible_data(pGeneratedData, nGeneratedDataSize, nSeed, nNumLiteralValues[i], fMatchProbability);

            /* Try to compress it, expected to succeed */
            size_t nActualCompressedSize = apultra_compress(pGeneratedData, pCompressedData, nGeneratedDataSize, apultra_get_max_compressed_size(nGeneratedDataSize),
               nFlags, nMaxWindowSize, 0 /* dictionary size */, NULL, NULL);
            if (nActualCompressedSize == -1 || nActualCompressedSize < (1 + 1 + 1 /* footer */)) {
               free(pTmpDecompressedData);
               pTmpDecompressedData = NULL;
               free(pTmpCompressedData);
               pTmpCompressedData = NULL;
               free(pCompressedData);
               pCompressedData = NULL;
               free(pGeneratedData);
               pGeneratedData = NULL;

               fprintf(stderr, "\nself-test: error compressing size %zd, seed %d, match probability %f, literals range %d\n", nGeneratedDataSize, nSeed, fMatchProbability, nNumLiteralValues[i]);
               return 100;
            }

            /* Try to decompress it, expected to succeed */
            size_t nActualDecompressedSize;
            nActualDecompressedSize = apultra_decompress(pCompressedData, pTmpDecompressedData, nActualCompressedSize, nGeneratedDataSize, 0 /* dictionary size */, nFlags);
            if (nActualDecompressedSize == -1) {
               free(pTmpDecompressedData);
               pTmpDecompressedData = NULL;
               free(pTmpCompressedData);
               pTmpCompressedData = NULL;
               free(pCompressedData);
               pCompressedData = NULL;
               free(pGeneratedData);
               pGeneratedData = NULL;

               fprintf(stderr, "\nself-test: error decompressing size %zd, seed %d, match probability %f, literals range %d\n", nGeneratedDataSize, nSeed, fMatchProbability, nNumLiteralValues[i]);
               return 100;
            }

            if (memcmp(pGeneratedData, pTmpDecompressedData, nGeneratedDataSize)) {
               free(pTmpDecompressedData);
               pTmpDecompressedData = NULL;
               free(pTmpCompressedData);
               pTmpCompressedData = NULL;
               free(pCompressedData);
               pCompressedData = NULL;
               free(pGeneratedData);
               pGeneratedData = NULL;

               fprintf(stderr, "\nself-test: error comparing decompressed and original data, size %zd, seed %d, match probability %f, literals range %d\n", nGeneratedDataSize, nSeed, fMatchProbability, nNumLiteralValues[i]);
               return 100;
            }

            /* Try to decompress corrupted data, expected to fail cleanly, without crashing or corrupting memory outside the output buffer */
            for (fXorProbability = 0.05f; fXorProbability <= 0.5f; fXorProbability += 0.05f) {
               memcpy(pTmpCompressedData, pCompressedData, nActualCompressedSize);
               xor_data(pTmpCompressedData, nActualCompressedSize, nSeed, fXorProbability);
               apultra_decompress(pTmpCompressedData, pGeneratedData, nActualCompressedSize, nGeneratedDataSize, 0 /* dictionary size */, nFlags);
            }
         }

         nSeed++;
      }

      fputc(10, stdout);
      fflush(stdout);

      nDataSizeStep <<= 1;
      if (nDataSizeStep > (128 * 4096))
         nDataSizeStep = 128 * 4096;
      fProbabilitySizeStep *= 1.25;
      if (fProbabilitySizeStep > (0.0005f * 4096))
         fProbabilitySizeStep = 0.0005f * 4096;
   }

   free(pTmpDecompressedData);
   pTmpDecompressedData = NULL;

   free(pTmpCompressedData);
   pTmpCompressedData = NULL;

   free(pCompressedData);
   pCompressedData = NULL;

   free(pGeneratedData);
   pGeneratedData = NULL;

   fprintf(stdout, "All tests passed.\n");
   return 0;
}

/*---------------------------------------------------------------------------*/

static int do_compr_benchmark(const char *pszInFilename, const char *pszOutFilename, const char *pszDictionaryFilename, const unsigned int nOptions, const unsigned int nMaxWindowSize) {
   size_t nFileSize, nMaxCompressedSize;
   unsigned char *pFileData;
   unsigned char *pCompressedData;
   int nFlags = 0;
   int i;

   if (pszDictionaryFilename) {
      fprintf(stderr, "in-memory benchmarking does not support dictionaries\n");
      return 100;
   }

   /* Read the whole original file in memory */

   FILE *f_in = fopen(pszInFilename, "rb");
   if (!f_in) {
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nFileSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pFileData = (unsigned char*)malloc(nFileSize);
   if (!pFileData) {
      fclose(f_in);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nFileSize);
      return 100;
   }

   if (fread(pFileData, 1, nFileSize, f_in) != nFileSize) {
      free(pFileData);
      fclose(f_in);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pFileData, nFileSize);

   /* Allocate max compressed size */

   nMaxCompressedSize = apultra_get_max_compressed_size(nFileSize);

   pCompressedData = (unsigned char*)malloc(nMaxCompressedSize + 2048);
   if (!pCompressedData) {
      free(pFileData);
      fprintf(stderr, "out of memory for compressing '%s', %zd bytes needed\n", pszInFilename, nMaxCompressedSize);
      return 100;
   }

   memset(pCompressedData + 1024, 0, nMaxCompressedSize);

   long long nBestCompTime = -1;

   size_t nActualCompressedSize = 0;
   size_t nRightGuardPos = nMaxCompressedSize;

   for (i = 0; i < 5; i++) {
      unsigned char nGuard = 0x33 + i;
      int j;

      /* Write guard bytes around the output buffer, to help check for writes outside of it by the compressor */
      memset(pCompressedData, nGuard, 1024);
      memset(pCompressedData + 1024 + nRightGuardPos, nGuard, 1024);

      long long t0 = do_get_time();
      nActualCompressedSize = apultra_compress(pFileData, pCompressedData + 1024, nFileSize, nRightGuardPos, nFlags, nMaxWindowSize, 0 /* dictionary size */, NULL, NULL);
      long long t1 = do_get_time();
      if (nActualCompressedSize == -1) {
         free(pCompressedData);
         free(pFileData);
         fprintf(stderr, "compression error\n");
         return 100;
      }

      long long nCurDecTime = t1 - t0;
      if (nBestCompTime == -1 || nBestCompTime > nCurDecTime)
         nBestCompTime = nCurDecTime;

      /* Check guard bytes before the output buffer */
      for (j = 0; j < 1024; j++) {
         if (pCompressedData[j] != nGuard) {
            free(pCompressedData);
            free(pFileData);
            fprintf(stderr, "error, wrote outside of output buffer at %d!\n", j - 1024);
            return 100;
         }
      }

      /* Check guard bytes after the output buffer */
      for (j = 0; j < 1024; j++) {
         if (pCompressedData[1024 + nRightGuardPos + j] != nGuard) {
            free(pCompressedData);
            free(pFileData);
            fprintf(stderr, "error, wrote outside of output buffer at %d!\n", j);
            return 100;
         }
      }

      nRightGuardPos = nActualCompressedSize;
   }

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pCompressedData + 1024, nActualCompressedSize);

   if (pszOutFilename) {
      FILE *f_out;

      /* Write whole compressed file out */

      f_out = fopen(pszOutFilename, "wb");
      if (f_out) {
         fwrite(pCompressedData + 1024, 1, nActualCompressedSize, f_out);
         fclose(f_out);
      }
   }

   free(pCompressedData);
   free(pFileData);

   fprintf(stdout, "compressed size: %zd bytes\n", nActualCompressedSize);
   fprintf(stdout, "compression time: %lld microseconds (%g Mb/s)\n", nBestCompTime, ((double)nActualCompressedSize / 1024.0) / ((double)nBestCompTime / 1000.0));

   return 0;
}

/*---------------------------------------------------------------------------*/

static int do_dec_benchmark(const char *pszInFilename, const char *pszOutFilename, const char *pszDictionaryFilename, const unsigned int nOptions) {
   size_t nFileSize, nMaxDecompressedSize;
   unsigned char *pFileData;
   unsigned char *pDecompressedData;
   int nFlags = 0;
   int i;

   if (pszDictionaryFilename) {
      fprintf(stderr, "in-memory benchmarking does not support dictionaries\n");
      return 100;
   }

   /* Read the whole compressed file in memory */

   FILE *f_in = fopen(pszInFilename, "rb");
   if (!f_in) {
      fprintf(stderr, "error opening '%s' for reading\n", pszInFilename);
      return 100;
   }

   fseek(f_in, 0, SEEK_END);
   nFileSize = (size_t)ftell(f_in);
   fseek(f_in, 0, SEEK_SET);

   pFileData = (unsigned char*)malloc(nFileSize);
   if (!pFileData) {
      fclose(f_in);
      fprintf(stderr, "out of memory for reading '%s', %zd bytes needed\n", pszInFilename, nFileSize);
      return 100;
   }

   if (fread(pFileData, 1, nFileSize, f_in) != nFileSize) {
      free(pFileData);
      fclose(f_in);
      fprintf(stderr, "I/O error while reading '%s'\n", pszInFilename);
      return 100;
   }

   fclose(f_in);

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pFileData, nFileSize);

   /* Allocate max decompressed size */

   nMaxDecompressedSize = apultra_get_max_decompressed_size(pFileData, nFileSize, nFlags);
   if (nMaxDecompressedSize == -1) {
      free(pFileData);
      fprintf(stderr, "invalid compressed format for file '%s'\n", pszInFilename);
      return 100;
   }

   pDecompressedData = (unsigned char*)malloc(nMaxDecompressedSize);
   if (!pDecompressedData) {
      free(pFileData);
      fprintf(stderr, "out of memory for decompressing '%s', %zd bytes needed\n", pszInFilename, nMaxDecompressedSize);
      return 100;
   }

   memset(pDecompressedData, 0, nMaxDecompressedSize);

   long long nBestDecTime = -1;

   size_t nActualDecompressedSize = 0;
   for (i = 0; i < 50; i++) {
      long long t0 = do_get_time();
      nActualDecompressedSize = apultra_decompress(pFileData, pDecompressedData, nFileSize, nMaxDecompressedSize, 0 /* dictionary size */, nFlags);
      long long t1 = do_get_time();
      if (nActualDecompressedSize == -1) {
         free(pDecompressedData);
         free(pFileData);
         fprintf(stderr, "decompression error\n");
         return 100;
      }

      long long nCurDecTime = t1 - t0;
      if (nBestDecTime == -1 || nBestDecTime > nCurDecTime)
         nBestDecTime = nCurDecTime;
   }

   if (nOptions & OPT_BACKWARD)
      do_reverse_buffer(pDecompressedData, nActualDecompressedSize);

   if (pszOutFilename) {
      FILE *f_out;

      /* Write whole decompressed file out */

      f_out = fopen(pszOutFilename, "wb");
      if (f_out) {
         fwrite(pDecompressedData, 1, nActualDecompressedSize, f_out);
         fclose(f_out);
      }
   }

   free(pDecompressedData);
   free(pFileData);

   fprintf(stdout, "decompressed size: %zd bytes\n", nActualDecompressedSize);
   fprintf(stdout, "decompression time: %lld microseconds (%g Mb/s)\n", nBestDecTime, ((double)nActualDecompressedSize / 1024.0) / ((double)nBestDecTime / 1000.0));

   return 0;
}

/*---------------------------------------------------------------------------*/

int main(int argc, char **argv) {
   int i;
   const char *pszInFilename = NULL;
   const char *pszOutFilename = NULL;
   const char *pszDictionaryFilename = NULL;
   int nArgsError = 0;
   int nCommandDefined = 0;
   int nVerifyCompression = 0;
   char cCommand = 'z';
   unsigned int nOptions = 0;
   unsigned int nMaxWindowSize = 0;

   for (i = 1; i < argc; i++) {
      if (!strcmp(argv[i], "-d")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 'd';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-z")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 'z';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-c")) {
         if (!nVerifyCompression) {
            nVerifyCompression = 1;
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-cbench")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 'B';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-dbench")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 'b';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-test")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 't';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-quicktest")) {
         if (!nCommandDefined) {
            nCommandDefined = 1;
            cCommand = 'T';
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-D")) {
         if (!pszDictionaryFilename && (i + 1) < argc) {
            pszDictionaryFilename = argv[i + 1];
            i++;
         }
         else
            nArgsError = 1;
      }
      else if (!strncmp(argv[i], "-D", 2)) {
         if (!pszDictionaryFilename) {
            pszDictionaryFilename = argv[i] + 2;
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-v")) {
         if ((nOptions & OPT_VERBOSE) == 0) {
            nOptions |= OPT_VERBOSE;
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-w")) {
         if (!nMaxWindowSize && (i + 1) < argc) {
            char *pEnd = NULL;
            nMaxWindowSize = (int)strtol(argv[i + 1], &pEnd, 10);
            if (pEnd && pEnd != argv[i + 1] && (nMaxWindowSize >= 16 && nMaxWindowSize <= 0x200000)) {
               i++;
            }
            else {
               nArgsError = 1;
            }
         }
         else
            nArgsError = 1;
      }
      else if (!strncmp(argv[i], "-w", 2)) {
         if (!nMaxWindowSize) {
            char *pEnd = NULL;
            nMaxWindowSize = (int)strtol(argv[i] + 2, &pEnd, 10);
            if (!(pEnd && pEnd != (argv[i] + 2) && (nMaxWindowSize >= 16 && nMaxWindowSize <= 0x200000))) {
               nArgsError = 1;
            }
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-stats")) {
         if ((nOptions & OPT_STATS) == 0) {
            nOptions |= OPT_STATS;
         }
         else
            nArgsError = 1;
      }
      else if (!strcmp(argv[i], "-b")) {
         if ((nOptions & OPT_BACKWARD) == 0) {
            nOptions |= OPT_BACKWARD;
         }
         else
            nArgsError = 1;
      }
      else {
         if (!pszInFilename)
            pszInFilename = argv[i];
         else {
            if (!pszOutFilename)
               pszOutFilename = argv[i];
            else
               nArgsError = 1;
         }
      }
   }

   if (!nArgsError && cCommand == 't') {
      return do_self_test(nOptions, nMaxWindowSize, 0);
   }
   else if (!nArgsError && cCommand == 'T') {
      return do_self_test(nOptions, nMaxWindowSize, 1);
   }

   if (nArgsError || !pszInFilename || !pszOutFilename) {
      fprintf(stderr, "apultra command-line tool v" TOOL_VERSION " by Emmanuel Marty and spke\n");
      fprintf(stderr, "usage: %s [-c] [-d] [-v] [-b] <infile> <outfile>\n", argv[0]);
      fprintf(stderr, "        -c: check resulting stream after compressing\n");
      fprintf(stderr, "        -d: decompress (default: compress)\n");
      fprintf(stderr, "        -b: backwards compression or decompression\n");
      fprintf(stderr, " -w <size>: maximum window size, in bytes (16..2097152), defaults to maximum\n");
      fprintf(stderr, " -D <file>: use dictionary file\n");
      fprintf(stderr, "   -cbench: benchmark in-memory compression\n");
      fprintf(stderr, "   -dbench: benchmark in-memory decompression\n");
      fprintf(stderr, "     -test: run full automated self-tests\n");
      fprintf(stderr, "-quicktest: run quick automated self-tests\n");
      fprintf(stderr, "    -stats: show compressed data stats\n");
      fprintf(stderr, "        -v: be verbose\n");
      return 100;
   }

   do_init_time();

   if (cCommand == 'z') {
      int nResult = do_compress(pszInFilename, pszOutFilename, pszDictionaryFilename, nOptions, nMaxWindowSize);
      if (nResult == 0 && nVerifyCompression) {
         return do_compare(pszOutFilename, pszInFilename, pszDictionaryFilename, nOptions);
      } else {
         return nResult;
      }
   }
   else if (cCommand == 'd') {
      return do_decompress(pszInFilename, pszOutFilename, pszDictionaryFilename, nOptions);
   }
   else if (cCommand == 'B') {
      return do_compr_benchmark(pszInFilename, pszOutFilename, pszDictionaryFilename, nOptions, nMaxWindowSize);
   }
   else if (cCommand == 'b') {
      return do_dec_benchmark(pszInFilename, pszOutFilename, pszDictionaryFilename, nOptions);
   }
   else {
      return 100;
   }
}
#endif
