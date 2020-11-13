#ifndef _Z_BG_MIZU_SHUTTER_H_
#define _Z_BG_MIZU_SHUTTER_H_

#include "ultra64.h"
#include "global.h"

struct BgMizuShutter;

typedef void (*BgMizuShutterActionFunc)(struct BgMizuShutter*, GlobalContext*);

typedef struct BgMizuShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMizuShutterActionFunc actionFunc;
    /* 0x0168 */ s32 unk_168;
    /* 0x016C */ s32 unk_16C;
    /* 0x0170 */ Gfx* unk_170;
    /* 0x0174 */ f32 unk_174;
    /* 0x0178 */ Vec3f unk_178;
    /* 0x0184 */ Vec3f unk_184;
} BgMizuShutter; // size = 0x0190

extern const ActorInit Bg_Mizu_Shutter_InitVars;

#endif
