#ifndef Z_EN_JJ_H
#define Z_EN_JJ_H

#include "ultra64.h"
#include "actor.h"

struct EnJj;

typedef struct EnJj {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ SkelAnime unk164;
    /* 0x1A8 */ Vec3s unk1A8[22];
    /* 0x22C */ Vec3s unk22C[22];
    /* 0x2B0 */ ColliderCylinder unk2B0;
    /* 0x2FC */ void (*unk2FC)(struct EnJj*, struct PlayState*);
    /* 0x300 */ struct EnJj* unk300;
    /* 0x304 */ Actor* unk304;
    /* 0x308 */ s16 unk308;
    /* 0x30A */ u16 unk30A;
    /* 0x30C */ s16 unk30C;
    /* 0x30E */ u8 unk30E;
    /* 0x30F */ u8 unk30F;
    /* 0x310 */ u8 unk310;
    /* 0x311 */ u8 unk311;
    /* 0x312 */ char pad312[2];
} EnJj; // size = 0x314

#endif
