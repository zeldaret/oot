#include "yaz0.h"

#include "alignment.h"
#include "ultra64.h"
#include "dma.h"

#pragma increment_block_number "gc-eu:0 gc-eu-mq:0 gc-jp:0 gc-jp-ce:0 gc-jp-mq:0 gc-us:0 gc-us-mq:0 ntsc-1.2:128" \
                               "pal-1.1:128"

ALIGNED(16) u8 sYaz0DataBuffer[0x400];
u8* sYaz0DataBufferEnd;
uintptr_t sYaz0CurRomStart;
size_t sYaz0CurSize;
u8* sYaz0MaxPtr;

void* Yaz0_FirstDMA(void) {
    s32 pad[2];
    size_t dmaSize;
    size_t bufferSize;

    sYaz0MaxPtr = sYaz0DataBufferEnd - 0x19;

    bufferSize = sYaz0DataBufferEnd - sYaz0DataBuffer;
    dmaSize = (bufferSize > sYaz0CurSize) ? sYaz0CurSize : bufferSize;

    DmaMgr_DmaRomToRam(sYaz0CurRomStart, sYaz0DataBuffer, dmaSize);
    sYaz0CurRomStart += dmaSize;
    sYaz0CurSize -= dmaSize;
    return sYaz0DataBuffer;
}

void* Yaz0_NextDMA(u8* curSrcPos) {
    u8* dst;
    size_t restSize;
    size_t dmaSize;

    restSize = sYaz0DataBufferEnd - curSrcPos;
    dst = (restSize & 7) ? (sYaz0DataBuffer - (restSize & 7)) + 8 : sYaz0DataBuffer;

    bcopy(curSrcPos, dst, restSize);
    dmaSize = (sYaz0DataBufferEnd - dst) - restSize;
    if (sYaz0CurSize < dmaSize) {
        dmaSize = sYaz0CurSize;
    }

    if (dmaSize != 0) {
        DmaMgr_DmaRomToRam(sYaz0CurRomStart, dst + restSize, dmaSize);
        sYaz0CurRomStart += dmaSize;
        sYaz0CurSize -= dmaSize;
        if (sYaz0CurSize == 0) {
            sYaz0MaxPtr = dst + restSize + dmaSize;
        }
    }

    return dst;
}

typedef struct Yaz0Header {
    /* 0x00 */ char magic[4]; // Yaz0
    /* 0x04 */ u32 decSize;
    /* 0x08 */ u32 compInfoOffset;   // only used in mio0
    /* 0x0C */ u32 uncompDataOffset; // only used in mio0
} Yaz0Header;                        // size = 0x10

void Yaz0_DecompressImpl(u8* src, u8* dst) {
    Yaz0Header* header = (Yaz0Header*)src;
    u32 bitIdx = 0;
    u8* dstEnd = dst + header->decSize;
    u32 chunkHeader;
    u32 nibble;
    u8* backPtr;
    u32 chunkSize;
    u32 off;

    src += sizeof(Yaz0Header);

    do {
        if (bitIdx == 0) {
            if ((sYaz0MaxPtr < src) && (sYaz0CurSize != 0)) {
                src = Yaz0_NextDMA(src);
            }

            chunkHeader = *src++;
            bitIdx = 8;
        }

        if (chunkHeader & (1 << 7)) { // uncompressed
            *dst = *src;
            dst++;
            src++;
        } else { // compressed
            off = ((*src & 0xF) << 8 | *(src + 1));
            nibble = *src >> 4;
            backPtr = dst - off;
            src += 2;

            chunkSize = (nibble == 0)              // N = chunkSize; B = back offset
                            ? (u32)(*src++ + 0x12) // 3 bytes 0B BB NN
                            : nibble + 2;          // 2 bytes NB BB

            do {
                *dst++ = *(backPtr++ - 1);
                chunkSize--;
            } while (chunkSize != 0);
        }
        chunkHeader <<= 1;
        bitIdx--;
    } while (dst != dstEnd);
}

void Yaz0_Decompress(uintptr_t romStart, u8* dst, size_t size) {
    sYaz0CurRomStart = romStart;
    sYaz0CurSize = size;
    sYaz0DataBufferEnd = sYaz0DataBuffer + sizeof(sYaz0DataBuffer);
    Yaz0_DecompressImpl(Yaz0_FirstDMA(), dst);
}
