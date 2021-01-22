#ifndef _Z_EFF_DUST_H_
#define _Z_EFF_DUST_H_

#include "ultra64.h"
#include "global.h"

struct EffDust;

typedef void (*EffDustActionFunc)(struct EffDust *, GlobalContext *);

typedef struct EffDust {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ f32 distanceTraveled[0x40]; // normalized. 0.0f to 1.0f
    /* 0x024C */ Vec3f initialPositions[0x40]; // array of position of each dust particle.
    /* 0x054C */ u8 index;
    /* 0x054D */ u8 life; // only considered if actor.params is 2, 3 or 4.
    /* 0x054E */ char padding[0x02];
    /* 0x0550 */ f32 dx; // x translate (?)
    /* 0x0554 */ f32 dy; // y translate (?)
    /* 0x0558 */ f32 dz; // z translate (?)
    /* 0x055C */ f32 scalingFactor;
    /* 0x0560 */ EffDustActionFunc updateFunc; // function to be called by EffDust_Update()
    /* 0x0560 */ EffDustActionFunc drawFunc; // function to be called by EffDust_Draw()
} EffDust; // size = 0x0568


extern const ActorInit Eff_Dust_InitVars;

#endif
