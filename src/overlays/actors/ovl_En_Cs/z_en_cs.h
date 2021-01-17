#ifndef _Z_EN_CS_H_
#define _Z_EN_CS_H_

#include "ultra64.h"
#include "global.h"

struct EnCs;

typedef void (*EnCsActionFunc)(struct EnCs*, GlobalContext*);

typedef struct EnCs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnCsActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ s32 talkState;
    /* 0x01E4 */ s32 eyeIndex;
    /* 0x01E8 */ s32 eyeBlinkTimer;
    /* 0x01EC */ s32 unk_1EC;
    /* 0x01F0 */ s32 unk_1F0;
    /* 0x01F4 */ s32 path;
    /* 0x01F8 */ s32 unk_1F8;
    /* 0x01FC */ s32 waypoint;
    /* 0x0200 */ s32 unk_200;
    /* 0x0204 */ f32 unk_204;
    /* 0x0208 */ f32 runDist;
    /* 0x020C */ f32 runSpeed;
    /* 0x0210 */ s32 currentAnimIndex;
    /* 0x0214 */ s32 objectBankIndex;
    /* 0x0218 */ MtxF spookyMaskMtx;
    /* 0x0258 */ struct_80034A14_arg1 npcInfo;
    /* 0x0280 */ s32 flag;
    /* 0x0284 */ Vec3s jointTable[16];
    /* 0x02E4 */ Vec3s morphTable[16];
} EnCs; // size = 0x0344

extern const ActorInit En_Cs_InitVars;

#endif
