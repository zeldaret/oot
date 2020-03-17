#ifndef _Z_EN_DOG_H_
#define _Z_EN_DOG_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x018C */ char unk_18C[0x4];
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ UNK_PTR movementPath;
    /* 0x01E4 */ char unk_1E4[0x2];
    /* 0x01E6 */ u16 unk_1E6;
    /* 0x01E8 */ s16 spawnAngle;
    /* 0x01EA */ char unk_1EA[0x2];
    /* 0x01EC */ s16 unk_1EC;
    /* 0x01EE */ char unk_1EE[0x2];
    /* 0x01F0 */ s16 unk_1F0;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ u8 unk_1F4;
    /* 0x01F5 */ char unk_1F5[0x4D];
    /* 0x0242 */ u8 unk_242;
    /* 0x0243 */ char unk_243[0x4D];
} EnDog; // size = 0x0290

extern const ActorInit En_Dog_InitVars;

#endif
