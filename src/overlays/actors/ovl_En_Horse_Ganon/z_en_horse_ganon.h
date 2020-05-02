#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>
#include <z64.h>
#include <z64collision_check.h>

// stolen from krim's z_skin branch, I edited the type of the 1st arg of the 1st function
typedef struct {
    char unk_00[0x48];
    void* avbTbl;
    SkelAnime skelAnime;
} PSkinAwb;
void func_800A6408(ColliderJntSphItem* arg0, s32 arg1, Vec3f* arg2, Vec3f* arg3);
void func_800A663C(GlobalContext* globalCtx, PSkinAwb*, SkeletonHeader*, AnimationHeader*);

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 updateFnIndex;
    /* 0x0150 */ s32 currentAnimation;
    /* 0x0154 */ PSkinAwb skin;
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
