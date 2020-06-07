#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "yaz0.h"

// decoder implementation by thakis of http://www.amnoid.de

// src points to the yaz0 source data (to the "real" source data, not at the header!)
// dst points to a buffer uncompressedSize bytes large (you get uncompressedSize from
// the second 4 bytes in the Yaz0 header).
void yaz0_decode(uint8_t* src, uint8_t* dst, int uncompressedSize)
{
    int srcPlace = 0, dstPlace = 0;  // current read/write positions

    unsigned int validBitCount = 0;  // number of valid bits left in "code" byte
    uint8_t currCodeByte;
    while (dstPlace < uncompressedSize)
    {
        // read new "code" byte if the current one is used up
        if (validBitCount == 0)
        {
            currCodeByte = src[srcPlace];
            ++srcPlace;
            validBitCount = 8;
        }

        if ((currCodeByte & 0x80) != 0)
        {
            // straight copy
            dst[dstPlace] = src[srcPlace];
            dstPlace++;
            srcPlace++;
        }
        else
        {
            // RLE part
            uint8_t byte1 = src[srcPlace];
            uint8_t byte2 = src[srcPlace + 1];
            srcPlace += 2;

            unsigned int dist = ((byte1 & 0xF) << 8) | byte2;
            unsigned int copySource = dstPlace - (dist + 1);

            unsigned int numBytes = byte1 >> 4;
            if (numBytes == 0)
            {
                numBytes = src[srcPlace] + 0x12;
                srcPlace++;
            }
            else
            {
                numBytes += 2;
            }

            // copy run
            for (unsigned int i = 0; i < numBytes; ++i)
            {
                dst[dstPlace] = dst[copySource];
                copySource++;
                dstPlace++;
            }
        }

        // use next bit from "code" byte
        currCodeByte <<= 1;
        validBitCount -= 1;
    }
}

// encoder implementation by shevious, with bug fixes by notwa

typedef uint32_t uint32_t;
typedef uint8_t uint8_t;

#define MAX_RUNLEN (0xFF + 0x12)

// simple and straight encoding scheme for Yaz0
static uint32_t simpleEnc(uint8_t *src, int size, int pos, uint32_t *pMatchPos)
{
    int numBytes = 1;
    int matchPos = 0;

    int startPos = pos - 0x1000;
    int end = size - pos;

    if (startPos < 0)
        startPos = 0;

    // maximum runlength for 3 byte encoding
    if (end > MAX_RUNLEN)
        end = MAX_RUNLEN;

    for (int i = startPos; i < pos; i++)
    {
        int j;

        for (j = 0; j < end; j++)
        {
            if (src[i + j] != src[j + pos])
                break;
        }
        if (j > numBytes)
        {
            numBytes = j;
            matchPos = i;
        }
    }

    *pMatchPos = matchPos;

    if (numBytes == 2)
        numBytes = 1;

    return numBytes;
}

// a lookahead encoding scheme for ngc Yaz0
static uint32_t nintendoEnc(uint8_t *src, int size, int pos, uint32_t *pMatchPos)
{
    uint32_t numBytes = 1;
    static uint32_t numBytes1;
    static uint32_t matchPos;
    static int prevFlag = 0;

    // if prevFlag is set, it means that the previous position
    // was determined by look-ahead try.
    // so just use it. this is not the best optimization,
    // but nintendo's choice for speed.
    if (prevFlag == 1)
    {
        *pMatchPos = matchPos;
        prevFlag = 0;
        return numBytes1;
    }

    prevFlag = 0;
    numBytes = simpleEnc(src, size, pos, &matchPos);
    *pMatchPos = matchPos;

    // if this position is RLE encoded, then compare to copying 1 byte and next position(pos+1) encoding
    if (numBytes >= 3)
    {
        numBytes1 = simpleEnc(src, size, pos + 1, &matchPos);
        // if the next position encoding is +2 longer than current position, choose it.
        // this does not guarantee the best optimization, but fairly good optimization with speed.
        if (numBytes1 >= numBytes + 2)
        {
            numBytes = 1;
            prevFlag = 1;
        }
    }
    return numBytes;
}

int yaz0_encode(uint8_t *src, uint8_t *dst, int srcSize)
{
    int srcPos = 0;
    int dstPos = 0;
    int bufPos = 0;

    uint8_t buf[24]; // 8 codes * 3 bytes maximum

    uint32_t validBitCount = 0; // number of valid bits left in "code" byte
    uint8_t currCodeByte = 0; // a bitfield, set bits meaning copy, unset meaning RLE

    while (srcPos < srcSize)
    {
        uint32_t numBytes;
        uint32_t matchPos;

        numBytes = nintendoEnc(src, srcSize, srcPos, &matchPos);
        if (numBytes < 3)
        {
            // straight copy
            buf[bufPos] = src[srcPos];
            bufPos++;
            srcPos++;
            //set flag for straight copy
            currCodeByte |= (0x80 >> validBitCount);
        }
        else
        {
            //RLE part
            uint32_t dist = srcPos - matchPos - 1;
            uint8_t byte1, byte2, byte3;

            if (numBytes >= 0x12)  // 3 byte encoding
            {
                byte1 = 0 | (dist >> 8);
                byte2 = dist & 0xFF;
                buf[bufPos++] = byte1;
                buf[bufPos++] = byte2;
                // maximum runlength for 3 byte encoding
                if (numBytes > MAX_RUNLEN)
                    numBytes = MAX_RUNLEN;
                byte3 = numBytes - 0x12;
                buf[bufPos++] = byte3;
            }
            else  // 2 byte encoding
            {
                byte1 = ((numBytes - 2) << 4) | (dist >> 8);
                byte2 = dist & 0xFF;
                buf[bufPos++] = byte1;
                buf[bufPos++] = byte2;
            }
            srcPos += numBytes;
        }

        validBitCount++;

        // write eight codes
        if (validBitCount == 8)
        {
            dst[dstPos++] = currCodeByte;
            for (int j = 0; j < bufPos; j++)
                dst[dstPos++] = buf[j];

            currCodeByte = 0;
            validBitCount = 0;
            bufPos = 0;
        }
    }

    if (validBitCount > 0)
    {
        dst[dstPos++] = currCodeByte;
        for (int j = 0; j < bufPos; j++)
            dst[dstPos++] = buf[j];

        currCodeByte = 0;
        validBitCount = 0;
        bufPos = 0;
    }

    return dstPos;
}
