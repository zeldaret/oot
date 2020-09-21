#ifndef _Z_BG_MORI_KAITENKABE_H_
#define _Z_BG_MORI_KAITENKABE_H_

#include <ultra64.h>
#include <global.h>

struct BgMoriKaitenkabe;

typedef void (*BgMoriKaitenkabeActionFunc)(struct BgMoriKaitenkabe*, GlobalContext*);

typedef struct BgMoriKaitenkabe {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriKaitenkabeActionFunc actionFunc;
    /* 0x0168 */ s32 timer;
    /* 0x016C */ f32 rotDirection;
    /* 0x0170 */ f32 rotSpeed;
    /* 0x0174 */ f32 rotDist;
    /* 0x0178 */ Vec3f playerPos;
    /* 0x0184 */ s8 objBankIndex;
} BgMoriKaitenkabe; // size = 0x0188

extern const ActorInit Bg_Mori_Kaitenkabe_InitVars;

#endif
