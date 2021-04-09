#ifndef _Z_EN_GIRLA_H_
#define _Z_EN_GIRLA_H_

#include "ultra64.h"
#include "global.h"

struct EnGirlA;

typedef void (*EnGirlAActionFunc)(struct EnGirlA*, GlobalContext*);
typedef void (*EnGirlA2Func)(GlobalContext*, struct EnGirlA*);
typedef void (*EnGirlA3Func)(Actor*, GlobalContext*, s32);
typedef s32 (*EnGirlA4Func)(GlobalContext*, struct EnGirlA*);

typedef struct EnGirlA {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGirlAActionFunc actionFunc;
    /* 0x0194 */ s8 objBankIndex;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ EnGirlAActionFunc actionFunc2;
    /* 0x019C */ s32 unk_19C;
    /* 0x01A0 */ s16 itemBuyPromptTextId;
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s32 getItemId;
    /* 0x01A8 */ s16 isInvisible;
    /* 0x01AA */ s16 unk_1AA;
    /* 0x01AC */ EnGirlA2Func unk_1AC;
    /* 0x01B0 */ EnGirlA2Func unk_1B0;
    /* 0x01B4 */ s16 isSelected;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ s16 yRotation;
    /* 0x01BA */ s16 unk_1BA;
    /* 0x01BC */ EnGirlA4Func canBuyFunc;
    /* 0x01C0 */ EnGirlA2Func itemGiveFunc;
    /* 0x01C4 */ EnGirlA2Func buyEventFunc;
    /* 0x01C8 */ s16 basePrice;
    /* 0x01CA */ s16 itemCount;
    /* 0x01CC */ s16 giDrawId;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ EnGirlA3Func hiliteFunc;
} EnGirlA; // size = 0x01D4

extern const ActorInit En_GirlA_InitVars;

typedef enum {
    /* 00 */ SI_DEKU_NUTS_5,
    /* 01 */ SI_ARROWS_30,
    /* 02 */ SI_ARROWS_50,
    /* 03 */ SI_BOMBS_5_R25,
    /* 04 */ SI_DEKU_NUTS_10,
    /* 05 */ SI_DEKU_STICK,
    /* 06 */ SI_BOMBS_10,
    /* 07 */ SI_FISH,
    /* 08 */ SI_RED_POTION_R30,
    /* 09 */ SI_GREEN_POITION,
    /* 10 */ SI_BLUE_POTION,
    /* 11 */ SI_LONGSWORD,
    /* 12 */ SI_HYLIAN_SHIELD,
    /* 13 */ SI_DEKU_SHIELD,
    /* 14 */ SI_GORON_TUNIC,
    /* 15 */ SI_ZORA_TUNIC,
    /* 16 */ SI_HEART,
    /* 17 */ SI_MILK_BOTTLE,
    /* 18 */ SI_WEIRD_EGG,
    /* 19 */ SI_19,
    /* 20 */ SI_20,
    /* 21 */ SI_BOMBCHU_10_1,
    /* 22 */ SI_BOMBCHU_20_1,
    /* 23 */ SI_BOMBCHU_20_2,
    /* 24 */ SI_BOMBCHU_10_2,
    /* 25 */ SI_BOMBCHU_10_3,
    /* 26 */ SI_BOMBCHU_20_3,
    /* 27 */ SI_BOMBCHU_20_4,
    /* 28 */ SI_BOMBCHU_10_4,
    /* 29 */ SI_DEKU_SEEDS_30,
    /* 30 */ SI_KEATON_MASK,
    /* 31 */ SI_SPOOKY_MASK,
    /* 32 */ SI_SKULL_MASK,
    /* 33 */ SI_BUNNY_HOOD,
    /* 34 */ SI_MASK_OF_TRUTH,
    /* 35 */ SI_ZORA_MASK,
    /* 36 */ SI_GORON_MASK,
    /* 37 */ SI_GERUDO_MASK,
    /* 38 */ SI_SOLD_OUT,
    /* 39 */ SI_BLUE_FIRE,
    /* 40 */ SI_BUGS,
    /* 41 */ SI_BIG_POE,
    /* 42 */ SI_POE,
    /* 43 */ SI_FAIRY,
    /* 44 */ SI_ARROWS_10,
    /* 45 */ SI_BOMBS_20,
    /* 46 */ SI_BOMBS_30,
    /* 47 */ SI_BOMBS_5_R35,
    /* 48 */ SI_RED_POTION_R40,
    /* 49 */ SI_RED_POTION_R50,
    SI_MAX
} EnGirlA_ShopItems;

typedef enum {
    CANBUY_RESULT_0,
    CANBUY_RESULT_1,
    CANBUY_RESULT_CANT_GET_NOW,
    CANBUY_RESULT_NEED_BOTTLE,
    CANBUY_RESULT_COME_BACK_WHEN_YOURE_A_LITTLE_MMM_RICHER,
    CANBUY_RESULT_CANT_GET_NOW_VOLUME_5
} EnGirlA_CanBuyResult;

#endif
