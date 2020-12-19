#ifndef _Z_EN_TITE_H_
#define _Z_EN_TITE_H_

#include "ultra64.h"
#include "global.h"

struct EnTite;

typedef void (*EnTiteActionFunc)(struct EnTite*, GlobalContext*);

typedef struct EnTite {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[25];
    /* 0x0226 */ Vec3s transitionDrawTable[25];
    /* 0x02BC */ u8 actionState; // conditions for whether the tektite can take damage?
    /* 0x02BD */ u8 flipState; // flip state, used to decide idle orientation of tektite and to choose what happens when hammer is used. 02 is upside down, 00 or 01 is right way up
    /* 0x02C0 */ EnTiteActionFunc actionFunc;
    /* 0x02C4 */ struct_80032E24 unk2C4;
    /* 0x02DC */ s32 unk_2DC; // flags related to bgCheck drawn effects
    /* 0x02E0 */ s16 timer; // Timer until tektite flips itself back upright, idle animation, and maybe more.
    /* 0x02E2 */ u8 counter; // If flipped over: timer for leg twitch animation. Otherwise, number of lunges queued up
    /* 0x02E3 */ u8 spawnIceTimer; 
    /* 0x02E4 */ u8 damageEffect;
    /* 0x02E8 */ ColliderJntSph collider;
    /* 0x0308 */ ColliderJntSphItem colliderItem;
    /* 0x0348 */ Vec3f frontLeftFootPos;
    /* 0x0354 */ Vec3f frontRightFootPos;
    /* 0x0360 */ Vec3f backRightFootPos;
    /* 0x036C */ Vec3f backLeftFootPos;
} EnTite; // size = 0x0378

extern const ActorInit En_Tite_InitVars;

#endif
