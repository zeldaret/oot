#ifndef _Z_BG_YDAN_SP_H_
#define _Z_BG_YDAN_SP_H_

#include "ultra64.h"
#include "global.h"

struct BgYdanSp;

typedef void (*BgYdanSpActionFunc)(struct BgYdanSp*, GlobalContext*);

typedef struct BgYdanSp {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgYdanSpActionFunc actionFunc;
    /* 0x0168 */ u8 unk168; // switchFlag
    /* 0x0169 */ u8 unk169;
    /* 0x016A */ s16 unk16A;
    /* 0x016C */ f32 unk16C;
    /* 0x0170 */ ColliderTris trisCollider;
    /* 0x0190 */ ColliderTrisItem trisColliderItems[2];
} BgYdanSp; // size = 0x0248

extern const ActorInit Bg_Ydan_Sp_InitVars;

#endif
