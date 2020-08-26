#ifndef _Z_EN_BUBBLE_H_
#define _Z_EN_BUBBLE_H_

#include <ultra64.h>
#include <global.h>

struct EnBubble;

typedef void (*EnBubbleActionFunc)(struct EnBubble*, GlobalContext*);

typedef struct EnBubble {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnBubbleActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph colliderSphere;
    /* 0x0170 */ ColliderJntSphItem colliderSphereItems[2];
    /* 0x01F0 */ Vec3f unk_1F0;   // scaled bump velocity, set but never used
    /* 0x01FC */ Vec3f unk_1FC;   // random numbers, set but never used
    /* 0x0208 */ s16 unk_208;     // set to 8 when about to pop
    /* 0x020A */ s16 unk_20A;     // pop timer
    /* 0x020C */ char unk_20C[4]; // unused ?
    /* 0x0210 */ f32 unk_210;     // texture rotational velocity
    /* 0x0214 */ f32 unk_214;     // texture eccentricity
    /* 0x0218 */ f32 unk_218;     // set to 1.0f, never used
    /* 0x021C */ f32 unk_21C;     // set to 1.0f, never used
    /* 0x0220 */ f32 unk_220;     // expansion width
    /* 0x0224 */ f32 unk_224;     // expansion height
    /* 0x0228 */ s8 unk_228;      // when 0, bound speed increased. increases with each bound and randomly gets reset
    /* 0x022C */ Vec3f unk_22C;   // unit vector in direction of unk_238, init'd random, direction from bound
    /* 0x0238 */ Vec3f unk_238;   // component for velocity from bound
    /* 0x0244 */ Vec3f unk_244;   // unit collider velocity
    /* 0x0250 */ Vec3f unk_250;   // component for velocity from bumper
    /* 0x025C */ f32 unk_25C;     // velocity Y?
} EnBubble;                       // size = 0x0260

extern Gfx D_06001000[];

#endif
