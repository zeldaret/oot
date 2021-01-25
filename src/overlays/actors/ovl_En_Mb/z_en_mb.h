#ifndef _Z_EN_MB_H_
#define _Z_EN_MB_H_

#include "ultra64.h"
#include "global.h"

struct EnMb;

typedef void (*EnMbActionFunc)(struct EnMb*, GlobalContext*);

typedef struct EnMb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ u8 unk_188;
    /* 0x018C */ SkelAnime skelAnime;
    /* 0x01D0 */ Vec3s jointTable[28];
    /* 0x0278 */ Vec3s morphTable[28];
    /* 0x0320 */ s32 unk_320;
    /* 0x0324 */ EnMbActionFunc actionFunc;
    /* 0x0328 */ s16 unk_328;
    /* 0x032A */ s16 unk_32A;
    /* 0x032C */ s16 soundTimer;
    /* 0x032E */ s16 unk_32E;
    /* 0x0330 */ s16 unk_330;
    /* 0x0332 */ s16 unk_332;
    /* 0x0334 */ s16 attackParams;
    /* 0x0338 */ Vec3f effSpawnPos;
    /* 0x0344 */ Vec3f waypointPos;
    /* 0x0350 */ char unk_34A[0xC];
    /* 0x035C */ s8 waypoint;
    /* 0x035D */ s8 path;
    /* 0x035E */ s8 direction;
    /* 0x035F */ s8 unk_35F;
    /* 0x0360 */ f32 unk_360;
    /* 0x0364 */ f32 unk_364;
    /* 0x0368 */ ColliderCylinder collider1;
    /* 0x03B4 */ ColliderQuad collider2;
    /* 0x0434 */ ColliderTris collider3;
    /* 0x0454 */ ColliderTrisElement collider3Items[2];
} EnMb; // size = 0x050C

extern const ActorInit En_Mb_InitVars;

#endif
