#include <global.h>

u8* sJpegBitStreamPtr;
u32 sJpegBitStreamByteIdx;
u8 sJpegBitStreamBitIdx;
u8 sJpegBitStreamDontSkip;
u32 sJpegBitStreamCurWord;

s32 JpegDecoder_Decode(JpegDecoder* decoder, u16* mcuBuff, s32 count, u8 isFollowing, JpegDecoderState* state) {
    s16 pad;
    s16 unk0;
    s16 unk1;
    s16 unk2;
    u32 idx;
    s32 inc;
    s16 unkCount;

    JpegHuffmanTable* hTable0;
    JpegHuffmanTable* hTable1;
    JpegHuffmanTable* hTable2;
    JpegHuffmanTable* hTable3;

    inc = 0;
    sJpegBitStreamPtr = decoder->imageData;
    if (decoder->unk_04 == 0) {
        unkCount = 2;
    } else {
        unkCount = 4;
        if (decoder->unk_05 == 1) {
            inc = 8 * 8 * 2;
        }
    }

    hTable0 = decoder->hTablePtrs[0];
    hTable1 = decoder->hTablePtrs[1];
    hTable2 = decoder->hTablePtrs[2];
    hTable3 = decoder->hTablePtrs[3];

    if (!isFollowing) {
        sJpegBitStreamByteIdx = 0;
        sJpegBitStreamBitIdx = 32;
        sJpegBitStreamCurWord = 0;
        sJpegBitStreamDontSkip = 0;
        unk0 = 0;
        unk1 = 0;
        unk2 = 0;
    } else {
        sJpegBitStreamByteIdx = state->byteIdx;
        sJpegBitStreamBitIdx = state->bitIdx;
        sJpegBitStreamCurWord = state->curWord;
        sJpegBitStreamDontSkip = state->dontSkip;
        unk0 = state->unk_0C;
        unk1 = state->unk_0E;
        unk2 = state->unk_10;
    }

    while (count != 0) {
        for (idx = 0; idx < unkCount; idx++) {
            if (JpegDecoder_ProcessMcu(hTable0, hTable1, mcuBuff, &unk0)) {
                return 2;
            }
            mcuBuff += 8 * 8;
        }

        if (JpegDecoder_ProcessMcu(hTable2, hTable3, mcuBuff, &unk1)) {
            return 2;
        }
        mcuBuff += 8 * 8;

        if (JpegDecoder_ProcessMcu(hTable2, hTable3, mcuBuff, &unk2)) {
            return 2;
        }

        count--;
        mcuBuff += 8 * 8;
        mcuBuff += inc;
    }

    state->byteIdx = sJpegBitStreamByteIdx;
    state->bitIdx = sJpegBitStreamBitIdx;
    state->curWord = sJpegBitStreamCurWord;
    state->dontSkip = sJpegBitStreamDontSkip;
    state->unk_0C = unk0;
    state->unk_0E = unk1;
    state->unk_10 = unk2;
    return 0;
}

s32 JpegDecoder_ProcessMcu(JpegHuffmanTable* hTable0, JpegHuffmanTable* hTable1, s16* mcu, s16* unk) {
    s8 i = 0;
    s8 zeroCount;
    s16 coeff;

    if (JpegDecoder_ParseNextSymbol(hTable0, &coeff, &zeroCount)) {
        return 1;
    }

    *unk += coeff;
    mcu[i++] = *unk;
    while (i < 8 * 8) {
        if (JpegDecoder_ParseNextSymbol(hTable1, &coeff, &zeroCount) != 0) {
            return 1;
        }

        if (coeff == 0) {
            if (zeroCount == 0xF) {
                while (zeroCount-- >= 0) {
                    mcu[i++] = 0;
                }
            } else {
                while (i < 8 * 8) {
                    mcu[i++] = 0;
                }
                break;
            }
        } else {
            while (0 < zeroCount--) {
                mcu[i++] = 0;
            }
            mcu[i++] = coeff;
        }
    }

    return 0;
}

#ifdef NON_MATCHING
// stack usage (coeffLength is stored as a u32 instead of a u8)
s32 JpegDecoder_ParseNextSymbol(JpegHuffmanTable* hTable, s16* outCoeff, u8* outZeroCount) {
    u16 buff;
    u8 codeIdx;
    u8 sym;
    u8 coeffLength; // 0x26
    u16 codeOff;    // 0x24

    codeOff = 0;
    buff = JpegDecoder_ReadBits(16);

    for (codeIdx = 0; codeIdx < 16; codeIdx++) {
        if (hTable->codesB[codeIdx] == 0xFFFF) {
            continue;
        }

        codeOff = buff >> (15 - codeIdx);
        if (codeOff <= hTable->codesB[codeIdx]) {
            break;
        }
    }

    if (codeIdx >= 16) {
        return 1;
    }

    sym = hTable->symbols[hTable->codeOffs[codeIdx] + codeOff - hTable->codesA[codeIdx]];
    *outZeroCount = sym >> 4;
    coeffLength = sym & 0xF; // not using a temp for "sym & 0xF" puts coeffLength on the stack

    sJpegBitStreamBitIdx += codeIdx - 15;
    *outCoeff = 0;
    if (coeffLength) { // (cond != 0) instead of (cond) puts coeffLength on the stack
        *outCoeff = JpegDecoder_ReadBits(coeffLength);
        if (*outCoeff < (1 << (coeffLength - 1))) {
            *outCoeff +=
                (-1 << coeffLength) + 1; // (*outCoeff -= (1 << coeffLength)-1; makes more sense but doesn't match)
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/jpegdecoder/JpegDecoder_ParseNextSymbol.s")
#endif

u16 JpegDecoder_ReadBits(u8 len) {
    u8 byteCount;
    u8 data;
    s32 ret;
    u32 temp;
    ret = 0; // this is required for some reason

    for (byteCount = sJpegBitStreamBitIdx >> 3; byteCount > 0; byteCount--) {
        data = sJpegBitStreamPtr[sJpegBitStreamByteIdx++];
        if (sJpegBitStreamDontSkip) {
            if (data == 0) {
                data = sJpegBitStreamPtr[sJpegBitStreamByteIdx++];
            }
        }

        sJpegBitStreamDontSkip = (data == 0xFF) ? 1 : 0;

        sJpegBitStreamCurWord <<= 8;
        sJpegBitStreamCurWord |= data;
        sJpegBitStreamBitIdx -= 8;
    }

    ret = (sJpegBitStreamCurWord << (sJpegBitStreamBitIdx));
    temp = ret;
    ret = temp >> -len;
    sJpegBitStreamBitIdx += len;
    return ret;
}
