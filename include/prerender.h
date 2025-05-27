#ifndef PRERENDER_H
#define PRERENDER_H

#include "ultra64/ultratypes.h"
#include "listalloc.h"

typedef struct PreRender {
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

void PreRender_SetValuesSave(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf, void* cvg);
void PreRender_Init(PreRender* this);
void PreRender_SetValues(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf);
void PreRender_Destroy(PreRender* this);
void func_800C170C(PreRender* this, Gfx** gfxP, void* buf, void* bufSave, u32 r, u32 g, u32 b, u32 a);
void func_800C1AE8(PreRender* this, Gfx** gfxP, void* fbuf, void* fbufSave);
void PreRender_SaveZBuffer(PreRender* this, Gfx** gfxP);
void PreRender_SaveFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_DrawCoverage(PreRender* this, Gfx** gfxP);
void PreRender_RestoreZBuffer(PreRender* this, Gfx** gfxP);
void func_800C213C(PreRender* this, Gfx** gfxP);
void PreRender_RestoreFramebuffer(PreRender* this, Gfx** gfxP);
void PreRender_CopyImageRegion(PreRender* this, Gfx** gfxP);
void PreRender_ApplyFilters(PreRender* this);

#endif
