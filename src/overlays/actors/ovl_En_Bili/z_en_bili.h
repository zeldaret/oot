#ifndef Z_EN_BILI_H
#define Z_EN_BILI_H

#include "ultra64.h"
#include "actor.h"

struct EnBili;

typedef struct EnBili {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ void (*unk190)(struct EnBili*, struct PlayState*);
    /* 0x194 */ u8 unk194;
    /* 0x195 */ u8 unk195;
    /* 0x196 */ s16 unk196;
    /* 0x198 */ Vec3s unk198[5];
    /* 0x1B6 */ Vec3s unk1B6[5];
    /* 0x1D4 */ ColliderCylinder unk1D4;
} EnBili; // size = 0x220

#endif
