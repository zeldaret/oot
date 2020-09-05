#ifndef _Z_BG_SPOT15_RRBOX_H_
#define _Z_BG_SPOT15_RRBOX_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot15Rrbox;

typedef void (*BgSpot15RrboxActionFunc)(struct BgSpot15Rrbox*, GlobalContext*);

typedef struct BgSpot15Rrbox {
    /* 0x0000 */ DynaPolyActor dyna;

    /* 0x0164 */ BgSpot15RrboxActionFunc (*actionFunc)();
    /* 0x0168 */ s16 unk_168; 
    /* 0x016A */ char unk_16A[2];
    /* 0x016C */ float unk_16C; 
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ char unk_174[12];
    /* 0x0180 */ s32 unk_180;
} BgSpot15Rrbox; // size = 0x0184

extern const ActorInit Bg_Spot15_Rrbox_InitVars;

#endif
