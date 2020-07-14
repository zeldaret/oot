#ifndef _Z_BG_SPOT01_IDOHASHIRA_H_
#define _Z_BG_SPOT01_IDOHASHIRA_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot01Idohashira;

typedef void (*BgSpot01IdohashiraActionFunc)(struct BgSpot01Idohashira*, GlobalContext*);
typedef void (*BgSpot01IdohashiraDrawFunc)(struct BgSpot01Idohashira*, GlobalContext*);

typedef struct BgSpot01Idohashira {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 action;
    /* 0x0168 */ s32 drawConfig;
    /* 0x016C */ u32 npcAction;
    /* 0x0170 */ s32 unk_170;
} BgSpot01Idohashira; // size = 0x0174

extern const ActorInit Bg_Spot01_Idohashira_InitVars;

#endif
