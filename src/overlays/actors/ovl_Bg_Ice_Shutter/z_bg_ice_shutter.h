#ifndef _Z_BG_ICE_SHUTTER_H_
#define _Z_BG_ICE_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

struct BgIceShutter;

typedef void (*BgIceShutterActionFunc)(struct BgIceShutter*, GlobalContext*);

typedef struct BgIceShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIceShutterActionFunc actionFunc;
} BgIceShutter; // size = 0x0168

extern const ActorInit Bg_Ice_Shutter_InitVars;

#endif
