#ifndef _Z_EN_OWL_H_
#define _Z_EN_OWL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain colCylinder;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s drawTbl[0x15];
    /* 0x025A */ Vec3s transitionTbl[0x15];
    /* 0x02D8 */ SkelAnime skelAnime2;
    /* 0x031C */ Vec3s drawTbl2[0x10];
    /* 0x037C */ Vec3s transitionTbl2[0x10];
    /* 0x03DC */ char unk_3DC[0x12];
    /* 0x03EE */ u16 unk_3EE;
    /* 0x03F0 */ char unk_3F0[0xC];
    /* 0x03FC */ u8 unk_3FC;
    /* 0x03FD */ char unk_3FD[3];
    /* 0x0400 */ s16 unk_400;
    /* 0x0402 */ char unk_402[2];
    /* 0x0404 */ u8 unk_404;
    /* 0x0405 */ u8 unk_405;
    /* 0x0406 */ u8 unk_406;
    /* 0x0407 */ u8 unk_407;
    /* 0x0408 */ u8 unk_408;
    /* 0x0409 */ u8 unk_409;
    /* 0x040A */ s16 unk_40A;
    /* 0x040C */ ActorFunc actionFunc;
    /* 0x0410 */ void* unk_410;
} EnOwl; // size = 0x0414

extern const ActorInit En_Owl_InitVars;

#endif
