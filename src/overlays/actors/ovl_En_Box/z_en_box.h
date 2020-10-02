#ifndef _Z_EN_BOX_H_
#define _Z_EN_BOX_H_

#include <ultra64.h>
#include <global.h>

struct EnBox;

typedef struct EnBox {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA8];
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ char unk_1F6[0x06];
} EnBox; // size = 0x01FC

extern const ActorInit En_Box_InitVars;

#endif
