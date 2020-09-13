#ifndef _Z_EN_HORSE_NORMAL_H_
#define _Z_EN_HORSE_NORMAL_H_

#include <ultra64.h>
#include <global.h>

struct EnHorseNormal;

typedef struct EnHorseNormal {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ PSkinAwb skin;
    /* 0x01E4 */ u16 unk_1E4;
    /* 0x01E6 */ char unk_1E6[0x02];
    /* 0x01E8 */ Vec3f unk_1E8;
    /* 0x01F4 */ Vec3f unk_1F4;
    /* 0x0200 */ s32 unk_200;
    /* 0x0204 */ Vec3f unk_204;
    /* 0x0210 */ char unk_210[0x18];
    /* 0x0228 */ ColliderCylinder unk_228;
    /* 0x0274 */ ColliderJntSph unk_274;
    /* 0x0294 */ ColliderJntSphItem unk_294;
    /* 0x02D4 */ ColliderCylinder unk_2D4;
    /* 0x0320 */ char unk_320[0x08];
} EnHorseNormal; // size = 0x0328

extern const ActorInit En_Horse_Normal_InitVars;

#endif
