#ifndef _Z_BG_TOKI_HIKARI_H_
#define _Z_BG_TOKI_HIKARI_H_

#include "ultra64.h"
#include "global.h"

struct BgTokiHikari;

typedef void (*BgTokiHikariActionFunc)(struct BgTokiHikari*, GlobalContext*);

typedef struct BgTokiHikari {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ f32 unk_14C;
    /* 0x0150 */ BgTokiHikariActionFunc actionFunc; 
} BgTokiHikari; // size = 0x0154

#endif
