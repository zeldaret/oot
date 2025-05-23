#ifndef Z64SRAM_H
#define Z64SRAM_H

#include "ultra64/ultratypes.h"

typedef struct SramContext {
    /* 0x00 */ u8* readBuff;
} SramContext; // size = 0x4

#define SRAM_SIZE 0x8000
#define SRAM_HEADER_SIZE 0x10

typedef enum SramHeaderField {
    /* 0x00 */ SRAM_HEADER_SOUND,
    /* 0x01 */ SRAM_HEADER_ZTARGET,
    /* 0x02 */ SRAM_HEADER_LANGUAGE,
    /* 0x03 */ SRAM_HEADER_MAGIC // must be the value in `sSramDefaultHeader` for save to be considered valid
} SramHeaderField;

#endif
