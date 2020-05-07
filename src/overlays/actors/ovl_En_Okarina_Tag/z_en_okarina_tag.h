#ifndef _Z_EN_OKARINA_TAG_H_
#define _Z_EN_OKARINA_TAG_H_

#include <ultra64.h>
#include <global.h>

struct EnOkarinaTag;

typedef struct EnOkarinaTag {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14];
} EnOkarinaTag; // size = 0x0160

extern const ActorInit En_Okarina_Tag_InitVars;

#endif
