#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 updateMode;
    /* 0x0168 */ s32 drawConfig;
    /* 0x016C */ Vec3s rotationVec;
    /* 0x0172 */ Vec3s unk_172; // it is assigned only
    /* 0x0178 */ BossGanon2* ganon;
    /* 0x017C */ s32 flag1;
    /* 0x0180 */ s32 flag2;
    /* 0x0184 */ ColliderCylinder cylinders[3];
    /* 0x0268 */ s32 flag3; // This actor never sets this flag, but it reads it. If set to `true` and the actor type is DEMOGJ_TYPE_16, DEMOGJ_TYPE_17 or DEMOGJ_TYPE_22, then the actor will be killed and will drop the specified amount of collectibles.
    /* 0x026C */ Vec3f unk_26C; // This actor never sets this. Specifies which direction will this actor explode when killed using `flag3`.
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

/**
 * The format of this actor's params is the following:
 * bits 11-15: The collectible that will be dropped when killed.
 * bits  8-10: The amount of collectible that will be dropped when killed.
 * bits  0- 7: A value of the enum DemoGjType.
 */
typedef enum {
    /* 04 */ DEMOGJ_TYPE_AROUNDARENA = 4, // This is the indestructible rubble around the arena. This actor keeps alive the whole fight.
    /* 08 */ DEMOGJ_TYPE_08 = 8,
    /* 09 */ DEMOGJ_TYPE_09,
    /* 10 */ DEMOGJ_TYPE_10,
    /* 11 */ DEMOGJ_TYPE_11,
    /* 12 */ DEMOGJ_TYPE_12,
    /* 13 */ DEMOGJ_TYPE_13,
    /* 14 */ DEMOGJ_TYPE_14,
    /* 16 */ DEMOGJ_TYPE_16 = 16,
    /* 17 */ DEMOGJ_TYPE_17,
    /* 22 */ DEMOGJ_TYPE_22 = 22
} DemoGjType;

#endif
