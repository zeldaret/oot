#ifndef Z_EN_ZF_H
#define Z_EN_ZF_H

#include "ultra64.h"
#include "actor.h"

struct EnZf;

typedef struct EnZf {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ Vec3s unk190[49];
    /* 0x2B6 */ Vec3s unk2B6[49];
    /* 0x3DC */ s32 unk3DC;
    /* 0x3E0 */ s32 unk3E0;
    /* 0x3E4 */ s32 unk3E4;
    /* 0x3E8 */ void (*unk3E8)(struct EnZf*, struct PlayState*);
    /* 0x3EC */ s16 unk3EC;
    /* 0x3EE */ s16 unk3EE;
    /* 0x3F0 */ s32 unk3F0;
    /* 0x3F4 */ s16 unk3F4;
    /* 0x3F6 */ s16 unk3F6;
    /* 0x3F8 */ s16 unk3F8;
    /* 0x3FA */ s16 unk3FA;
    /* 0x3FC */ s16 unk3FC;
    /* 0x3FE */ s16 unk3FE;
    /* 0x400 */ s16 unk400;
    /* 0x402 */ s16 unk402;
    /* 0x404 */ u8 unk404;
    /* 0x405 */ char pad405[3];
    /* 0x408 */ f32 unk408;
    /* 0x40C */ f32 unk40C;
    /* 0x410 */ u8 unk410;
    /* 0x411 */ char pad411[3];
    /* 0x414 */ s32 unk414;
    /* 0x418 */ ColliderCylinder unk418;
    /* 0x464 */ ColliderQuad unk464;
    /* 0x4E4 */ Vec3f unk4E4;
    /* 0x4F0 */ Vec3f unk4F0;
    /* 0x4FC */ Vec3f unk4FC[9];
} EnZf; // size = 0x568

#endif
