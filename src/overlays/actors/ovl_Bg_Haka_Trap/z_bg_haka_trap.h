#ifndef _Z_BG_HAKA_TRAP_H_
#define _Z_BG_HAKA_TRAP_H_

#include <ultra64.h>
#include <global.h>

struct BgHakaTrap;

typedef void (*BgHakaTrapActionFunc)(struct BgHakaTrap*, GlobalContext*);

typedef struct BgHakaTrap {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaTrapActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x134];
} BgHakaTrap; // size = 0x029C

extern const ActorInit Bg_Haka_Trap_InitVars;

#endif
