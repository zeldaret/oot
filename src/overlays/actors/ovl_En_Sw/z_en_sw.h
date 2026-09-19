#ifndef Z_EN_SW_H
#define Z_EN_SW_H

#include "ultra64.h"
#include "actor.h"

struct EnSw;

typedef void (*EnSwActionFunc)(struct EnSw* this, struct PlayState* play);

typedef struct EnSw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnSwActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphElement colliderElements[1];
    /* 0x01F4 */ Color_RGBA8 teethColor;
    /* 0x01F8 */ Vec3s jointTable[30];
    /* 0x02AC */ Vec3s morphTable[30];
    /* 0x0360 */ u8 isAscendingGS;
    /* 0x0364 */ Vec3f unk_364;
    /* 0x0370 */ Vec3f unk_370;
    /* 0x037C */ Vec3f unk_37C;
    /* 0x0388 */ s16 breakTimerS;
    /* 0x038A */ s16 staggerFallTimer;
    /* 0x038C */ s16 rotateTimerGS; // Also timer for soil digging up effects for soil spawn Gold Skulltulas
    /* 0x038E */ s16 breakTimerGS;
    /* 0x0390 */ s16 ATColliderTimer;
    /* 0x0392 */ s16 ACColliderTimer;
    /* 0x0394 */ s16 deathTimer;
    /* 0x0396 */ char unused_396[0x42];
    /* 0x03D8 */ MtxF unk_3D8;
    /* 0x0418 */ char unused_418[8];
    /* 0x0420 */ f32 rotationSpeedGS;
    /* 0x0424 */ char unused_424[0x8];
    /* 0x042C */ u8 unused_42C;
    /* 0x0430 */ struct CollisionPoly* wallPolyS;
    /* 0x0434 */ Vec3f unused_434;
    /* 0x0440 */ s16 soundTimerS;
    /* 0x0442 */ s16 engageTimerS;
    /* 0x0444 */ s16 targetAngleS;
    /* 0x0446 */ s16 unused_446;
    /* 0x0448 */ Vec3f targetPosS;
    /* 0x0454 */ Vec3f sightLine1S;
    /* 0x0460 */ Vec3f sightLine2S;
    /* 0x046C */ Vec3f sightLine3S;
    /* 0x0478 */ Vec3f sightLine4S;
    /* 0x0484 */ Vec3f bodyLineS;
    /* 0x0490 */ char unused_490[0x48];
} EnSw; // size = 0x04D8

#endif
