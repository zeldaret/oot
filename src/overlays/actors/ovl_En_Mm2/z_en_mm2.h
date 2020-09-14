#ifndef _Z_EN_MM2_H_
#define _Z_EN_MM2_H_

#include <ultra64.h>
#include <global.h>

struct EnMm2;

typedef struct EnMm2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x170];
} EnMm2; // size = 0x02BC

extern const ActorInit En_Mm2_InitVars;

#endif
