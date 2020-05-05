#ifndef _Z_EN_HORSE_LINK_CHILD_H_
#define _Z_EN_HORSE_LINK_CHILD_H_

#include <ultra64.h>
#include <global.h>

struct EnHorseLinkChild;

typedef struct EnHorseLinkChild {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x158];
} EnHorseLinkChild; // size = 0x02A4

extern const ActorInit En_Horse_Link_Child_InitVars;

#endif
