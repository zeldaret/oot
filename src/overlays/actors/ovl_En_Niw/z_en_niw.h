#ifndef _Z_EN_NIW_H_
#define _Z_EN_NIW_H_

#include "ultra64.h"
#include "global.h"

struct EnNiw;

typedef struct EnNiw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x11E];
    /* 0x026A */ s16 unk_26A;
    /* 0x026C */ char unk_26C[0x2A];
    /* 0x0296 */ s16 unk_296;
    /* 0x0298 */ char unk_298[0x50];
    /* 0x02E8 */ s16 unk_2E8;
    /* 0x02EA */ char unk_2EA[0x2];
    /* 0x02EC */ s16 unk_2EC;
    /* 0x02EE */ char unk_2EE[0x4CA];
} EnNiw; // size = 0x07B8

extern const ActorInit En_Niw_InitVars;

#endif
