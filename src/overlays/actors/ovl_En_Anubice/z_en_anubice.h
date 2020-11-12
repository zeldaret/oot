#ifndef _Z_EN_ANUBICE_H_
#define _Z_EN_ANUBICE_H_

#include "ultra64.h"
#include "global.h"

struct EnAnubice;

typedef struct EnAnubice {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10E];
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ char unk_25C[0x2];
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ char unk_264[0xB0];
} EnAnubice; // size = 0x0314

extern const ActorInit En_Anubice_InitVars;

#endif
