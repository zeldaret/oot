#ifndef _Z_EN_ANUBICE_TAG_H_
#define _Z_EN_ANUBICE_TAG_H_

#include <ultra64.h>
#include <global.h>

#include "../ovl_En_Anubice/z_en_anubice.h"

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ EnAnubice* anubis;
    /* 0x0154 */ f32 triggerRange;
} EnAnubiceTag; // size = 0x0158

extern const ActorInit En_Anubice_Tag_InitVars;

#endif
