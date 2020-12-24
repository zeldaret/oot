#ifndef _Z_EN_DNT_JIJI_H_
#define _Z_EN_DNT_JIJI_H_

#include "ultra64.h"
#include "global.h"

struct EnDntJiji;

typedef void (*EnDntJijiActionFunc)(struct EnDntJiji*, GlobalContext*);

typedef struct EnDntJiji {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTbl[13];
    /* 0x01DE */ Vec3s transitionDrawTbl[13];
    /* 0x022C */ EnDntJijiActionFunc actionFunc;
    /* 0x0230 */ Vec3f flowerPos;
    /* 0x023C */ u8 isSolid;
    /* 0x023E */ s16 unk_23E;
    /* 0x0240 */ s16 unk_240;
    /* 0x0242 */ s16 unk_242;
    /* 0x0244 */ s16 blinkTimer;
    /* 0x0246 */ s16 unk_246;
    /* 0x0248 */ s16 unk_248;
    /* 0x024A */ s16 unk_25A;
    /* 0x024C */ s16 eyeState;
    /* 0x024E */ s16 unk_24E;
    /* 0x0250 */ s16 unk_250;
    /* 0x0252 */ s16 unk_252;
    /* 0x0254 */ s32 unk_254;
    /* 0x0258 */ struct EnDntDemo* unk_258;
    /* 0x025C */ ColliderCylinder collider;
} EnDntJiji; // size = 0x02A8

extern const ActorInit En_Dnt_Jiji_InitVars;

#endif
