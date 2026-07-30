#ifndef Z_EN_DEKUBABA_H
#define Z_EN_DEKUBABA_H

#include "ultra64.h"
#include "actor.h"

struct EnDekubaba;

typedef struct EnDekubaba {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3f unk14C[2];
    /* 0x164 */ Vec3f unk164;
    /* 0x170 */ Vec3f unk170;
    /* 0x17C */ SkelAnime unk17C;
    /* 0x1C0 */ void (*unk1C0)(struct EnDekubaba*, struct PlayState*);
    /* 0x1C4 */ char pad1C4[2];
    /* 0x1C6 */ s16 unk1C6;
    /* 0x1C8 */ s16 unk1C8;
    /* 0x1CA */ s16 unk1CA_arr[3];
    /* 0x1D0 */ Vec3s unk1D0[8];
    /* 0x200 */ Vec3s unk200[8];
    /* 0x230 */ f32 unk230;
    /* 0x234 */ struct CollisionPoly* unk234;
    /* 0x238 */ ColliderJntSph unk238;
    /* 0x258 */ ColliderJntSphElement unk258[7];
} EnDekubaba; // size = 0x418

#endif
