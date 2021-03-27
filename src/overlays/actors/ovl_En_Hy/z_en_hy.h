#ifndef _Z_EN_HY_H_
#define _Z_EN_HY_H_

#include "ultra64.h"
#include "global.h"

struct EnHy;

typedef void (*EnHyActionFunc)(struct EnHy*, GlobalContext*);

typedef struct EnHy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnHyActionFunc actionFunc;
    /* 0x0194 */ char unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s8 unk_196;
    /* 0x0197 */ s8 unk_197;
    /* 0x0198 */ s8 unk_198;
    /* 0x0199 */ s8 unk_199;
    /* 0x019C */ ColliderCylinder collider;
    /* 0x01E8 */ struct_80034A14_arg1 unk_1E8;
    /* 0x0210 */ Path* path;
    /* 0x0214 */ s8 unk_214;
    /* 0x0215 */ s8 unk_215;
    /* 0x0216 */ char unk_216[2];
    /* 0x0218 */ s16 unk_218;
    /* 0x021A */ s16 unk_21A;
    /* 0x021C */ s16 unk_21C[16];
    /* 0x023C */ s16 unk_23C[16];
    /* 0x025C */ f32 unk_25C;
    /* 0x0260 */ s32 unk_260;
    /* 0x0264 */ Vec3f unk_264;
    /* 0x0270 */ Vec3s jointTable[16];
    /* 0x02D0 */ Vec3s morphTable[16];
    /* 0x0330 */ u16 unk_330;
} EnHy; // size = 0x0334

extern const ActorInit En_Hy_InitVars;

#endif
