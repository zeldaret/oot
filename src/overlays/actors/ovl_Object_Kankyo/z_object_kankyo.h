#ifndef _Z_OBJECT_KANKYO_H_
#define _Z_OBJECT_KANKYO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1510];
    /* 0x165C */ ActorFunc actionFunc;
} ObjectKankyo; // size = 0x1660

extern const ActorInit Object_Kankyo_InitVars;

#endif
