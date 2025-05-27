#ifndef Z_EN_SW_H
#define Z_EN_SW_H

#include "ultra64.h"
#include "z64actor.h"

struct EnSw;

typedef void (*EnSwActionFunc)(struct EnSw* this, struct PlayState* play);

typedef struct EnSw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnSwActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphElement colliderElements[1];
    /* 0x01F4 */ Color_RGBA8 limb4Color; // never set past black.
    /* 0x01F8 */ Vec3s jointTable[30];
    /* 0x02AC */ Vec3s morphTable[30];
    /* 0x0360 */ u8 goldInAir; // set when revealed, unset when landing.
    /* 0x0364 */ Vec3f surfaceNormal; // normal of wall/floor/ceiling it's on.
    /* 0x0370 */ Vec3f unk_370; // used for rotate calculation
    /* 0x037C */ Vec3f unk_37C; // used for rotate calculation
    /* 0x0388 */ s16 animTimer;
    /* 0x038A */ s16 animVar; // used to determine crawl and "death bounce" animations.
    /* 0x038C */ s16 waitTimer;
    /* 0x038E */ s16 crawlTimer;
    /* 0x0390 */ s16 attackTimer;
    /* 0x0392 */ s16 painTimer;
    /* 0x0394 */ s16 deathFlames;
    /* 0x0396 */ char unk_396[0x42]; //another Mtx(F)?
    /* 0x03D8 */ MtxF rotMtxF;
    /* 0x0418 */ char unk_418[8];
    /* 0x0420 */ f32 rotateMag;
    /* 0x0424 */ char unk_424[0x8];
    /* 0x042C */ u8 moveGoldBool; // set during EnSw_MoveGold, rever read.
    /* 0x0430 */ struct CollisionPoly* wallPoly;
    /* 0x0434 */ Vec3f unk_434; // set during EnSW_LineTestWall, never read. another target pos?
    /* 0x0440 */ s16 sfxTimer;
    /* 0x0442 */ s16 dashTimer;
    /* 0x0444 */ s16 rotZTarget;
    /* 0x0448 */ Vec3f targetPos;
    /* 0x0454 */ Vec3f eyeLine0; // used for line tests of walls/player
    /* 0x0460 */ Vec3f eyeLine1;
    /* 0x046C */ Vec3f eyeLine2;
    /* 0x0478 */ Vec3f eyeLine3;
    /* 0x0484 */ Vec3f wallCast;
    /* 0x0490 */ char unk_490[0x48];
} EnSw; // size = 0x04D8

// Skullwalltula type stored in last 3 bits of params.
#define ENSW_GET_TYPE(thisx) ((thisx->params & 0xE000) >> 0xD)
// version of the macro used for the whole entity struct.
#define ENSW_GET_TYPE_EN(this) ((this->actor.params & 0xE000) >> 0xD)

typedef enum {
    SW_TYPE_NORMAL, // normal Skull(wall)tula
    SW_TYPE_GOLD_DEFAULT, // normal Gold Skultula, found in dungeons
    SW_TYPE_GOLD_NIGHT, // nocturnal Gold Skultula, found outside
    SW_TYPE_GOLD_HIDDEN_SOIL, // found by using bugs on soil patches
    SW_TYPE_GOLD_HIDDEN_TREE, // found by hitting trees.
} EnSwType;

#endif
