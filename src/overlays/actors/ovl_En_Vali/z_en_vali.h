#ifndef Z_EN_VALI_H
#define Z_EN_VALI_H

#include "ultra64.h"
#include "actor.h"

struct EnVali;

typedef struct EnVali {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ void (*unk190)(struct EnVali*, struct PlayState*);
    /* 0x194 */ u8 unk194;
    /* 0x195 */ u8 unk195;
    /* 0x196 */ s16 unk196;
    /* 0x198 */ Vec3s unk198[29];
    /* 0x246 */ Vec3s unk246[29];
    /* 0x2F4 */ f32 unk2F4;
    /* 0x2F8 */ f32 unk2F8;
    /* 0x2FC */ ColliderQuad unk2FC;
    /* 0x37C */ ColliderQuad unk37C;
    /* 0x3FC */ ColliderCylinder unk3FC;
} EnVali; // size = 0x448

#endif
