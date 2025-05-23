/*
 * File: z_en_girla.c
 * Overlay: En_GirlA
 * Description: Shop Items
 */

#include "z_en_girla.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGirlA_Init(Actor* thisx, PlayState* play);
void EnGirlA_Destroy(Actor* thisx, PlayState* play);
void EnGirlA_Update(Actor* thisx, PlayState* play);

void EnGirlA_SetItemOutOfStock(PlayState* play, EnGirlA* this);
void EnGirlA_UpdateStockedItem(PlayState* play, EnGirlA* this);
void EnGirlA_WaitForObject(EnGirlA* this, PlayState* play);
void EnGirlA_Update2(EnGirlA* this, PlayState* play);
void func_80A3C498(Actor* thisx, PlayState* play, s32 flags);
void EnGirlA_Draw(Actor* thisx, PlayState* play);

s32 EnGirlA_CanBuy_Arrows(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Bombs(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_DekuNuts(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_DekuSticks(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Fish(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_RedPotion(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_GreenPotion(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_BluePotion(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Longsword(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_HylianShield(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_DekuShield(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_GoronTunic(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_ZoraTunic(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_RecoveryHeart(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_MilkBottle(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_WeirdEgg(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Unk19(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Unk20(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Bombchus(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_DekuSeeds(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_SoldOut(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_BlueFire(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Bugs(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Poe(PlayState* play, EnGirlA* this);
s32 EnGirlA_CanBuy_Fairy(PlayState* play, EnGirlA* this);

void EnGirlA_ItemGive_DekuNuts(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Arrows(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Bombs(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_DekuSticks(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_BottledItem(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Longsword(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_HylianShield(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_DekuShield(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_GoronTunic(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_ZoraTunic(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Health(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_MilkBottle(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_WeirdEgg(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Unk19(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_Unk20(PlayState* play, EnGirlA* this);
void EnGirlA_ItemGive_DekuSeeds(PlayState* play, EnGirlA* this);
void EnGirlA_BuyEvent_ShieldDiscount(PlayState* play, EnGirlA* this);
void EnGirlA_BuyEvent_ObtainBombchuPack(PlayState* play, EnGirlA* this);
void EnGirlA_BuyEvent_GoronTunic(PlayState* play, EnGirlA* this);
void EnGirlA_BuyEvent_ZoraTunic(PlayState* play, EnGirlA* this);

ActorProfile En_GirlA_Profile = {
    /**/ ACTOR_EN_GIRLA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnGirlA),
    /**/ EnGirlA_Init,
    /**/ EnGirlA_Destroy,
    /**/ EnGirlA_Update,
    /**/ NULL,
};

#if DEBUG_FEATURES
static char* sShopItemDescriptions[] = {
    "デクの実×5   ",  // "Deku nut x5"
    "矢×30        ",  // "Arrow x30"
    "矢×50        ",  // "Arrow x50"
    "爆弾×5       ",  // "bomb"
    "デクの実×10  ",  // "Deku nut x10"
    "デクの棒      ", // "Deku stick"
    "爆弾×10      ",  // "Bomb x10"
    "さかな        ", // "Fish"
    "赤クスリ      ", // "Red medicine"
    "緑クスリ      ", // "Green medicine"
    "青クスリ      ", // "Blue medicine"
    "巨人のナイフ  ", // "Giant knife"
    "ハイリアの盾  ", // "Hyria Shield"
    "デクの盾      ", // "Deku Shield"
    "ゴロンの服    ", // "Goron's clothes"
    "ゾ─ラの服    ",  // "Zora's clothes"
    "回復のハート  ", // "Heart of recovery"
    "ロンロン牛乳  ", // "Ron Ron milk"
    "鶏の卵        ", // "Chicken egg"
    "インゴー牛乳  ", // "Ingo milk"
    "インゴー卵    ", // "Ingo egg"
    "もだえ石      ", // "Modae stone"
    "大人の財布    ", // "Adult wallet"
    "ハートの欠片  ", // "Heart fragment"
    "ボムチュウ    ", // "Bombchu"
    "ボムチュウ    ", // "Bombchu"
    "ボムチュウ    ", // "Bombchu"
    "ボムチュウ    ", // "Bombchu"
    "ボムチュウ    ", // "Bombchu"
    "デクのタネ    ", // "Deku seeds"
    "キータンのお面", // "Ketan's mask"
    "こわそなお面  ", // "Scary face"
    "ドクロのお面  ", // "Skull mask"
    "ウサギずきん  ", // "Rabbit hood"
    "まことの仮面  ", // "True mask"
    "ゾーラのお面  ", // "Zora's mask"
    "ゴロンのお面  ", // "Goron's mask"
    "ゲルドのお面  ", // "Gerd's mask"
    "ＳＯＬＤＯＵＴ",
    "炎            ", // "Flame"
    "虫            ", // "Bugs"
    "チョウチョ    ", // "Butterfly"
    "ポウ          ", // "Poe"
    "妖精の魂      ", // "Fairy soul"
    "矢×10        ",  // "Arrow"
    "爆弾×20      ",  // "Bomb x20"
    "爆弾×30      ",  // "Bomb x30"
    "爆弾×5       ",  // "Bomb x5"
    "赤クスリ      ", // "Red medicine"
    "赤クスリ      "  // "Red medicine"
};
#endif

static s16 sMaskShopItems[8] = {
    ITEM_MASK_KEATON, ITEM_MASK_SPOOKY, ITEM_MASK_SKULL, ITEM_MASK_BUNNY_HOOD,
    ITEM_MASK_TRUTH,  ITEM_MASK_ZORA,   ITEM_MASK_GORON, ITEM_MASK_GERUDO,
};

static u16 sMaskShopFreeToBorrowTextIds[5] = { 0x70B6, 0x70B5, 0x70B4, 0x70B7, 0x70BB };

typedef struct ShopItemEntry {
    /* 0x00 */ s16 objID;
    /* 0x02 */ s16 giDrawId;
    /* 0x04 */ void (*hiliteFunc)(Actor*, PlayState*, s32);
    /* 0x08 */ s16 price;
    /* 0x0A */ s16 count;
    /* 0x0C */ u16 itemDescTextId;
    /* 0x0C */ u16 itemBuyPromptTextId;
    /* 0x10 */ s32 getItemId;
    /* 0x14 */ s32 (*canBuyFunc)(PlayState*, EnGirlA*);
    /* 0x18 */ void (*itemGiveFunc)(PlayState*, EnGirlA*);
    /* 0x1C */ void (*buyEventFunc)(PlayState*, EnGirlA*);
} ShopItemEntry; // size = 0x20

static ShopItemEntry sShopItemEntries[] = {
    // SI_DEKU_NUTS_5
    { OBJECT_GI_NUTS, GID_DEKU_NUTS, func_8002ED80, 15, 5, 0x00B2, 0x007F, GI_DEKU_NUTS_5_2, EnGirlA_CanBuy_DekuNuts,
      EnGirlA_ItemGive_DekuNuts, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_ARROWS_30 */
    { OBJECT_GI_ARROW, GID_ARROWS_10, func_8002EBCC, 60, 30, 0x00C1, 0x009B, GI_ARROWS_10, EnGirlA_CanBuy_Arrows,
      EnGirlA_ItemGive_Arrows, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_ARROWS_50 */
    { OBJECT_GI_ARROW, GID_ARROWS_30, func_8002EBCC, 90, 50, 0x00B0, 0x007D, GI_ARROWS_30, EnGirlA_CanBuy_Arrows,
      EnGirlA_ItemGive_Arrows, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBS_5_R25 */
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 25, 5, 0x00A3, 0x008B, GI_BOMBS_5, EnGirlA_CanBuy_Bombs,
      EnGirlA_ItemGive_Bombs, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_DEKU_NUTS_10 */
    { OBJECT_GI_NUTS, GID_DEKU_NUTS, func_8002ED80, 30, 10, 0x00A2, 0x0087, GI_DEKU_NUTS_10, EnGirlA_CanBuy_DekuNuts,
      EnGirlA_ItemGive_DekuNuts, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_DEKU_STICK */
    { OBJECT_GI_STICK, GID_DEKU_STICK, NULL, 10, 1, 0x00A1, 0x0088, GI_DEKU_STICKS_1, EnGirlA_CanBuy_DekuSticks,
      EnGirlA_ItemGive_DekuSticks, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBS_10 */
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 50, 10, 0x00B1, 0x007C, GI_BOMBS_10, EnGirlA_CanBuy_Bombs,
      EnGirlA_ItemGive_Bombs, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_FISH */
    { OBJECT_GI_FISH, GID_FISH, func_8002ED80, 200, 1, 0x00B3, 0x007E, GI_BOTTLE_FISH, EnGirlA_CanBuy_Fish, NULL,
      EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_RED_POTION_R30 */
    { OBJECT_GI_LIQUID, GID_BOTTLE_POTION_RED, func_8002EBCC, 30, 1, 0x00A5, 0x008E, GI_BOTTLE_POTION_RED,
      EnGirlA_CanBuy_RedPotion, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_GREEN_POTION */
    { OBJECT_GI_LIQUID, GID_BOTTLE_POTION_GREEN, func_8002EBCC, 30, 1, 0x00A6, 0x008F, GI_BOTTLE_POTION_GREEN,
      EnGirlA_CanBuy_GreenPotion, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BLUE_POTION */
    { OBJECT_GI_LIQUID, GID_BOTTLE_POTION_BLUE, func_8002EBCC, 60, 1, 0x00A7, 0x0090, GI_BOTTLE_POTION_BLUE,
      EnGirlA_CanBuy_BluePotion, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_LONGSWORD */
    { OBJECT_GI_LONGSWORD, GID_SWORD_BIGGORON, func_8002EBCC, 1000, 1, 0x00A8, 0x0091, GI_SWORD_KNIFE,
      EnGirlA_CanBuy_Longsword, EnGirlA_ItemGive_Longsword, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_HYLIAN_SHIELD */
    { OBJECT_GI_SHIELD_2, GID_SHIELD_HYLIAN, func_8002EBCC, 80, 1, 0x00A9, 0x0092, GI_SHIELD_HYLIAN,
      EnGirlA_CanBuy_HylianShield, EnGirlA_ItemGive_HylianShield, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_DEKU_SHIELD */
    { OBJECT_GI_SHIELD_1, GID_SHIELD_DEKU, func_8002EBCC, 40, 1, 0x009F, 0x0089, GI_SHIELD_DEKU,
      EnGirlA_CanBuy_DekuShield, EnGirlA_ItemGive_DekuShield, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_GORON_TUNIC */
    { OBJECT_GI_CLOTHES, GID_TUNIC_GORON, NULL, 200, 1, 0x00AA, 0x0093, GI_TUNIC_GORON, EnGirlA_CanBuy_GoronTunic,
      EnGirlA_ItemGive_GoronTunic, EnGirlA_BuyEvent_GoronTunic },
    /* SI_ZORA_TUNIC */
    { OBJECT_GI_CLOTHES, GID_TUNIC_ZORA, NULL, 300, 1, 0x00AB, 0x0094, GI_TUNIC_ZORA, EnGirlA_CanBuy_ZoraTunic,
      EnGirlA_ItemGive_ZoraTunic, EnGirlA_BuyEvent_ZoraTunic },
    /* SI_RECOVERY_HEART */
    { OBJECT_GI_HEART, GID_RECOVERY_HEART, NULL, 10, 16, 0x00AC, 0x0095, GI_RECOVERY_HEART,
      EnGirlA_CanBuy_RecoveryHeart, EnGirlA_ItemGive_Health, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_MILK_BOTTLE */
    { OBJECT_GI_MILK, GID_BOTTLE_MILK_FULL, func_80A3C498, 100, 1, 0x00AD, 0x0097, GI_BOTTLE_MILK_FULL,
      EnGirlA_CanBuy_MilkBottle, EnGirlA_ItemGive_MilkBottle, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_WEIRD_EGG */
    { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 100, 1, 0x00AE, 0x0099, GI_WEIRD_EGG, EnGirlA_CanBuy_WeirdEgg,
      EnGirlA_ItemGive_WeirdEgg, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_19 */
    { OBJECT_GI_MILK, GID_BOTTLE_MILK_FULL, func_80A3C498, 10000, 1, 0x00B4, 0x0085, GI_NONE, EnGirlA_CanBuy_Unk19,
      EnGirlA_ItemGive_Unk19, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_20 */
    { OBJECT_GI_EGG, GID_EGG, func_8002EBCC, 10000, 1, 0x00B5, 0x0085, GI_NONE, EnGirlA_CanBuy_Unk20,
      EnGirlA_ItemGive_Unk20, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBCHU_10_1 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_20_1 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_20_2 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_10_2 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_10_3 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_20_3 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_20_4 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 180, 20, 0x0061, 0x002A, GI_BOMBCHUS_20, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_BOMBCHU_10_4 */
    { OBJECT_GI_BOMB_2, GID_BOMBCHU, func_8002EBCC, 100, 10, 0x00BC, 0x008C, GI_BOMBCHUS_10, EnGirlA_CanBuy_Bombchus,
      NULL, EnGirlA_BuyEvent_ObtainBombchuPack },
    /* SI_DEKU_SEEDS_30 */
    { OBJECT_GI_SEED, GID_DEKU_SEEDS, func_8002EBCC, 30, 30, 0x00DF, 0x00DE, GI_DEKU_SEEDS_30, EnGirlA_CanBuy_DekuSeeds,
      EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_KEATON_MASK */
    { OBJECT_GI_KI_TAN_MASK, GID_MASK_KEATON, func_8002EBCC, 0, 1, 0x70B2, 0x70BE, GI_MASK_KEATON,
      EnGirlA_CanBuy_DekuSeeds, EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_SPOOKY_MASK */
    { OBJECT_GI_REDEAD_MASK, GID_MASK_SPOOKY, func_8002EBCC, 0, 1, 0x70B1, 0x70BD, GI_MASK_SPOOKY,
      EnGirlA_CanBuy_DekuSeeds, EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_SKULL_MASK */
    { OBJECT_GI_SKJ_MASK, GID_MASK_SKULL, func_8002EBCC, 0, 1, 0x70B0, 0x70BC, GI_MASK_SKULL, EnGirlA_CanBuy_DekuSeeds,
      EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BUNNY_HOOD */
    { OBJECT_GI_RABIT_MASK, GID_MASK_BUNNY_HOOD, func_8002EBCC, 0, 1, 0x70B3, 0x70BF, GI_MASK_BUNNY_HOOD,
      EnGirlA_CanBuy_DekuSeeds, EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_MASK_OF_TRUTH */
    { OBJECT_GI_TRUTH_MASK, GID_MASK_TRUTH, func_80A3C498, 0, 1, 0x70AF, 0x70C3, GI_MASK_TRUTH,
      EnGirlA_CanBuy_DekuSeeds, EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_ZORA_MASK */
    { OBJECT_GI_ZORAMASK, GID_MASK_ZORA, NULL, 0, 1, 0x70B9, 0x70C1, GI_MASK_ZORA, EnGirlA_CanBuy_DekuSeeds,
      EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_GORON_MASK */
    { OBJECT_GI_GOLONMASK, GID_MASK_GORON, NULL, 0, 1, 0x70B8, 0x70C0, GI_MASK_GORON, EnGirlA_CanBuy_DekuSeeds,
      EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_GERUDO_MASK */
    { OBJECT_GI_GERUDOMASK, GID_MASK_GERUDO, NULL, 0, 1, 0x70BA, 0x70C2, GI_MASK_GERUDO, EnGirlA_CanBuy_DekuSeeds,
      EnGirlA_ItemGive_DekuSeeds, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_SOLD_OUT */
    { OBJECT_GI_SOLDOUT, GID_SOLDOUT, func_8002EBCC, 0, 0, 0x00BD, 0x70C2, GI_MASK_GERUDO, EnGirlA_CanBuy_SoldOut, NULL,
      NULL },
    /* SI_BLUE_FIRE */
    { OBJECT_GI_FIRE, GID_BLUE_FIRE, func_8002EBCC, 300, 1, 0x00B9, 0x00B8, GI_BOTTLE_BLUE_FIRE,
      EnGirlA_CanBuy_BlueFire, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BUGS */
    { OBJECT_GI_INSECT, GID_BUG, func_80A3C498, 50, 1, 0x00BB, 0x00BA, GI_BOTTLE_BUGS, EnGirlA_CanBuy_Bugs,
      EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BIG_POE */
    { OBJECT_GI_GHOST, GID_BIG_POE, func_80A3C498, 50, 1, 0x506F, 0x5070, GI_BOTTLE_BIG_POE, EnGirlA_CanBuy_Poe,
      EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_POE */
    { OBJECT_GI_GHOST, GID_POE, func_80A3C498, 30, 1, 0x506D, 0x506E, GI_BOTTLE_POE, EnGirlA_CanBuy_Poe,
      EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_FAIRY */
    { OBJECT_GI_SOUL, GID_FAIRY, func_80A3C498, 50, 1, 0x00B7, 0x00B6, GI_BOTTLE_FAIRY, EnGirlA_CanBuy_Fairy,
      EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_ARROWS_10 */
    { OBJECT_GI_ARROW, GID_ARROWS_5, func_8002EBCC, 20, 10, 0x00A0, 0x008A, GI_ARROWS_5, EnGirlA_CanBuy_Arrows,
      EnGirlA_ItemGive_Arrows, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBS_20 */
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 80, 20, 0x001C, 0x0006, GI_BOMBS_20, EnGirlA_CanBuy_Bombs,
      EnGirlA_ItemGive_Bombs, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBS_30 */
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 120, 30, 0x001D, 0x001E, GI_BOMBS_30, EnGirlA_CanBuy_Bombs,
      EnGirlA_ItemGive_Bombs, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_BOMBS_5_R35 */
    { OBJECT_GI_BOMB_1, GID_BOMB, func_8002EBCC, 35, 5, 0x00CB, 0x00CA, GI_BOMBS_5, EnGirlA_CanBuy_Bombs,
      EnGirlA_ItemGive_Bombs, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_RED_POTION_R40 */
    { OBJECT_GI_LIQUID, GID_BOTTLE_POTION_RED, func_8002EBCC, 40, 1, 0x0064, 0x0062, GI_BOTTLE_POTION_RED,
      EnGirlA_CanBuy_RedPotion, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount },
    /* SI_RED_POTION_R50 */
    { OBJECT_GI_LIQUID, GID_BOTTLE_POTION_RED, func_8002EBCC, 50, 1, 0x0065, 0x0063, GI_BOTTLE_POTION_RED,
      EnGirlA_CanBuy_RedPotion, EnGirlA_ItemGive_BottledItem, EnGirlA_BuyEvent_ShieldDiscount }
};

// Defines the Hylian Shield discount amount
static s16 sShieldDiscounts[] = { 5, 10, 15, 20, 25, 30, 35, 40 };

void EnGirlA_SetupAction(EnGirlA* this, EnGirlAActionFunc func) {
    this->actionFunc = func;
}

s32 EnGirlA_TryChangeShopItem(EnGirlA* this) {
    switch (this->actor.params) {
        case SI_MILK_BOTTLE:
            if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
                this->actor.params = SI_RECOVERY_HEART;
                return true;
            }
            break;
        case SI_BOMBCHU_10_2:
            if (GET_ITEMGETINF(ITEMGETINF_06)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_3:
            if (GET_ITEMGETINF(ITEMGETINF_07)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_3:
            if (GET_ITEMGETINF(ITEMGETINF_08)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_4:
            if (GET_ITEMGETINF(ITEMGETINF_09)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_4:
            if (GET_ITEMGETINF(ITEMGETINF_0A)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_10_1:
            if (GET_ITEMGETINF(ITEMGETINF_03)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_1:
            if (GET_ITEMGETINF(ITEMGETINF_04)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
        case SI_BOMBCHU_20_2:
            if (GET_ITEMGETINF(ITEMGETINF_05)) {
                this->actor.params = SI_SOLD_OUT;
                return true;
            }
            break;
    }
    return false;
}

void EnGirlA_InitItem(EnGirlA* this, PlayState* play) {
    s16 params = this->actor.params;

    PRINTF("%s(%2d)初期設定\n", sShopItemDescriptions[params], params);

    if ((params >= SI_MAX) && (params < 0)) {
        Actor_Kill(&this->actor);
        PRINTF_COLOR_ERROR();
        PRINTF("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        PRINTF_RST();
        ASSERT(0, "0", "../z_en_girlA.c", 1421);
        return;
    }

    this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, sShopItemEntries[params].objID);

    if (this->requiredObjectSlot < 0) {
        Actor_Kill(&this->actor);
        PRINTF_COLOR_ERROR();
        PRINTF("バンクが無いよ！！(%s)\n", sShopItemDescriptions[params]);
        PRINTF_RST();
        ASSERT(0, "0", "../z_en_girlA.c", 1434);
        return;
    }

    this->actor.params = params;
    this->actionFunc2 = EnGirlA_WaitForObject;
}

void EnGirlA_Init(Actor* thisx, PlayState* play) {
    EnGirlA* this = (EnGirlA*)thisx;

    EnGirlA_TryChangeShopItem(this);
    EnGirlA_InitItem(this, play);
    PRINTF("%s(%2d)初期設定\n", sShopItemDescriptions[this->actor.params], this->actor.params);
}

void EnGirlA_Destroy(Actor* thisx, PlayState* play) {
    EnGirlA* this = (EnGirlA*)thisx;

    if (this->isInitialized) {
        SkelAnime_Free(&this->skelAnime, play);
    }
}

s32 EnGirlA_CanBuy_Arrows(PlayState* play, EnGirlA* this) {
    if (Item_CheckObtainability(ITEM_BOW) == ITEM_NONE) {
        return CANBUY_RESULT_CANT_GET_NOW_5;
    }
    if (AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Bombs(PlayState* play, EnGirlA* this) {
    if (!CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (AMMO(ITEM_BOMB) >= CUR_CAPACITY(UPG_BOMB_BAG)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_DekuNuts(PlayState* play, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_DEKU_NUTS) != 0) && (AMMO(ITEM_DEKU_NUT) >= CUR_CAPACITY(UPG_DEKU_NUTS))) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_DEKU_NUT) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_DekuSticks(PlayState* play, EnGirlA* this) {
    if ((CUR_CAPACITY(UPG_DEKU_STICKS) != 0) && (AMMO(ITEM_DEKU_STICK) >= CUR_CAPACITY(UPG_DEKU_STICKS))) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_DEKU_STICK) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Fish(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_FISH) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_RedPotion(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_POTION_RED) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_GreenPotion(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_POTION_GREEN) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_BluePotion(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_POTION_BLUE) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Longsword(PlayState* play, EnGirlA* this) {
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BIGGORON) &&
        !CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SWORD_BIGGORON) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_HylianShield(PlayState* play, EnGirlA* this) {
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SHIELD, EQUIP_INV_SHIELD_HYLIAN)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_HYLIAN) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_DekuShield(PlayState* play, EnGirlA* this) {
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SHIELD, EQUIP_INV_SHIELD_DEKU)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_SHIELD_DEKU) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_GoronTunic(PlayState* play, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_GORON)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_GORON) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_ZoraTunic(PlayState* play, EnGirlA* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_ZORA)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_TUNIC_ZORA) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_RecoveryHeart(PlayState* play, EnGirlA* this) {
    if (gSaveContext.save.info.playerData.healthCapacity == gSaveContext.save.info.playerData.health) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_MilkBottle(PlayState* play, EnGirlA* this) {
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_MILK_FULL) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_WeirdEgg(PlayState* play, EnGirlA* this) {
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_ZELDAS_LETTER) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Unk19(PlayState* play, EnGirlA* this) {
    return CANBUY_RESULT_NEED_RUPEES;
}

s32 EnGirlA_CanBuy_Unk20(PlayState* play, EnGirlA* this) {
    return CANBUY_RESULT_NEED_RUPEES;
}

s32 EnGirlA_CanBuy_Bombchus(PlayState* play, EnGirlA* this) {
    if (AMMO(ITEM_BOMBCHU) >= 50) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOMBCHU) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_DekuSeeds(PlayState* play, EnGirlA* this) {
    if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
        return CANBUY_RESULT_CANT_GET_NOW;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_DEKU_SEEDS) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_SoldOut(PlayState* play, EnGirlA* this) {
    return CANBUY_RESULT_CANT_GET_NOW_5;
}

s32 EnGirlA_CanBuy_BlueFire(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_BLUE_FIRE) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Bugs(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_BUG) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Poe(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_POE) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

s32 EnGirlA_CanBuy_Fairy(PlayState* play, EnGirlA* this) {
    if (!Inventory_HasEmptyBottle()) {
        return CANBUY_RESULT_NEED_BOTTLE;
    }
    if (gSaveContext.save.info.playerData.rupees < this->basePrice) {
        return CANBUY_RESULT_NEED_RUPEES;
    }
    if (Item_CheckObtainability(ITEM_BOTTLE_FAIRY) == ITEM_NONE) {
        return CANBUY_RESULT_SUCCESS_FANFARE;
    }
    return CANBUY_RESULT_SUCCESS;
}

void EnGirlA_ItemGive_Arrows(PlayState* play, EnGirlA* this) {
    Inventory_ChangeAmmo(ITEM_BOW, this->itemCount);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_Bombs(PlayState* play, EnGirlA* this) {
    switch (this->itemCount) {
        case 5:
            Item_Give(play, ITEM_BOMBS_5);
            break;
        case 10:
            Item_Give(play, ITEM_BOMBS_10);
            break;
        case 20:
            Item_Give(play, ITEM_BOMBS_20);
            break;
        case 30:
            Item_Give(play, ITEM_BOMBS_30);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_DekuNuts(PlayState* play, EnGirlA* this) {
    switch (this->itemCount) {
        case 5:
            Item_Give(play, ITEM_DEKU_NUTS_5);
            break;
        case 10:
            Item_Give(play, ITEM_DEKU_NUTS_10);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_DekuSticks(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_DEKU_STICK);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_Longsword(PlayState* play, EnGirlA* this) {
    func_800849EC(play);
    gSaveContext.save.info.playerData.swordHealth = 8;
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_HylianShield(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_SHIELD_HYLIAN);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_DekuShield(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_SHIELD_DEKU);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_GoronTunic(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_TUNIC_GORON);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_ZoraTunic(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_TUNIC_ZORA);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_Health(PlayState* play, EnGirlA* this) {
    Health_ChangeBy(play, this->itemCount);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_MilkBottle(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_BOTTLE_MILK_FULL);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_WeirdEgg(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_WEIRD_EGG);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_Unk19(PlayState* play, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_Unk20(PlayState* play, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_DekuSeeds(PlayState* play, EnGirlA* this) {
    Item_Give(play, ITEM_DEKU_SEEDS_30);
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_ItemGive_BottledItem(PlayState* play, EnGirlA* this) {
    switch (this->actor.params) {
        case SI_FISH:
            Item_Give(play, ITEM_BOTTLE_FISH);
            break;
        case SI_RED_POTION_R30:
            Item_Give(play, ITEM_BOTTLE_POTION_RED);
            break;
        case SI_GREEN_POTION:
            Item_Give(play, ITEM_BOTTLE_POTION_GREEN);
            break;
        case SI_BLUE_POTION:
            Item_Give(play, ITEM_BOTTLE_POTION_BLUE);
            break;
        case SI_BLUE_FIRE:
            Item_Give(play, ITEM_BOTTLE_BLUE_FIRE);
            break;
        case SI_BUGS:
            Item_Give(play, ITEM_BOTTLE_BUG);
            break;
        case SI_BIG_POE:
            Item_Give(play, ITEM_BOTTLE_BIG_POE);
            break;
        case SI_POE:
            Item_Give(play, ITEM_BOTTLE_POE);
            break;
        case SI_FAIRY:
            Item_Give(play, ITEM_BOTTLE_FAIRY);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_BuyEvent_ShieldDiscount(PlayState* play, EnGirlA* this) {
    if (this->actor.params == SI_HYLIAN_SHIELD) {
        if (GET_INFTABLE(INFTABLE_76)) {
            Rupees_ChangeBy(-(this->basePrice - sShieldDiscounts[(s32)Rand_ZeroFloat(7.9f)]));
            return;
        }
    }
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_BuyEvent_GoronTunic(PlayState* play, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_BuyEvent_ZoraTunic(PlayState* play, EnGirlA* this) {
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_BuyEvent_ObtainBombchuPack(PlayState* play, EnGirlA* this) {
    switch (this->actor.params) {
        case SI_BOMBCHU_10_2:
            SET_ITEMGETINF(ITEMGETINF_06);
            break;
        case SI_BOMBCHU_10_3:
            SET_ITEMGETINF(ITEMGETINF_07);
            break;
        case SI_BOMBCHU_20_3:
            SET_ITEMGETINF(ITEMGETINF_08);
            break;
        case SI_BOMBCHU_20_4:
            SET_ITEMGETINF(ITEMGETINF_09);
            break;
        case SI_BOMBCHU_10_4:
            SET_ITEMGETINF(ITEMGETINF_0A);
            break;
        case SI_BOMBCHU_10_1:
            SET_ITEMGETINF(ITEMGETINF_03);
            break;
        case SI_BOMBCHU_20_1:
            SET_ITEMGETINF(ITEMGETINF_04);
            break;
        case SI_BOMBCHU_20_2:
            SET_ITEMGETINF(ITEMGETINF_05);
            break;
    }
    Rupees_ChangeBy(-this->basePrice);
}

void EnGirlA_Noop(EnGirlA* this, PlayState* play) {
}

void EnGirlA_SetItemDescription(PlayState* play, EnGirlA* this) {
    ShopItemEntry* tmp = &sShopItemEntries[this->actor.params];
    s32 params = this->actor.params;

    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_MASK_OF_TRUTH)) {
        s32 maskId = this->actor.params - SI_KEATON_MASK;
        s32 isMaskFreeToBorrow = false;

        switch (this->actor.params) {
            case SI_KEATON_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_38)) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_SPOOKY_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_3A)) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_SKULL_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_39)) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_BUNNY_HOOD:
                if (GET_ITEMGETINF(ITEMGETINF_3B)) {
                    isMaskFreeToBorrow = true;
                }
                break;
            case SI_MASK_OF_TRUTH:
                if (GET_ITEMGETINF(ITEMGETINF_3B)) {
                    isMaskFreeToBorrow = true;
                }
                break;
        }
        if (isMaskFreeToBorrow) {
            this->actor.textId = sMaskShopFreeToBorrowTextIds[maskId];
        } else {
            this->actor.textId = tmp->itemDescTextId;
        }
    } else {
        this->actor.textId = tmp->itemDescTextId;
    }
    this->isInvisible = false;
    this->actor.draw = EnGirlA_Draw;
}

void EnGirlA_SetItemOutOfStock(PlayState* play, EnGirlA* this) {
    this->isInvisible = true;
    this->actor.draw = NULL;
    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_GERUDO_MASK)) {
        this->actor.textId = 0xBD;
    }
}

void EnGirlA_UpdateStockedItem(PlayState* play, EnGirlA* this) {
    ShopItemEntry* itemEntry;

    if (EnGirlA_TryChangeShopItem(this)) {
        EnGirlA_InitItem(this, play);
        itemEntry = &sShopItemEntries[this->actor.params];
        this->actor.textId = itemEntry->itemDescTextId;
    } else {
        this->isInvisible = false;
        this->actor.draw = EnGirlA_Draw;
    }
}

s32 EnGirlA_TrySetMaskItemDescription(EnGirlA* this, PlayState* play) {
    s32 params;

    if ((this->actor.params >= SI_KEATON_MASK) && (this->actor.params <= SI_GERUDO_MASK)) {
        params = this->actor.params - SI_KEATON_MASK;
        if (INV_CONTENT(ITEM_TRADE_CHILD) == sMaskShopItems[params]) {
            EnGirlA_SetItemOutOfStock(play, this);
        } else {
            EnGirlA_SetItemDescription(play, this);
        }
        return true;
    }
    return false;
}

void EnGirlA_WaitForObject(EnGirlA* this, PlayState* play) {
    s16 params = this->actor.params;
    ShopItemEntry* itemEntry = &sShopItemEntries[params];

    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        this->actor.objectSlot = this->requiredObjectSlot;
        switch (this->actor.params) {
            case SI_KEATON_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_38)) {
                    this->actor.textId = 0x70B6;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_SPOOKY_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_3A)) {
                    this->actor.textId = 0x70B5;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_SKULL_MASK:
                if (GET_ITEMGETINF(ITEMGETINF_39)) {
                    this->actor.textId = 0x70B4;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_BUNNY_HOOD:
                if (GET_ITEMGETINF(ITEMGETINF_3B)) {
                    this->actor.textId = 0x70B7;
                } else {
                    this->actor.textId = itemEntry->itemDescTextId;
                }
                this->itemBuyPromptTextId = itemEntry->itemBuyPromptTextId;
                break;
            case SI_MASK_OF_TRUTH:
                if (GET_ITEMGETINF(ITEMGETINF_3B)) {
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
        if (!EnGirlA_TrySetMaskItemDescription(this, play)) {
            EnGirlA_SetItemDescription(play, this);
        }

        this->setOutOfStockFunc = EnGirlA_SetItemOutOfStock;
        this->updateStockedItemFunc = EnGirlA_UpdateStockedItem;
        this->getItemId = itemEntry->getItemId;
        this->canBuyFunc = itemEntry->canBuyFunc;
        this->itemGiveFunc = itemEntry->itemGiveFunc;
        this->buyEventFunc = itemEntry->buyEventFunc;
        this->basePrice = itemEntry->price;
        this->itemCount = itemEntry->count;
        this->hiliteFunc = itemEntry->hiliteFunc;
        this->giDrawId = itemEntry->giDrawId;
        PRINTF("%s(%2d)\n", sShopItemDescriptions[params], params);
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        Actor_SetScale(&this->actor, 0.25f);
        this->actor.shape.yOffset = 24.0f;
        this->actor.shape.shadowScale = 4.0f;
        this->actor.floorHeight = this->actor.home.pos.y;
        this->actor.gravity = 0.0f;
        EnGirlA_SetupAction(this, EnGirlA_Noop);
        this->isInitialized = true;
        this->actionFunc2 = EnGirlA_Update2;
        this->isSelected = false;
        this->yRotation = 0;
        this->yRotationInit = this->actor.shape.rot.y;
    }
}

void EnGirlA_Update2(EnGirlA* this, PlayState* play) {
    Actor_SetScale(&this->actor, 0.25f);
    this->actor.shape.yOffset = 24.0f;
    this->actor.shape.shadowScale = 4.0f;
    EnGirlA_TrySetMaskItemDescription(this, play);
    this->actionFunc(this, play);
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

void EnGirlA_Update(Actor* thisx, PlayState* play) {
    EnGirlA* this = (EnGirlA*)thisx;

    this->actionFunc2(this, play);
}

void func_80A3C498(Actor* thisx, PlayState* play, s32 flags) {
    func_8002EBCC(thisx, play, 0);
    func_8002ED80(thisx, play, 0);
}

void EnGirlA_Draw(Actor* thisx, PlayState* play) {
    EnGirlA* this = (EnGirlA*)thisx;

    Matrix_RotateY(DEG_TO_RAD((this->yRotation * 360.0f) / 65536.0f), MTXMODE_APPLY);
    if (this->hiliteFunc != NULL) {
        this->hiliteFunc(thisx, play, 0);
    }
    GetItem_Draw(play, this->giDrawId);
}
