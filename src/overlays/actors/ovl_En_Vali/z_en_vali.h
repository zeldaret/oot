#ifndef _Z_EN_VALI_H_
#define _Z_EN_VALI_H_

#include "ultra64.h"
#include "global.h"

struct EnVali;

typedef void (*EnValiActionFunc)(struct EnVali*, GlobalContext*);

typedef struct EnVali {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnValiActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ Vec3s jointTable[29];
    /* 0x0246 */ Vec3s morphTable[29];
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ f32 unk_2F8;
    /* 0x02FC */ ColliderQuad colliderQuad1;
    /* 0x037C */ ColliderQuad colliderQuad2;
    /* 0x03FC */ ColliderCylinder colliderCylinder;
} EnVali; // size = 0x0448

extern const ActorInit En_Vali_InitVars;

#endif
