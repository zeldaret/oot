#ifndef _Z_EN_SI_H_
#define _Z_EN_SI_H_

#include <ultra64.h>
#include <global.h>

struct EnSi;

typedef void (*EnSiActionFunc)(struct EnSi*, GlobalContext*);

typedef struct EnSi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnSiActionFunc actionFunc;
    /* 0x0150 */ char unk_150[0x50];
} EnSi; // size = 0x01A0

extern const ActorInit En_Si_InitVars;

#endif
