#ifndef PRERENDER_H
#define PRERENDER_H

#include "ultra64/ultratypes.h"

typedef struct ListAlloc {
    /* 0x00 */ struct ListAlloc* prev;
    /* 0x04 */ struct ListAlloc* next;
} ListAlloc; // size = 0x8

typedef struct {
    /* 0x00 */ s32 width;
    /* 0x04 */ s32 height;
    /* 0x08 */ s32 widthSave;
    /* 0x0C */ s32 heightSave;
    /* 0x10 */ u16* fbuf;
    /* 0x14 */ u16* fbufSave;
    /* 0x18 */ u8* cvgSave;
    /* 0x1C */ u16* zbuf;
    /* 0x20 */ u16* zbufSave;
    /* 0x24 */ s32 ulxSave;
    /* 0x28 */ s32 ulySave;
    /* 0x2C */ s32 lrxSave;
    /* 0x30 */ s32 lrySave;
    /* 0x34 */ s32 ulx;
    /* 0x38 */ s32 uly;
    /* 0x3C */ s32 lrx;
    /* 0x40 */ s32 lry;
    /* 0x44 */ ListAlloc alloc;
    /* 0x4C */ u32 unk_4C;
} PreRender; // size = 0x50

#endif
