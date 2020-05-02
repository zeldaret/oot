#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>

// stolen from krim's z_skin branch
typedef struct {
    char unk_00[0x48];
    void* avbTbl;
    SkelAnime skelAnime;
} PSkinAwb;

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
    /* 0x0150 */ s32 currentAnimation;
    /* 0x0154 */ PSkinAwb skin;
    /* 0x01e4 */ u8 unk_1E4[0x04];
    /* 0x01e8 */ s32 soundCount;
    /* 0x01ec */ s32 unk_1EC;
    /* 0x01f0 */ u8 unk_1F0[0x04];
    /* 0x01f4 */ f32 unk_1F4;
    /* 0x01f8 */ u8 unk_1F8[0x04];
    /* 0x01FC */ ColliderCylinder colliderCylinder;
    /* 0x0248 */ ColliderJntSph colliderSphere;
    /* 0x0268 */ ColliderJntSphItem colliderSphereItem;
} EnHorseGanon; // size = 0x02A8

extern const ActorInit En_Horse_Ganon_InitVars;

#endif
