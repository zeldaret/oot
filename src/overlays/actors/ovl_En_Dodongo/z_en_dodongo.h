#ifndef _Z_EN_DODONGO_H_
#define _Z_EN_DODONGO_H_

#include "ultra64.h"
#include "global.h"

struct EnDodongo;

typedef void (*EnDodongoActionFunc)(struct EnDodongo*, GlobalContext*);

typedef struct EnDodongo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[31];
    /* 0x024A */ Vec3s transitionDrawTable[31];
    /* 0x0304 */ s32 unk_304;
    /* 0x0308 */ EnDodongoActionFunc actionFunc;
    /* 0x030C */ s16 unk_30C;
    /* 0x030E */ s16 unk_30E;
    /* 0x0310 */ s16 unk_310;
    /* 0x0312 */ s16 unk_312;
    /* 0x0314 */ char unk_314[2];
    /* 0x0316 */ s16 unk_316;
    /* 0x0318 */ char unk_318[4];
    /* 0x031C */ Vec3f unk_31C;
    /* 0x0328 */ Vec3f unk_328;
    /* 0x0334 */ Vec3f unk_334;
    /* 0x0334 */ Vec3f unk_340;
    /* 0x034C */ f32 unk_34C;
    /* 0x0350 */ f32 unk_350;
    /* 0x0354 */ f32 unk_354;
    /* 0x0358 */ Vec3f unk_358[9];
    /* 0x03C4 */ u8 unk_3C4;
    /* 0x03C5 */ u8 unk_3C5;
    /* 0x03C6 */ u8 unk_3C6;//
    /* 0x03C7 */ u8 unk_3C7;
    /* 0x03C8 */ u8 unk_3C8;
    /* 0x03C9 */ u8 unk_3C9;
    /* 0x03CA */ u8 unk_3CA;//
    /* 0x03CB */ u8 unk_3CB;  
    /* 0x03CC */ u8 unk_3CC;
    /* 0x03CD */ char unk_3CD[3];  
    /* 0x03D0 */ s32 blureIdx;
    /* 0x03D4 */ ColliderQuad collider1;
    /* 0x0454 */ ColliderTris collider2;
    /* 0x0474 */ ColliderTrisItem trisElements[3];
    /* 0x0588 */ ColliderJntSph collider3;
    /* 0x05A8 */ ColliderJntSphItem sphElements[6];
} EnDodongo; // size = 0x0728

extern const ActorInit En_Dodongo_InitVars;

#endif
