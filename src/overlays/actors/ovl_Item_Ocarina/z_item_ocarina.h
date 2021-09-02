#ifndef _Z_ITEM_OCARINA_H_
#define _Z_ITEM_OCARINA_H_

#include "ultra64.h"
#include "global.h"

struct ItemOcarina;

typedef void (*ItemOcarinaActionFunc)(struct ItemOcarina*, GlobalContext*);

typedef struct ItemOcarina {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemOcarinaActionFunc actionFunc;
    /* 0x0150 */ s16 spinRotOffset;
} ItemOcarina; // size = 0x0154

#endif
