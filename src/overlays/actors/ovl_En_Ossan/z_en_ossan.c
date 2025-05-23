#include "z_en_ossan.h"
#include "terminal.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_ossan/object_ossan.h"
#include "assets/objects/object_oF1d_map/object_oF1d_map.h"
#include "assets/objects/object_os/object_os.h"
#include "assets/objects/object_zo/object_zo.h"
#include "assets/objects/object_rs/object_rs.h"
#include "assets/objects/object_ds2/object_ds2.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"
#include "assets/objects/object_masterkokiri/object_masterkokiri.h"
#include "assets/objects/object_km1/object_km1.h"
#include "assets/objects/object_mastergolon/object_mastergolon.h"
#include "assets/objects/object_masterzoora/object_masterzoora.h"
#include "assets/objects/object_masterkokirihead/object_masterkokirihead.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

#if !PLATFORM_GC
#define CURSOR_COLOR_R 0
#define CURSOR_COLOR_G 80
#define CURSOR_COLOR_B 255
#define CURSOR_COLOR_A 255
#else
#define CURSOR_COLOR_R 0
#define CURSOR_COLOR_G 255
#define CURSOR_COLOR_B 80
#define CURSOR_COLOR_A 255
#endif

void EnOssan_Init(Actor* thisx, PlayState* play);
void EnOssan_Destroy(Actor* thisx, PlayState* play);
void EnOssan_Update(Actor* thisx, PlayState* play);
void EnOssan_DrawKokiriShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawPotionShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawBombchuShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawBazaarShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawZoraShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawGoronShopkeeper(Actor* thisx, PlayState* play);
void EnOssan_DrawHappyMaskShopkeeper(Actor* thisx, PlayState* play);

void EnOssan_InitActionFunc(EnOssan* this, PlayState* play);
void EnOssan_MainActionFunc(EnOssan* this, PlayState* play);

void EnOssan_TalkDefaultShopkeeper(PlayState* play);
void EnOssan_TalkKokiriShopkeeper(PlayState* play);
void EnOssan_TalkKakarikoPotionShopkeeper(PlayState* play);
void EnOssan_TalkBombchuShopkeeper(PlayState* play);
void EnOssan_TalkMarketPotionShopkeeper(PlayState* play);
void EnOssan_TalkBazaarShopkeeper(PlayState* play);
void EnOssan_TalkZoraShopkeeper(PlayState* play);
void EnOssan_TalkGoronShopkeeper(PlayState* play);
void EnOssan_TalkHappyMaskShopkeeper(PlayState* play);

s16 ShopItemDisp_Default(s16 v);
s16 ShopItemDisp_SpookyMask(s16 v);
s16 ShopItemDisp_SkullMask(s16 v);
s16 ShopItemDisp_BunnyHood(s16 v);
s16 ShopItemDisp_ZoraMask(s16 v);
s16 ShopItemDisp_GoronMask(s16 v);
s16 ShopItemDisp_GerudoMask(s16 v);

void EnOssan_InitKokiriShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitPotionShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitBombchuShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitBazaarShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitZoraShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitGoronShopkeeper(EnOssan* this, PlayState* play);
void EnOssan_InitHappyMaskShopkeeper(EnOssan* this, PlayState* play);

void EnOssan_State_Idle(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_StartConversation(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_FacingShopkeeper(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_TalkingToShopkeeper(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_LookToLeftShelf(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_LookToRightShelf(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_BrowseLeftShelf(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_BrowseRightShelf(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_LookFromShelfToShopkeeper(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_ItemSelected(EnOssan* this, PlayState* play2, Player* player);
void EnOssan_State_SelectMilkBottle(EnOssan* this, PlayState* play2, Player* player);
void EnOssan_State_SelectWeirdEgg(EnOssan* this, PlayState* play2, Player* player);
void EnOssan_State_SelectUnimplementedItem(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_SelectBombs(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_CantGetItem(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_GiveItemWithFanfare(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_ItemPurchased(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_ContinueShoppingPrompt(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_GiveLonLonMilk(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_DisplayOnlyBombDialog(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_WaitForDisplayOnlyBombDialog(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_21(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_22(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_QuickBuyDialog(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_SelectMaskItem(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_LendMaskOfTruth(EnOssan* this, PlayState* play, Player* player);
void EnOssan_State_GiveDiscountDialog(EnOssan* this, PlayState* play, Player* player);

void EnOssan_Obj3ToSeg6(EnOssan* this, PlayState* play);

void EnOssan_StartShopping(PlayState* play, EnOssan* this);

void EnOssan_WaitForBlink(EnOssan* this);
void EnOssan_Blink(EnOssan* this);

u16 EnOssan_SetupHelloDialog(EnOssan* this);

s32 EnOssan_TakeItemOffShelf(EnOssan* this);
s32 EnOssan_ReturnItemToShelf(EnOssan* this);
void EnOssan_ResetItemPosition(EnOssan* this);
void EnOssan_SetStateGiveDiscountDialog(PlayState* play, EnOssan* this);

#define CURSOR_INVALID 0xFF

ActorProfile En_Ossan_Profile = {
    /**/ ACTOR_EN_OSSAN,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnOssan),
    /**/ EnOssan_Init,
    /**/ EnOssan_Destroy,
    /**/ EnOssan_Update,
    /**/ NULL,
};

// Unused collider
static ColliderCylinderInitType1 sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE | ATELEM_SFX_NORMAL,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 30, 80, 0, { 0, 0, 0 } },
};

// Rupees to pay back to Happy Mask Shop
static s16 sMaskPaymentPrice[] = { 10, 30, 20, 50 };

// item yaw offsets
static s16 sItemShelfRot[] = { 0xEAAC, 0xEAAC, 0xEAAC, 0xEAAC, 0x1554, 0x1554, 0x1554, 0x1554 };

// unused values?
static s16 D_80AC8904[] = { 0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025 };

#if DEBUG_FEATURES
static char* sShopkeeperPrintName[] = {
    "コキリの店  ", // "Kokiri Shop"
    "薬屋        ", // "Potion Shop"
    "夜の店      ", // "Night Shop"
    "路地裏の店  ", // "Back Alley Shop"
    "盾の店      ", // "Shield Shop"
    "大人の店    ", // "Adult Shop"
    "タロンの店  ", // "Talon Shop"
    "ゾーラの店  ", // "Zora Shop"
    "ゴロン夜の店", // "Goron Night Shop"
    "インゴーの店", // "Ingo Store"
    "お面屋      ", // "Mask Shop"
};
#endif

typedef struct ShopkeeperObjInfo {
    /* 0x00 */ s16 objId;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
} ShopkeeperObjInfo;

static s16 sShopkeeperObjectIds[][3] = {
    { OBJECT_KM1, OBJECT_MASTERKOKIRIHEAD, OBJECT_MASTERKOKIRI },
    { OBJECT_DS2, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_RS, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_DS2, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_OSSAN, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_OSSAN, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_OSSAN, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_ZO, OBJECT_ID_MAX, OBJECT_MASTERZOORA },
    { OBJECT_OF1D_MAP, OBJECT_ID_MAX, OBJECT_MASTERGOLON },
    { OBJECT_OSSAN, OBJECT_ID_MAX, OBJECT_ID_MAX },
    { OBJECT_OS, OBJECT_ID_MAX, OBJECT_ID_MAX },
};

static EnOssanTalkOwnerFunc sShopkeeperTalkOwner[] = {
    EnOssan_TalkKokiriShopkeeper,       EnOssan_TalkKakarikoPotionShopkeeper, EnOssan_TalkBombchuShopkeeper,
    EnOssan_TalkMarketPotionShopkeeper, EnOssan_TalkBazaarShopkeeper,         EnOssan_TalkDefaultShopkeeper,
    EnOssan_TalkDefaultShopkeeper,      EnOssan_TalkZoraShopkeeper,           EnOssan_TalkGoronShopkeeper,
    EnOssan_TalkDefaultShopkeeper,      EnOssan_TalkHappyMaskShopkeeper,
};

static f32 sShopkeeperScale[] = {
    0.01f, 0.011f, 0.0105f, 0.011f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f,
};

typedef struct ShopItem {
    /* 0x00 */ s16 shopItemIndex;
    /* 0x02 */ s16 xOffset;
    /* 0x04 */ s16 yOffset;
    /* 0x06 */ s16 zOffset;
} ShopItem; // size 0x08

static ShopItem sShopkeeperStores[][8] = {
    { { SI_DEKU_SHIELD, 50, 52, -20 },
      { SI_DEKU_NUTS_5, 50, 76, -20 },
      { SI_DEKU_NUTS_10, 80, 52, -3 },
      { SI_DEKU_STICK, 80, 76, -3 },
      { SI_DEKU_SEEDS_30, -50, 52, -20 },
      { SI_ARROWS_10, -50, 76, -20 },
      { SI_ARROWS_30, -80, 52, -3 },
      { SI_RECOVERY_HEART, -80, 76, -3 } },

    { { SI_GREEN_POTION, 50, 52, -20 },
      { SI_BLUE_FIRE, 50, 76, -20 },
      { SI_RED_POTION_R30, 80, 52, -3 },
      { SI_FAIRY, 80, 76, -3 },
      { SI_DEKU_NUTS_5, -50, 52, -20 },
      { SI_BUGS, -50, 76, -20 },
      { SI_POE, -80, 52, -3 },
      { SI_FISH, -80, 76, -3 } },

    { { SI_BOMBCHU_10_2, 50, 52, -20 },
      { SI_BOMBCHU_10_4, 50, 76, -20 },
      { SI_BOMBCHU_10_3, 80, 52, -3 },
      { SI_BOMBCHU_10_1, 80, 76, -3 },
      { SI_BOMBCHU_20_3, -50, 52, -20 },
      { SI_BOMBCHU_20_1, -50, 76, -20 },
      { SI_BOMBCHU_20_4, -80, 52, -3 },
      { SI_BOMBCHU_20_2, -80, 76, -3 } },

    { { SI_GREEN_POTION, 50, 52, -20 },
      { SI_BLUE_FIRE, 50, 76, -20 },
      { SI_RED_POTION_R30, 80, 52, -3 },
      { SI_FAIRY, 80, 76, -3 },
      { SI_DEKU_NUTS_5, -50, 52, -20 },
      { SI_BUGS, -50, 76, -20 },
      { SI_POE, -80, 52, -3 },
      { SI_FISH, -80, 76, -3 } },

    { { SI_HYLIAN_SHIELD, 50, 52, -20 },
      { SI_BOMBS_5_R35, 50, 76, -20 },
      { SI_DEKU_NUTS_5, 80, 52, -3 },
      { SI_RECOVERY_HEART, 80, 76, -3 },
      { SI_ARROWS_10, -50, 52, -20 },
      { SI_ARROWS_50, -50, 76, -20 },
      { SI_DEKU_STICK, -80, 52, -3 },
      { SI_ARROWS_30, -80, 76, -3 } },

    { { SI_HYLIAN_SHIELD, 50, 52, -20 },
      { SI_BOMBS_5_R25, 50, 76, -20 },
      { SI_DEKU_NUTS_5, 80, 52, -3 },
      { SI_RECOVERY_HEART, 80, 76, -3 },
      { SI_ARROWS_10, -50, 52, -20 },
      { SI_ARROWS_50, -50, 76, -20 },
      { SI_DEKU_STICK, -80, 52, -3 },
      { SI_ARROWS_30, -80, 76, -3 } },

    { { SI_MILK_BOTTLE, 50, 52, -20 },
      { SI_DEKU_NUTS_5, 50, 76, -20 },
      { SI_DEKU_NUTS_10, 80, 52, -3 },
      { SI_RECOVERY_HEART, 80, 76, -3 },
      { SI_WEIRD_EGG, -50, 52, -20 },
      { SI_DEKU_STICK, -50, 76, -20 },
      { SI_RECOVERY_HEART, -80, 52, -3 },
      { SI_RECOVERY_HEART, -80, 76, -3 } },

    { { SI_ZORA_TUNIC, 50, 52, -20 },
      { SI_ARROWS_10, 50, 76, -20 },
      { SI_RECOVERY_HEART, 80, 52, -3 },
      { SI_ARROWS_30, 80, 76, -3 },
      { SI_DEKU_NUTS_5, -50, 52, -20 },
      { SI_ARROWS_50, -50, 76, -20 },
      { SI_FISH, -80, 52, -3 },
      { SI_RED_POTION_R50, -80, 76, -3 } },

    { { SI_BOMBS_5_R25, 50, 52, -20 },
      { SI_BOMBS_10, 50, 76, -20 },
      { SI_BOMBS_20, 80, 52, -3 },
      { SI_BOMBS_30, 80, 76, -3 },
      { SI_GORON_TUNIC, -50, 52, -20 },
      { SI_RECOVERY_HEART, -50, 76, -20 },
      { SI_RED_POTION_R40, -80, 52, -3 },
      { SI_RECOVERY_HEART, -80, 76, -3 } },

    { { SI_19, 50, 52, -20 },
      { SI_19, 50, 76, -20 },
      { SI_19, 80, 52, -3 },
      { SI_19, 80, 76, -3 },
      { SI_20, -50, 52, -20 },
      { SI_20, -50, 76, -20 },
      { SI_20, -80, 52, -3 },
      { SI_20, -80, 76, -3 } },

    { { SI_GERUDO_MASK, 50, 52, -20 },
      { SI_ZORA_MASK, 50, 76, -20 },
      { SI_MASK_OF_TRUTH, 80, 52, -3 },
      { SI_GORON_MASK, 80, 76, -3 },
      { SI_SKULL_MASK, -50, 52, -20 },
      { SI_KEATON_MASK, -50, 76, -20 },
      { SI_BUNNY_HOOD, -80, 52, -3 },
      { SI_SPOOKY_MASK, -80, 76, -3 } },
};
static EnOssanGetGirlAParamsFunc sShopItemReplaceFunc[] = {
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_SpookyMask,
    ShopItemDisp_SkullMask, ShopItemDisp_BunnyHood,  ShopItemDisp_Default, ShopItemDisp_ZoraMask,
    ShopItemDisp_GoronMask, ShopItemDisp_GerudoMask, ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,    ShopItemDisp_Default, ShopItemDisp_Default,
    ShopItemDisp_Default,   ShopItemDisp_Default,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 500, ICHAIN_STOP),
};

// When selecting an item to buy, this is the position the item moves to
static Vec3f sSelectedItemPosition[] = { { 17.0f, 58.0f, 30.0f }, { -17.0f, 58.0f, 30.0f } };

static EnOssanInitFunc sInitFuncs[] = {
    EnOssan_InitKokiriShopkeeper, EnOssan_InitPotionShopkeeper,    EnOssan_InitBombchuShopkeeper,
    EnOssan_InitPotionShopkeeper, EnOssan_InitBazaarShopkeeper,    EnOssan_InitBazaarShopkeeper,
    EnOssan_InitBazaarShopkeeper, EnOssan_InitZoraShopkeeper,      EnOssan_InitGoronShopkeeper,
    EnOssan_InitBazaarShopkeeper, EnOssan_InitHappyMaskShopkeeper,
};

static Vec3f sShopkeeperPositionOffsets[] = {
    { 0.0f, 0.0f, 33.0f }, { 0.0f, 0.0f, 31.0f }, { 0.0f, 0.0f, 31.0f }, { 0.0f, 0.0f, 31.0f },
    { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 36.0f },
    { 0.0f, 0.0f, 15.0f }, { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 26.0f },
};

static EnOssanStateFunc sStateFunc[] = {
    EnOssan_State_Idle,
    EnOssan_State_StartConversation,
    EnOssan_State_FacingShopkeeper,
    EnOssan_State_TalkingToShopkeeper,
    EnOssan_State_LookToLeftShelf,
    EnOssan_State_LookToRightShelf,
    EnOssan_State_BrowseLeftShelf,
    EnOssan_State_BrowseRightShelf,
    EnOssan_State_LookFromShelfToShopkeeper,
    EnOssan_State_ItemSelected,
    EnOssan_State_SelectMilkBottle,
    EnOssan_State_SelectWeirdEgg,
    EnOssan_State_SelectUnimplementedItem,
    EnOssan_State_SelectBombs,
    EnOssan_State_CantGetItem,
    EnOssan_State_GiveItemWithFanfare,
    EnOssan_State_ItemPurchased,
    EnOssan_State_ContinueShoppingPrompt,
    EnOssan_State_GiveLonLonMilk,
    EnOssan_State_DisplayOnlyBombDialog,
    EnOssan_State_WaitForDisplayOnlyBombDialog,
    EnOssan_State_21,
    EnOssan_State_22,
    EnOssan_State_QuickBuyDialog,
    EnOssan_State_SelectMaskItem,
    EnOssan_State_LendMaskOfTruth,
    EnOssan_State_GiveDiscountDialog,
};

void EnOssan_SetupAction(EnOssan* this, EnOssanActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

s16 ShopItemDisp_Default(s16 v) {
    return v;
}

s16 ShopItemDisp_SpookyMask(s16 v) {
    // Sold Skull Mask
    if (GET_ITEMGETINF(ITEMGETINF_39)) {
        return v;
    }
    return -1;
}

s16 ShopItemDisp_SkullMask(s16 v) {
    // Sold Keaton Mask
    if (GET_ITEMGETINF(ITEMGETINF_38)) {
        return v;
    }
    return -1;
}

s16 ShopItemDisp_BunnyHood(s16 v) {
    // Sold Spooky Mask
    if (GET_ITEMGETINF(ITEMGETINF_3A)) {
        return v;
    }
    return -1;
}

s16 ShopItemDisp_ZoraMask(s16 v) {
    // Obtained Mask of Truth
    if (GET_ITEMGETINF(ITEMGETINF_3F)) {
        return v;
    }
    return -1;
}

s16 ShopItemDisp_GoronMask(s16 v) {
    // Obtained Mask of Truth
    if (GET_ITEMGETINF(ITEMGETINF_3F)) {
        return v;
    }
    return -1;
}

s16 ShopItemDisp_GerudoMask(s16 v) {
    // Obtained Mask of Truth
    if (GET_ITEMGETINF(ITEMGETINF_3F)) {
        return v;
    }
    return -1;
}

void EnOssan_SpawnItemsOnShelves(EnOssan* this, PlayState* play, ShopItem* shopItems) {
    EnTana* shelves;
    s16 itemParams;
    s32 i;

    for (i = 0; i < 8; i++, shopItems++) {
        if (shopItems->shopItemIndex < 0) {
            this->shelfSlots[i] = NULL;
        } else {
            itemParams = sShopItemReplaceFunc[shopItems->shopItemIndex](shopItems->shopItemIndex);

            if (itemParams < 0) {
                this->shelfSlots[i] = NULL;
            } else {
                shelves = this->shelves;
                this->shelfSlots[i] = (EnGirlA*)Actor_Spawn(
                    &play->actorCtx, play, ACTOR_EN_GIRLA, shelves->actor.world.pos.x + shopItems->xOffset,
                    shelves->actor.world.pos.y + shopItems->yOffset, shelves->actor.world.pos.z + shopItems->zOffset,
                    shelves->actor.shape.rot.x, shelves->actor.shape.rot.y + sItemShelfRot[i],
                    shelves->actor.shape.rot.z, itemParams);
            }
        }
    }
}

void EnOssan_UpdateShopOfferings(EnOssan* this, PlayState* play) {
    s32 i;
    ShopItem* storeItems;
    ShopItem* shopItem;

    if (this->actor.params == OSSAN_TYPE_MASK) {
        storeItems = sShopkeeperStores[this->actor.params];
        if (1) {}
        for (i = 0; i < 8; i++) {
            shopItem = &storeItems[i];
            if (shopItem->shopItemIndex >= 0 && this->shelfSlots[i] == NULL) {
                s16 params = sShopItemReplaceFunc[shopItem->shopItemIndex](shopItem->shopItemIndex);

                if (params >= 0) {
                    this->shelfSlots[i] = (EnGirlA*)Actor_Spawn(
                        &play->actorCtx, play, ACTOR_EN_GIRLA, this->shelves->actor.world.pos.x + shopItem->xOffset,
                        this->shelves->actor.world.pos.y + shopItem->yOffset,
                        this->shelves->actor.world.pos.z + shopItem->zOffset, this->shelves->actor.shape.rot.x,
                        this->shelves->actor.shape.rot.y + sItemShelfRot[i], this->shelves->actor.shape.rot.z, params);
                }
            }
        }
    }
}

void EnOssan_TalkDefaultShopkeeper(PlayState* play) {
    Message_ContinueTextbox(play, 0x9E);
}

void EnOssan_TalkKakarikoPotionShopkeeper(PlayState* play) {
    if (play->spawn == 0) {
        Message_ContinueTextbox(play, 0x5046);
    } else {
        Message_ContinueTextbox(play, 0x504E);
    }
}

void EnOssan_TalkMarketPotionShopkeeper(PlayState* play) {
    Message_ContinueTextbox(play, 0x504E);
}

void EnOssan_TalkKokiriShopkeeper(PlayState* play) {
    Message_ContinueTextbox(play, 0x10BA);
}

void EnOssan_TalkBazaarShopkeeper(PlayState* play) {
    if (play->spawn == 0) {
        Message_ContinueTextbox(play, 0x9D);
    } else {
        Message_ContinueTextbox(play, 0x9C);
    }
}

void EnOssan_TalkBombchuShopkeeper(PlayState* play) {
    Message_ContinueTextbox(play, 0x7076);
}

void EnOssan_TalkZoraShopkeeper(PlayState* play) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        Message_ContinueTextbox(play, 0x403A);
    } else {
        Message_ContinueTextbox(play, 0x403B);
    }
}

// Goron City, Goron
void EnOssan_TalkGoronShopkeeper(PlayState* play) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
            Message_ContinueTextbox(play, 0x3028);
        } else if (CUR_UPG_VALUE(UPG_STRENGTH) != 0) {
            Message_ContinueTextbox(play, 0x302D);
        } else {
            Message_ContinueTextbox(play, 0x300F);
        }
    } else if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        Message_ContinueTextbox(play, 0x3057);
    } else {
        Message_ContinueTextbox(play, 0x305B);
    }
}

// Happy Mask Shop
void EnOssan_TalkHappyMaskShopkeeper(PlayState* play) {
    if (GET_ITEMGETINF(ITEMGETINF_38)       // Sold Keaton Mask
        && GET_ITEMGETINF(ITEMGETINF_39)    // Sold Skull Mask
        && GET_ITEMGETINF(ITEMGETINF_3A)    // Sold Spooky Mask
        && GET_ITEMGETINF(ITEMGETINF_3B)) { // Sold Bunny Hood
        Message_ContinueTextbox(play, 0x70AE);
    } else {
        switch (play->msgCtx.choiceIndex) {
            case 1:
                Message_ContinueTextbox(play, 0x70A4);
                break;
            case 0:
                Message_ContinueTextbox(play, 0x70A3);
                break;
        }
    }
}

void EnOssan_UpdateCameraDirection(EnOssan* this, PlayState* play, f32 cameraFaceAngle) {
    this->cameraFaceAngle = cameraFaceAngle;
    Camera_SetCameraData(GET_ACTIVE_CAM(play), 0xC, NULL, NULL, cameraFaceAngle, 0, 0);
}

s32 EnOssan_TryGetObjBankIndices(EnOssan* this, PlayState* play, s16* objectIds) {
    if (objectIds[1] != OBJECT_ID_MAX) {
        this->objectSlot2 = Object_GetSlot(&play->objectCtx, objectIds[1]);
        if (this->objectSlot2 < 0) {
            return false;
        }
    } else {
        this->objectSlot2 = -1;
    }
    if (objectIds[2] != OBJECT_ID_MAX) {
        this->objectSlot3 = Object_GetSlot(&play->objectCtx, objectIds[2]);
        if (this->objectSlot3 < 0) {
            return false;
        }
    } else {
        this->objectSlot3 = -1;
    }
    return true;
}

void EnOssan_Init(Actor* thisx, PlayState* play) {
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;
    s16* objectIds;

    if (this->actor.params == OSSAN_TYPE_TALON && (LINK_AGE_IN_YEARS != YEARS_CHILD)) {
        this->actor.params = OSSAN_TYPE_INGO;
    }

    //! @bug This check will always evaluate to false, it should be || not &&
    if (this->actor.params > OSSAN_TYPE_MASK && this->actor.params < OSSAN_TYPE_KOKIRI) {
        Actor_Kill(&this->actor);
        PRINTF_COLOR_ERROR();
        PRINTF("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        PRINTF_RST();
        ASSERT(0, "0", "../z_en_oB1.c", 1246);
        return;
    }

    // If you've given Zelda's Letter to the Kakariko Guard
    if (this->actor.params == OSSAN_TYPE_MASK && !GET_INFTABLE(INFTABLE_76)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->actor.params == OSSAN_TYPE_KAKARIKO_POTION && (LINK_AGE_IN_YEARS == YEARS_CHILD)) {
        Actor_Kill(&this->actor);
        return;
    }

    // Completed Dodongo's Cavern
    if (this->actor.params == OSSAN_TYPE_BOMBCHUS && !GET_EVENTCHKINF(EVENTCHKINF_25)) {
        Actor_Kill(&this->actor);
        return;
    }

    objectIds = sShopkeeperObjectIds[this->actor.params];
    this->objectSlot1 = Object_GetSlot(&play->objectCtx, objectIds[0]);

    if (this->objectSlot1 < 0) {
        Actor_Kill(&this->actor);
        PRINTF_COLOR_ERROR();
        PRINTF("バンクが無いよ！！(%s)\n", sShopkeeperPrintName[this->actor.params]);
        PRINTF_RST();
        ASSERT(0, "0", "../z_en_oB1.c", 1284);
        return;
    }

    if (EnOssan_TryGetObjBankIndices(this, play, objectIds) == 0) {
        Actor_Kill(&this->actor);
        PRINTF_COLOR_ERROR();
        PRINTF("予備バンクが無いよ！！(%s)\n", sShopkeeperPrintName[this->actor.params]);
        PRINTF_RST();
        ASSERT(0, "0", "../z_en_oB1.c", 1295);
        return;
    }

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnOssan_SetupAction(this, EnOssan_InitActionFunc);
}

void EnOssan_Destroy(Actor* thisx, PlayState* play) {
    EnOssan* this = (EnOssan*)thisx;
    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void EnOssan_UpdateCursorPos(PlayState* play, EnOssan* this) {
    s16 x;
    s16 y;

    Actor_GetScreenPos(play, &this->shelfSlots[this->cursorIndex]->actor, &x, &y);
    this->cursorX = x;
    this->cursorY = y;
}

void EnOssan_EndInteraction(PlayState* play, EnOssan* this) {
    Player* player = GET_PLAYER(play);

    // "End of conversation!"
    PRINTF(VT_FGCOL(YELLOW) "%s[%d]:★★★ 会話終了！！ ★★★" VT_RST "\n", "../z_en_oB1.c", 1337);
    YREG(31) = 0;
    Actor_TalkOfferAccepted(&this->actor, play);
    play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    play->msgCtx.stateTimer = 4;
    player->stateFlags2 &= ~PLAYER_STATE2_29;
    Play_SetViewpoint(play, VIEWPOINT_LOCKED);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
    this->drawCursor = 0;
    this->stickLeftPrompt.isEnabled = false;
    this->stickRightPrompt.isEnabled = false;
    EnOssan_UpdateCameraDirection(this, play, 0.0f);
    this->actor.textId = EnOssan_SetupHelloDialog(this);
    this->stateFlag = OSSAN_STATE_IDLE;
}

s32 EnOssan_TestEndInteraction(EnOssan* this, PlayState* play, Input* input) {
    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        EnOssan_EndInteraction(play, this);
        return true;
    } else {
        return false;
    }
}

s32 EnOssan_TestCancelOption(EnOssan* this, PlayState* play, Input* input) {
    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        this->stateFlag = this->tempStateFlag;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
        return true;
    } else {
        return false;
    }
}

void EnOssan_SetStateStartShopping(PlayState* play, EnOssan* this, u8 skipHelloState) {
    YREG(31) = 1;
    this->headRot = this->headTargetRot = 0;
    Interface_SetDoAction(play, DO_ACTION_NEXT);
    EnOssan_UpdateCameraDirection(this, play, 0);

    if (!skipHelloState) {
        this->stateFlag = OSSAN_STATE_START_CONVERSATION;
    } else {
        EnOssan_StartShopping(play, this);
    }
}

void EnOssan_StartShopping(PlayState* play, EnOssan* this) {
    this->stateFlag = OSSAN_STATE_FACING_SHOPKEEPER;

    if (this->actor.params == OSSAN_TYPE_MASK) {
        // if all masks have been sold, give the option to ask about the mask of truth
        if (GET_ITEMGETINF(ITEMGETINF_38) && GET_ITEMGETINF(ITEMGETINF_39) && GET_ITEMGETINF(ITEMGETINF_3A) &&
            GET_ITEMGETINF(ITEMGETINF_3B)) {
            Message_ContinueTextbox(play, 0x70AD);
        } else {
            Message_ContinueTextbox(play, 0x70A2);
        }
    } else {
        Message_ContinueTextbox(play, 0x83);
    }

    Interface_SetDoAction(play, DO_ACTION_DECIDE);
    this->stickRightPrompt.isEnabled = true;
    this->stickLeftPrompt.isEnabled = true;
    EnOssan_UpdateCameraDirection(this, play, 0.0f);
}

void EnOssan_ChooseTalkToOwner(PlayState* play, EnOssan* this) {
    this->stateFlag = OSSAN_STATE_TALKING_TO_SHOPKEEPER;
    sShopkeeperTalkOwner[this->actor.params](play);
    Interface_SetDoAction(play, DO_ACTION_DECIDE);
    this->stickLeftPrompt.isEnabled = false;
    this->stickRightPrompt.isEnabled = false;
}

void EnOssan_SetLookToShopkeeperFromShelf(PlayState* play, EnOssan* this) {
    Sfx_PlaySfxCentered(NA_SE_SY_CURSOR);
    this->drawCursor = 0;
    this->stateFlag = OSSAN_STATE_LOOK_SHOPKEEPER;
}

void EnOssan_State_Idle(EnOssan* this, PlayState* play, Player* player) {
    this->headTargetRot = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        // "Start conversation!!"
        PRINTF(VT_FGCOL(YELLOW) "★★★ 会話開始！！ ★★★" VT_RST "\n");
        player->stateFlags2 |= PLAYER_STATE2_29;
        Play_SetShopBrowsingViewpoint(play);
        EnOssan_SetStateStartShopping(play, this, false);
    } else if (this->actor.xzDistToPlayer < 100.0f) {
        Actor_OfferTalk(&this->actor, play, 100);
    }
}

void EnOssan_UpdateJoystickInputState(PlayState* play, EnOssan* this) {
    Input* input = &play->state.input[0];
    s8 stickX = input->rel.stick_x;
    s8 stickY = input->rel.stick_y;

    this->moveHorizontal = this->moveVertical = false;

    if (this->stickAccumX == 0) {
        if (stickX > 30 || stickX < -30) {
            this->stickAccumX = stickX;
            this->moveHorizontal = true;
        }
    } else if (stickX <= 30 && stickX >= -30) {
        this->stickAccumX = 0;
    } else if (this->stickAccumX * stickX < 0) { // Stick has swapped directions
        this->stickAccumX = stickX;
        this->moveHorizontal = true;
    } else {
        this->stickAccumX += stickX;

        if (this->stickAccumX > 2000) {
            this->stickAccumX = 2000;
        } else if (this->stickAccumX < -2000) {
            this->stickAccumX = -2000;
        }
    }

    if (this->stickAccumY == 0) {
        if (stickY > 30 || stickY < -30) {
            this->stickAccumY = stickY;
            this->moveVertical = true;
        }
    } else if (stickY <= 30 && stickY >= -30) {
        this->stickAccumY = 0;
    } else if (this->stickAccumY * stickY < 0) { // Stick has swapped directions
        this->stickAccumY = stickY;
        this->moveVertical = true;
    } else {
        this->stickAccumY += stickY;

        if (this->stickAccumY > 2000) {
            this->stickAccumY = 2000;
        } else if (this->stickAccumY < -2000) {
            this->stickAccumY = -2000;
        }
    }
}

u8 EnOssan_SetCursorIndexFromNeutral(EnOssan* this, u8 shelfOffset) {
    u8 i;

    // if cursor is on the top shelf
    if (this->cursorIndex & 1) {
        // scan top shelf for non-null item
        for (i = shelfOffset + 1; i < shelfOffset + 4; i += 2) {
            if (this->shelfSlots[i] != NULL) {
                return i;
            }
        }
        // scan bottom shelf for non-null item
        for (i = shelfOffset; i < shelfOffset + 4; i += 2) {
            if (this->shelfSlots[i] != NULL) {
                return i;
            }
        }
    } else {
        // scan bottom shelf for non-null item
        for (i = shelfOffset; i < shelfOffset + 4; i += 2) {
            if (this->shelfSlots[i] != NULL) {
                return i;
            }
        }
        // scan top shelf for non-null item
        for (i = shelfOffset + 1; i < shelfOffset + 4; i += 2) {
            if (this->shelfSlots[i] != NULL) {
                return i;
            }
        }
    }
    return CURSOR_INVALID;
}

u8 EnOssan_CursorRight(EnOssan* this, u8 cursorIndex, u8 shelfSlotMin) {
    u8 c = shelfSlotMin + 4;

    while (cursorIndex >= shelfSlotMin && cursorIndex < c) {
        cursorIndex -= 2;
        if (cursorIndex >= shelfSlotMin && cursorIndex < c) {
            if (this->shelfSlots[cursorIndex] != NULL) {
                return cursorIndex;
            }
        }
    }
    return CURSOR_INVALID;
}

u8 EnOssan_CursorLeft(EnOssan* this, u8 cursorIndex, u8 shelfSlotMax) {

    while (cursorIndex < shelfSlotMax) {
        cursorIndex += 2;
        if ((cursorIndex < shelfSlotMax) && this->shelfSlots[cursorIndex] != NULL) {
            return cursorIndex;
        }
    }
    return CURSOR_INVALID;
}

// pay salesman back
void EnOssan_TryPaybackMask(EnOssan* this, PlayState* play) {
    s16 price = sMaskPaymentPrice[this->happyMaskShopState];

    if (gSaveContext.save.info.playerData.rupees < price) {
        Message_ContinueTextbox(play, 0x70A8);
        this->happyMaskShopkeeperEyeIdx = 1;
        this->happyMaskShopState = OSSAN_HAPPY_STATE_ANGRY;
    } else {
        Rupees_ChangeBy(-price);

        if (this->happyMaskShopState == OSSAN_HAPPY_STATE_REQUEST_PAYMENT_BUNNY_HOOD) {
            SET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_BUNNY_HOOD);
            Message_ContinueTextbox(play, 0x70A9);
            this->happyMaskShopState = OSSAN_HAPPY_STATE_ALL_MASKS_SOLD;
            return;
        }

        if (this->happyMaskShopState == OSSAN_HAPPY_STATE_REQUEST_PAYMENT_KEATON_MASK) {
            SET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_KEATON_MASK);
        } else if (this->happyMaskShopState == OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SPOOKY_MASK) {
            SET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_SPOOKY_MASK);
        } else if (this->happyMaskShopState == OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SKULL_MASK) {
            SET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_SKULL_MASK);
        }

        Message_ContinueTextbox(play, 0x70A7);
        this->happyMaskShopState = OSSAN_HAPPY_STATE_NONE;
    }
    this->stateFlag = OSSAN_STATE_START_CONVERSATION;
}

void EnOssan_State_StartConversation(EnOssan* this, PlayState* play, Player* player) {
    u8 dialogState = Message_GetState(&play->msgCtx);

    if (this->actor.params == OSSAN_TYPE_MASK && dialogState == TEXT_STATE_CHOICE) {
        if (!EnOssan_TestEndInteraction(this, play, &play->state.input[0]) && Message_ShouldAdvance(play)) {
            s32 pad;

            switch (play->msgCtx.choiceIndex) {
                case 0:
                    EnOssan_StartShopping(play, this);
                    break;
                case 1:
                    EnOssan_EndInteraction(play, this);
                    break;
            }
        }
    } else if (dialogState == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        Sfx_PlaySfxCentered(NA_SE_SY_MESSAGE_PASS);

        switch (this->happyMaskShopState) {
            case OSSAN_HAPPY_STATE_ALL_MASKS_SOLD:
                Message_ContinueTextbox(play, 0x70AA);
                this->stateFlag = OSSAN_STATE_LEND_MASK_OF_TRUTH;
                return;
            case OSSAN_HAPPY_STATE_BORROWED_FIRST_MASK:
                EnOssan_EndInteraction(play, this);
                return;
            case OSSAN_HAPPY_STATE_REQUEST_PAYMENT_KEATON_MASK:
            case OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SPOOKY_MASK:
            case OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SKULL_MASK:
            case OSSAN_HAPPY_STATE_REQUEST_PAYMENT_BUNNY_HOOD:
                EnOssan_TryPaybackMask(this, play);
                return;
            case OSSAN_HAPPY_STATE_ANGRY:
                play->nextEntranceIndex = ENTR_MARKET_DAY_9;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
                return;
        }

        if (!EnOssan_TestEndInteraction(this, play, &play->state.input[0])) {
            // "Shop around by moving the stick left and right"
            PRINTF("「スティック左右で品物みてくれ！」\n");
            EnOssan_StartShopping(play, this);
        }
    }

    if (1) {}
}

s32 EnOssan_FacingShopkeeperDialogResult(EnOssan* this, PlayState* play) {
    switch (play->msgCtx.choiceIndex) {
        case 0:
            EnOssan_ChooseTalkToOwner(play, this);
            return true;
        case 1:
            EnOssan_EndInteraction(play, this);
            return true;
        default:
            return false;
    }
}

void EnOssan_State_FacingShopkeeper(EnOssan* this, PlayState* play, Player* player) {
    u8 nextIndex;

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) &&
        !EnOssan_TestEndInteraction(this, play, &play->state.input[0])) {
        if (Message_ShouldAdvance(play) && EnOssan_FacingShopkeeperDialogResult(this, play)) {
            Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
            return;
        }
        // Stick Left
        if (this->stickAccumX < 0) {
            nextIndex = EnOssan_SetCursorIndexFromNeutral(this, 4);
            if (nextIndex != CURSOR_INVALID) {
                this->cursorIndex = nextIndex;
                this->stateFlag = OSSAN_STATE_LOOK_SHELF_LEFT;
                Interface_SetDoAction(play, DO_ACTION_DECIDE);
                this->stickLeftPrompt.isEnabled = false;
                Sfx_PlaySfxCentered(NA_SE_SY_CURSOR);
            }
        } else if (this->stickAccumX > 0) {
            nextIndex = EnOssan_SetCursorIndexFromNeutral(this, 0);
            if (nextIndex != CURSOR_INVALID) {
                this->cursorIndex = nextIndex;
                this->stateFlag = OSSAN_STATE_LOOK_SHELF_RIGHT;
                Interface_SetDoAction(play, DO_ACTION_DECIDE);
                this->stickRightPrompt.isEnabled = false;
                Sfx_PlaySfxCentered(NA_SE_SY_CURSOR);
            }
        }
    }
}

void EnOssan_State_TalkingToShopkeeper(EnOssan* this, PlayState* play, Player* player) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        EnOssan_StartShopping(play, this);
    }
}

void EnOssan_State_LookToLeftShelf(EnOssan* this, PlayState* play, Player* player) {
    Math_ApproachF(&this->cameraFaceAngle, 30.0f, 0.5f, 10.0f);

    if (this->cameraFaceAngle > 29.5f) {
        EnOssan_UpdateCameraDirection(this, play, 30.0f);
    }

    EnOssan_UpdateCameraDirection(this, play, this->cameraFaceAngle);

    if (this->cameraFaceAngle >= 30.0f) {
        EnOssan_UpdateCameraDirection(this, play, 30.0f);
        EnOssan_UpdateCursorPos(play, this);
        this->stateFlag = OSSAN_STATE_BROWSE_LEFT_SHELF;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
    } else {
        this->stickAccumX = 0;
    }
}

void EnOssan_State_LookToRightShelf(EnOssan* this, PlayState* play, Player* player) {
    Math_ApproachF(&this->cameraFaceAngle, -30.0f, 0.5f, 10.0f);

    if (this->cameraFaceAngle < -29.5f) {
        EnOssan_UpdateCameraDirection(this, play, -30.0f);
    }

    EnOssan_UpdateCameraDirection(this, play, this->cameraFaceAngle);

    if (this->cameraFaceAngle <= -30.0f) {
        EnOssan_UpdateCameraDirection(this, play, -30.0f);
        EnOssan_UpdateCursorPos(play, this);
        this->stateFlag = OSSAN_STATE_BROWSE_RIGHT_SHELF;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
    } else {
        this->stickAccumX = 0;
    }
}

void EnOssan_CursorUpDown(EnOssan* this) {
    u8 curTemp = this->cursorIndex;
    u8 curScanTemp;

    if (this->stickAccumY < 0) {
        curTemp &= 0xFE;
        if (this->shelfSlots[curTemp] != NULL) {
            this->cursorIndex = curTemp;
            return;
        }
        // cursorIndex on right shelf
        if (curTemp < 4) {
            curScanTemp = curTemp + 2;
            if (curScanTemp >= 4) {
                curScanTemp = 0;
            }
            while (curScanTemp != curTemp) {
                if (this->shelfSlots[curScanTemp] != NULL) {
                    this->cursorIndex = curScanTemp;
                    return;
                }
                curScanTemp += 2;
                if (curScanTemp >= 4) {
                    curScanTemp = 0;
                }
            }
        } else {
            // cursorIndex on left shelf
            curScanTemp = curTemp + 2;
            if (curScanTemp >= 8) {
                curScanTemp = 4;
            }
            while (curScanTemp != curTemp) {
                if (this->shelfSlots[curScanTemp] != NULL) {
                    this->cursorIndex = curScanTemp;
                    return;
                }
                curScanTemp += 2;
                if (curScanTemp >= 8) {
                    curScanTemp = 4;
                }
            }
        }
    } else if (this->stickAccumY > 0) {
        curTemp |= 1;
        if (this->shelfSlots[curTemp] != NULL) {
            this->cursorIndex = curTemp;
            return;
        }
        // cursorIndex on right shelf
        if (curTemp < 4) {
            curScanTemp = curTemp + 2;
            if (curScanTemp >= 4) {
                curScanTemp = 1;
            }
            while (curScanTemp != curTemp) {
                if (this->shelfSlots[curScanTemp] != NULL) {
                    this->cursorIndex = curScanTemp;
                    return;
                }
                curScanTemp += 2;
                if (curScanTemp >= 4) {
                    curScanTemp = 1;
                }
            }
        } else {
            // cursorIndex on left shelf
            curScanTemp = curTemp + 2;
            if (curScanTemp >= 8) {
                curScanTemp = 5;
            }
            while (curScanTemp != curTemp) {
                if (this->shelfSlots[curScanTemp] != NULL) {
                    this->cursorIndex = curScanTemp;
                    return;
                }
                curScanTemp += 2;
                if (curScanTemp >= 8) {
                    curScanTemp = 5;
                }
            }
        }
    }
}

s32 EnOssan_HasPlayerSelectedItem(PlayState* play, EnOssan* this, Input* input) {
    EnGirlA* selectedItem = this->shelfSlots[this->cursorIndex];

    if (EnOssan_TestEndInteraction(this, play, input)) {
        return true;
    }
    if (Message_ShouldAdvance(play)) {
        if (selectedItem->actor.params != SI_SOLD_OUT && selectedItem->isInvisible == 0) {
            this->tempStateFlag = this->stateFlag;
            Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->itemBuyPromptTextId);
            this->stickLeftPrompt.isEnabled = false;
            this->stickRightPrompt.isEnabled = false;
            switch (selectedItem->actor.params) {
                case SI_KEATON_MASK:
                case SI_SPOOKY_MASK:
                case SI_SKULL_MASK:
                case SI_BUNNY_HOOD:
                case SI_MASK_OF_TRUTH:
                case SI_ZORA_MASK:
                case SI_GORON_MASK:
                case SI_GERUDO_MASK:
                    Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM_MASK;
                    return true;
                case SI_MILK_BOTTLE:
                    Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM_BOTTLE_MILK_FULL;
                    return true;
                case SI_WEIRD_EGG:
                    Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM_WEIRD_EGG;
                    return true;
                case SI_19:
                case SI_20:
                    Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM_UNIMPLEMENTED;
                    return true;
                case SI_BOMBS_5_R25:
                case SI_BOMBS_10:
                case SI_BOMBS_20:
                case SI_BOMBS_30:
                case SI_BOMBS_5_R35:
                    Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM_BOMBS;
                    return true;
                default:
                    Sfx_PlaySfxCentered(NA_SE_SY_DECIDE);
                    this->drawCursor = 0;
                    this->stateFlag = OSSAN_STATE_SELECT_ITEM;
                    return true;
            }
        }
        Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
        return true;
    }
    return false;
}

void EnOssan_State_BrowseLeftShelf(EnOssan* this, PlayState* play, Player* player) {
    s32 a;
    s32 b;
    u8 prevIndex = this->cursorIndex;
    s32 c;
    s32 d;

    if (!EnOssan_ReturnItemToShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2152);
        this->delayTimer = 3;
        return;
    }
    if (this->delayTimer != 0) {
        this->delayTimer--;
        return;
    }
    this->drawCursor = 0xFF;
    this->stickRightPrompt.isEnabled = true;
    EnOssan_UpdateCursorPos(play, this);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) &&
        !EnOssan_HasPlayerSelectedItem(play, this, &play->state.input[0])) {
        if (this->moveHorizontal) {
            if (this->stickAccumX > 0) {
                a = EnOssan_CursorRight(this, this->cursorIndex, 4);
                if (a != CURSOR_INVALID) {
                    this->cursorIndex = a;
                } else {
                    EnOssan_SetLookToShopkeeperFromShelf(play, this);
                    return;
                }
            } else if (this->stickAccumX < 0) {
                b = EnOssan_CursorLeft(this, this->cursorIndex, 8);
                if (b != CURSOR_INVALID) {
                    this->cursorIndex = b;
                }
            }
        } else {
            if (this->stickAccumX > 0 && this->stickAccumX > 500) {
                c = EnOssan_CursorRight(this, this->cursorIndex, 4);
                if (c != CURSOR_INVALID) {
                    this->cursorIndex = c;
                } else {
                    EnOssan_SetLookToShopkeeperFromShelf(play, this);
                    return;
                }
            } else if (this->stickAccumX < 0 && this->stickAccumX < -500) {
                d = EnOssan_CursorLeft(this, this->cursorIndex, 8);
                if (d != CURSOR_INVALID) {
                    this->cursorIndex = d;
                }
            }
        }
        EnOssan_CursorUpDown(this);
        if (this->cursorIndex != prevIndex) {
            Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
            Sfx_PlaySfxCentered(NA_SE_SY_CURSOR);
        }
    }
}

void EnOssan_State_BrowseRightShelf(EnOssan* this, PlayState* play, Player* player) {
    s32 pad[2];
    u8 prevIndex;
    u8 nextIndex;

    prevIndex = this->cursorIndex;
    if (!EnOssan_ReturnItemToShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2244);
        this->delayTimer = 3;
        return;
    }
    if (this->delayTimer != 0) {
        this->delayTimer--;
        return;
    }
    this->drawCursor = 0xFF;
    this->stickLeftPrompt.isEnabled = true;
    EnOssan_UpdateCursorPos(play, this);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) &&
        !EnOssan_HasPlayerSelectedItem(play, this, &play->state.input[0])) {
        if (this->moveHorizontal) {
            if (this->stickAccumX < 0) {
                nextIndex = EnOssan_CursorRight(this, this->cursorIndex, 0);
                if (nextIndex != CURSOR_INVALID) {
                    this->cursorIndex = nextIndex;
                } else {
                    EnOssan_SetLookToShopkeeperFromShelf(play, this);
                    return;
                }
            } else if (this->stickAccumX > 0) {
                nextIndex = EnOssan_CursorLeft(this, this->cursorIndex, 4);
                if (nextIndex != CURSOR_INVALID) {
                    this->cursorIndex = nextIndex;
                }
            }
        } else {
            if (this->stickAccumX < 0 && this->stickAccumX < -500) {
                nextIndex = EnOssan_CursorRight(this, this->cursorIndex, 0);
                if (nextIndex != CURSOR_INVALID) {
                    this->cursorIndex = nextIndex;
                } else {
                    EnOssan_SetLookToShopkeeperFromShelf(play, this);
                    return;
                }
            } else if (this->stickAccumX > 0 && this->stickAccumX > 500) {
                nextIndex = EnOssan_CursorLeft(this, this->cursorIndex, 4);
                if (nextIndex != CURSOR_INVALID) {
                    this->cursorIndex = nextIndex;
                }
            }
        }
        EnOssan_CursorUpDown(this);
        if (this->cursorIndex != prevIndex) {
            Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
            Sfx_PlaySfxCentered(NA_SE_SY_CURSOR);
        }
    }
}

void EnOssan_State_LookFromShelfToShopkeeper(EnOssan* this, PlayState* play, Player* player) {
    Math_ApproachF(&this->cameraFaceAngle, 0.0f, 0.5f, 10.0f);
    if ((this->cameraFaceAngle < 0.5f) && (this->cameraFaceAngle > -0.5f)) {
        EnOssan_UpdateCameraDirection(this, play, 0.0f);
    }
    EnOssan_UpdateCameraDirection(this, play, this->cameraFaceAngle);
    if (this->cameraFaceAngle == 0.0f) {
        EnOssan_StartShopping(play, this);
    }
}

void EnOssan_State_DisplayOnlyBombDialog(EnOssan* this, PlayState* play, Player* player) {
    if (!EnOssan_ReturnItemToShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2355);
        return;
    }
    Math_ApproachF(&this->cameraFaceAngle, 0.0f, 0.5f, 10.0f);
    if (this->cameraFaceAngle < 0.5f && this->cameraFaceAngle > -0.5f) {
        EnOssan_UpdateCameraDirection(this, play, 0.0f);
    }
    EnOssan_UpdateCameraDirection(this, play, this->cameraFaceAngle);
    if (this->cameraFaceAngle == 0.0f) {
        Message_ContinueTextbox(play, 0x3010);
        this->stateFlag = OSSAN_STATE_WAIT_FOR_DISPLAY_ONLY_BOMB_DIALOG;
    }
}

void EnOssan_GiveItemWithFanfare(PlayState* play, EnOssan* this) {
    Player* player = GET_PLAYER(play);

    PRINTF("\n" VT_FGCOL(YELLOW) "初めて手にいれた！！" VT_RST "\n\n");
    Actor_OfferGetItem(&this->actor, play, this->shelfSlots[this->cursorIndex]->getItemId, 120.0f, 120.0f);
    play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    play->msgCtx.stateTimer = 4;
    player->stateFlags2 &= ~PLAYER_STATE2_29;
    Play_SetViewpoint(play, VIEWPOINT_LOCKED);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
    this->drawCursor = 0;
    EnOssan_UpdateCameraDirection(this, play, 0.0f);
    this->stateFlag = OSSAN_STATE_GIVE_ITEM_FANFARE;
    PRINTF(VT_FGCOL(YELLOW) "持ち上げ開始！！" VT_RST "\n\n");
}

void EnOssan_SetStateCantGetItem(PlayState* play, EnOssan* this, u16 textId) {
    Message_ContinueTextbox(play, textId);
    this->stateFlag = OSSAN_STATE_CANT_GET_ITEM;
}

void EnOssan_SetStateQuickBuyDialog(PlayState* play, EnOssan* this, u16 textId) {
    Message_ContinueTextbox(play, textId);
    this->stateFlag = OSSAN_STATE_QUICK_BUY;
}

void EnOssan_HandleCanBuyItem(PlayState* play, EnOssan* this) {
    EnGirlA* selectedItem = this->shelfSlots[this->cursorIndex];

    switch (selectedItem->canBuyFunc(play, selectedItem)) {
        case CANBUY_RESULT_SUCCESS_FANFARE:
            if (selectedItem->actor.params == SI_HYLIAN_SHIELD && GET_INFTABLE(INFTABLE_76)) {
                EnOssan_SetStateGiveDiscountDialog(play, this);
            } else {
                EnOssan_GiveItemWithFanfare(play, this);
                this->drawCursor = 0;
                this->shopItemSelectedTween = 0.0f;
                selectedItem->setOutOfStockFunc(play, selectedItem);
            }
            break;
        case CANBUY_RESULT_SUCCESS:
            selectedItem->itemGiveFunc(play, selectedItem);
            EnOssan_SetStateQuickBuyDialog(play, this, 0x84);
            this->drawCursor = 0;
            this->shopItemSelectedTween = 0.0f;
            selectedItem->setOutOfStockFunc(play, selectedItem);
            break;
        case CANBUY_RESULT_CANT_GET_NOW:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x86);
            break;
        case CANBUY_RESULT_NEED_BOTTLE:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x96);
            break;
        case CANBUY_RESULT_NEED_RUPEES:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x85);
            break;
        case CANBUY_RESULT_CANT_GET_NOW_5:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x86);
            break;
    }
}

void EnOssan_HandleCanBuyLonLonMilk(PlayState* play, EnOssan* this) {
    EnGirlA* item = this->shelfSlots[this->cursorIndex];

    switch (item->canBuyFunc(play, item)) {
        case CANBUY_RESULT_SUCCESS_FANFARE:
            Message_ContinueTextbox(play, 0x9C);
            this->stateFlag = OSSAN_STATE_GIVE_LON_LON_MILK;
            this->drawCursor = 0;
            break;
        case CANBUY_RESULT_SUCCESS:
            item->itemGiveFunc(play, item);
            EnOssan_SetStateQuickBuyDialog(play, this, 0x98);
            this->drawCursor = 0;
            this->shopItemSelectedTween = 0.0f;
            item->setOutOfStockFunc(play, item);
            break;
        case CANBUY_RESULT_NEED_BOTTLE:
            EnOssan_SetStateCantGetItem(play, this, 0x96);
            break;
        case CANBUY_RESULT_NEED_RUPEES:
            EnOssan_SetStateCantGetItem(play, this, 0x85);
            break;
    }
}

void EnOssan_HandleCanBuyWeirdEgg(PlayState* play, EnOssan* this) {
    EnGirlA* item = this->shelfSlots[this->cursorIndex];

    switch (item->canBuyFunc(play, item)) {
        case CANBUY_RESULT_SUCCESS_FANFARE:
            EnOssan_GiveItemWithFanfare(play, this);
            this->drawCursor = 0;
            this->shopItemSelectedTween = 0.0f;
            item->setOutOfStockFunc(play, item);
            break;
        case CANBUY_RESULT_SUCCESS:
            item->itemGiveFunc(play, item);
            EnOssan_SetStateQuickBuyDialog(play, this, 0x9A);
            this->drawCursor = 0;
            this->shopItemSelectedTween = 0.0f;
            item->setOutOfStockFunc(play, item);
            break;
        case CANBUY_RESULT_CANT_GET_NOW:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x9D);
            break;
        case CANBUY_RESULT_NEED_RUPEES:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x85);
            break;
    }
}

void EnOssan_HandleCanBuyBombs(PlayState* play, EnOssan* this) {
    EnGirlA* item = this->shelfSlots[this->cursorIndex];

    switch (item->canBuyFunc(play, item)) {
        case CANBUY_RESULT_SUCCESS_FANFARE:
        case CANBUY_RESULT_SUCCESS:
            item->itemGiveFunc(play, item);
            EnOssan_SetStateQuickBuyDialog(play, this, 0x84);
            this->drawCursor = 0;
            this->shopItemSelectedTween = 0.0f;
            item->setOutOfStockFunc(play, item);
            break;
        case CANBUY_RESULT_CANT_GET_NOW:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x86);
            break;
        case CANBUY_RESULT_NEED_RUPEES:
            Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
            EnOssan_SetStateCantGetItem(play, this, 0x85);
            break;
    }
}

void EnOssan_BuyGoronCityBombs(PlayState* play, EnOssan* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_25)) {
            if (GET_INFTABLE(INFTABLE_FC)) {
                EnOssan_SetStateCantGetItem(play, this, 0x302E);
            } else {
                this->stickLeftPrompt.isEnabled = false;
                this->stickRightPrompt.isEnabled = false;
                this->drawCursor = 0;
                this->stateFlag = OSSAN_STATE_DISPLAY_ONLY_BOMB_DIALOG;
            }
        } else {
            EnOssan_HandleCanBuyBombs(play, this);
        }
    } else {
        EnOssan_HandleCanBuyBombs(play, this);
    }
}

void EnOssan_State_ItemSelected(EnOssan* this, PlayState* play2, Player* player) {
    PlayState* play = play2; // Necessary for OKs

    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2654);
        return;
    }
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE &&
        !EnOssan_TestCancelOption(this, play, &play->state.input[0]) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                EnOssan_HandleCanBuyItem(play, this);
                break;
            case 1:
                this->stateFlag = this->tempStateFlag;
                Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
                break;
        }
    }
}

void EnOssan_State_SelectMilkBottle(EnOssan* this, PlayState* play2, Player* player) {
    PlayState* play = play2; // Need for OK

    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2693);
        return;
    }
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE &&
        !EnOssan_TestCancelOption(this, play, &play->state.input[0]) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                EnOssan_HandleCanBuyLonLonMilk(play, this);
                break;
            case 1:
                this->stateFlag = this->tempStateFlag;
                Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
                break;
        }
    }
}

void EnOssan_State_SelectWeirdEgg(EnOssan* this, PlayState* play2, Player* player) {
    PlayState* play = play2; // Needed for OK

    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2732);
        return;
    }
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE &&
        !EnOssan_TestCancelOption(this, play, &play->state.input[0]) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                EnOssan_HandleCanBuyWeirdEgg(play, this);
                break;
            case 1:
                this->stateFlag = this->tempStateFlag;
                Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
                break;
        }
    }
}

void EnOssan_State_SelectUnimplementedItem(EnOssan* this, PlayState* play, Player* player) {
    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2771);
        return;
    }
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        this->stateFlag = this->tempStateFlag;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
    }
}

void EnOssan_State_SelectBombs(EnOssan* this, PlayState* play, Player* player) {
    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2798);
        return;
    }
    PRINTF("店主の依頼 ( %d )\n", GET_INFTABLE(INFTABLE_FC));
    if (this->actor.params != OSSAN_TYPE_GORON) {
        EnOssan_State_ItemSelected(this, play, player);
        return;
    }
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE &&
        !EnOssan_TestCancelOption(this, play, &play->state.input[0]) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                EnOssan_BuyGoronCityBombs(play, this);
                break;
            case 1:
                this->stateFlag = this->tempStateFlag;
                Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
                break;
        }
    }
}

void EnOssan_State_SelectMaskItem(EnOssan* this, PlayState* play, Player* player) {
    u8 talkState = Message_GetState(&play->msgCtx);
    EnGirlA* item = this->shelfSlots[this->cursorIndex];

    if (!EnOssan_TakeItemOffShelf(this)) {
        PRINTF("%s[%d]:" VT_FGCOL(GREEN) "ズーム中！！" VT_RST "\n", "../z_en_oB1.c", 2845);
        return;
    }
    if (talkState == TEXT_STATE_EVENT) {
        if (Message_ShouldAdvance(play)) {
            this->stateFlag = this->tempStateFlag;
            Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
        }
    } else if (talkState == TEXT_STATE_CHOICE && !EnOssan_TestCancelOption(this, play, &play->state.input[0]) &&
               Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                switch (item->actor.params) {
                    case SI_KEATON_MASK:
                        SET_ITEMGETINF(ITEMGETINF_23);
                        break;
                    case SI_SPOOKY_MASK:
                        SET_ITEMGETINF(ITEMGETINF_25);
                        break;
                    case SI_SKULL_MASK:
                        SET_ITEMGETINF(ITEMGETINF_24);
                        break;
                    case SI_BUNNY_HOOD:
                        SET_ITEMGETINF(ITEMGETINF_26);
                        break;
                    case SI_MASK_OF_TRUTH:
                    case SI_ZORA_MASK:
                    case SI_GORON_MASK:
                    case SI_GERUDO_MASK:
                        break;
                }
                EnOssan_GiveItemWithFanfare(play, this);
                this->drawCursor = 0;
                this->shopItemSelectedTween = 0.0f;
                item->setOutOfStockFunc(play, item);
                break;
            case 1:
                this->stateFlag = this->tempStateFlag;
                Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
                break;
        }
    }
}

void EnOssan_State_CantGetItem(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        this->stateFlag = this->tempStateFlag;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
    }
}

void EnOssan_State_QuickBuyDialog(EnOssan* this, PlayState* play, Player* player) {
    EnGirlA* item;

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        this->shopItemSelectedTween = 0.0f;
        EnOssan_ResetItemPosition(this);
        item = this->shelfSlots[this->cursorIndex];
        item->updateStockedItemFunc(play, item);
        this->stateFlag = this->tempStateFlag;
        Message_ContinueTextbox(play, this->shelfSlots[this->cursorIndex]->actor.textId);
    }
}

void EnOssan_State_GiveItemWithFanfare(EnOssan* this, PlayState* play, Player* player) {
    // The player sets itself as the parent actor to signal that it has obtained the give item request
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->stateFlag = OSSAN_STATE_ITEM_PURCHASED;
        return;
    }
    Actor_OfferGetItem(&this->actor, play, this->shelfSlots[this->cursorIndex]->getItemId, 120.0f, 120.0f);
}

void EnOssan_State_ItemPurchased(EnOssan* this, PlayState* play, Player* player) {
    EnGirlA* item;
    EnGirlA* itemTemp;

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        if (this->actor.params == OSSAN_TYPE_MASK) {
            itemTemp = this->shelfSlots[this->cursorIndex];
            EnOssan_ResetItemPosition(this);
            item = this->shelfSlots[this->cursorIndex];
            item->updateStockedItemFunc(play, item);
            if (itemTemp->actor.params == SI_MASK_OF_TRUTH && !GET_ITEMGETINF(ITEMGETINF_3F)) {
                SET_ITEMGETINF(ITEMGETINF_3F);
                Message_ContinueTextbox(play, 0x70AB);
                this->happyMaskShopState = OSSAN_HAPPY_STATE_BORROWED_FIRST_MASK;
                EnOssan_UpdateShopOfferings(this, play);
                this->stateFlag = OSSAN_STATE_START_CONVERSATION;
                return;
            } else {
                EnOssan_EndInteraction(play, this);
                return;
            }
        }
        item = this->shelfSlots[this->cursorIndex];
        item->buyEventFunc(play, item);
        this->stateFlag = OSSAN_STATE_CONTINUE_SHOPPING_PROMPT;
        Message_ContinueTextbox(play, 0x6B);
    }
}

void EnOssan_State_ContinueShoppingPrompt(EnOssan* this, PlayState* play, Player* player) {
    EnGirlA* selectedItem;
    u8 talkState = Message_GetState(&play->msgCtx);

    if (talkState == TEXT_STATE_CHOICE) {
        if (Message_ShouldAdvance(play)) {
            EnOssan_ResetItemPosition(this);
            selectedItem = this->shelfSlots[this->cursorIndex];
            selectedItem->updateStockedItemFunc(play, selectedItem);
            if (!EnOssan_TestEndInteraction(this, play, &play->state.input[0])) {
                s32 pad;

                switch (play->msgCtx.choiceIndex) {
                    case 0:
                        PRINTF(VT_FGCOL(YELLOW) "★★★ 続けるよ！！ ★★★" VT_RST "\n");
                        player->actor.shape.rot.y += 0x8000;
                        player->stateFlags2 |= PLAYER_STATE2_29;
                        Play_SetViewpoint(play, VIEWPOINT_PIVOT);
                        Message_StartTextbox(play, this->actor.textId, &this->actor);
                        EnOssan_SetStateStartShopping(play, this, true);
                        Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 100.0f, -1);
                        break;
                    case 1:
                    default:
                        PRINTF(VT_FGCOL(YELLOW) "★★★ やめるよ！！ ★★★" VT_RST "\n");
                        EnOssan_EndInteraction(play, this);
                        break;
                }
            }
        }
    } else if (talkState == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        EnOssan_ResetItemPosition(this);
        selectedItem = this->shelfSlots[this->cursorIndex];
        selectedItem->updateStockedItemFunc(play, selectedItem);
        player->actor.shape.rot.y += 0x8000;
        player->stateFlags2 |= PLAYER_STATE2_29;
        Play_SetViewpoint(play, VIEWPOINT_PIVOT);
        Message_StartTextbox(play, this->actor.textId, &this->actor);
        EnOssan_SetStateStartShopping(play, this, true);
        Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 100.0f, -1);
    }
}

void EnOssan_State_WaitForDisplayOnlyBombDialog(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        SET_INFTABLE(INFTABLE_FC);
        EnOssan_StartShopping(play, this);
    }
}

// Unreachable
void EnOssan_State_21(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE_HAS_NEXT && Message_ShouldAdvance(play)) {
        this->stateFlag = OSSAN_STATE_22;
        Message_ContinueTextbox(play, 0x3012);
        SET_INFTABLE(INFTABLE_FC);
    }
}

// Unreachable
void EnOssan_State_22(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        EnOssan_StartShopping(play, this);
    }
}

void EnOssan_State_GiveLonLonMilk(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        EnOssan_GiveItemWithFanfare(play, this);
    }
}

// For giving Mask of Truth when you first sell all masks
void EnOssan_State_LendMaskOfTruth(EnOssan* this, PlayState* play, Player* player) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        SET_ITEMGETINF(ITEMGETINF_2A);
        this->cursorIndex = 2;
        EnOssan_GiveItemWithFanfare(play, this);
    }
}

// Hylian Shield discount dialog
void EnOssan_SetStateGiveDiscountDialog(PlayState* play, EnOssan* this) {
    Message_ContinueTextbox(play, 0x71B2);
    this->stateFlag = OSSAN_STATE_DISCOUNT_DIALOG;
}

void EnOssan_State_GiveDiscountDialog(EnOssan* this, PlayState* play, Player* player) {
    EnGirlA* selectedItem;

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE && Message_ShouldAdvance(play)) {
        selectedItem = this->shelfSlots[this->cursorIndex];
        EnOssan_GiveItemWithFanfare(play, this);
        this->drawCursor = 0;
        this->shopItemSelectedTween = 0.0f;
        selectedItem->setOutOfStockFunc(play, selectedItem);
    }
}

void EnOssan_PositionSelectedItem(EnOssan* this) {
    EnGirlA* item;
    u8 i;
    u8 i2;
    ShopItem* shopItem;
    f32 tx;
    f32 ty;
    f32 tz;

    i = this->cursorIndex;
    shopItem = &sShopkeeperStores[this->actor.params][i];
    item = this->shelfSlots[i];

    i2 = i >> 2;
    tx = (sSelectedItemPosition[i2].x - shopItem->xOffset) * this->shopItemSelectedTween + shopItem->xOffset;
    ty = (sSelectedItemPosition[i2].y - shopItem->yOffset) * this->shopItemSelectedTween + shopItem->yOffset;
    tz = (sSelectedItemPosition[i2].z - shopItem->zOffset) * this->shopItemSelectedTween + shopItem->zOffset;

    item->actor.world.pos.x = this->shelves->actor.world.pos.x + tx;
    item->actor.world.pos.y = this->shelves->actor.world.pos.y + ty;
    item->actor.world.pos.z = this->shelves->actor.world.pos.z + tz;
}

void EnOssan_ResetItemPosition(EnOssan* this) {
    this->shopItemSelectedTween = 0.0f;
    EnOssan_PositionSelectedItem(this);
}

// returns true if animation has completed
s32 EnOssan_TakeItemOffShelf(EnOssan* this) {
    Math_ApproachF(&this->shopItemSelectedTween, 1.0f, 1.0f, 0.15f);
    if (this->shopItemSelectedTween >= 0.85f) {
        this->shopItemSelectedTween = 1.0f;
    }
    EnOssan_PositionSelectedItem(this);
    if (this->shopItemSelectedTween == 1.0f) {
        return true;
    } else {
        return false;
    }
}

// returns true if animation has completed
s32 EnOssan_ReturnItemToShelf(EnOssan* this) {
    Math_ApproachF(&this->shopItemSelectedTween, 0.0f, 1.0f, 0.15f);
    if (this->shopItemSelectedTween <= 0.15f) {
        this->shopItemSelectedTween = 0.0f;
    }
    EnOssan_PositionSelectedItem(this);
    if (this->shopItemSelectedTween == 0.0f) {
        return true;
    } else {
        return false;
    }
}

void EnOssan_UpdateItemSelectedProperty(EnOssan* this) {
    EnGirlA** temp_a1 = this->shelfSlots;
    s32 i;

    for (i = 0; i < 8; i++) {
        if (temp_a1[0] != NULL) {
            if (this->stateFlag != OSSAN_STATE_SELECT_ITEM &&
                this->stateFlag != OSSAN_STATE_SELECT_ITEM_BOTTLE_MILK_FULL &&
                this->stateFlag != OSSAN_STATE_SELECT_ITEM_WEIRD_EGG &&
                this->stateFlag != OSSAN_STATE_SELECT_ITEM_UNIMPLEMENTED &&
                this->stateFlag != OSSAN_STATE_SELECT_ITEM_BOMBS && this->stateFlag != OSSAN_STATE_SELECT_ITEM_MASK &&
                this->stateFlag != OSSAN_STATE_CANT_GET_ITEM && this->drawCursor == 0) {
                temp_a1[0]->isSelected = false;
            } else {
                if (this->cursorIndex == i) {
                    temp_a1[0]->isSelected = true;
                } else {
                    temp_a1[0]->isSelected = false;
                }
            }
        }
        temp_a1++;
    }
}

void EnOssan_UpdateCursorAnim(EnOssan* this) {
    f32 t;

    t = this->cursorAnimTween;
    if (this->cursorAnimState == 0) {
        t += 0.05f;
        if (t >= 1.0f) {
            t = 1.0f;
            this->cursorAnimState = 1;
        }
    } else {
        t -= 0.05f;
        if (t <= 0.0f) {
            t = 0.0f;
            this->cursorAnimState = 0;
        }
    }
    this->cursorColorR = ColChanMix(CURSOR_COLOR_R, 0.0f, t);
    this->cursorColorG = ColChanMix(CURSOR_COLOR_G, 80.0f, t);
    this->cursorColorB = ColChanMix(CURSOR_COLOR_B, 0.0f, t);
    this->cursorColorA = ColChanMix(CURSOR_COLOR_A, 0.0f, t);
    this->cursorAnimTween = t;
}

void EnOssan_UpdateStickDirectionPromptAnim(EnOssan* this) {
    f32 arrowAnimTween;
    f32 new_var3;       // likely fake temp
    s32 new_var2 = 255; // likely fake temp
    f32 stickAnimTween;

    arrowAnimTween = this->arrowAnimTween;
    stickAnimTween = this->stickAnimTween;
    if (this->arrowAnimState == 0) {
        arrowAnimTween += 0.05f;
        if (arrowAnimTween > 1.0f) {
            arrowAnimTween = 1.0f;
            this->arrowAnimState = 1;
        }

    } else {
        arrowAnimTween -= 0.05f;
        if (arrowAnimTween < 0.0f) {
            arrowAnimTween = 0.0f;
            this->arrowAnimState = 0;
        }
    }

    this->arrowAnimTween = arrowAnimTween;
    if (this->stickAnimState == 0) {
        stickAnimTween += 0.1f;
        if (stickAnimTween > 1.0f) {
            stickAnimTween = 1.0f;
            this->stickAnimState = 1;
        }

    } else {
        stickAnimTween = 0.0f;
        this->stickAnimState = 0;
    }

    this->stickAnimTween = stickAnimTween;
    this->stickLeftPrompt.arrowColorR = (u8)(255 - ((s32)(155.0f * arrowAnimTween)));
    this->stickLeftPrompt.arrowColorG = (u8)(new_var2 - (s32)(155.0f * arrowAnimTween));
    new_var3 = (155.0f * arrowAnimTween);
    this->stickLeftPrompt.arrowColorB = (u8)(0 - ((s32)((-100.0f) * arrowAnimTween)));
    this->stickLeftPrompt.arrowColorA = (u8)(200 - ((s32)(50.0f * arrowAnimTween)));
    this->stickRightPrompt.arrowColorR = (u8)(new_var2 - (s32)new_var3);
    this->stickRightPrompt.arrowColorG = (u8)(255 - (s32)new_var3);
    this->stickRightPrompt.arrowColorB = (u8)(0 - ((s32)((-100.0f) * arrowAnimTween)));
    this->stickRightPrompt.arrowColorA = (u8)(200 - ((s32)(50.0f * arrowAnimTween)));
    this->stickRightPrompt.arrowTexX = 290.0f;
    this->stickLeftPrompt.arrowTexX = 33.0f;
    this->stickRightPrompt.stickTexX = 274.0f;
    this->stickLeftPrompt.stickTexX = 49.0f;
    this->stickRightPrompt.stickTexX += (8.0f * stickAnimTween);
    this->stickLeftPrompt.stickTexX -= (8.0f * stickAnimTween);
    this->stickLeftPrompt.arrowTexY = this->stickRightPrompt.arrowTexY = 91.0f;
    this->stickLeftPrompt.stickTexY = this->stickRightPrompt.stickTexY = 95.0f;
}

void EnOssan_WaitForBlink(EnOssan* this) {
    s16 decr = this->blinkTimer - 1;

    if (decr != 0) {
        this->blinkTimer = decr;
    } else {
        this->blinkFunc = EnOssan_Blink;
    }
}

void EnOssan_Blink(EnOssan* this) {
    s16 decr;
    s16 eyeTextureIdxTemp;

    decr = this->blinkTimer - 1;
    if (decr != 0) {
        this->blinkTimer = decr;
        return;
    }
    eyeTextureIdxTemp = this->eyeTextureIdx + 1;
    if (eyeTextureIdxTemp > 2) {
        this->eyeTextureIdx = 0;
        this->blinkTimer = (s32)(Rand_ZeroOne() * 60.0f) + 20;
        this->blinkFunc = EnOssan_WaitForBlink;
    } else {
        this->eyeTextureIdx = eyeTextureIdxTemp;
        this->blinkTimer = 1;
    }
}

s32 EnOssan_AreShopkeeperObjectsLoaded(EnOssan* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->objectSlot1)) {
        if (this->objectSlot2 >= 0 && !Object_IsLoaded(&play->objectCtx, this->objectSlot2)) {
            return false;
        }
        if (this->objectSlot3 >= 0 && !Object_IsLoaded(&play->objectCtx, this->objectSlot3)) {
            return false;
        }
        return true;
    }
    return false;
}

void EnOssan_InitBazaarShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gObjectOssanSkel, &gObjectOssanAnim_000338, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawBazaarShopkeeper;
    this->obj3ToSeg6Func = NULL;
}

void EnOssan_InitKokiriShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gKm1Skel, NULL, NULL, NULL, 0);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->objectSlot3].segment);
    Animation_Change(&this->skelAnime, &object_masterkokiri_Anim_0004A8, 1.0f, 0.0f,
                     Animation_GetLastFrame(&object_masterkokiri_Anim_0004A8), 0, 0.0f);
    this->actor.draw = EnOssan_DrawKokiriShopkeeper;
    this->obj3ToSeg6Func = EnOssan_Obj3ToSeg6;
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);
}

void EnOssan_InitGoronShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gGoronSkel, NULL, NULL, NULL, 0);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->objectSlot3].segment);
    Animation_Change(&this->skelAnime, &gGoronShopkeeperAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGoronShopkeeperAnim),
                     0, 0.0f);
    this->actor.draw = EnOssan_DrawGoronShopkeeper;
    this->obj3ToSeg6Func = EnOssan_Obj3ToSeg6;
}

void EnOssan_InitZoraShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gZoraSkel, NULL, NULL, NULL, 0);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->objectSlot3].segment);
    Animation_Change(&this->skelAnime, &gZoraShopkeeperAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gZoraShopkeeperAnim),
                     0, 0.0f);
    this->actor.draw = EnOssan_DrawZoraShopkeeper;
    this->obj3ToSeg6Func = EnOssan_Obj3ToSeg6;
}

void EnOssan_InitPotionShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &object_ds2_Skel_004258, &object_ds2_Anim_0002E4, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawPotionShopkeeper;
    this->obj3ToSeg6Func = NULL;
}

void EnOssan_InitHappyMaskShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gHappyMaskSalesmanSkel, &gHappyMaskSalesmanIdleAnim, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawHappyMaskShopkeeper;
    this->obj3ToSeg6Func = NULL;
}

void EnOssan_InitBombchuShopkeeper(EnOssan* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gBombchuShopkeeperSkel, &gBombchuShopkeeperIdleAnim, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawBombchuShopkeeper;
    this->obj3ToSeg6Func = NULL;
}

u16 EnOssan_SetupHelloDialog(EnOssan* this) {
    this->happyMaskShopState = OSSAN_HAPPY_STATE_NONE;
    // mask shop messages
    if (this->actor.params == OSSAN_TYPE_MASK) {
        if (INV_CONTENT(ITEM_TRADE_CHILD) == ITEM_SOLD_OUT) {
            if (GET_ITEMGETINF(ITEMGETINF_3B)) {
                if (!GET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_BUNNY_HOOD)) {
                    // Pay back Bunny Hood
                    this->happyMaskShopState = OSSAN_HAPPY_STATE_REQUEST_PAYMENT_BUNNY_HOOD;
                    return 0x70C6;
                } else {
                    return 0x70AC;
                }
            }
            if (GET_ITEMGETINF(ITEMGETINF_3A)) {
                if (!GET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_SPOOKY_MASK)) {
                    // Pay back Spooky Mask
                    this->happyMaskShopState = OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SPOOKY_MASK;
                    return 0x70C5;
                } else {
                    return 0x70AC;
                }
            }
            if (GET_ITEMGETINF(ITEMGETINF_39)) {
                if (!GET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_SKULL_MASK)) {
                    // Pay back Skull Mask
                    this->happyMaskShopState = OSSAN_HAPPY_STATE_REQUEST_PAYMENT_SKULL_MASK;
                    return 0x70C4;
                } else {
                    return 0x70AC;
                }
            }
            if (GET_ITEMGETINF(ITEMGETINF_38)) {
                if (!GET_EVENTCHKINF(EVENTCHKINF_PAID_BACK_KEATON_MASK)) {
                    // Pay back Keaton Mask
                    this->happyMaskShopState = OSSAN_HAPPY_STATE_REQUEST_PAYMENT_KEATON_MASK;
                    return 0x70A5;
                } else {
                    return 0x70AC;
                }
            }
        } else {
            if (GET_ITEMGETINF(ITEMGETINF_3B)) {
                return 0x70AC;
            } else if (!GET_ITEMGETINF(ITEMGETINF_3A) && !GET_ITEMGETINF(ITEMGETINF_24) &&
                       !GET_ITEMGETINF(ITEMGETINF_38)) {
                // Haven't borrowed the Keaton Mask
                if (!GET_ITEMGETINF(ITEMGETINF_23)) {
                    return 0x70A1;
                } else {
                    // Haven't sold the Keaton Mask
                    this->happyMaskShopState = OSSAN_HAPPY_STATE_BORROWED_FIRST_MASK;
                    return 0x70A6;
                }
            } else {
                return 0x70C7;
            }
        }
    }

    return 0x9E;
}

void EnOssan_InitActionFunc(EnOssan* this, PlayState* play) {
    ShopItem* items;

    if (EnOssan_AreShopkeeperObjectsLoaded(this, play)) {
        this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        this->actor.objectSlot = this->objectSlot1;
        Actor_SetObjectDependency(play, &this->actor);

        this->shelves = (EnTana*)Actor_Find(&play->actorCtx, ACTOR_EN_TANA, ACTORCAT_PROP);

        if (this->shelves == NULL) {
            PRINTF_COLOR_ERROR();
            // "Warning!! There are no shelves!!"
            PRINTF("★★★ 警告！！ 棚がないよ！！ ★★★\n");
            PRINTF_RST();
            return;
        }

        // "Shopkeeper (params) init"
        PRINTF(VT_FGCOL(YELLOW) "◇◇◇ 店のおやじ( %d ) 初期設定 ◇◇◇" VT_RST "\n", this->actor.params);

        this->actor.world.pos.x += sShopkeeperPositionOffsets[this->actor.params].x;
        this->actor.world.pos.y += sShopkeeperPositionOffsets[this->actor.params].y;
        this->actor.world.pos.z += sShopkeeperPositionOffsets[this->actor.params].z;

        items = sShopkeeperStores[this->actor.params];

        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
        sInitFuncs[this->actor.params](this, play);
        this->actor.textId = EnOssan_SetupHelloDialog(this);
        this->cursorY = this->cursorX = 100.0f;
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        this->actor.colChkInfo.cylRadius = 50;
        this->stateFlag = OSSAN_STATE_IDLE;
        this->stickAccumX = this->stickAccumY = 0;

        this->cursorIndex = 0;
        this->cursorZ = 1.5f;
        this->cursorColorR = CURSOR_COLOR_R;
        this->cursorColorG = CURSOR_COLOR_G;
        this->cursorColorB = CURSOR_COLOR_B;
        this->cursorColorA = CURSOR_COLOR_A;
        this->cursorAnimTween = 0;

        this->cursorAnimState = 0;
        this->drawCursor = 0;
        this->happyMaskShopkeeperEyeIdx = 0;

        this->stickLeftPrompt.stickColorR = 200;
        this->stickLeftPrompt.stickColorG = 200;
        this->stickLeftPrompt.stickColorB = 200;
        this->stickLeftPrompt.stickColorA = 180;
        this->stickLeftPrompt.stickTexX = 49;
        this->stickLeftPrompt.stickTexY = 95;
        this->stickLeftPrompt.arrowColorR = 255;
        this->stickLeftPrompt.arrowColorG = 255;
        this->stickLeftPrompt.arrowColorB = 0;
        this->stickLeftPrompt.arrowColorA = 200;
        this->stickLeftPrompt.arrowTexX = 33;
        this->stickLeftPrompt.arrowTexY = 91;
        this->stickLeftPrompt.z = 1;
        this->stickLeftPrompt.isEnabled = false;

        this->stickRightPrompt.stickColorR = 200;
        this->stickRightPrompt.stickColorG = 200;
        this->stickRightPrompt.stickColorB = 200;
        this->stickRightPrompt.stickColorA = 180;
        this->stickRightPrompt.stickTexX = 274;
        this->stickRightPrompt.stickTexY = 95;
        this->stickRightPrompt.arrowColorR = 255;
        this->stickRightPrompt.arrowColorG = 255;
        this->stickRightPrompt.arrowColorB = 0;
        this->stickRightPrompt.arrowColorA = 200;
        this->stickRightPrompt.arrowTexX = 290;
        this->stickRightPrompt.arrowTexY = 91;
        this->stickRightPrompt.z = 1;
        this->stickRightPrompt.isEnabled = false;

        this->arrowAnimState = 0;
        this->stickAnimState = 0;
        this->arrowAnimTween = 0;
        this->stickAnimTween = 0;
        this->shopItemSelectedTween = 0;
        Actor_SetScale(&this->actor, sShopkeeperScale[this->actor.params]);
        EnOssan_SpawnItemsOnShelves(this, play, items);
        this->headRot = this->headTargetRot = 0;
        this->blinkTimer = 20;
        this->eyeTextureIdx = 0;
        this->blinkFunc = EnOssan_WaitForBlink;
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        EnOssan_SetupAction(this, EnOssan_MainActionFunc);
    }
}

void EnOssan_Obj3ToSeg6(EnOssan* this, PlayState* play) {
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->objectSlot3].segment);
}

void EnOssan_MainActionFunc(EnOssan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->blinkFunc(this);
    EnOssan_UpdateJoystickInputState(play, this);
    EnOssan_UpdateItemSelectedProperty(this);
    EnOssan_UpdateStickDirectionPromptAnim(this);
    EnOssan_UpdateCursorAnim(this);
    Math_StepToS(&this->headRot, this->headTargetRot, 0x190);

    if (player != NULL) {
        sStateFunc[this->stateFlag](this, play, player);
    }

    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 26.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    Actor_SetFocus(&this->actor, 90.0f);
    Actor_SetScale(&this->actor, sShopkeeperScale[this->actor.params]);

    // use animation object if needed
    if (this->obj3ToSeg6Func != NULL) {
        this->obj3ToSeg6Func(this, play);
    }

    SkelAnime_Update(&this->skelAnime);
}

void EnOssan_Update(Actor* thisx, PlayState* play) {
    EnOssan* this = (EnOssan*)thisx;

    this->timer++;
    this->actionFunc(this, play);
}

s32 EnOssan_OverrideLimbDrawDefaultShopkeeper(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                              void* thisx) {
    EnOssan* this = (EnOssan*)thisx;

    if (limbIndex == 8) {
        rot->x += this->headRot;
    }
    return 0;
}

void EnOssan_DrawCursor(PlayState* play, EnOssan* this, f32 x, f32 y, f32 z, u8 drawCursor) {
    s32 ulx, uly, lrx, lry;
    f32 w;
    s32 dsdx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4192);
    if (drawCursor != 0) {
        Gfx_SetupDL_39Overlay(play->state.gfxCtx);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, this->cursorColorR, this->cursorColorG, this->cursorColorB,
                        this->cursorColorA);
        gDPLoadTextureBlock_4b(OVERLAY_DISP++, gSelectionCursorTex, G_IM_FMT_IA, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                               G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD);
        w = 16.0f * z;
        ulx = (x - w) * 4.0f;
        uly = (y - w) * 4.0f;
        lrx = (x + w) * 4.0f;
        lry = (y + w) * 4.0f;
        dsdx = (1.0f / z) * 1024.0f;
        gSPTextureRectangle(OVERLAY_DISP++, ulx, uly, lrx, lry, G_TX_RENDERTILE, 0, 0, dsdx, dsdx);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4215);
}

void EnOssan_DrawTextRec(PlayState* play, s32 r, s32 g, s32 b, s32 a, f32 x, f32 y, f32 z, s32 s, s32 t, f32 dx,
                         f32 dy) {
    f32 texCoordScale;
    s32 ulx, uly, lrx, lry;
    f32 w, h;
    s32 dsdx, dtdy;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4228);
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, r, g, b, a);

    w = 8.0f * z;
    ulx = (x - w) * 4.0f;
    lrx = (x + w) * 4.0f;

    h = 12.0f * z;
    uly = (y - h) * 4.0f;
    lry = (y + h) * 4.0f;

    texCoordScale = (1.0f / z) * 1024;
    dsdx = texCoordScale * dx;
    dtdy = dy * texCoordScale;

    gSPTextureRectangle(OVERLAY_DISP++, ulx, uly, lrx, lry, G_TX_RENDERTILE, s, t, dsdx, dtdy);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4242);
}

void EnOssan_DrawStickDirectionPrompts(PlayState* play, EnOssan* this) {
    s32 drawStickLeftPrompt = this->stickLeftPrompt.isEnabled;
    s32 drawStickRightPrompt = this->stickRightPrompt.isEnabled;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4252);
    if (drawStickLeftPrompt || drawStickRightPrompt) {
        Gfx_SetupDL_39Overlay(play->state.gfxCtx);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPLoadTextureBlock(OVERLAY_DISP++, gArrowCursorTex, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 24, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        if (drawStickLeftPrompt) {
            EnOssan_DrawTextRec(play, this->stickLeftPrompt.arrowColorR, this->stickLeftPrompt.arrowColorG,
                                this->stickLeftPrompt.arrowColorB, this->stickLeftPrompt.arrowColorA,
                                this->stickLeftPrompt.arrowTexX, this->stickLeftPrompt.arrowTexY,
                                this->stickLeftPrompt.z, 0, 0, -1.0f, 1.0f);
        }
        if (drawStickRightPrompt) {
            EnOssan_DrawTextRec(play, this->stickRightPrompt.arrowColorR, this->stickRightPrompt.arrowColorG,
                                this->stickRightPrompt.arrowColorB, this->stickRightPrompt.arrowColorA,
                                this->stickRightPrompt.arrowTexX, this->stickRightPrompt.arrowTexY,
                                this->stickRightPrompt.z, 0, 0, 1.0f, 1.0f);
        }
        gDPLoadTextureBlock(OVERLAY_DISP++, gControlStickTex, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        if (drawStickLeftPrompt) {
            EnOssan_DrawTextRec(play, this->stickLeftPrompt.stickColorR, this->stickLeftPrompt.stickColorG,
                                this->stickLeftPrompt.stickColorB, this->stickLeftPrompt.stickColorA,
                                this->stickLeftPrompt.stickTexX, this->stickLeftPrompt.stickTexY,
                                this->stickLeftPrompt.z, 0, 0, -1.0f, 1.0f);
        }
        if (drawStickRightPrompt) {
            EnOssan_DrawTextRec(play, this->stickRightPrompt.stickColorR, this->stickRightPrompt.stickColorG,
                                this->stickRightPrompt.stickColorB, this->stickRightPrompt.stickColorA,
                                this->stickRightPrompt.stickTexX, this->stickRightPrompt.stickTexY,
                                this->stickRightPrompt.z, 0, 0, 1.0f, 1.0f);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4300);
}

void EnOssan_DrawBazaarShopkeeper(Actor* thisx, PlayState* play) {
    static void* sBazaarShopkeeperEyeTextures[] = { gOssanEyeOpenTex, gOssanEyeHalfTex, gOssanEyeClosedTex };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4320);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sBazaarShopkeeperEyeTextures[this->eyeTextureIdx]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawDefaultShopkeeper, NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4340);
}

s32 EnOssan_OverrideLimbDrawKokiriShopkeeper(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                             void* thisx) {
    static void* sKokiriShopkeeperEyeTextures[] = {
        gKokiriShopkeeperEyeDefaultTex,
        gKokiriShopkeeperEyeHalfTex,
        gKokiriShopkeeperEyeOpenTex,
    };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4354);

    if (limbIndex == 15) {
        gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.slots[this->objectSlot2].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->objectSlot2].segment);
        *dList = gKokiriShopkeeperHeadDL;
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sKokiriShopkeeperEyeTextures[this->eyeTextureIdx]));
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4374);

    return 0;
}

Gfx* EnOssan_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* disp = GRAPH_ALLOC(gfxCtx, sizeof(Gfx));

    gSPEndDisplayList(disp);
    return disp;
}

Gfx* EnOssan_SetEnvColor(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* disp = GRAPH_ALLOC(gfxCtx, sizeof(Gfx) * 2);

    gDPSetEnvColor(disp, r, g, b, a);
    gSPEndDisplayList(disp + 1);
    return disp;
}

void EnOssan_DrawKokiriShopkeeper(Actor* thisx, PlayState* play) {
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4409);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x08, EnOssan_SetEnvColor(play->state.gfxCtx, 0, 130, 70, 255));
    gSPSegment(POLY_OPA_DISP++, 0x09, EnOssan_SetEnvColor(play->state.gfxCtx, 110, 170, 20, 255));
    gSPSegment(POLY_OPA_DISP++, 0x0C, EnOssan_EmptyDList(play->state.gfxCtx));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawKokiriShopkeeper, NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4434);
}

void EnOssan_DrawGoronShopkeeper(Actor* thisx, PlayState* play) {
    static void* sGoronShopkeeperEyeTextures[] = { gGoronCsEyeOpenTex, gGoronCsEyeHalfTex, gGoronCsEyeClosedTex };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4455);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sGoronShopkeeperEyeTextures[this->eyeTextureIdx]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(gGoronCsMouthNeutralTex));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4476);
}

s32 EnOssan_OverrideLimbDrawZoraShopkeeper(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                           void* thisx) {
    EnOssan* this = (EnOssan*)thisx;

    if (limbIndex == 15) {
        rot->x += this->headRot;
    }
    return 0;
}

void EnOssan_DrawZoraShopkeeper(Actor* thisx, PlayState* play) {
    static void* sZoraShopkeeperEyeTextures[] = { gZoraEyeOpenTex, gZoraEyeHalfTex, gZoraEyeClosedTex };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4506);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, EnOssan_EmptyDList(play->state.gfxCtx));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sZoraShopkeeperEyeTextures[this->eyeTextureIdx]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawZoraShopkeeper, NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4531);
}

void EnOssan_DrawPotionShopkeeper(Actor* thisx, PlayState* play) {
    static void* sPotionShopkeeperEyeTextures[] = {
        gPotionShopkeeperEyeOpenTex,
        gPotionShopkeeperEyeHalfTex,
        gPotionShopkeeperEyeClosedTex,
    };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4544);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sPotionShopkeeperEyeTextures[this->eyeTextureIdx]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4564);
}

void EnOssan_DrawHappyMaskShopkeeper(Actor* thisx, PlayState* play) {
    static void* sHappyMaskShopkeeperEyeTextures[] = { gHappyMaskSalesmanEyeClosedTex, gHappyMaskSalesmanEyeOpenTex };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4578);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sHappyMaskShopkeeperEyeTextures[this->happyMaskShopkeeperEyeIdx]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4598);
}

void EnOssan_DrawBombchuShopkeeper(Actor* thisx, PlayState* play) {
    static void* sBombchuShopkeeperEyeTextures[] = {
        gBombchuShopkeeperEyeOpenTex,
        gBombchuShopkeeperEyeHalfTex,
        gBombchuShopkeeperEyeClosedTex,
    };
    EnOssan* this = (EnOssan*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4611);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sBombchuShopkeeperEyeTextures[this->eyeTextureIdx]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
    EnOssan_DrawCursor(play, this, this->cursorX, this->cursorY, this->cursorZ, this->drawCursor);
    EnOssan_DrawStickDirectionPrompts(play, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_oB1.c", 4631);
}
