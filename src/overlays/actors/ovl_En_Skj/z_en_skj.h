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
    /*
     * Sarias song skull kid as child always incriments
     * Hostile skull kid as adult leaves the fight when it reaches zero
     * Ocarina game fails the game when reaching zero
     */
    /* 0x02CA */ s16 multiuseTimer;
    /* 0x02CC */ s16 needleShootTimer;
    /* 0x02CE */ s16 dodgeResetTimer;
    /* 0x02D0 */ u8 animIndex;
    /* 0x02D1 */ u8 action;
    /* 0x02D2 */ u8 backfilpFlag;
    /* 0x02D3 */ u8 unk_2D3; // Is set to zero when walking to trade for skull mask and set to 1 when dying
    /* 0x02D4 */ u8 needlesToShoot;
    /* 0x02D5 */ u8 hitsUntilDodge; // Upon reaching zero will always backflip to avoid stun lock
    /* 0x02D6 */ u8 unk_2D6;
    /* 0x02D0 */ u8 playerInRange;
    /* 0x02D8 */ u8 minigameState; // Upon reaching zero stops and does another action
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
} SkullKidAnims;

typedef enum {
    /* 0 */ SKULL_KID_LEFT,
    /* 1 */ SKULL_KID_RIGHT
} SkullKidStumpSide;

typedef enum {
    /* 0 */ SKULL_KID_OCRAINA_WAIT,
    /* 1 */ SKULL_KID_OCARINA_PLAY_NOTES,
    /* 2 */ SKULL_KID_OCARINA_LEAVE_GAME
} SkullKidOcarinaGameStates;

typedef enum {
    /* 0 */ SKJ_ACTION_FADE,
    /* 1 */ SKJ_ACTION_WAIT_TO_SHOOT_NEEDLE,
    /* 2 */ SKJ_ACTION_SARIA_SONG_IDLE,
    /* 3 */ SKJ_ACTON_WAIT_FOR_DEATH_ANIM,
    /* 4 */ SKJ_ACTION_PICK_NEXT_FIHGT_ACTION,
    /* 5 */ SKJ_ACTON_WAIT_FOR_LAND_ANIM,
    /* 6 */ SKJ_ACTON_RESET_FIGHT,
    /* 7 */ SKJ_ACTON_FIGHT,
    /* 8 */ SKJ_ACTON_NEEDLE_RECOVER,
    /* 9 */ SKJ_ACTON_SPAWN_DEATH_EFFECT,
    /* 10 */ SKJ_ACTION_SARIA_SONG_WAIT_IN_RANGE,
    /* 11 */ SKJ_ACTION_SARIA_SONG_WAIT_FOR_SONG,
    /* 12 */ SKJ_ACTION_SARIA_SONG_AFTER_SONG,
    /* 13 */ SKJ_ACTION_SARIA_TALK,
    /* 15 */ SKJ_ACTION_SARIA_SONG_CHANGE_MODE = 15,
    /* 16 */ SKJ_ACTION_SARIA_SONG_START_TRADE,
    /* 17 */ SKJ_ACTION_SARIA_SONG_WAIT_FOR_LANDING,
    /* 18 */ SKJ_ACTION_SARIA_SONG_WAIT_FOR_LANDING_ANIM,
    /* 19 */ SKJ_ACTION_SARIA_SONG_WALK_TO_PLAYER,
    /* 20 */ SKJ_ACTION_SARIA_SONG_ASK_FOR_MASK,
    /* 21 */ SKJ_ACTION_SARIA_SONG_TAKE_MASK,
    /* 22 */ SKJ_ACTION_SARIA_SONG_WAIT_MASK_TEXT,
    /* 23 */ SKJ_ACTION_SARIA_SONG_WRONG_SONG,
    /* 24 */ SKJ_ACTION_SARIA_SONG_WAIT_FOR_TEXT,
    /* 25 */ SKJ_ACTION_OCARINA_GAME_WAIT_FOR_PLAYER,
    /* 26 */ SKJ_ACTION_OCARINA_GAME_IDLE,
    /* 27 */ SKJ_ACTION_OCARINA_GAME_PLAY,
    /* 28 */ SKJ_ACTION_OCARINA_GAME_LEAVE
} SkullKidActions;

extern const ActorInit En_Skj_InitVars;

#endif
