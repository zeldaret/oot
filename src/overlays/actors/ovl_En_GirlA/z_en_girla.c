/*
 * File: z_en_girla.c
 * Overlay: En_GirlA
 * Description: Shop Items
 */

#include "z_en_girla.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnGirlA*)thisx)

void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80A3BEAC(GlobalContext* globalCtx, EnGirlA* this);
void func_80A3BEE0(GlobalContext* globalCtx, EnGirlA* this);
void EnGirlA_InitializeItemAction(EnGirlA* this, GlobalContext* globalCtx);
void func_80A3C3BC(EnGirlA* this, GlobalContext* globalCtx);
void func_80A3C498(Actor* thisx, GlobalContext* globalCtx, s32 flags);
void EnGirlA_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 CanBuy_Arrows(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Bombs(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_DekuNuts(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_DekuSticks(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Fish(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_RedPotion(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_GreenPotion(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_BluePotion(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Longsword(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_HylianShield(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_DekuShield(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_GoronTunic(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Health(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_MilkBottle(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_WeirdEgg(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Unk19(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Unk20(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Bombchus(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_DekuSeeds(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_SoldOut(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_BlueFire(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Bugs(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Poe(GlobalContext* globalCtx, EnGirlA* this);
s32 CanBuy_Fairy(GlobalContext* globalCtx, EnGirlA* this);

void ItemGive_DekuNuts(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Arrows(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Bombs(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_DekuSticks(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_BottledItem(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Longsword(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_HylianShield(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_DekuShield(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_GoronTunic(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Health(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_MilkBottle(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_WeirdEgg(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Unk19(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_Unk20(GlobalContext* globalCtx, EnGirlA* this);
void ItemGive_DekuSeeds(GlobalContext* globalCtx, EnGirlA* this);
void BuyEvent_ShieldDiscount(GlobalContext* globalCtx, EnGirlA* this);
void BuyEvent_ObtainBombchuPack(GlobalContext* globalCtx, EnGirlA* this);
void BuyEvent_GoronTunic(GlobalContext* globalCtx, EnGirlA* this);
void BuyEvent_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this);

const ActorInit En_GirlA_InitVars = {
    ACTOR_EN_GIRLA,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGirlA),
    (ActorFunc)EnGirlA_Init,
    (ActorFunc)EnGirlA_Destroy,
    (ActorFunc)EnGirlA_Update,
    NULL,
};

static char* sShopItemDescriptions[] = {
    "デクの実×5   ",  "矢×30        ",  "矢×50        ",  "爆弾×5       ",  "デクの実×10  ",  "デクの棒      ",
    "爆弾×10      ",  "さかな        ", "赤クスリ      ", "緑クスリ      ", "青クスリ      ", "巨人のナイフ  ",
    "ハイリアの盾  ", "デクの盾      ", "ゴロンの服    ", "ゾ─ラの服    ",  "回復のハート  ", "ロンロン牛乳  ",
    "鶏の卵        ", "インゴー牛乳  ", "インゴー卵    ", "もだえ石      ", "大人の財布    ", "ハートの欠片  ",
    "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "ボムチュウ    ", "デクのタネ    ",
    "キータンのお面", "こわそなお面  ", "ドクロのお面  ", "ウサギずきん  ", "まことの仮面  ", "ゾーラのお面  ",
    "ゴロンのお面  ", "ゲルドのお面  ", "ＳＯＬＤＯＵＴ", "炎            ", "虫            ", "チョウチョ    ",
    "ポウ          ", "妖精の魂      ", "矢×10        ",  "爆弾×20      ",  "爆弾×30      ",  "爆弾×5       ",
    "赤クスリ      ", "赤クスリ      ",
};

static s16 maskShopItems[8] = { ITEM_MASK_KEATON, ITEM_MASK_SPOOKY, ITEM_MASK_SKULL, ITEM_MASK_BUNNY,
                             ITEM_MASK_TRUTH,  ITEM_MASK_ZORA,   ITEM_MASK_GORON, ITEM_MASK_GERUDO, };

static u16 maskShopFreeToBorrowTextIds[5] = { 0x70B6, 0x70B5, 0x70B4, 0x70B7, 0x70BB };

typedef struct {
    /* 0x00 */ s16 objID;
    /* 0x02 */ s16 giDrawId;
    /* 0x04 */ void (*hiliteFunc)(Actor*, GlobalContext*, s32);
    /* 0x08 */ s16 price;
    /* 0x0A */ s16 count;
    /* 0x0C */ u16 itemDescTextId;
    /* 0x0C */ u16 itemBuyPromptTextId;
    /* 0x10 */ s32 getItemId;
    /* 0x14 */ s32 (*canBuyFunc)(GlobalContext*, EnGirlA*);
    /* 0x18 */ void (*itemGiveFunc)(GlobalContext*, EnGirlA*);
    /* 0x1C */ void (*buyEventFunc)(GlobalContext*, EnGirlA*);
} ShopItemEntry; // size = 0x20

static ShopItemEntry shopItemEntries[] = {
    /* 00 */ { OBJECT_GI_NUTS, GID_NUTS, func_8002ED80, 15, 5, 0x00B2, 0x007F, GI_NUTS_5_2, CanBuy_DekuNuts, ItemGive_DekuNuts, BuyEvent_ShieldDiscount },
    /* 01 */ { OBJECT_GI_ARROW, GID_ARROWS_MEDIUM, func_8002EBCC, 60, 30, 0x00C1, 0x009B, GI_ARROWS_MEDIUM, CanBuy_Arrows, ItemGive_Arrows, BuyEvent_ShieldDiscount },
    /* 02 */ { OBJECT_GI_ARROW, GID_ARROWS_LARGE, func_8002EBCC, 90, 50, 0x00B0, 0x007D, GI_ARROWS_LARGE, CanBuy_Arrows, ItemGive_Arrows, BuyEvent_ShieldDiscount },
    /* 03 */ { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 25, 5, 0x00A3, 0x008B, GI_BOMBS_5, CanBuy_Bombs, ItemGive_Bombs, BuyEvent_ShieldDiscount },
    /* 04 */ { OBJECT_GI_NUTS, GID_NUTS, func_8002ED80, 30, 10, 0x00A2, 0x0087, GI_NUTS_10, CanBuy_DekuNuts, ItemGive_DekuNuts, BuyEvent_ShieldDiscount },
    /* 05 */ { OBJECT_GI_STICK, GID_STICK, NULL, 10, 1, 0x00A1, 0x0088, GI_STICKS_1, CanBuy_DekuSticks, ItemGive_DekuSticks, BuyEvent_ShieldDiscount },
    /* 06 */ { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 50, 10, 0x00B1, 0x007C, GI_BOMBS_10, CanBuy_Bombs, ItemGive_Bombs, BuyEvent_ShieldDiscount },
    /* 07 */ { OBJECT_GI_FISH, GID_FISH, func_8002ED80, 200, 1, 0x00B3, 0x007E, GI_FISH, CanBuy_Fish, NULL, BuyEvent_ShieldDiscount },
    /* 08 */ { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 30, 1, 0x00A5, 0x008E, GI_POTION_RED, CanBuy_RedPotion, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 09 */ { OBJECT_GI_LIQUID, GID_POTION_GREEN, func_8002EBCC, 30, 1, 0x00A6, 0x008F, GI_POTION_GREEN, CanBuy_GreenPotion, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 10 */ { OBJECT_GI_LIQUID, GID_POTION_BLUE, func_8002EBCC, 60, 1, 0x00A7, 0x0090, GI_POTION_BLUE, CanBuy_BluePotion, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 11 */ { OBJECT_GI_LONGSWORD, GID_SWORD_BGS, func_8002EBCC, 1000, 1, 0x00A8, 0x0091, GI_SWORD_KNIFE, CanBuy_Longsword, ItemGive_Longsword, BuyEvent_ShieldDiscount },
    /* 12 */ { OBJECT_GI_SHIELD_2, GID_SHIELD_HYLIAN, func_8002EBCC, 80, 1, 0x00A9, 0x0092, GI_SHIELD_HYLIAN, CanBuy_HylianShield, ItemGive_HylianShield, BuyEvent_ShieldDiscount },
    /* 13 */ { OBJECT_GI_SHIELD_1, GID_SHIELD_DEKU, func_8002EBCC, 40, 1, 0x009F, 0x0089, GI_SHIELD_DEKU, CanBuy_DekuShield, ItemGive_DekuShield, BuyEvent_ShieldDiscount },
    /* 14 */ { OBJECT_GI_CLOTHES, GID_TUNIC_GORON, NULL, 200, 1, 0x00AA, 0x0093, GI_TUNIC_GORON, CanBuy_GoronTunic, ItemGive_GoronTunic, BuyEvent_GoronTunic },
    /* 15 */ { OBJECT_GI_CLOTHES, GID_TUNIC_ZORA, NULL, 300, 1, 0x00AB, 0x0094, GI_TUNIC_ZORA, CanBuy_ZoraTunic, ItemGive_ZoraTunic, BuyEvent_ZoraTunic },
    /* 16 */ { OBJECT_GI_HEART, GID_HEART, NULL, 10, 16, 0x00AC, 0x0095, GI_HEART, CanBuy_Health, ItemGive_Health, BuyEvent_ShieldDiscount },
    /* 17 */ { OBJECT_GI_MILK, GID_MILK, func_80A3C498, 100, 1, 0x00AD, 0x0097, GI_MILK_BOTTLE, CanBuy_MilkBottle, ItemGive_MilkBottle, BuyEvent_ShieldDiscount },
    /* 18 */ { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 100, 1, 0x00AE, 0x0099, GI_WEIRD_EGG, CanBuy_WeirdEgg, ItemGive_WeirdEgg, BuyEvent_ShieldDiscount },
    /* 19 */ { OBJECT_GI_MILK, GID_MILK, func_80A3C498, 10000, 1, 0x00B4, 0x0085, GI_NONE, CanBuy_Unk19, ItemGive_Unk19, BuyEvent_ShieldDiscount },
    /* 20 */ { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 10000, 1, 0x00B5, 0x0085, GI_NONE, CanBuy_Unk20, ItemGive_Unk20, BuyEvent_ShieldDiscount },
    /* 21 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 22 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 23 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 24 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 25 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 26 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 27 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 28 */ { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, CanBuy_Bombchus, NULL, BuyEvent_ObtainBombchuPack },
    /* 29 */ { OBJECT_GI_SEED, GID_SEEDS, func_8002EBCC, 30, 30, 0x00DF, 0x00DE, GI_SEEDS_30, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 30 */ { OBJECT_GI_KI_TAN_MASK, GID_MASK_KEATON, func_8002EBCC, 0, 1, 0x70B2, 0x70BE, GI_MASK_KEATON, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 31 */ { OBJECT_GI_REDEAD_MASK, GID_MASK_SPOOKY, func_8002EBCC, 0, 1, 0x70B1, 0x70BD, GI_MASK_SPOOKY, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 32 */ { OBJECT_GI_SKJ_MASK, GID_MASK_SKULL, func_8002EBCC, 0, 1, 0x70B0, 0x70BC, GI_MASK_SKULL, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 33 */ { OBJECT_GI_RABIT_MASK, GID_MASK_BUNNY, func_8002EBCC, 0, 1, 0x70B3, 0x70BF, GI_MASK_BUNNY, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 34 */ { OBJECT_GI_TRUTH_MASK, GID_MASK_TRUTH, func_80A3C498, 0, 1, 0x70AF, 0x70C3, GI_MASK_TRUTH, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 35 */ { OBJECT_GI_ZORAMASK, GID_MASK_ZORA, NULL, 0, 1, 0x70B9, 0x70C1, GI_MASK_ZORA, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 36 */ { OBJECT_GI_GOLONMASK, GID_MASK_GORON, NULL, 0, 1, 0x70B8, 0x70C0, GI_MASK_GORON, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 37 */ { OBJECT_GI_GERUDOMASK, GID_MASK_GERUDO, NULL, 0, 1, 0x70BA, 0x70C2, GI_MASK_GERUDO, CanBuy_DekuSeeds, ItemGive_DekuSeeds, BuyEvent_ShieldDiscount },
    /* 38 */ { OBJECT_GI_SOLDOUT, GID_SOLDOUT, func_8002EBCC, 0, 0, 0x00BD, 0x70C2, GI_MASK_GERUDO, CanBuy_SoldOut, NULL, NULL },
    /* 39 */ { OBJECT_GI_FIRE, GID_BLUE_FIRE, func_8002EBCC, 300, 1, 0x00B9, 0x00B8, GI_BLUE_FIRE, CanBuy_BlueFire, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 40 */ { OBJECT_GI_INSECT, GID_BUG, func_80A3C498, 50, 1, 0x00BB, 0x00BA, GI_BUGS, CanBuy_Bugs, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 41 */ { OBJECT_GI_GHOST, GID_BIG_POE, func_80A3C498, 50, 1, 0x506F, 0x5070, GI_BIG_POE, CanBuy_Poe, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 42 */ { OBJECT_GI_GHOST, GID_POE, func_80A3C498, 30, 1, 0x506D, 0x506E, GI_POE, CanBuy_Poe, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 43 */ { OBJECT_GI_SOUL, GID_FAIRY, func_80A3C498, 50, 1, 0x00B7, 0x00B6, GI_FAIRY, CanBuy_Fairy, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 44 */ { OBJECT_GI_ARROW, GID_ARROWS_SMALL, func_8002EBCC, 20, 10, 0x00A0, 0x008A, GI_ARROWS_SMALL, CanBuy_Arrows, ItemGive_Arrows, BuyEvent_ShieldDiscount },
    /* 45 */ { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 80, 20, 0x001C, 0x0006, GI_BOMBS_20, CanBuy_Bombs, ItemGive_Bombs, BuyEvent_ShieldDiscount },
    /* 46 */ { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 120, 30, 0x001D, 0x001E, GI_BOMBS_30, CanBuy_Bombs, ItemGive_Bombs, BuyEvent_ShieldDiscount },
    /* 47 */ { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 35, 5, 0x00CB, 0x00CA, GI_BOMBS_5, CanBuy_Bombs, ItemGive_Bombs, BuyEvent_ShieldDiscount },
    /* 48 */ { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 40, 1, 0x0064, 0x0062, GI_POTION_RED, CanBuy_RedPotion, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
    /* 49 */ { OBJECT_GI_LIQUID, GID_POTION_RED, func_8002EBCC, 50, 1, 0x0065, 0x0063, GI_POTION_RED, CanBuy_RedPotion, ItemGive_BottledItem, BuyEvent_ShieldDiscount },
};

static s16 randomDiscount[] = { 5, 10, 15, 20, 25, 30, 35, 40 };

void func_80A3A750(EnGirlA* this, EnGirlAActionFunc func) {
    this->actionFunc = func;
}

s32 EnGirlA_TryChangeShopItem(EnGirlA* this) {
    switch (this->actor.params) {
        case SI_MILK_BOTTLE:
            if (gSaveContext.itemGetInf[0] & 0x4) {
                this->actor.params = SI_HEART;
                return true;
            }
            break;
        case SI_BOMBCHU_10_2:
            if (gSaveContext.itemGetInf[0] & 0x40) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_3:
            if (gSaveContext.itemGetInf[0] & 0x80) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_3:
            if (gSaveContext.itemGetInf[0] & 0x100) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_4:
            if (gSaveContext.itemGetInf[0] & 0x200) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_4:
            if (gSaveContext.itemGetInf[0] & 0x400) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_1:
            if (gSaveContext.itemGetInf[0] & 0x8) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_1:
            if (gSaveContext.itemGetInf[0] & 0x10) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_2:
            if (gSaveContext.itemGetInf[0] & 0x20) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
    }
    return false;
}

void EnGirlA_InitItem(EnGirlA* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;

    osSyncPrintf("%s(%2d)初期設定\n", sShopItemDescriptions[params], params);

    if ((params >= SI_MAX) && (params < 0)) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_girlA.c", 1421);
        return;
    }

    this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, shopItemEntries[params].objID);

    if (this->objBankIndex < 0) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("バンクが無いよ！！(%s)\n", sShopItemDescriptions[params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_girlA.c", 1434);
        return;
    }

    this->actor.params = params;
    this->actionFunc2 = EnGirlA_InitializeItemAction;
}

void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    EnGirlA_TryChangeShopItem(this);
    EnGirlA_InitItem(this, globalCtx);
    osSyncPrintf("%s(%2d)初期設定\n", sShopItemDescriptions[this->actor.params], this->actor.params);
}

void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    if (this->unk_19C != 0) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }
}

s32 CanBuy_Arrows(GlobalContext* globalCtx, EnGirlA* this) {
    if (Item_CheckObtainability(ITEM_BOW) == ITEM_NONE) {
        return CANBUY_RESULT_CANT_GET_NOW_5;
    }
    if (AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Bombs(GlobalContext* globalCtx, EnGirlA* this) {
    if (!CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (AMMO(ITEM_BOMB) >= CUR_CAPACITY(UPG_BOMB_BAG)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_DekuNuts(GlobalContext* globalCtx, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_NUTS) != 0) && (AMMO(ITEM_NUT) >= CUR_CAPACITY(UPG_NUTS))) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_NUT) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_DekuSticks(GlobalContext* globalCtx, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_STICKS) != 0) && (AMMO(ITEM_STICK) >= CUR_CAPACITY(UPG_STICKS))) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_STICK) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Fish(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_FISH) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_RedPotion(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_POTION_RED) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_GreenPotion(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_POTION_GREEN) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_BluePotion(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_POTION_BLUE) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Longsword(GlobalContext* globalCtx, EnGirlA* this) {
    if ((gBitFlags[2] & gSaveContext.inventory.equipment) && !(gBitFlags[3] & gSaveContext.inventory.equipment)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SWORD_BGS) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_HylianShield(GlobalContext* globalCtx, EnGirlA* this) {
    if (gBitFlags[5] & gSaveContext.inventory.equipment) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_HYLIAN) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_DekuShield(GlobalContext* globalCtx, EnGirlA* this) {
    if (gBitFlags[4] & gSaveContext.inventory.equipment) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_DEKU) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_GoronTunic(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gBitFlags[9] & gSaveContext.inventory.equipment) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_GORON) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gBitFlags[10] & gSaveContext.inventory.equipment) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_ZORA) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Health(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.healthCapacity == gSaveContext.health) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_MilkBottle(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_MILK_BOTTLE) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_WeirdEgg(GlobalContext* globalCtx, EnGirlA* this) {
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_LETTER_ZELDA) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Unk19(GlobalContext* globalCtx, EnGirlA* this) {
    return CANBUY_RESULT_NEED_RUPEES;
}

s32 CanBuy_Unk20(GlobalContext* globalCtx, EnGirlA* this) {
    return CANBUY_RESULT_NEED_RUPEES;
}

s32 CanBuy_Bombchus(GlobalContext* globalCtx, EnGirlA* this) {
    if (AMMO(ITEM_BOMBCHU) >= 50) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOMBCHU) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_DekuSeeds(GlobalContext* globalCtx, EnGirlA* this) {
    if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SEEDS) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_SoldOut(GlobalContext* globalCtx, EnGirlA* this) {
    return CANBUY_RESULT_CANT_GET_NOW_5;
}

s32 CanBuy_BlueFire(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BLUE_FIRE) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return 1;
}

s32 CanBuy_Bugs(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BUG) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Poe(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_POE) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

s32 CanBuy_Fairy(GlobalContext* globalCtx, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_FAIRY) == ITEM_NONE) {
        return CANBUY_RESULT_0;
    }
    return CANBUY_RESULT_1;
}

void ItemGive_Arrows(GlobalContext* globalCtx, EnGirlA* this) {
    Inventory_ChangeAmmo(ITEM_BOW, this->itemCount);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_Bombs(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->itemCount) {
        case 5:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_BOMBS_10);
            break;
        case 20:
            Item_Give(globalCtx, ITEM_BOMBS_20);
            break;
        case 30:
            Item_Give(globalCtx, ITEM_BOMBS_30);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_DekuNuts(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->itemCount) {
        case 5:
            Item_Give(globalCtx, ITEM_NUTS_5);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_NUTS_10);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_DekuSticks(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_STICK);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_Longsword(GlobalContext* globalCtx, EnGirlA* this) {
    func_800849EC(globalCtx);
    gSaveContext.swordHealth = 8;
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_HylianShield(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SHIELD_HYLIAN);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_DekuShield(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SHIELD_DEKU);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_GoronTunic(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_TUNIC_GORON);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_TUNIC_ZORA);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_Health(GlobalContext* globalCtx, EnGirlA* this) {
    Health_ChangeBy(globalCtx, this->itemCount);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_MilkBottle(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_MILK_BOTTLE);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_WeirdEgg(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_WEIRD_EGG);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_Unk19(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_Unk20(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_DekuSeeds(GlobalContext* globalCtx, EnGirlA* this) {
    Item_Give(globalCtx, ITEM_SEEDS_30);
    Rupees_ChangeBy(-this->basePrice);
}

void ItemGive_BottledItem(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->actor.params) {
        case 7:
            Item_Give(globalCtx, ITEM_FISH);
            break;
        case 8:
            Item_Give(globalCtx, ITEM_POTION_RED);
            break;
        case 9:
            Item_Give(globalCtx, ITEM_POTION_GREEN);
            break;
        case 10:
            Item_Give(globalCtx, ITEM_POTION_BLUE);
            break;
        case 39:
            Item_Give(globalCtx, ITEM_BLUE_FIRE);
            break;
        case 40:
            Item_Give(globalCtx, ITEM_BUG);
            break;
        case 41:
            Item_Give(globalCtx, ITEM_BIG_POE);
            break;
        case 42:
            Item_Give(globalCtx, ITEM_POE);
            break;
        case 43:
            Item_Give(globalCtx, ITEM_FAIRY);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void BuyEvent_ShieldDiscount(GlobalContext* globalCtx, EnGirlA* this) {
    if (this->actor.params == 12) {
        if (gSaveContext.infTable[7] & 0x40) {
            Rupees_ChangeBy(-(this->basePrice - randomDiscount[(s32)Rand_ZeroFloat(7.9f)]));
            return;
        }
    }
    Rupees_ChangeBy(-this->basePrice);
}

void BuyEvent_GoronTunic(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void BuyEvent_ZoraTunic(GlobalContext* globalCtx, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void BuyEvent_ObtainBombchuPack(GlobalContext* globalCtx, EnGirlA* this) {
    switch (this->actor.params) {
        case 24:
            gSaveContext.itemGetInf[0] |= 0x40;
            break;
        case 25:
            gSaveContext.itemGetInf[0] |= 0x80;
            break;
        case 26:
            gSaveContext.itemGetInf[0] |= 0x100;
            break;
        case 27:
            gSaveContext.itemGetInf[0] |= 0x200;
            break;
        case 28:
            gSaveContext.itemGetInf[0] |= 0x400;
            break;
        case 21:
            gSaveContext.itemGetInf[0] |= 0x8;
            break;
        case 22:
            gSaveContext.itemGetInf[0] |= 0x10;
            break;
        case 23:
            gSaveContext.itemGetInf[0] |= 0x20;
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void func_80A3BD80(EnGirlA* this, GlobalContext* globalCtx) {
}

void func_80A3BD8C(GlobalContext* globalCtx, EnGirlA* this) {
    ShopItemEntry* tmp = &shopItemEntries[this->actor.params];
    s32 params = this->actor.params;
    s32 maskId;
    s32 isMaskFreeToBorrow;

    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_MASK_OF_TRUTH)) {
        maskId = this->actor.params - SI_KEATON_MASK;
        isMaskFreeToBorrow = false;
        switch (this->actor.params) {
            case SI_KEATON_MASK:
                if (gSaveContext.itemGetInf[3] & 0x100) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_SPOOKY_MASK:
                if (gSaveContext.itemGetInf[3] & 0x400) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_SKULL_MASK:
                if (gSaveContext.itemGetInf[3] & 0x200) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_BUNNY_HOOD:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_MASK_OF_TRUTH:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    isMaskFreeToBorrow = true;
                }
                break;
        }
        if (isMaskFreeToBorrow) {
            this->actor.textId = maskShopFreeToBorrowTextIds[maskId];
        } else {
            this->actor.textId = tmp->itemDescTextId;
        }
    } else {
        this->actor.textId = tmp->itemDescTextId;
    }
    this->isInvisible = false;
    this->actor.draw = EnGirlA_Draw;
}

void func_80A3BEAC(GlobalContext* globalCtx, EnGirlA* this) {
    this->isInvisible = true;
    this->actor.draw = NULL;
    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_GERUDO_MASK)) {
        this->actor.textId = 0xBD;
    }
}

void func_80A3BEE0(GlobalContext* globalCtx, EnGirlA* this) {
    ShopItemEntry* itemEntry;

    if (EnGirlA_TryChangeShopItem(this)) {
        EnGirlA_InitItem(this, globalCtx);
        itemEntry = &shopItemEntries[this->actor.params];
        this->actor.textId = itemEntry->itemDescTextId;
    } else {
        this->isInvisible = false;
        this->actor.draw = EnGirlA_Draw;
    }
}

s32 func_80A3BF54(EnGirlA* this, GlobalContext* globalCtx) {
    s32 params;

    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_GERUDO_MASK)) {
        params = this->actor.params - SI_KEATON_MASK;
        if (INV_CONTENT(ITEM_TRADE_CHILD) == maskShopItems[params]) {
            func_80A3BEAC(globalCtx, this);
        } else {
            func_80A3BD8C(globalCtx, this);
        }
        return 1;
    }
    return 0;
}

void EnGirlA_InitializeItemAction(EnGirlA* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;
    ShopItemEntry* itemEntry = &shopItemEntries[params];

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        this->actor.flags &= ~0x10;
        this->actor.objBankIndex = this->objBankIndex;
        switch (this->actor.params) {
            case SI_KEATON_MASK:
                if (gSaveContext.itemGetInf[3] & 0x100) {
                    this->actor.textId = 0x70B6;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_SPOOKY_MASK:
                if (gSaveContext.itemGetInf[3] & 0x400) {
                    this->actor.textId = 0x70B5;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_SKULL_MASK:
                if (gSaveContext.itemGetInf[3] & 0x200) {
                    this->actor.textId = 0x70B4;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_BUNNY_HOOD:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    this->actor.textId = 0x70B7;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_MASK_OF_TRUTH:
                if (gSaveContext.itemGetInf[3] & 0x800) {
                    this->actor.textId = 0x70BB;
                    this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                    this->itemBuyPromptTextId = 0xEB;
                }
                break;
            case SI_ZORA_MASK:
                this->actor.textId = itemEntry->itemDescTextId;
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_GORON_MASK:
                this->actor.textId = itemEntry->itemDescTextId;
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_GERUDO_MASK:
                this->actor.textId = itemEntry->itemDescTextId;
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            default:
                this->actor.textId = itemEntry->itemDescTextId;
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
        }
        if (func_80A3BF54(this, globalCtx) == 0) {
            func_80A3BD8C(globalCtx, this);
        }

        this->unk_1AC = func_80A3BEAC;
        this->unk_1B0 = func_80A3BEE0;
        this->getItemId = itemEntry->getItemId;
        this->canBuyFunc = itemEntry->canBuyFunc;
        this->itemGiveFunc = itemEntry->itemGiveFunc;
        this->buyEventFunc = itemEntry->buyEventFunc;
        this->basePrice = itemEntry->price;
        this->itemCount = itemEntry->count;
        this->hiliteFunc = itemEntry->hiliteFunc;
        this->giDrawId = itemEntry->giDrawId;
        osSyncPrintf("%s(%2d)\n", sShopItemDescriptions[params], params);
        this->actor.flags &= ~1;
        Actor_SetScale(&this->actor, 0.25f);
        this->actor.shape.yOffset = 24.0f;
        this->actor.shape.shadowScale = 4.0f;
        this->actor.floorHeight = this->actor.home.pos.y;
        this->actor.gravity = 0.0f;
        func_80A3A750(this, func_80A3BD80);
        this->unk_19C = 1;
        this->actionFunc2 = func_80A3C3BC;
        this->isSelected = false;
        this->yRotation = 0;
        this->unk_1B6 = this->actor.shape.rot.y;
    }
}

void func_80A3C3BC(EnGirlA* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.25f);
    this->actor.shape.yOffset = 24.0f;
    this->actor.shape.shadowScale = 4.0f;
    func_80A3BF54(this, globalCtx);
    this->actionFunc(this, globalCtx);
    Actor_SetFocus(&this->actor, 5.0f);
    this->actor.shape.rot.x = 0.0f;
    if (this->actor.params != SI_SOLD_OUT) {
        if (this->isSelected) {
            this->yRotation += 0x1F4;
        } else {
            Math_SmoothStepToS(&this->yRotation, 0, 10, 0x7D0, 0);
        }
    }
}

void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    this->actionFunc2(this, globalCtx);
}

void func_80A3C498(Actor* thisx, GlobalContext* globalCtx, s32 flags) {
    func_8002EBCC(thisx, globalCtx, 0);
    func_8002ED80(thisx, globalCtx, 0);
}

void EnGirlA_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGirlA* this = THIS;

    Matrix_RotateY(((this->yRotation * 360.0f) / 65536.0f) * (M_PI / 180.0f), MTXMODE_APPLY);
    if (this->hiliteFunc != NULL) {
        this->hiliteFunc(thisx, globalCtx, 0);
    }
    GetItem_Draw(globalCtx, this->giDrawId);
}
