#ifndef _Z_BG_SPOT08_ICEBLOCK_H_
#define _Z_BG_SPOT08_ICEBLOCK_H_

#include "ultra64.h"
#include "global.h"

struct BgSpot08Iceblock;

typedef void (*BgSpot08IceblockActionFunc)(struct BgSpot08Iceblock*, GlobalContext*);

typedef struct BgSpot08Iceblock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot08IceblockActionFunc actionFunc;
    /* 0x0168 */ Vec3f unk_168;
    // /* 0x016C */ f32 unk_16C;
    // /* 0x0170 */ f32 unk_170;
    /* 0x0170 */ Vec3f unk_174;
    /* 0x0180 */ Vec3f unk_180;
    // /* 0x0184 */ char unk_184[0x8];
    /* 0x018C */ s16 unk_18C;
    /* 0x018E */ s16 unk_18E;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ f32 unk_194;
    /* 0x0194 */ f32 unk_198;
} BgSpot08Iceblock; // size = 0x019C

extern const ActorInit Bg_Spot08_Iceblock_InitVars;

#endif
