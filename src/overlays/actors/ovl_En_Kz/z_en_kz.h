#ifndef _Z_EN_KZ_H_
#define _Z_EN_KZ_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ s16 nextBehavior; //name might be bad
    /* 0x01E2 */ char unk_1E2[0x27];
    /* 0x0209 */ u8 unk_209;
    /* 0x020A */ s16 unk_20A;
    /* 0x020C */ s16 blinkTimer; // blink countdown
    /* 0x020E */ char unk_20E[0x2];
    /* 0x0210 */ s16 eyeImageIdx;
    /* 0x0212 */ s16 unk_212; // cutscene and camera related
    /* 0x0214 */ s16 unk_214; // cutscene and camera related
    /* 0x0216 */ Vec3s actorDrawTable[12];
    /* 0x025E */ Vec3s actorTransitionTable[12];
    /* 0x02A6 */ Vec3s unk_2A6[4];
    /* 0x02BE */ Vec3s unk_2BE[4];
} EnKz; // size = 0x02D8

extern const ActorInit En_Kz_InitVars;

#endif
