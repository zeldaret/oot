#ifndef Z_EN_HATA_H
#define Z_EN_HATA_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_hata/object_hata.h"

typedef struct EnHata {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelAnime;
    /* 0x01A8 */ ColliderCylinder collider; // Unused, but indicated by the form of the unused data
    /* 0x01F4 */ Vec3s limbs[FLAGPOLE_LIMB_MAX];
    /* 0x0272 */ s16 invScale;
    /* 0x0274 */ s16 maxStep;
    /* 0x0276 */ s16 minStep;
    /* 0x0278 */ s16 unk_278;
} EnHata; // size = 0x027C

#endif
