#ifndef _Z_BG_RELAY_OBJECTS_H_
#define _Z_BG_RELAY_OBJECTS_H_

#include "ultra64.h"
#include "global.h"

struct BgRelayObjects;

typedef void (*BgRelayObjectsActionFunc)(struct BgRelayObjects*, GlobalContext*);

typedef struct BgRelayObjects {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgRelayObjectsActionFunc actionFunc;
    /* 0x0168 */ u8 switchFlag;
    /* 0x0169 */ s8 unk_169; // a room id
    /* 0x016A */ s16 timer;
} BgRelayObjects; // size = 0x016C

#endif
