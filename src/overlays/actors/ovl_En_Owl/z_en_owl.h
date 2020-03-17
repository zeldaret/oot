#ifndef _Z_EN_OWL_H_
#define _Z_EN_OWL_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C8];
} EnOwl; // size = 0x0414

extern const ActorInit En_Owl_InitVars;

#endif
