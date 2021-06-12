#ifndef _Z_EN_DEKUBABA_H_
#define _Z_EN_DEKUBABA_H_

#include "ultra64.h"
#include "global.h"

struct EnDekubaba;

typedef void (*EnDekubabaActionFunc)(struct EnDekubaba*, GlobalContext*);


typedef struct EnDekubaba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f unk_14C[2];
    /* 0x0164 */ Vec3f unk_164;
    /* 0x0170 */ Vec3f unk_170;
    /* 0x017C */ SkelAnime skelAnime;
    /* 0x01C0 */ EnDekubabaActionFunc actionFunc;
    /* 0x01C4 */ char unk_1C4[0x2];
    /* 0x01C6 */ s16 unk_1C6;
    /* 0x01C8 */ s16 unk_1C8;
    /* 0x01CA */ s16 unk_1CA[3];
    // /* 0x01CC */ s16 unk_1CC;
    // /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ Vec3s jointTable[8];
    /* 0x0200 */ Vec3s morphTable[8];
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ CollisionPoly* unk_234;
    /* 0x0238 */ ColliderJntSph collider;
    /* 0x0258 */ ColliderJntSphElement colliderElements[7];
} EnDekubaba; // size = 0x0418

extern const ActorInit En_Dekubaba_InitVars;

#endif
