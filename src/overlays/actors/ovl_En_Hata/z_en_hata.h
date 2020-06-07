#ifndef _Z_EN_HATA_H_
#define _Z_EN_HATA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelAnime;
    /* 0x01A8 */ char unk_1A8[0x4C];
    /* 0x01F4 */ Vec3s limbs[0x15];
    /* 0x0272 */ s16 invScale;
    /* 0x0274 */ s16 maxStep;
    /* 0x0276 */ s16 minStep;
    /* 0x0278 */ s16 unk_278;
} EnHata; // size = 0x027C

extern const ActorInit En_Hata_InitVars;

#endif
