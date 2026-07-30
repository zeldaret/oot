#ifndef Z_EN_GE1_H
#define Z_EN_GE1_H

#include "ultra64.h"
#include "actor.h"

struct EnGe1;

typedef void (*EnGe1ActionFunc)(struct EnGe1*, struct PlayState*);

typedef struct EnGe1 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder unk14C;
    /* 0x198 */ SkelAnime unk198;
    /* 0x1DC */ Vec3s unk1DC[16];
    /* 0x23C */ Vec3s unk23C[16];
    /* 0x29C */ Vec3s unk29C;
    /* 0x2A2 */ Vec3s unk2A2;
    /* 0x2A8 */ s16 unk2A8;
    /* 0x2AA */ s16 unk2AA;
    /* 0x2AC */ u16 unk2AC;
    /* 0x2AE */ u8 unk2AE;
    /* 0x2AF */ u8 unk2AF;
    /* 0x2B0 */ AnimationHeader* unk2B0;
    /* 0x2B4 */ EnGe1ActionFunc unk2B4;
    /* 0x2B8 */ void (*unk2B8)(struct EnGe1*);
} EnGe1; // size = 0x2BC

#endif
