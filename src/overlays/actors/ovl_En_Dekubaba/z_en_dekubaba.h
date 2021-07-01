#ifndef _Z_EN_DEKUBABA_H_
#define _Z_EN_DEKUBABA_H_

#include "ultra64.h"
#include "global.h"

struct EnDekubaba;

typedef void (*EnDekubabaActionFunc)(struct EnDekubaba*, GlobalContext*);

typedef enum {
    /* 0 */ DEKUBABA_NORMAL,
    /* 1 */ DEKUBABA_BIG
} DekuBabaType;

typedef struct EnDekubaba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f bodyPartsPos[4];
    /* 0x017C */ SkelAnime skelAnime;
    /* 0x01C0 */ EnDekubabaActionFunc actionFunc;
    /* 0x01C4 */ char unk_1C4[0x2]; // unused
    /* 0x01C6 */ s16 timer;
    /* 0x01C8 */ s16 unk_1C8;
    /* 0x01CA */ s16 unk_1CA[3];
    /* 0x01D0 */ Vec3s jointTable[8];
    /* 0x0200 */ Vec3s morphTable[8];
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ CollisionPoly* boundFloor;
    /* 0x0238 */ ColliderJntSph collider;
    /* 0x0258 */ ColliderJntSphElement colliderElements[7];
} EnDekubaba; // size = 0x0418

extern const ActorInit En_Dekubaba_InitVars;

#endif
