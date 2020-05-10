#ifndef _Z_BG_DODOAGO_H_
#define _Z_BG_DODOAGO_H_

#include <ultra64.h>
#include <global.h>

struct BgDodoago;

typedef void (*BgDodoagoActionFunc)(struct BgDodoago*, GlobalContext*);

typedef struct BgDodoago {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0xE8];
    /* 0x024C */ BgDodoagoActionFunc actionFunc;
} BgDodoago; // size = 0x0250

extern const ActorInit Bg_Dodoago_InitVars;

#endif
