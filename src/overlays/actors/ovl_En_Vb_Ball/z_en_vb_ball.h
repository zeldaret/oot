#ifndef _Z_EN_VB_BALL_H_
#define _Z_EN_VB_BALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} EnVbBall; // size = 0x01B4

extern const ActorInit En_Vb_Ball_InitVars;

#endif
