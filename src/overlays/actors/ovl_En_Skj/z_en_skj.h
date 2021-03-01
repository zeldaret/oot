#ifndef _Z_EN_SKJ_H_
#define _Z_EN_SKJ_H_

#include "ultra64.h"
#include "global.h"

struct EnSkj;

typedef void (*EnSkjActionFunc)(struct EnSkj*, GlobalContext*);

typedef struct EnSkj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[19];
    /* 0x0202 */ Vec3s morphTable[19];
    /* 0x0274 */ EnSkjActionFunc actionFunc;
    /* 0x0278 */ ColliderCylinder collider;
    /* 0x02C4 */ u16 textId;
    /* 0x02C6 */ s16 timer;
    /* 0x02C8 */ s16 unk_2C8;
    /* 0x02CA */ s16 playbackTimer;
    /* 0x02CC */ s16 unk_2CC;
    /* 0x02CE */ s16 unk_2CE;
    /* 0x02D0 */ u8 animIndex;
    /* 0x02D1 */ u8 action;
    /* 0x02D2 */ u8 unk_2D2;
    /* 0x02D3 */ u8 unk_2D3;
    /* 0x02D4 */ u8 unk_2D4;
    /* 0x02D5 */ u8 unk_2D5;
    /* 0x02D6 */ u8 unk_2D6;
    /* 0x02D0 */ u8 unk_2D7;
    /* 0x02D8 */ u8 unk_2D8;
    /* 0x02D9 */ char unk_2D9[0x3];
    /* 0x02DC */ u32 alpha;
    /* 0x02E0 */ Vec3f center;
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ Vec3f posCopy;
} EnSkj; // size = 0x0300

typedef enum {
    /* 0 */ SKJ_ANIM_BACKFLIP,
    /* 1 */ SKJ_ANIM_SHOOT_NEEDLE,
    /* 2 */ SKJ_ANIM_PLAY_FLUTE,
    /* 3 */ SKJ_ANIM_DIE,
    /* 4 */ SKJ_ANIM_HIT,
    /* 5 */ SKJ_ANIM_LAND,
    /* 6 */ SKJ_ANIM_LOOK_LEFT_RIGHT,
    /* 7 */ SKJ_ANIM_FIGHTING_STANCE,
    /* 8 */ SKJ_ANIM_WALK_TO_PLAYER,
    /* 9 */ SKJ_ANIM_WAIT
} SkullKidAnims ;

typedef enum {
    /* 0 */ SKULL_KID_LEFT,
    /* 1 */ SKULL_KID_RIGHT,
} SkullKidStumpSide;

typedef enum {
   /* 0 */ SKULL_KID_OCRAINA_WAIT,
   /* 1 */ SKULL_KID_OCARINA_PLAY_NOTES,
   /* 2 */ SKULL_KID_OCARINA_LEAVE_GAME
} SkullKidOcarinaGameStates;

extern const ActorInit En_Skj_InitVars;

#endif
