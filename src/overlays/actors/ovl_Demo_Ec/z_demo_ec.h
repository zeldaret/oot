#ifndef _Z_DEMO_EC_H_
#define _Z_DEMO_EC_H_

#include "ultra64.h"
#include "global.h"

struct DemoEc;

typedef void (*DemoEcActionFunc)(struct DemoEc*, GlobalContext*);
typedef void (*DemoEcSetupFunc)(struct DemoEc*, GlobalContext*);
typedef void (*DemoEcDrawFunc)(struct DemoEc*, GlobalContext*);

typedef struct DemoEc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ s32 animationIndex;
    /* 0x0198 */ s32 drawConfig;
    /* 0x019C */ s32 action;
    /* 0x01A0 */ s32 unk_1A0;
    /* 0x01A4 */ s32 unk_1A4;
} DemoEc; // size = 0x01A8

extern const ActorInit Demo_Ec_InitVars;

typedef enum {
    /* 01 */ ANIMATE_INGO = 1,
    /* 02 */ ANIMATE_TALON,
    /* 03 */ ANIMATE_WINDMILL_MAN,
    /* 04 */ ANIMATE_KOKIRI_BOY,
    /* 05 */ ANIMATE_KOKIRI_GIRL,
    /* 06 */ ANIMATE_OLD_MAN,
    /* 07 */ ANIMATE_BEARDED_MAN,
    /* 08 */ ANIMATE_WOMAN,
    /* 09 */ ANIMATE_OLD_WOMAN,
    /* 10 */ ANIMATE_BOSS_CARPENTER,
    /* 11 */ ANIMATE_CARPENTER,
    /* 12 */ ANIMATE_DANCING_KOKIRI_BOY,
    /* 13 */ ANIMATE_DANCING_KOKIRI_GIRL,
    /* 14 */ ANIMATE_GERUDO,
    /* 15 */ ANIMATE_DANCING_ZORA,
    /* 16 */ ANIMATE_KING_ZORA,
    /* 17 */ unk_17,
    /* 18 */ unk_18,
    /* 19 */ ANIMATE_MIDO,
    /* 20 */ unk_20,
    /* 21 */ ANIMATE_CUCCO,
    /* 22 */ ANIMATE_CUCCO_LADY,
    /* 23 */ ANIMATE_POTION_SHOP_OWNER,
    /* 24 */ ANIMATE_MASK_SHOP_OWNER,
    /* 25 */ ANIMATE_FISHING_POND_OWNER,
    /* 26 */ ANIMATE_BOMBCHEW_SHOP_OWNER,
    /* 27 */ ANIMATE_GORON,
    /* 28 */ ANIMATE_MALON
} ANIMATION_INDEX;

typedef enum {
    /* 01 */ DRAW_INGO = 1,
    /* 02 */ DRAW_TALON,
    /* 03 */ DRAW_WINDMILL_MAN,
    /* 04 */ DRAW_KOKIRI_BOY,
    /* 05 */ DRAW_KOKIRI_GIRL,
    /* 06 */ DRAW_OLD_MAN,
    /* 07 */ DRAW_BEARDED_MAN,
    /* 08 */ DRAW_WOMAN,
    /* 09 */ DRAW_OLD_WOMAN,
    /* 10 */ DRAW_BOSS_CARPENTER,
    /* 11 */ DRAW_CARPENTER,
    /* 12 */ DRAW_GERUDO,
    /* 13 */ DRAW_DANCING_ZORA,
    /* 14 */ DRAW_KING_ZORA,
    /* 15 */ DRAW_MIDO,
    /* 16 */ DRAW_CUCCO,
    /* 17 */ DRAW_CUCCO_LADY,
    /* 18 */ DRAW_POTION_SHOP_OWNER,
    /* 19 */ DRAW_MASK_SHOP_OWNER,
    /* 20 */ DRAW_FISHING_POND_OWNER,
    /* 21 */ DRAW_BOMBCHEW_SHOP_OWNER,
    /* 22 */ DRAW_GORON,
    /* 23 */ DRAW_MALON
} DRAW_INDEX;

#endif
