#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>
#include <z64.h>
#include <z64collision_check.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 updateFnIndex;
    /* 0x0150 */ s32 currentAnimation;
    /* 0x0154 */ s32 unk_154; // some struct
    /* 0x0158 */ u8 unk_158[0x48];
    /* 0x01a0 */ SkelAnime skelAnime;
    /* 0x01e4 */ u8 unk_1e4[0x04];
    /* 0x01e8 */ s32 soundCount;
    /* 0x01ec */ s32 unk_1ec;
    /* 0x01f0 */ u8 unk_1f0[0x04];
    /* 0x01f4 */ f32 unk_1f4;
    /* 0x01f8 */ u8 unk_1f8[0x04];
    /* 0x01FC */ ColliderCylinder colliderCylinder;
    /* 0x0248 */ ColliderJntSph colliderSphere;
    /* 0x0268 */ ColliderJntSphItem colliderSphereItem;
} EnHorseGanon; // size = 0x02A8

extern const ActorInit En_Horse_Ganon_InitVars;

#endif
