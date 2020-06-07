#ifndef _Z_EN_OKUTA_H_
#define _Z_EN_OKUTA_H_

#include <ultra64.h>
#include <global.h>

struct EnOkuta;

typedef struct EnOkuta {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x270];
} EnOkuta; // size = 0x03BC

extern const ActorInit En_Okuta_InitVars;

#endif
