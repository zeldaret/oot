#ifndef _Z_BG_JYA_1FLIFT_H_
#define _Z_BG_JYA_1FLIFT_H_

#include <ultra64.h>
#include <global.h>

struct BgJya1flift;
typedef void (*BgJya1fliftActionFunc)(struct BgJya1flift*, struct GlobalCtx*);
typedef struct BgJya1flift {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderCylinder collider;
    /* 0x01B0 */ BgJya1fliftActionFunc actionFunc;
    /* 0x01B4 */ s16 unk_1B4;//Maybe frame delay
    /* 0x01B6 */ u8 unk_1B6;
    /* 0x01B7 */ u8 hasInitialized;
    /* 0x01B8 */ s32 unk_1B8;
} BgJya1flift; // size = 0x01BC

extern const ActorInit Bg_Jya_1flift_InitVars;

#endif
