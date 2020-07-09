#ifndef _Z_EN_FHG_H_
#define _Z_EN_FHG_H_

#include <ultra64.h>
#include <global.h>

struct EnfHG;

typedef struct EnfHG {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB4];
    /* 0x0200 */ Vec3f unk_200;
    /* 0x020C */ char unk_20C[0x88];
} EnfHG; // size = 0x0294

extern const ActorInit En_Fhg_InitVars;

#endif
