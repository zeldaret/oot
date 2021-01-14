#ifndef _Z_BG_DY_YOSEIZO_H_
#define _Z_BG_DY_YOSEIZO_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Dy_Extra/z_en_dy_extra.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

struct BgDyYoseizo;

typedef void (*BgDyYoseizoActionFunc)(struct BgDyYoseizo*, GlobalContext*);

typedef struct {
    /* 0x00 */ u8 unk_0;
    /* 0x01 */ char unk_1[0x3];
    /* 0x04 */ Vec3f unk_4;
    /* 0x10 */ Vec3f unk_10;
    /* 0x1C */ Vec3f unk_1C;
    /* 0x28 */ Color_RGB8 unk_28;
    /* 0x2B */ Color_RGB8 unk_2B;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ s16 unk_34;
    /* 0x36 */ s16 unk_36;
    /* 0x36 */ f32 unk_38;
    /* 0x36 */ f32 unk_3C;
    /* 0x40 */ f32 unk_40;
} BDYGraphicsData; // size = 0x44

typedef struct BgDyYoseizo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgDyYoseizoActionFunc actionFunc;
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ Vec3s jointTable[28];
    /* 0x023C */ Vec3s morphTable[28];
    /* 0x02E4 */ u8 unk_2E4;
    /* 0x02E5 */ u8 unk_2E5;
    /* 0x02E6 */ u8 unk_2E6;
    /* 0x02E8 */ s16 unk_2E8;
    /* 0x02EA */ s16 unk_2EA;
    /* 0x02EC */ s16 unk_2EC;
    /* 0x02EE */ s16 unk_2EE;
    /* 0x02F0 */ s16 unk_2F0;
    /* 0x02F2 */ s16 unk_2F2;
    /* 0x02F4 */ s16 unk_2F4;
    /* 0x02F6 */ s16 unk_2F6;
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02FA */ s16 unk_2FA;
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ s16 unk_2FE;
    /* 0x02FE */ s16 unk_300;
    /* 0x0302 */ s16 unk_302;
    /* 0x0304 */ s16 unk_304;
    /* 0x0306 */ s16 unk_306;
    /* 0x0308 */ f32 unk_308;
    /* 0x030C */ f32 unk_30C;
    /* 0x0310 */ f32 unk_310;
    /* 0x0314 */ f32 unk_314;
    /* 0x0318 */ f32 unk_318;
    /* 0x031C */ f32 unk_31C;
    /* 0x0320 */ f32 unk_320;
    /* 0x0324 */ f32 unk_324;
    /* 0x0328 */ f32 unk_328;
    /* 0x032C */ f32 unk_32C;
    /* 0x0330 */ char unk_330[0x4];
    /* 0x0334 */ Vec3s unk_334;
    /* 0x033A */ Vec3s unk_33A;
    /* 0x0340 */ EnDyExtra* beam;
    /* 0x0344 */ EnExItem* item;
    /* 0x0348 */ char unk_348[0x4C];
    /* 0x0394 */ BDYGraphicsData unk_394[200];
} BgDyYoseizo; // size = 0x38B4

extern const ActorInit Bg_Dy_Yoseizo_InitVars;

#endif
