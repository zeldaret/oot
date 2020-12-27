#ifndef _Z_EN_EX_ITEM_H_
#define _Z_EN_EX_ITEM_H_

#include "ultra64.h"
#include "global.h"

struct EnExItem;

typedef void (*EnExItemActionFunc)(struct EnExItem* this, GlobalContext* globalCtx);
typedef void (*EnExItemLightFunc)(Actor*, GlobalContext*, s32);

typedef struct EnExItem {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnExItemActionFunc actionFunc;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0152 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 timer1;
    /* 0x015A */ s16 timer2;
    /* 0x015A */ s16 timer3;
    /* 0x0160 */ s16 unk_160;
    /* 0x0164 */ f32 unk_164;
    /* 0x0168 */ f32 unk_168;
    /* 0x016C */ s8 unk_16C;
    /* 0x0170 */ Vec3f unk_170;
    /* 0x017C */ EnExItemLightFunc unk_17C;
    /* 0x0180 */ EnExItemLightFunc unk_180;
} EnExItem; // size = 0x0184

extern const ActorInit En_Ex_Item_InitVars;

#endif
