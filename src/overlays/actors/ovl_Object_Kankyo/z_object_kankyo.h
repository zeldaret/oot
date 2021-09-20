#ifndef Z_OBJECT_KANKYO_H
#define Z_OBJECT_KANKYO_H

#include "ultra64.h"
#include "global.h"

struct ObjectKankyo;

typedef void (*ObjectKankyoActionFunc)(struct ObjectKankyo*, GlobalContext*);

typedef struct ObjectKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1510];
    /* 0x165C */ ObjectKankyoActionFunc actionFunc;
} ObjectKankyo; // size = 0x1660

#endif
