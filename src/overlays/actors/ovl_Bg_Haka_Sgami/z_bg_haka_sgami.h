#ifndef _Z_BG_HAKA_SGAMI_H_
#define _Z_BG_HAKA_SGAMI_H_

#include <ultra64.h>
#include <global.h>

struct BgHakaSgami;

typedef void (*BgHakaSgamiActionFunc)(struct BgHakaSgami*, GlobalContext*);

typedef struct BgHakaSgami {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgHakaSgamiActionFunc actionFunc;
    /* 0x0150 */ char unk_150[0x1E8];
} BgHakaSgami; // size = 0x0338

extern const ActorInit Bg_Haka_Sgami_InitVars;

#endif
