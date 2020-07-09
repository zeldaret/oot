#ifndef _Z_EN_FHG_FIRE_H_
#define _Z_EN_FHG_FIRE_H_

#include <ultra64.h>
#include <global.h>

struct EnFhgFire;
typedef void (*EnFhgFireActionFunc)(struct EnFhgFire*, GlobalContext *globalCtx);

typedef struct EnFhgFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnFhgFireActionFunc actionFunc;
    /* 0x0150 */ Vec3s unk_150; // rotation
    /* 0x0156 */ Vec3s unk_156; // x used as a flag, y as a rotation
    /* 0x015C */ char unk_15C[0x04];
    /* 0x0160 */ f32 unk_160;
    /* 0x0164 */ char unk_164[0x08];
    /* 0x016C */ f32 scale;
    /* 0x0170 */ char unk_170[0x1C];
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ char unk_190[0x0C];
    /* 0x019C */ z_Light* light;
    /* 0x01A0 */ LightInfoPositional unk_1A0;
    /* 0x01AE */ char padding_1AE[2];
    /* 0x01B0 */ ColliderCylinder collider;
    /* 0x01FC */ u8 unk_1FC; // bool?
    /* 0x01FD */ char unk_1FD;
    /* 0x01FE */ s16 unk_1FE;
    /* 0x0200 */ f32 unk_200;
} EnFhgFire; // size = 0x0204

extern const ActorInit En_Fhg_Fire_InitVars;

#endif
