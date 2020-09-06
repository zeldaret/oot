#ifndef _Z_EN_MB_H_
#define _Z_EN_MB_H_

#include <ultra64.h>
#include <global.h>

struct EnMb;

typedef struct EnMb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x40];
    /* 0x018C */ SkelAnime skelAnime;
    /* 0x01D0 */ Vec3s limbDrawTable[28];
    /* 0x0278 */ Vec3s transitionDrawTable[28];
    /* 0x0320 */ char unk_320[0x3C];
    /* 0x035C */ u8 unk_35C;
    /* 0x035D */ s8 unk_35D;
    /* 0x035E */ char unk_35E;
    /* 0x0360 */ f32 unk_360;
    /* 0x0364 */ f32 unk_364;
    /* 0x0368 */ ColliderCylinder collider1;
    /* 0x03B4 */ ColliderQuad collider2;
    /* 0x0434 */ ColliderTris collider3;
    /* 0x0454 */ ColliderTrisItem collider3Items[2];
} EnMb; // size = 0x050C

extern const ActorInit En_Mb_InitVars;

#endif
