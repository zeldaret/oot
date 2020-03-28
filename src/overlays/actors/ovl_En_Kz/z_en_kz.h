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
    /* 0x01E2 */ char unk_1E2[0x28];
    /* 0x020A */ s16 unk_20A;
    /* 0x020C */ char unk_20C[0x6];
    /* 0x0212 */ s16 unk_212; // cutscene and camera related
    /* 0x0214 */ s16 unk_214; // cutscene and camera related
    /* 0x0216 */ Vec3s actorDrawTable;
    /* 0x021C */ char unk_21C[0x42];
    /* 0x025E */ Vec3s skelanimeArg5;
    /* 0x0264 */ char unk_264[0x42];
    /* 0x02A6 */ Vec3s unk_2A6[4];
    /* 0x02BE */ Vec3s unk_2BE[4];
} EnKz; // size = 0x02D8

extern const ActorInit En_Kz_InitVars;

#endif
