#ifndef Z_EN_SW_H
#define Z_EN_SW_H

#include "ultra64.h"
#include "global.h"

struct EnSw;

typedef void (*EnSwActionFunc)(struct EnSw* this, PlayState* play);

typedef struct EnSw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnSwActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphElement sphs[1];
    /* 0x01F4 */ Color_RGBA8 limb4Col; // never set past black.
    /* 0x01F8 */ Vec3s jointTable[30];
    /* 0x02AC */ Vec3s morphTable[30];
    /* 0x0360 */ u8 goldHiddenBool;
    /* 0x0364 */ Vec3f normalVec;
    /* 0x0370 */ Vec3f unk_370;
    /* 0x037C */ Vec3f unk_37C;
    /* 0x0388 */ s16 aniTimer;
    /* 0x038A */ s16 unk_38A;
    /* 0x038C */ s16 unk_38C;
    /* 0x038E */ s16 unk_38E;
    /* 0x0390 */ s16 unk_390;
    /* 0x0392 */ s16 painTimer;
    /* 0x0394 */ s16 deathFlames;
    /* 0x0396 */ char unk_396[0x42];
    /* 0x03D8 */ MtxF unk_3D8;
    /* 0x0418 */ char unk_418[8];
    /* 0x0420 */ f32 rotateMag;
    /* 0x0424 */ char unk_424[0x8];
    /* 0x042C */ u8 unk_42C;
    /* 0x0430 */ CollisionPoly* wallPoly;
    /* 0x0434 */ Vec3f unk_434;
    /* 0x0440 */ s16 sfxTimer;
    /* 0x0442 */ s16 dashTimer;
    /* 0x0444 */ s16 rotZTarget;
    /* 0x0448 */ Vec3f targetPos;
    /* 0x0454 */ Vec3f lineCast0; // used for line tests of walls/player
    /* 0x0460 */ Vec3f lineCast1;
    /* 0x046C */ Vec3f lineCast2;
    /* 0x0478 */ Vec3f lineCast3;
    /* 0x0484 */ Vec3f walllCast;
    /* 0x0490 */ char unk_490[0x48];
} EnSw; // size = 0x04D8

#define SW_GOLDTYPE(params) ((params & 0xE000) >> 0xD)

typedef enum {
    SW_NORMALTYPE, // normal Skullwalltula
    SW_GOLDTYPE_DEFAULT, // Normal Gold Skultula, found in dungeons
    SW_GOLDTYPE_NIGHT, // nocturnal Gold Skultula, found outside
    SW_GOLDTYPE_HIDDEN, // found by using incects on soil patches
    SW_GOLDTYPE_HIDDEN2, // found by hitting trees.
} EnSwTypes;

#endif
