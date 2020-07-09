#ifndef _Z_EN_FHG_FIRE_H_
#define _Z_EN_FHG_FIRE_H_

#include <ultra64.h>
#include <global.h>

struct EnFhgFire;
typedef void (*EnFhgFireActionFunc)(struct EnFhgFire*);

typedef struct EnFhgFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnFhgFireActionFunc actionFunc;
    /* 0x0150 */ Vec3s unk_150; // rotation
    /* 0x0156 */ char unk_156[0x02]; // either padding or the start of another Vec3s
    /* 0x0158 */ s16 unk_158; // used to store a rot.y
    /* 0x015A */ char unk_15A[0x06];
    /* 0x0160 */ f32 unk_160;
    /* 0x0164 */ char unk_164[0x28];
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ char unk_190[0x0C];
    /* 0x019C */ z_Light* light;
    /* 0x01A0 */ LightInfoPositional unk_1A0;
    /* 0x01AE */ char padding_1AE[2];
    /* 0x01B0 */ ColliderCylinder collider;
    /* 0x01FC */ char padding_1FC[2];
    /* 0x01FE */ u16 unk_1FE; // probable Vec3s
    /* 0x0200 */ char unk_200[0x4];
} EnFhgFire; // size = 0x0204

extern const ActorInit En_Fhg_Fire_InitVars;

#endif
