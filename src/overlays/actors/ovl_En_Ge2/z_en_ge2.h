#ifndef Z_EN_GE2_H
#define Z_EN_GE2_H

#include "ultra64.h"
#include "actor.h"

struct EnGe2;

typedef struct EnGe2 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder unk14C;
    /* 0x198 */ SkelAnime unk198;
    /* 0x1DC */ Vec3s unk1DC[22];
    /* 0x260 */ Vec3s unk260[22];
    /* 0x2E4 */ s16 unk2E4;
    /* 0x2E6 */ s16 unk2E6;
    /* 0x2E8 */ Vec3s unk2E8;
    /* 0x2EE */ Vec3s unk2EE;
    /* 0x2F4 */ u16 unk2F4;
    /* 0x2F6 */ s16 unk2F6;
    /* 0x2F8 */ s16 unk2F8;
    /* 0x2FA */ char pad2FA[2];
    /* 0x2FC */ f32 unk2FC;
    /* 0x300 */ u16 unk300;
    /* 0x302 */ u16 unk302;
    /* 0x304 */ s8 unk304;
    /* 0x305 */ u8 unk305;
    /* 0x306 */ u8 unk306;
    /* 0x307 */ char pad307[1];
    /* 0x308 */ void (*unk308)(struct EnGe2*, struct PlayState*);
} EnGe2; // size = 0x30C

#endif
