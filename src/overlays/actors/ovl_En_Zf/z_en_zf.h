#ifndef _Z_EN_ZF_H_
#define _Z_EN_ZF_H_

#include "ultra64.h"
#include "global.h"

struct EnZf;

typedef void (*EnZfActionFunc)(struct EnZf*, GlobalContext*);

typedef struct EnZf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[49];
    /* 0x02B6 */ Vec3s morphTable[49];
    /* 0x03DC */ s32 unk_3DC;
    /* 0x03E0 */ s32 unk_3E0;
    /* 0x03E4 */ s32 unk_3E4;
    /* 0x03E8 */ EnZfActionFunc actionFunc;
    /* 0x03EC */ s16 unk_3EC;
    /* 0x03EE */ s16 unk_3EE;
    /* 0x03F0 */ s32 unk_3F0;
    /* 0x03F4 */ s16 unk_3F4;
    /* 0x03F6 */ s16 unk_3F6;
    /* 0x03F8 */ s16 unk_3F8;
    /* 0x03FA */ s16 unk_3FA;
    /* 0x03FC */ s16 unk_3FC;
    /* 0x03FE */ s16 unk_3FE;
    /* 0x0400 */ s16 unk_400;
    /* 0x0402 */ s16 unk_402;
    /* 0x0404 */ u8 unk_404;
    /* 0x0408 */ f32 unk_408;
    /* 0x040C */ f32 unk_40C;
    /* 0x0410 */ u8 unk_410;
    /* 0x0414 */ s32 blureIndex;
    /* 0x0418 */ ColliderCylinder bodyCollider;
    /* 0x0464 */ ColliderQuad swordCollider;
    /* 0x04E4 */ Vec3f unk_4E4;
    /* 0x04F0 */ Vec3f unk_4F0;
    /* 0x04E4 */ Vec3f unk_4FC[0x9];
} EnZf; // size = 0x0568

extern const ActorInit En_Zf_InitVars;

#endif
