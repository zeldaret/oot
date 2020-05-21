#ifndef _Z_EN_MAG_H_
#define _Z_EN_MAG_H_

#include <ultra64.h>
#include <global.h>

struct EnMag;

typedef struct EnMag {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xE1DC];
} EnMag; // size = 0xE328

extern const ActorInit En_Mag_InitVars;

#endif
