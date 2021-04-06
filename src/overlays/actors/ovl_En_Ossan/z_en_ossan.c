#include "z_en_ossan.h"
#include "vt.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_ossan/object_ossan.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#define FLAGS 0x00000019

#define THIS ((EnOssan*)thisx)

void EnOssan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawKokiriShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawPotionShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawBombchuShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawBazaarShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawZoraShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawGoronShopkeeper(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_DrawHappyMaskShopkeeper(Actor* thisx, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_0600FEF0;
extern FlexSkeletonHeader D_060000F0;
extern FlexSkeletonHeader D_06004258;
extern FlexSkeletonHeader D_06004658;
extern FlexSkeletonHeader D_06004868;
extern FlexSkeletonHeader D_0600BFA8;
extern AnimationHeader D_060000FC;
extern AnimationHeader D_060002E4;
extern AnimationHeader D_060004A8;
extern AnimationHeader D_0600065C;
extern AnimationHeader D_0600078C;
extern Gfx D_06002820[];
extern Gfx D_0600DE80[];

void func_80AC7094(EnOssan* this, GlobalContext* globalCtx);
void func_80AC73B4(EnOssan* this, GlobalContext* globalCtx);

void EnOssan_TalkOwnerDefault(GlobalContext* globalCtx);
void EnOssan_TalkOwner1(GlobalContext* globalCtx);
void EnOssan_TalkOwner3(GlobalContext* globalCtx);
void EnOssan_TalkOwner0(GlobalContext* globalCtx);
void EnOssan_TalkOwner4(GlobalContext* globalCtx);
void EnOssan_TalkOwner2(GlobalContext* globalCtx);
void EnOssan_TalkOwner7(GlobalContext* globalCtx);
void EnOssan_TalkOwner8(GlobalContext* globalCtx);
void EnOssan_TalkOwner10(GlobalContext* globalCtx);

s16 func_80AC2CA8(s16 v);
s16 func_80AC2CB8(s16 v);
s16 func_80AC2CE8(s16 v);
s16 func_80AC2D18(s16 v);
s16 func_80AC2D48(s16 v);
s16 func_80AC2D78(s16 v);
s16 func_80AC2DA8(s16 v);

void EnOssan_InitKokiriShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitPotionShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitBombchuShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitBazaarShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitZoraShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitGoronShopkeeper(EnOssan* this, GlobalContext* globalCtx);
void EnOssan_InitHappyMaskShopkeeper(EnOssan* this, GlobalContext* globalCtx);

void func_80AC3B18(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4074(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4288(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC43A0(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC43F0(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC44DC(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4978(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4B4C(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4D20(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5594(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5680(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC576C(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5858(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5900(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5C24(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5D40(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5DAC(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5EF0(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC6208(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC4DDC(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC60E4(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC6148(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC61B8(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5C9C(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC5A28(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC6258(EnOssan* this, GlobalContext* globalCtx, Player* player);
void func_80AC62F4(EnOssan* this, GlobalContext* globalCtx, Player* player);

void func_80AC7380(EnOssan* this, GlobalContext* globalCtx);

void func_80AC39AC(GlobalContext* globalCtx, EnOssan* this);

void func_80AC6970(EnOssan* this);
void func_80AC69A4(EnOssan* this);

u16 func_80AC6F2C(EnOssan* this);

s32 func_80AC6490(EnOssan* this);
s32 func_80AC652C(EnOssan* this);
void func_80AC646C(EnOssan* this);
void func_80AC62C4(GlobalContext* globalCtx, EnOssan* this);

typedef enum {
    /* 00 */ OSSAN_TYPE_KOKIRI,
    /* 01 */ OSSAN_TYPE_KAKARIKO_POTION,
    /* 02 */ OSSAN_TYPE_BOMBCHUS,
    /* 03 */ OSSAN_TYPE_MARKET_POTION,
    /* 04 */ OSSAN_TYPE_BAZAAR,
    /* 05 */ OSSAN_TYPE_ADULT,
    /* 06 */ OSSAN_TYPE_TALON,
    /* 07 */ OSSAN_TYPE_ZORA,
    /* 08 */ OSSAN_TYPE_GORON,
    /* 09 */ OSSAN_TYPE_INGO,
    /* 10 */ OSSAN_TYPE_MASK
} OssanType;

const ActorInit En_Ossan_InitVars = {
    ACTOR_EN_OSSAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOssan),
    (ActorFunc)EnOssan_Init,
    (ActorFunc)EnOssan_Destroy,
    (ActorFunc)EnOssan_Update,
    NULL,
};

s32 maybe_unused[] = {
    // 80AC88C0
    0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000100, 0x001E0050, 0x00000000, 0x00000000,
};

// Rupees to pay back to Happy Mask Shop
s16 sMaskPaymentPrice[] = { 10, 30, 20, 50 };

// item yaw offsets 
s16 D_80AC88F4[] = { 0xEAAC, 0xEAAC, 0xEAAC, 0xEAAC, 0x1554, 0x1554, 0x1554, 0x1554 };
// unused values?
s16 D_80AC8904[] = { 0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025 };

char* D_80AC8914[] = {
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

typedef struct {
    /* 0x00 */ s16 objId;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
} ShopkeeperObjInfo;

s16 sShopkeeperObjectIds[][3] = {
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

EnOssanTalkOwnerFunc sShopkeeperTalkOwner[] = {
    EnOssan_TalkOwner0, EnOssan_TalkOwner1,       EnOssan_TalkOwner2,       EnOssan_TalkOwner3,
    EnOssan_TalkOwner4, EnOssan_TalkOwnerDefault, EnOssan_TalkOwnerDefault, EnOssan_TalkOwner7,
    EnOssan_TalkOwner8, EnOssan_TalkOwnerDefault, EnOssan_TalkOwner10,
};

// scales
f32 sShopkeeperScale[] = {
    0.01f, 0.011f, 0.0105f, 0.011f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f,
};

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 xOffset;
    /* 0x04 */ s16 yOffset;
    /* 0x06 */ s16 zOffset;
} ShopItem; // size 0x8

ShopItem sShopkeeperStores[][8] = {
    { { 13, 50, 52, -20 },
      { 0, 50, 76, -20 },
      { 4, 80, 52, -3 },
      { 5, 80, 76, -3 },
      { 29, -50, 52, -20 },
      { 44, -50, 76, -20 },
      { 1, -80, 52, -3 },
      { 16, -80, 76, -3 } },

    { { 9, 50, 52, -20 },
      { 39, 50, 76, -20 },
      { 8, 80, 52, -3 },
      { 43, 80, 76, -3 },
      { 0, -50, 52, -20 },
      { 40, -50, 76, -20 },
      { 42, -80, 52, -3 },
      { 7, -80, 76, -3 } },

    { { 24, 50, 52, -20 },
      { 28, 50, 76, -20 },
      { 25, 80, 52, -3 },
      { 21, 80, 76, -3 },
      { 26, -50, 52, -20 },
      { 22, -50, 76, -20 },
      { 27, -80, 52, -3 },
      { 23, -80, 76, -3 } },

    { { 9, 50, 52, -20 },
      { 39, 50, 76, -20 },
      { 8, 80, 52, -3 },
      { 43, 80, 76, -3 },
      { 0, -50, 52, -20 },
      { 40, -50, 76, -20 },
      { 42, -80, 52, -3 },
      { 7, -80, 76, -3 } },

    { { 12, 50, 52, -20 },
      { 47, 50, 76, -20 },
      { 0, 80, 52, -3 },
      { 16, 80, 76, -3 },
      { 44, -50, 52, -20 },
      { 2, -50, 76, -20 },
      { 5, -80, 52, -3 },
      { 1, -80, 76, -3 } },

    { { 12, 50, 52, -20 },
      { 3, 50, 76, -20 },
      { 0, 80, 52, -3 },
      { 16, 80, 76, -3 },
      { 44, -50, 52, -20 },
      { 2, -50, 76, -20 },
      { 5, -80, 52, -3 },
      { 1, -80, 76, -3 } },

    { { 17, 50, 52, -20 },
      { 0, 50, 76, -20 },
      { 4, 80, 52, -3 },
      { 16, 80, 76, -3 },
      { 18, -50, 52, -20 },
      { 5, -50, 76, -20 },
      { 16, -80, 52, -3 },
      { 16, -80, 76, -3 } },

    { { 15, 50, 52, -20 },
      { 44, 50, 76, -20 },
      { 16, 80, 52, -3 },
      { 1, 80, 76, -3 },
      { 0, -50, 52, -20 },
      { 2, -50, 76, -20 },
      { 7, -80, 52, -3 },
      { 49, -80, 76, -3 } },

    { { 3, 50, 52, -20 },
      { 6, 50, 76, -20 },
      { 45, 80, 52, -3 },
      { 46, 80, 76, -3 },
      { 14, -50, 52, -20 },
      { 16, -50, 76, -20 },
      { 48, -80, 52, -3 },
      { 16, -80, 76, -3 } },

    { { 19, 50, 52, -20 },
      { 19, 50, 76, -20 },
      { 19, 80, 52, -3 },
      { 19, 80, 76, -3 },
      { 20, -50, 52, -20 },
      { 20, -50, 76, -20 },
      { 20, -80, 52, -3 },
      { 20, -80, 76, -3 } },

    { { 37, 50, 52, -20 },
      { 35, 50, 76, -20 },
      { 34, 80, 52, -3 },
      { 36, 80, 76, -3 },
      { 32, -50, 52, -20 },
      { 30, -50, 76, -20 },
      { 33, -80, 52, -3 },
      { 31, -80, 76, -3 } },
};

EnOssanUnkFunc3 D_80AC8C9C[] = {
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CB8, func_80AC2CE8, func_80AC2D18, func_80AC2CA8,
    func_80AC2D48, func_80AC2D78, func_80AC2DA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8, func_80AC2CA8,
    func_80AC2CA8,
};

InitChainEntry D_80AC8D64[] = {
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 500, ICHAIN_STOP),
};

Vec3f D_80AC8D6C[] = { { 17, 58, 30 }, { -17, 58, 30 } };

// npc init
EnOssanUnkFunc1 D_80AC8D84[] = {
    EnOssan_InitKokiriShopkeeper,
    EnOssan_InitPotionShopkeeper, 
    EnOssan_InitBombchuShopkeeper,
    EnOssan_InitPotionShopkeeper, 
    EnOssan_InitBazaarShopkeeper, 
    EnOssan_InitBazaarShopkeeper,
    EnOssan_InitBazaarShopkeeper,
    EnOssan_InitZoraShopkeeper,
    EnOssan_InitGoronShopkeeper,
    EnOssan_InitBazaarShopkeeper,
    EnOssan_InitHappyMaskShopkeeper,
};

// shop keeper position offsets
Vec3f sShopkeeperPositionOffsets[] = {
    { 0.0f, 0.0f, 33.0f }, { 0.0f, 0.0f, 31.0f }, { 0.0f, 0.0f, 31.0f }, { 0.0f, 0.0f, 31.0f },
    { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 36.0f },
    { 0.0f, 0.0f, 15.0f }, { 0.0f, 0.0f, 0.0f },  { 0.0f, 0.0f, 26.0f },
};

EnOssanUnkFunc4 D_80AC8E34[] = {
    func_80AC3B18, func_80AC4074, func_80AC4288, func_80AC43A0, func_80AC43F0, func_80AC44DC, func_80AC4978,
    func_80AC4B4C, func_80AC4D20, func_80AC5594, func_80AC5680, func_80AC576C, func_80AC5858, func_80AC5900,
    func_80AC5C24, func_80AC5D40, func_80AC5DAC, func_80AC5EF0, func_80AC6208, func_80AC4DDC, func_80AC60E4,
    func_80AC6148, func_80AC61B8, func_80AC5C9C, func_80AC5A28, func_80AC6258, func_80AC62F4,
};

u64* sBazaarShopkeeperEyeTextures[] = { gOssanEyeOpenTex, gOssanEyeHalfTex, gOssanEyeShutText };
u64* sKokiriShopkeeperEyeTextures[] = { 0x06001570, 0x060001F0, 0x06000B30 };
u64* D_80AC8EB8[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
u64* D_80AC8EC4[] = { 0x06003E40, 0x06004640, 0x06004E40 };
u64* D_80AC8ED0[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
u64* D_80AC8EDC[] = { 0x060035D8, 0x060039D8 };
u64* D_80AC8EE4[] = { 0x06003968, 0x06003D68, 0x06004168 };

void EnOssan_SetupAction(EnOssan* this, EnOssanActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

s16 func_80AC2CA8(s16 v) {
    return v;
}

s16 func_80AC2CB8(s16 v) {
    //Sold Skull Mask
    if (gSaveContext.itemGetInf[3] & 0x200) {
        return v;
    }
    return -1;
}

s16 func_80AC2CE8(s16 v) {
    //Sold Keaton Mask
    if (gSaveContext.itemGetInf[3] & 0x100) {
        return v;
    }
    return -1;
}

s16 func_80AC2D18(s16 v) {
    //Sold Spooky Mask
    if (gSaveContext.itemGetInf[3] & 0x400) {
        return v;
    }
    return -1;
}

s16 func_80AC2D48(s16 v) {
    //Obtained Mask of Truth
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return v;
    }
    return -1;
}

s16 func_80AC2D78(s16 v) {
    //Obtained Mask of Truth
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return v;
    }
    return -1;
}

s16 func_80AC2DA8(s16 v) {
    //Obtained Mask of Truth
    if ((gSaveContext.itemGetInf[3] & 0x8000)) {
        return v;
    }
    return -1;
}

// spawn items on the shelves
void func_80AC2DD8(EnOssan* this, GlobalContext* globalCtx, ShopItem* shopItems) {
    EnTana* shelves;
    s16 itemParams;
    s32 i;

    for (i = 0; i < 8; i++, shopItems++) {
        if (shopItems->unk_00 < 0) {
            this->items[i] = NULL;
        } else {
            itemParams = D_80AC8C9C[shopItems->unk_00](shopItems->unk_00);

            if (itemParams < 0) {
                this->items[i] = NULL;
            } else {
                shelves = this->shelves;
                this->items[i] = (EnGirlA*)Actor_Spawn(
                    &globalCtx->actorCtx, globalCtx, ACTOR_EN_GIRLA, shelves->actor.world.pos.x + shopItems->xOffset,
                    shelves->actor.world.pos.y + shopItems->yOffset, shelves->actor.world.pos.z + shopItems->zOffset,
                    shelves->actor.shape.rot.x, shelves->actor.shape.rot.y + D_80AC88F4[i], shelves->actor.shape.rot.z,
                    itemParams);
            }
        }
    }
}

void func_80AC2F2C(EnOssan* this, GlobalContext* globalCtx) {
    s32 i;
    ShopItem* storeItems;
    ShopItem* shopItem;

    if (this->actor.params == OSSAN_TYPE_MASK) {
        storeItems = sShopkeeperStores[this->actor.params];
        if (1) {}
        for (i = 0; i < 8; i++) {
            shopItem = &storeItems[i];
            if (shopItem->unk_00 >= 0 && this->items[i] == NULL) {
                s16 temp_v0_2 = D_80AC8C9C[shopItem->unk_00](shopItem->unk_00);
                if (temp_v0_2 >= 0) {
                    this->items[i] = (EnGirlA*)Actor_Spawn(
                        &globalCtx->actorCtx, globalCtx, ACTOR_EN_GIRLA,
                        this->shelves->actor.world.pos.x + shopItem->xOffset,
                        this->shelves->actor.world.pos.y + shopItem->yOffset,
                        this->shelves->actor.world.pos.z + shopItem->zOffset, this->shelves->actor.shape.rot.x,
                        this->shelves->actor.shape.rot.y + D_80AC88F4[i], this->shelves->actor.shape.rot.z, temp_v0_2);
                }
            }
        }
    }
}

void EnOssan_TalkOwnerDefault(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x9E);
}

void EnOssan_TalkOwner1(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x5046);
    } else {
        func_8010B720(globalCtx, 0x504E);
    }
}

void EnOssan_TalkOwner3(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x504E);
}

void EnOssan_TalkOwner0(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x10BA);
}

void EnOssan_TalkOwner4(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x9D);
    } else {
        func_8010B720(globalCtx, 0x9C);
    }
}

void EnOssan_TalkOwner2(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x7076);
}

void EnOssan_TalkOwner7(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        func_8010B720(globalCtx, 0x403A);
    } else {
        func_8010B720(globalCtx, 0x403B);
    }
}

// Goron City, Goron
void EnOssan_TalkOwner8(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if ((gSaveContext.eventChkInf[2] & 0x20)) {
            func_8010B720(globalCtx, 0x3028);
        } else if (CUR_UPG_VALUE(UPG_STRENGTH)) {
            func_8010B720(globalCtx, 0x302D);
        } else {
            func_8010B720(globalCtx, 0x300F);
        }
    } else if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        func_8010B720(globalCtx, 0x3057);
    } else {
        func_8010B720(globalCtx, 0x305B);
    }
}

// Happy Mask Shop
void EnOssan_TalkOwner10(GlobalContext* globalCtx) {
    if ((gSaveContext.itemGetInf[3] & 0x100) // Sold Keaton Mask 
        && (gSaveContext.itemGetInf[3] & 0x200) // Sold Skull Mask
        && (gSaveContext.itemGetInf[3] & 0x400) // Sold Spooky Mask
        && (gSaveContext.itemGetInf[3] & 0x800)) { // Sold Bunny Hood
        func_8010B720(globalCtx, 0x70AE);
    } else {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 1:
                func_8010B720(globalCtx, 0x70A4);
                break;
            case 0:
                func_8010B720(globalCtx, 0x70A3);
                break;
        }
    }
}

void func_80AC3350(EnOssan* this, GlobalContext* globalCtx, f32 arg2) {
    this->unk_2D4 = arg2;
    Camera_SetCameraData(ACTIVE_CAM, 0xC, NULL, NULL, arg2, 0, 0);
}

s32 func_80AC33B0(EnOssan* this, GlobalContext* globalCtx, s16* objectIds) {
    if (objectIds[1] != OBJECT_ID_MAX) {
        this->objectIndex2 = Object_GetIndex(&globalCtx->objectCtx, objectIds[1]);
        if (this->objectIndex2 < 0) {
            return 0;
        }
    } else {
        this->objectIndex2 = -1;
    }
    if (objectIds[2] != OBJECT_ID_MAX) {
        this->objectIndex3 = Object_GetIndex(&globalCtx->objectCtx, objectIds[2]);
        if (this->objectIndex3 < 0) {
            return 0;
        }
    } else {
        this->objectIndex3 = -1;
    }
    return 1;
}

void EnOssan_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;
    s16* objectIds;

    if (this->actor.params == OSSAN_TYPE_TALON && (LINK_AGE_IN_YEARS != YEARS_CHILD)) {
        this->actor.params = OSSAN_TYPE_INGO;
    }

    //! @bug This check will always evaluate to false, it should be || not &&
    if (this->actor.params > OSSAN_TYPE_MASK && this->actor.params < OSSAN_TYPE_KOKIRI) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 1246);
        return;
    }

    // If you've given Zelda's Letter to the Kakariko Guard
    if (this->actor.params == OSSAN_TYPE_MASK && !(gSaveContext.infTable[7] & 0x40)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->actor.params == OSSAN_TYPE_KAKARIKO_POTION && (LINK_AGE_IN_YEARS == YEARS_CHILD)) {
        Actor_Kill(&this->actor);
        return;
    }

    // Completed Dodongo's Cavern
    if (this->actor.params == OSSAN_TYPE_BOMBCHUS && !(gSaveContext.eventChkInf[2] & 0x20)) {
        Actor_Kill(&this->actor);
        return;
    }

    objectIds = sShopkeeperObjectIds[this->actor.params];

    this->objectIndex1 = Object_GetIndex(&globalCtx->objectCtx, objectIds[0]);

    if (this->objectIndex1 < 0) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("バンクが無いよ！！(%s)\n", D_80AC8914[this->actor.params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 1284);
        return;
    }

    if (func_80AC33B0(this, globalCtx, objectIds) == 0) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("予備バンクが無いよ！！(%s)\n", D_80AC8914[this->actor.params]);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 1295);
        return;
    }

    Actor_ProcessInitChain(&this->actor, D_80AC8D64);
    EnOssan_SetupAction(this, func_80AC7094);
}

void EnOssan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->unk_198);
}

void func_80AC3744(GlobalContext* globalCtx, EnOssan* this) {
    s16 sp1E;
    s16 sp1C;

    func_8002F374(globalCtx, &this->items[this->unk_252]->actor, &sp1E, &sp1C);
    this->unk_230 = sp1E;
    this->unk_234 = sp1C;
}

void EnOssan_EndInteraction(GlobalContext* globalCtx, EnOssan* this) {
    Player* player = PLAYER;

    // "End of conversation!"
    osSyncPrintf(VT_FGCOL(YELLOW) "%s[%d]:★★★ 会話終了！！ ★★★" VT_RST "\n", "../z_en_oB1.c", 1337);
    YREG(31) = 0;
    func_8002F194(&this->actor, globalCtx);
    globalCtx->msgCtx.msgMode = 0x36;
    globalCtx->msgCtx.unk_E3E7 = 4;
    player->stateFlags2 &= ~0x20000000;
    func_800BC490(globalCtx, 1);
    Interface_ChangeAlpha(0x32);
    this->unk_251 = 0;
    this->unk_254.isEnabled = false;
    this->unk_28C.isEnabled = false;
    func_80AC3350(this, globalCtx, 0.0f);
    this->actor.textId = func_80AC6F2C(this);
    this->unk_1FC = 0;
}

s32 EnOssan_Exit(EnOssan* this, GlobalContext* globalCtx, Input* controller1) {
    if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        EnOssan_EndInteraction(globalCtx, this);
        return true;
    } else {
        return false;
    }
}

s32 func_80AC38C8(EnOssan* this, GlobalContext* globalCtx, Input* input) {
    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        this->unk_1FC = this->unk_1FE;
        func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        return true;
    } else {
        return false;
    }
}

void func_80AC3928(GlobalContext* globalCtx, EnOssan* this, u8 arg2) {
    YREG(31) = 1;
    this->unk_1EE = this->lookAngle = 0;
    Interface_SetDoAction(globalCtx, 0x10);
    func_80AC3350(this, globalCtx, 0);

    if (arg2 == 0) {
        this->unk_1FC = 1;
        return;
    } else {
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC39AC(GlobalContext* globalCtx, EnOssan* this) {
    this->unk_1FC = 2;

    if (this->actor.params == OSSAN_TYPE_MASK) {
        // if all masks have been sold, give the option to ask about the mask of truth
        if ((gSaveContext.itemGetInf[3] & 0x100) && (gSaveContext.itemGetInf[3] & 0x200) &&
            (gSaveContext.itemGetInf[3] & 0x400) && (gSaveContext.itemGetInf[3] & 0x800)) {
            func_8010B720(globalCtx, 0x70AD);
        } else {
            func_8010B720(globalCtx, 0x70A2);
        }
    } else {
        func_8010B720(globalCtx, 0x83);
    }

    Interface_SetDoAction(globalCtx, 6);
    this->unk_28C.isEnabled = true;
    this->unk_254.isEnabled = true;
    func_80AC3350(this, globalCtx, 0.0f);
}

void func_80AC3A80(GlobalContext* globalCtx, EnOssan* this) {
    this->unk_1FC = 3;
    sShopkeeperTalkOwner[this->actor.params](globalCtx);
    Interface_SetDoAction(globalCtx, 6);
    this->unk_254.isEnabled = false;
    this->unk_28C.isEnabled = false;
}

void func_80AC3AE0(GlobalContext* globalCtx, EnOssan* this) {
    func_80078884(NA_SE_SY_CURSOR);
    this->unk_251 = 0;
    this->unk_1FC = 8;
}

void func_80AC3B18(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    this->lookAngle = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if (func_8002F194(&this->actor, globalCtx)) {
        // "Start conversation!!"
        osSyncPrintf("\x1b[33m★★★ 会話開始！！ ★★★\x1b[m\n");
        player->stateFlags2 |= 0x20000000;
        func_800BC590(globalCtx);
        func_80AC3928(globalCtx, this, 0);
    } else if (this->actor.xzDistToPlayer < 100.0f) {
        func_8002F2CC(&this->actor, globalCtx, 100);
    }
}

void func_80AC3BCC(GlobalContext* globalCtx, EnOssan* this) {
    Input* controller1 = &globalCtx->state.input[0];
    s8 stickX = controller1->rel.stick_x;
    s8 stickY = controller1->rel.stick_y;

    this->moveHorizontal = this->moveVertical = false;

    if (this->stickX == 0) {
        if (stickX > 30 || stickX < -30) {
            this->stickX = stickX;
            this->moveHorizontal = true;
        }
    } else if (stickX <= 30 && stickX >= -30) {
        this->stickX = 0;
    } else if (this->stickX * stickX < 0) {
        this->stickX = stickX;
        this->moveHorizontal = true;
    } else {
        this->stickX += stickX;

        if (this->stickX > 2000) {
            this->stickX = 2000;
        } else if (this->stickX < -2000) {
            this->stickX = -2000;
        }
    }

    if (this->stickY == 0) {
        if (stickY > 30 || stickY < -30) {
            this->stickY = stickY;
            this->moveVertical = true;
        }
    } else if (stickY <= 30 && stickY >= -30) {
        this->stickY = 0;
    } else if (this->stickY * stickY < 0) {
        this->stickY = stickY;
        this->moveVertical = true;
    } else {
        this->stickY += stickY;

        if (this->stickY > 2000) {
            this->stickY = 2000;
        } else if (this->stickY < -2000) {
            this->stickY = -2000;
        }
    }
}

u8 func_80AC3D18(EnOssan* this, u8 arg1) {
    u8 i;

    if (this->unk_252 & 1) {
        for (i = arg1 + 1; i < arg1 + 4; i += 2) {
            if (this->items[i] != NULL) {
                return i;
            }
        }
        for (i = arg1; i < arg1 + 4; i += 2) {
            if (this->items[i] != NULL) {
                return i;
            }
        }
    } else {
        for (i = arg1; i < arg1 + 4; i += 2) {
            if (this->items[i] != NULL) {
                return i;
            }
        }

        for (i = arg1 + 1; i < arg1 + 4; i += 2) {
            if (this->items[i] != NULL) {
                return i;
            }
        }
    }
    return 0xFF;
}

u8 func_80AC3E50(EnOssan* this, u8 a, u8 b) {
    u8 c = b + 4;

    while (a >= b && a < c) {
        a -= 2;
        if (a >= b && a < c) {
            if (this->items[a] != NULL) {
                return a;
            }
        }
    }
    return 0xFF;
}

u8 func_80AC3ED8(EnOssan* this, u8 arg1, u8 arg2) {
    while (arg1 < arg2) {
        arg1 += 2;
        if ((arg1 < arg2) && this->items[arg1] != NULL) {
            return arg1;
        }
    }
    return 0xFF;
}

// pay salesman back
void func_80AC3F38(EnOssan* this, GlobalContext* globalCtx) {
    s16 price = sMaskPaymentPrice[this->unk_1EB];

    if (gSaveContext.rupees < price) {
        func_8010B720(globalCtx, 0x70A8);
        this->unk_1EC = 1;
        this->unk_1EB = 5;
    } else {
        Rupees_ChangeBy(-price);

        if (this->unk_1EB == 3) {
            gSaveContext.eventChkInf[8] |= 0x8000;
            func_8010B720(globalCtx, 0x70A9);
            this->unk_1EB = 6;
            return;
        }

        if (this->unk_1EB == 0) {
            gSaveContext.eventChkInf[8] |= 0x1000;
        } else if (this->unk_1EB == 1) {
            gSaveContext.eventChkInf[8] |= 0x4000;
        } else if (this->unk_1EB == 2) {
            gSaveContext.eventChkInf[8] |= 0x2000;
        }

        func_8010B720(globalCtx, 0x70A7);
        this->unk_1EB = 8;
    }

    this->unk_1FC = 1;
}

void func_80AC4074(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 dialogState = func_8010BDBC(&globalCtx->msgCtx);

    if (this->actor.params == OSSAN_TYPE_MASK && dialogState == 4) {
        if (!EnOssan_Exit(this, globalCtx, &globalCtx->state.input[0]) && func_80106BC8(globalCtx)) {
            switch (globalCtx->msgCtx.choiceIndex) {
                case 0:
                    func_80AC39AC(globalCtx, this);
                    break;
                case 1:
                    EnOssan_EndInteraction(globalCtx, this);
                    break;
            }
        }
    } else if (dialogState == 5 && func_80106BC8(globalCtx)) {
        func_80078884(NA_SE_SY_MESSAGE_PASS);

        switch (this->unk_1EB) {
            case 6:
                func_8010B720(globalCtx, 0x70AA);
                this->unk_1FC = 25;
                return;
            case 4:
                EnOssan_EndInteraction(globalCtx, this);
                return;
            case 0:
            case 1:
            case 2:
            case 3:
                func_80AC3F38(this, globalCtx);
                return;
            case 5:
                globalCtx->nextEntranceIndex = 0x1D1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeTransition = 0x2E;
                return;
        }

        if (!EnOssan_Exit(this, globalCtx, &globalCtx->state.input[0])) {
            // "Shop around by moving the stick left and right"
            osSyncPrintf("「スティック左右で品物みてくれ！」\n");
            func_80AC39AC(globalCtx, this);
        }
    }

    if (1) {}
}

s32 func_80AC4220(EnOssan* this, GlobalContext* globalCtx) {

    switch (globalCtx->msgCtx.choiceIndex) {
        case 0:
            func_80AC3A80(globalCtx, this);
            return true;
        case 1:
            EnOssan_EndInteraction(globalCtx, this);
            return true;
        default:
            return false;
    }
}

void func_80AC4288(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 temp;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && !EnOssan_Exit(this, globalCtx, globalCtx->state.input)) {
        if ((func_80106BC8(globalCtx) != 0) && func_80AC4220(this, globalCtx)) {
            func_80078884(NA_SE_SY_DECIDE);
            return;
        }

        if (this->stickX < 0) {
            temp = func_80AC3D18(this, 4);

            if (temp != 0xFF) {
                this->unk_252 = temp;
                this->unk_1FC = 4;
                Interface_SetDoAction(globalCtx, 6);
                this->unk_254.isEnabled = false;
                func_80078884(NA_SE_SY_CURSOR);
            }
        } else if (this->stickX > 0) {
            temp = func_80AC3D18(this, 0);

            if (temp != 0xFF) {
                this->unk_252 = temp;
                this->unk_1FC = 5;
                Interface_SetDoAction(globalCtx, 6);
                this->unk_28C.isEnabled = false;
                func_80078884(NA_SE_SY_CURSOR);
            }
        }
    }
}

void func_80AC43A0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC43F0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_ApproachF(&this->unk_2D4, 30.0f, 0.5f, 10.0f);

    if (this->unk_2D4 > 29.5f) {
        func_80AC3350(this, globalCtx, 30.0f);
    }

    func_80AC3350(this, globalCtx, this->unk_2D4);

    if (this->unk_2D4 >= 30.0f) {
        func_80AC3350(this, globalCtx, 30.0f);
        func_80AC3744(globalCtx, this);
        this->unk_1FC = 6;
        func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
    } else {
        this->stickX = 0;
    }
}

void func_80AC44DC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_ApproachF(&this->unk_2D4, -30.0f, 0.5f, 10.0f);

    if (this->unk_2D4 < -29.5f) {
        func_80AC3350(this, globalCtx, -30.0f);
    }

    func_80AC3350(this, globalCtx, this->unk_2D4);

    if (this->unk_2D4 <= -30.0f) {
        func_80AC3350(this, globalCtx, -30.0f);
        func_80AC3744(globalCtx, this);
        this->unk_1FC = 7;
        func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
    } else {
        this->stickX = 0;
    }
}

void func_80AC45C8(EnOssan* this) {
    u8 v0;
    u8 v1;

    v0 = this->unk_252;
    if (this->stickY < 0) {
        v0 &= 0xFE;
        if (this->items[v0] != NULL) {
            this->unk_252 = v0;
            return;
        }
        if (v0 < 4) {
            v1 = v0 + 2;
            if (v1 >= 4) {
                v1 = 0;
            }
            while (v1 != v0) {
                if (this->items[v1] != NULL) {
                    this->unk_252 = v1;
                    return;
                }
                v1 += 2;
                if (v1 >= 4) {
                    v1 = 0;
                }
            }
        } else {
            v1 = v0 + 2;
            if (v1 >= 8) {
                v1 = 4;
            }
            while (v1 != v0) {
                if (this->items[v1] != NULL) {
                    this->unk_252 = v1;
                    return;
                }
                v1 += 2;
                if (v1 >= 8) {
                    v1 = 4;
                }
            }
        }
    } else if (this->stickY > 0) {
        v0 |= 1;
        if (this->items[v0] != 0) {
            this->unk_252 = v0;
            return;
        }
        if (v0 < 4) {
            v1 = v0 + 2;
            if (v1 >= 4) {
                v1 = 1;
            }
            while (v1 != v0) {
                if (this->items[v1] != NULL) {
                    this->unk_252 = v1;
                    return;
                }
                v1 += 2;
                if (v1 >= 4) {
                    v1 = 1;
                }
            }
        } else {
            v1 = v0 + 2;
            if (v1 >= 8) {
                v1 = 5;
            }
            while (v1 != v0) {
                if (this->items[v1] != 0) {
                    this->unk_252 = v1;
                    return;
                }
                v1 += 2;
                if (v1 >= 8) {
                    v1 = 5;
                }
            }
        }
    }
}

s32 func_80AC47DC(GlobalContext* globalCtx, EnOssan* this, Input* input) {
    EnGirlA* sp24 = this->items[this->unk_252];

    if (EnOssan_Exit(this, globalCtx, input)) {
        return true;
    }

    if (func_80106BC8(globalCtx) != 0) {

        if (sp24->actor.params != 38 && sp24->unk_1A8 == 0) {
            this->unk_1FE = this->unk_1FC;
            func_8010B720(globalCtx, this->items[this->unk_252]->unk_1A0);
            this->unk_254.isEnabled = false;
            this->unk_28C.isEnabled = false;
            switch (sp24->actor.params) {
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                    func_80078884(NA_SE_SY_DECIDE);
                    this->unk_251 = 0;
                    this->unk_1FC = 0x18;
                    return true;
                case 17:
                    func_80078884(NA_SE_SY_DECIDE);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xA;
                    return true;
                case 18:
                    func_80078884(NA_SE_SY_DECIDE);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xB;
                    return true;
                case 19:
                case 20:
                    func_80078884(NA_SE_SY_ERROR);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xC;
                    return true;
                case 3:
                case 6:
                case 45:
                case 46:
                case 47:
                    func_80078884(NA_SE_SY_DECIDE);
                    this->unk_251 = 0;
                    this->unk_1FC = 0xD;
                    return true;
                default:
                    func_80078884(NA_SE_SY_DECIDE);
                    this->unk_251 = 0;
                    this->unk_1FC = 9;
                    return true;
            }
        }
        func_80078884(NA_SE_SY_ERROR);
        return true;
    }
    return false;
}

void func_80AC4978(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    s32 a;
    s32 b;
    u8 sp27 = this->unk_252;
    s32 c;
    s32 d;

    if (func_80AC652C(this) == false) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2152);
        this->unk_1E6 = 3;
        return;
    }
    if (this->unk_1E6 != 0) {
        this->unk_1E6--;
        return;
    }
    this->unk_251 = 0xFF;
    this->unk_28C.isEnabled = true;
    func_80AC3744(globalCtx, this);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80AC47DC(globalCtx, this, globalCtx->state.input) == 0)) {
        if (this->moveHorizontal) {
            if (this->stickX > 0) {
                a = func_80AC3E50(this, this->unk_252, 4);
                if (a != 0xFF) {
                    this->unk_252 = a;
                } else {
                    func_80AC3AE0(globalCtx, this);
                    return;
                }
            } else if (this->stickX < 0) {
                b = func_80AC3ED8(this, this->unk_252, 8);
                if (b != 0xFF) {
                    this->unk_252 = b;
                }
            }
        } else {
            if (this->stickX > 0 && this->stickX > 500) {
                c = func_80AC3E50(this, this->unk_252, 4);
                if (c != 0xFF) {
                    this->unk_252 = c;
                } else {
                    func_80AC3AE0(globalCtx, this);
                    return;
                }
            } else if (this->stickX < 0 && this->stickX < -500) {
                d = func_80AC3ED8(this, this->unk_252, 8);
                if (d != 0xFF) {
                    this->unk_252 = d;
                }
            }
        }
        func_80AC45C8(this);
        if (this->unk_252 != sp27) {
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
            func_80078884(0x4809);
        }
    }
}

void func_80AC4B4C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    s32 pad[2];
    u8 sp27;
    u8 phi_v0;

    sp27 = this->unk_252;
    if (func_80AC652C(this) == 0) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 0x8C4);
        this->unk_1E6 = 3;
        return;
    }
    if (this->unk_1E6 != 0) {
        this->unk_1E6--;
        return;
    }
    this->unk_251 = 0xFF;
    this->unk_254.isEnabled = true;
    func_80AC3744(globalCtx, this);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80AC47DC(globalCtx, this, globalCtx->state.input) == 0)) {
        if (this->moveHorizontal) {
            if (this->stickX < 0) {
                phi_v0 = func_80AC3E50(this, this->unk_252, 0);
                if (phi_v0 != 0xFF) {
                    this->unk_252 = phi_v0;
                } else {
                    func_80AC3AE0(globalCtx, this);
                    return;
                }

            } else if (this->stickX > 0) {
                phi_v0 = func_80AC3ED8(this, this->unk_252, 4);
                if (phi_v0 != 0xFF) {
                    this->unk_252 = phi_v0;
                }
            }
        } else {
            if (this->stickX < 0 && this->stickX < -500) {
                phi_v0 = func_80AC3E50(this, this->unk_252, 0);
                if (phi_v0 != 0xFF) {
                    this->unk_252 = phi_v0;
                } else {
                    func_80AC3AE0(globalCtx, this);
                    return;
                }
            } else if (this->stickX > 0 && this->stickX > 500) {
                phi_v0 = func_80AC3ED8(this, this->unk_252, 4);
                if (phi_v0 != 0xFF) {
                    this->unk_252 = phi_v0;
                }
            }
        }
        func_80AC45C8(this);
        if (this->unk_252 != sp27) {
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
            func_80078884(NA_SE_SY_CURSOR);
        }
    }
}

void func_80AC4D20(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    Math_ApproachF(&this->unk_2D4, 0.0f, 0.5f, 10.0f);
    if ((this->unk_2D4 < 0.5f) && (this->unk_2D4 > -0.5f)) {
        func_80AC3350(this, globalCtx, 0.0f);
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (this->unk_2D4 == 0.0f) {
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC4DDC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (!func_80AC652C(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2355);
        return;
    }
    Math_ApproachF(&this->unk_2D4, 0.0f, 0.5f, 10.0f);
    if (this->unk_2D4 < 0.5f && this->unk_2D4 > -0.5f) {
        func_80AC3350(this, globalCtx, 0.0f);
    }
    func_80AC3350(this, globalCtx, this->unk_2D4);
    if (this->unk_2D4 == 0.0f) {
        func_8010B720(globalCtx, 0x3010);
        this->unk_1FC = 0x14;
    }
}

void func_80AC4EC8(GlobalContext* globalCtx, EnOssan* this) {
    Player* player = PLAYER;

    osSyncPrintf("\n\x1b[33m初めて手にいれた！！\x1b[m\n\n");
    func_8002F434(&this->actor, globalCtx, this->items[this->unk_252]->unk_1A4, 120.0f, 120.0f);
    globalCtx->msgCtx.msgMode = 0x36;
    globalCtx->msgCtx.unk_E3E7 = 4;
    player->stateFlags2 &= ~0x20000000;
    func_800BC490(globalCtx, 1);
    Interface_ChangeAlpha(50);
    this->unk_251 = 0;
    func_80AC3350(this, globalCtx, 0.0f);
    this->unk_1FC = 0xF;
    osSyncPrintf("\x1b[33m持ち上げ開始！！\x1b[m\n\n");
}

void func_80AC4FAC(GlobalContext* globalCtx, EnOssan* this, u16 textId) {
    func_8010B720(globalCtx, textId);
    this->unk_1FC = 0xE;
}

void func_80AC4FE0(GlobalContext* globalCtx, EnOssan* this, u16 textId) {
    func_8010B720(globalCtx, textId);
    this->unk_1FC = 0x17;
}

void func_80AC5014(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* sp24;

    sp24 = this->items[this->unk_252];
    switch (sp24->unk_1BC(globalCtx, sp24)) {
        case 0:
            if (sp24->actor.params == 0xC && gSaveContext.infTable[7] & 0x40) {
                func_80AC62C4(globalCtx, this);
                break;
            } else {
                func_80AC4EC8(globalCtx, this);
                this->unk_251 = 0;
                this->unk_2D0 = 0.0f;
                sp24->unk_1AC(globalCtx, sp24);
                return;
            }
        case 1:
            sp24->unk_1C0(globalCtx, sp24);
            func_80AC4FE0(globalCtx, this, 0x84);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            sp24->unk_1AC(globalCtx, sp24);
            return;
        case 2:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
        case 3:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x96);
            return;
        case 4:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x85);
            return;
        case 5:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
    }
}

// Lon Lon Milk
void func_80AC51B8(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* temp_s0 = this->items[this->unk_252];
    switch (temp_s0->unk_1BC(globalCtx, temp_s0)) {
        case 0:
            func_8010B720(globalCtx, 0x9C);
            this->unk_1FC = 0x12;
            this->unk_251 = 0;
            return;
        case 1:
            temp_s0->unk_1C0(globalCtx, temp_s0);
            func_80AC4FE0(globalCtx, this, 0x98);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            temp_s0->unk_1AC(globalCtx, temp_s0);
            return;
        case 3:
            func_80AC4FAC(globalCtx, this, 0x96);
            return;
        case 4:
            func_80AC4FAC(globalCtx, this, 0x85);
    }
}

// Weird Egg
void func_80AC52C0(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* temp_s0 = this->items[this->unk_252];

    switch (temp_s0->unk_1BC(globalCtx, temp_s0)) {
        case 0:
            func_80AC4EC8(globalCtx, this);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            temp_s0->unk_1AC(globalCtx, temp_s0);
            return;
        case 1:
            temp_s0->unk_1C0(globalCtx, temp_s0);
            func_80AC4FE0(globalCtx, this, 0x9A);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            temp_s0->unk_1AC(globalCtx, temp_s0);
            return;
        case 2:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x9D);
            return;
        case 4:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x85);
    }
}

void func_80AC53F4(GlobalContext* globalCtx, EnOssan* this) {
    EnGirlA* temp_s0 = this->items[this->unk_252];

    switch (temp_s0->unk_1BC(globalCtx, temp_s0)) {
        case 0:
        case 1:
            temp_s0->unk_1C0(globalCtx, temp_s0);
            func_80AC4FE0(globalCtx, this, 0x84);
            this->unk_251 = 0;
            this->unk_2D0 = 0.0f;
            temp_s0->unk_1AC(globalCtx, temp_s0);
            return;
        case 2:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x86);
            return;
        case 4:
            func_80078884(NA_SE_SY_ERROR);
            func_80AC4FAC(globalCtx, this, 0x85);
    }
}

void func_80AC54F4(GlobalContext* globalCtx, EnOssan* this) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if (!(gSaveContext.eventChkInf[2] & 0x20)) {
            if (gSaveContext.infTable[15] & 0x1000) {
                func_80AC4FAC(globalCtx, this, 0x302E);
            } else {
                this->unk_254.isEnabled = false;
                this->unk_28C.isEnabled = false;
                this->unk_251 = 0;
                this->unk_1FC = 0x13;
            }
        } else {
            func_80AC53F4(globalCtx, this);
        }
    } else {
        func_80AC53F4(globalCtx, this);
    }
}

void func_80AC5594(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    GlobalContext* globalCtx2 = globalCtx; // Necessary for OKs

    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2654);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && !func_80AC38C8(this, globalCtx, globalCtx->state.input) &&
        func_80106BC8(globalCtx) != 0) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80AC5014(globalCtx, this);
                break;
            case 1:
                this->unk_1FC = this->unk_1FE;
                func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5680(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    GlobalContext* globalCtx2 = globalCtx; // Need for OK

    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2693);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && !func_80AC38C8(this, globalCtx, globalCtx->state.input) &&
        func_80106BC8(globalCtx) != 0) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80AC51B8(globalCtx, this);
                break;
            case 1:
                this->unk_1FC = this->unk_1FE;
                func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC576C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    GlobalContext* globalCtx2 = globalCtx; // Needed for OK
    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2732);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && !func_80AC38C8(this, globalCtx, globalCtx->state.input) &&
        (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80AC52C0(globalCtx, this);
                break;
            case 1:
                this->unk_1FC = this->unk_1FE;
                func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5858(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2771);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5900(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2798);
        return;
    }
    osSyncPrintf("店主の依頼 ( %d )\n", gSaveContext.infTable[15] & 0x1000);
    if (this->actor.params != OSSAN_TYPE_GORON) {
        func_80AC5594(this, globalCtx, player);
        return;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && func_80AC38C8(this, globalCtx, globalCtx->state.input) == 0 &&
        func_80106BC8(globalCtx) != 0) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                func_80AC54F4(globalCtx, this);
                break;
            case 1:
                this->unk_1FC = this->unk_1FE;
                func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5A28(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 sp27;
    EnGirlA* sp20;

    sp27 = func_8010BDBC(&globalCtx->msgCtx);
    sp20 = this->items[this->unk_252];
    if (!func_80AC6490(this)) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 2845);
        return;
    }
    if (sp27 == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
            return;
        }
    } else if ((sp27 == 4) && (func_80AC38C8(this, globalCtx, &globalCtx->state.input[0]) == 0) &&
               (func_80106BC8(globalCtx) != 0)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                switch (sp20->actor.params) {
                    case 0x1E:
                        gSaveContext.itemGetInf[2] |= 0x08;
                        break;
                    case 0x1F:
                        gSaveContext.itemGetInf[2] |= 0x20;
                        break;
                    case 0x20:
                        gSaveContext.itemGetInf[2] |= 0x10;
                        break;
                    case 0x21:
                        gSaveContext.itemGetInf[2] |= 0x40;
                        break;
                    case 0x22:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                        break;
                }
                func_80AC4EC8(globalCtx, this);
                this->unk_251 = 0;
                this->unk_2D0 = 0.0f;
                sp20->unk_1AC(globalCtx, sp20);
                return;

            case 1:
                this->unk_1FC = this->unk_1FE;
                func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5C24(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
        }
    }
}

void func_80AC5C9C(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    EnGirlA* temp_a1;

    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx) != 0) {
        this->unk_2D0 = 0.0f;
        func_80AC646C(this);
        temp_a1 = this->items[this->unk_252];
        temp_a1->unk_1B0(globalCtx, temp_a1);
        this->unk_1FC = this->unk_1FE;
        func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
    }
}

void func_80AC5D40(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->unk_1FC = 0x10;
        return;
    }
    func_8002F434(&this->actor, globalCtx, this->items[this->unk_252]->unk_1A4, 120.0f, 120.0f);
}

void func_80AC5DAC(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    EnGirlA* temp_a1;
    EnGirlA* sp20;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        if (this->actor.params == OSSAN_TYPE_MASK) {
            sp20 = this->items[this->unk_252];
            func_80AC646C(this);
            temp_a1 = this->items[this->unk_252];
            temp_a1->unk_1B0(globalCtx, temp_a1);
            if (sp20->actor.params == 0x22 && !(gSaveContext.itemGetInf[3] & 0x8000)) {
                gSaveContext.itemGetInf[3] |= 0x8000;
                func_8010B720(globalCtx, 0x70AB);
                this->unk_1EB = 4;
                func_80AC2F2C(this, globalCtx);
                this->unk_1FC = 1;
                return;
            } else {
                EnOssan_EndInteraction(globalCtx, this);
                return;
            }
        }
        temp_a1 = this->items[this->unk_252];
        temp_a1->unk_1C4(globalCtx, temp_a1);
        this->unk_1FC = 0x11;
        func_8010B720(globalCtx, 0x6B);
    }
}

void func_80AC5EF0(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    EnGirlA* temp_a1;
    u8 temp_v0;

    temp_v0 = func_8010BDBC(&globalCtx->msgCtx);
    if (temp_v0 == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80AC646C(this);
            temp_a1 = this->items[this->unk_252];
            temp_a1->unk_1B0(globalCtx, temp_a1);
            if (!EnOssan_Exit(this, globalCtx, globalCtx->state.input)) {
                switch (globalCtx->msgCtx.choiceIndex) {

                    case 0:
                        osSyncPrintf("\x1b[33m★★★ 続けるよ！！ ★★★\x1b[m\n");
                        player->actor.shape.rot.y += 0x8000;
                        player->stateFlags2 |= 0x20000000;
                        func_800BC490(globalCtx, 2);
                        func_8010B680(globalCtx, this->actor.textId, &this->actor);
                        func_80AC3928(globalCtx, this, 1);
                        func_8002F298(&this->actor, globalCtx, 100.0f, -1);
                        break;
                    case 1:
                    default:
                        osSyncPrintf("\x1b[33m★★★ やめるよ！！ ★★★\x1b[m\n");
                        EnOssan_EndInteraction(globalCtx, this);
                }
            }
        }
    } else if (temp_v0 == 5 && func_80106BC8(globalCtx) != 0) {
        func_80AC646C(this);
        temp_a1 = this->items[this->unk_252];
        temp_a1->unk_1B0(globalCtx, temp_a1);
        player->actor.shape.rot.y = player->actor.shape.rot.y + 0x8000;
        player->stateFlags2 = player->stateFlags2 | 0x20000000;
        func_800BC490(globalCtx, 2);
        func_8010B680(globalCtx, this->actor.textId, &this->actor);
        func_80AC3928(globalCtx, this, 1);
        func_8002F298(&this->actor, globalCtx, 100.0f, -1);
    }
}

void func_80AC60E4(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx) != 0) {
        gSaveContext.infTable[15] |= 0x1000;
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC6148(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 1 && func_80106BC8(globalCtx) != 0) {
        this->unk_1FC = 0x16;
        func_8010B720(globalCtx, 0x3012);
        gSaveContext.infTable[15] |= 0x1000;
    }
}

void func_80AC61B8(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx) != 0) {
        func_80AC39AC(globalCtx, this);
    }
}

void func_80AC6208(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx) != 0) {
        func_80AC4EC8(globalCtx, this);
    }
}

void func_80AC6258(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx) != 0) {
        gSaveContext.itemGetInf[2] |= 0x400;
        this->unk_252 = 2;
        func_80AC4EC8(globalCtx, this);
    }
}

// Hylian Shield discount dialog
void func_80AC62C4(GlobalContext* globalCtx, EnOssan* this) {
    func_8010B720(globalCtx, 0x71B2);
    this->unk_1FC = 0x1A;
}

void func_80AC62F4(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    EnGirlA* sp24;

    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx) != 0) {
        sp24 = this->items[this->unk_252];
        func_80AC4EC8(globalCtx, this);
        this->unk_251 = 0;
        this->unk_2D0 = 0.0f;
        sp24->unk_1AC(globalCtx, sp24);
    }
}

void func_80AC6384(EnOssan* this) {
    EnGirlA* item;
    u8 i;
    ShopItem* shopItem;
    f32 tx;
    f32 ty;
    f32 tz;

    i = this->unk_252;
    shopItem = &sShopkeeperStores[this->actor.params][i];
    item = this->items[i];

    tx = (((D_80AC8D6C[(i >> 2) & 0xFF].x - shopItem->xOffset) * this->unk_2D0) + shopItem->xOffset);
    ty = (((D_80AC8D6C[(i >> 2) & 0xFF].y - shopItem->yOffset) * this->unk_2D0) + shopItem->yOffset);
    tz = (((D_80AC8D6C[(i >> 2) & 0xFF].z - shopItem->zOffset) * this->unk_2D0) + shopItem->zOffset);

    item->actor.world.pos.x = this->shelves->actor.world.pos.x + tx;
    item->actor.world.pos.y = this->shelves->actor.world.pos.y + ty;
    item->actor.world.pos.z = this->shelves->actor.world.pos.z + tz;
}

void func_80AC646C(EnOssan* this) {
    this->unk_2D0 = 0.0f;
    func_80AC6384(this);
}

s32 func_80AC6490(EnOssan* this) {
    Math_ApproachF(&this->unk_2D0, 1.0f, 1.0f, 0.15f);
    if (this->unk_2D0 >= 0.85f) {
        this->unk_2D0 = 1.0f;
    }
    func_80AC6384(this);
    if (this->unk_2D0 == 1.0f) {
        return true;
    } else {
        return false;
    }
}

s32 func_80AC652C(EnOssan* this) {
    Math_ApproachF(&this->unk_2D0, 0.0f, 1.0f, 0.15f);
    if (this->unk_2D0 <= 0.15f) {
        this->unk_2D0 = 0.0f;
    }
    func_80AC6384(this);
    if (this->unk_2D0 == 0.0f) {
        return true;
    } else {
        return false;
    }
}

void func_80AC65B8(EnOssan* this) {
    EnGirlA** temp_a1 = this->items;
    s32 i;

    for (i = 0; i < 8; i++) {
        if (temp_a1[0] != NULL) {
            if (this->unk_1FC != 9 && this->unk_1FC != 0xA && this->unk_1FC != 0xB && this->unk_1FC != 0xC &&
                this->unk_1FC != 0xD && this->unk_1FC != 0x18 && this->unk_1FC != 0xE && this->unk_251 == 0) {
                temp_a1[0]->unk_1B4 = 0;
            } else {
                if (this->unk_252 == i) {
                    temp_a1[0]->unk_1B4 = 1;
                } else {
                    temp_a1[0]->unk_1B4 = 0;
                }
            }
        }
        temp_a1++;
    }
}

void func_80AC66F4(EnOssan* this) {
    f32 t;

    t = this->unk_24C;
    if (this->unk_250 == 0) {
        t += 0.05f;
        if (t >= 1.0f) {
            t = 1.0f;
            this->unk_250 = 1;
        }
    } else {
        t -= 0.05f;
        if (t <= 0.0f) {
            t = 0.0f;
            this->unk_250 = 0;
        }
    }
    this->unk_23C.r = ColChanMix(0, 0.0f, t);
    this->unk_23C.g = ColChanMix(255, 80.0f, t);
    this->unk_23C.b = ColChanMix(80, 0.0f, t);
    this->unk_23C.a = ColChanMix(255, 0.0f, t);
    this->unk_24C = t;
}

#ifdef NON_MATCHING
void func_80AC67C4(EnOssan* this) {
    f32 phi_f2;
    f32 phi_f0;

    phi_f2 = this->unk_2C4;
    phi_f0 = this->unk_2C8;
    if (this->unk_2CC == 0) {
        phi_f2 += 0.05f;
        if (phi_f2 > 1.0f) {
            phi_f2 = 1.0f;
            this->unk_2CC = 1;
        }
    } else {
        phi_f2 -= 0.05f;
        if (phi_f2 < 0.0f) {
            phi_f2 = 0.0f;
            this->unk_2CC = 0;
        }
    }
    this->unk_2C4 = phi_f2;
    if (this->unk_2CD == 0) {
        phi_f0 += 0.1f;
        if (phi_f0 > 1.0f) {
            phi_f0 = 1.0f;
            this->unk_2CD = 1;
        }
    } else {
        phi_f0 = 0.0f;
        this->unk_2CD = 0;
    }
    this->unk_2C8 = phi_f0;
    do {
        this->unk_254.colorB.r = (u8)(255 - (s32)(155.0f * phi_f2));
        this->unk_254.colorB.g = (u8)(255 - (s32)(155.0f * phi_f2));
        this->unk_254.colorB.b = (u8)(0 - (s32)(-100.0f * phi_f2));
        this->unk_254.colorB.a = (u8)(200 - (s32)(50.0f * phi_f2));
    } while (0);
    this->unk_28C.xB = 290.0f;
    do {
        this->unk_28C.colorB.r = (u8)(255 - (s32)(155.0f * phi_f2));
        this->unk_28C.colorB.g = (u8)(255 - (s32)(155.0f * phi_f2));
        this->unk_28C.colorB.b = (u8)(0 - (s32)(-100.0f * phi_f2));
        this->unk_28C.colorB.a = (u8)(200 - (s32)(50.0f * phi_f2));
    } while (0);

    this->unk_28C.yB = 91.0f;                  
    this->unk_254.yB = 91.0f;                  
    this->unk_28C.yA = 95.0f;                  
    this->unk_254.yA = 95.0f;                  
    this->unk_254.xB = 33.0f;                  
    this->unk_28C.xA = 274.0f + 8.0f * phi_f0; // s2
    this->unk_254.xA = 49.0f - 8.0f * phi_f0;  // s1
}
#else
void func_80AC67C4(EnOssan* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC67C4.s")
#endif

void func_80AC6970(EnOssan* this) {
    s16 decr = this->unk_1F4 - 1;

    if (decr != 0) {
        this->unk_1F4 = decr;
    } else {
        this->unk_1F8 = func_80AC69A4;
    }
}

void func_80AC69A4(EnOssan* this) {
    f32 temp_f6;
    s16 temp_v0;
    s16 temp_v0_2;

    temp_v0 = this->unk_1F4 - 1;
    if (temp_v0 != 0) {
        this->unk_1F4 = temp_v0;
        return;
    }
    temp_v0_2 = this->unk_1F2 + 1;
    if (temp_v0_2 > 2) {
        this->unk_1F2 = 0;
        temp_f6 = Rand_ZeroOne() * 60.0f;
        this->unk_1F4 = (s32)temp_f6 + 20;
        this->unk_1F8 = func_80AC6970;
        return;
    }
    this->unk_1F2 = temp_v0_2;
    this->unk_1F4 = 1;
}

s32 func_80AC6A44(EnOssan* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex1)) {
        if (this->objectIndex2 >= 0 && !Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex2)) {
            return false;
        }
        if (this->objectIndex3 >= 0 && !Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex3)) {
            return false;
        }
        return true;
    }
    return false;
}

void EnOssan_InitBazaarShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gObjectOssanSkel_009B38, &gObjectOssanAnim_000338, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawBazaarShopkeeper;
    this->unk_194 = NULL;
}

// init kokiri shopowner
void EnOssan_InitKokiriShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060000F0, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_060004A8, 1.0f, 0.0f, Animation_GetLastFrame(&D_060004A8), 0, 0.0f);
    this->actor.draw = EnOssan_DrawKokiriShopkeeper;
    this->unk_194 = func_80AC7380;
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);
}

void EnOssan_InitGoronShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_060000FC, 1.0f, 0.0f, Animation_GetLastFrame(&D_060000FC), 0, 0.0f);
    this->actor.draw = EnOssan_DrawGoronShopkeeper;
    this->unk_194 = func_80AC7380;
}

void EnOssan_InitZoraShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600BFA8, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_0600078C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600078C), 0, 0.0f);
    this->actor.draw = EnOssan_DrawZoraShopkeeper;
    this->unk_194 = func_80AC7380;
}

void EnOssan_InitPotionShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004258, &D_060002E4, 0, 0, 0);
    this->actor.draw = EnOssan_DrawPotionShopkeeper;
    this->unk_194 = NULL;
}

void EnOssan_InitHappyMaskShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004658, &D_060002E4, NULL, NULL, 0);
    this->actor.draw = EnOssan_DrawHappyMaskShopkeeper;
    this->unk_194 = NULL;
}

void EnOssan_InitBombchuShopkeeper(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004868, &D_0600065C, 0, 0, 0);
    this->actor.draw = EnOssan_DrawBombchuShopkeeper;
    this->unk_194 = NULL;
}

u16 func_80AC6F2C(EnOssan* this) {
    this->unk_1EB = 8;
    // mask shop messages
    if (this->actor.params == OSSAN_TYPE_MASK) {
        if (INV_CONTENT(ITEM_TRADE_CHILD) == ITEM_SOLD_OUT) {
            if (gSaveContext.itemGetInf[3] & 0x800) {
                if (!(gSaveContext.eventChkInf[8] & 0x8000)) {
                    this->unk_1EB = 3;
                    return 0x70C6;
                } else {
                    return 0x70AC;
                }
            }
            if (gSaveContext.itemGetInf[3] & 0x400) {
                if (!(gSaveContext.eventChkInf[8] & 0x4000)) {
                    this->unk_1EB = 1;
                    return 0x70C5;
                } else {
                    return 0x70AC;
                }
            }
            if (gSaveContext.itemGetInf[3] & 0x200) {
                if (!(gSaveContext.eventChkInf[8] & 0x2000)) {
                    this->unk_1EB = 2;
                    return 0x70C4;
                } else {
                    return 0x70AC;
                }
            }
            if (gSaveContext.itemGetInf[3] & 0x100) {
                if (!(gSaveContext.eventChkInf[8] & 0x1000)) {
                    this->unk_1EB = 0;
                    return 0x70A5;
                } else {
                    return 0x70AC;
                }
            }
        } else {
            if (gSaveContext.itemGetInf[3] & 0x800) {
                return 0x70AC;
            } else if ((!(gSaveContext.itemGetInf[3] & 0x400)) && (!(gSaveContext.itemGetInf[2] & 0x10)) &&
                       (!(gSaveContext.itemGetInf[3] & 0x100))) {
                if (!(gSaveContext.itemGetInf[2] & 0x8)) {
                    return 0x70A1;
                } else {
                    this->unk_1EB = 4;
                    return 0x70A6;
                }
            } else {
                return 0x70C7;
            }
        }
    }

    return 0x9E;
}

void func_80AC7094(EnOssan* this, GlobalContext* globalCtx) {
    ShopItem* items;

    if (func_80AC6A44(this, globalCtx)) {
        this->actor.flags &= ~0x10;
        this->actor.objBankIndex = this->objectIndex1;
        Actor_SetObjectDependency(globalCtx, &this->actor);

        this->shelves = (EnTana*)Actor_Find(&globalCtx->actorCtx, ACTOR_EN_TANA, ACTORCAT_PROP);

        if (this->shelves == NULL) {
            osSyncPrintf(VT_COL(RED, WHITE));
            // "Warning!! There are no shelves!!"
            osSyncPrintf("★★★ 警告！！ 棚がないよ！！ ★★★\n");
            osSyncPrintf(VT_RST);
            return;
        }

        // "Shopkeeper (params) init"
        osSyncPrintf(VT_FGCOL(YELLOW) "◇◇◇ 店のおやじ( %d ) 初期設定 ◇◇◇" VT_RST "\n", this->actor.params);

        this->actor.world.pos.x += sShopkeeperPositionOffsets[this->actor.params].x;
        this->actor.world.pos.y += sShopkeeperPositionOffsets[this->actor.params].y;
        this->actor.world.pos.z += sShopkeeperPositionOffsets[this->actor.params].z;

        items = sShopkeeperStores[this->actor.params];

        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
        D_80AC8D84[this->actor.params](this, globalCtx);
        this->actor.textId = func_80AC6F2C(this);
        this->unk_234 = this->unk_230 = 100.0f;
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        this->actor.colChkInfo.cylRadius = 50;
        this->unk_1FC = 0;
        this->stickX = this->stickY = 0;

        this->unk_252 = 0;
        this->unk_238 = 1.5f;
        this->unk_23C.r = 0;
        this->unk_23C.g = 255;
        this->unk_23C.b = 80;
        this->unk_23C.a = 255;
        this->unk_24C = 0;

        this->unk_250 = 0;
        this->unk_251 = 0;
        this->unk_1EC = 0;

        this->unk_254.colorA.r = 200;
        this->unk_254.colorA.g = 200;
        this->unk_254.colorA.b = 200;
        this->unk_254.colorA.a = 180;
        this->unk_254.xA = 49;
        this->unk_254.yA = 95;
        this->unk_254.colorB.r = 255;
        this->unk_254.colorB.g = 255;
        this->unk_254.colorB.b = 0;
        this->unk_254.colorB.a = 200;
        this->unk_254.xB = 33;
        this->unk_254.yB = 91;
        this->unk_254.z = 1;
        this->unk_254.isEnabled = false;

        this->unk_28C.colorA.r = 200;
        this->unk_28C.colorA.g = 200;
        this->unk_28C.colorA.b = 200;
        this->unk_28C.colorA.a = 180;
        this->unk_28C.xA = 274;
        this->unk_28C.yA = 95;
        this->unk_28C.colorB.r = 255;
        this->unk_28C.colorB.g = 255;
        this->unk_28C.colorB.b = 0;
        this->unk_28C.colorB.a = 200;
        this->unk_28C.xB = 290;
        this->unk_28C.yB = 91;
        this->unk_28C.z = 1;
        this->unk_28C.isEnabled = false;

        this->unk_2CC = 0;
        this->unk_2CD = 0;
        this->unk_2C4 = 0;
        this->unk_2C8 = 0;
        this->unk_2D0 = 0;
        Actor_SetScale(&this->actor, sShopkeeperScale[this->actor.params]);
        func_80AC2DD8(this, globalCtx, items);
        this->unk_1EE = this->lookAngle = 0;
        this->unk_1F4 = 20;
        this->unk_1F2 = 0;
        this->unk_1F8 = func_80AC6970;
        this->actor.flags &= ~1;
        EnOssan_SetupAction(this, func_80AC73B4);
    }
}

void func_80AC7380(EnOssan* this, GlobalContext* globalCtx) {
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
}

void func_80AC73B4(EnOssan* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1F8(this); // blinking
    func_80AC3BCC(globalCtx, this);
    func_80AC65B8(this);
    func_80AC67C4(this);
    func_80AC66F4(this);
    Math_StepToS(&this->unk_1EE, this->lookAngle, 0x190);

    if (player != NULL) {
        D_80AC8E34[this->unk_1FC](this, globalCtx, player);
    }

    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 26.0f, 10.0f, 0.0f, 5);
    Actor_SetFocus(&this->actor, 90.0f);
    Actor_SetScale(&this->actor, sShopkeeperScale[this->actor.params]);

    // use animation object if needed
    if (this->unk_194 != NULL) {
        this->unk_194(this, globalCtx);
    }

    SkelAnime_Update(&this->skelAnime);
}

void EnOssan_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;

    this->timer++;
    this->actionFunc(this, globalCtx);
}

s32 EnOssan_OverrideLimbDrawDefaultShopkeeper(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos,
                                              Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;

    if (limbIndex == 8) {
        rot->x += this->unk_1EE;
    }
    return 0;
}

// draw cursor
void func_80AC7528(GlobalContext* globalCtx, EnOssan* this, f32 x, f32 y, f32 z, u8 arg5) {
    s32 ulx, uly, lrx, lry;
    f32 w;
    s32 dsdx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4192);
    if (arg5 != 0) {
        func_80094520(globalCtx->state.gfxCtx);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, this->unk_23C.r, this->unk_23C.g, this->unk_23C.b, this->unk_23C.a);
        do {
            gDPLoadTextureBlock_4b(OVERLAY_DISP++, &gSelectionCursorTex, G_IM_FMT_IA, 16, 16, 0,
                                   G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD);
        } while (0);
        w = 16.0f * z;
        ulx = (x - w) * 4.0f;
        uly = (y - w) * 4.0f;
        lrx = (x + w) * 4.0f;
        lry = (y + w) * 4.0f;
        dsdx = (1.0f / z) * 1024.0f;
        gSPTextureRectangle(OVERLAY_DISP++, ulx, uly, lrx, lry, G_TX_RENDERTILE, 0, 0, dsdx, dsdx);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4215);
}

void func_80AC77CC(GlobalContext* globalCtx, s32 r, s32 g, s32 b, s32 a, f32 x, f32 y, f32 z, s32 s, s32 t, f32 arg10,
                   f32 arg11) {
    f32 unk;
    s32 ulx, uly, lrx, lry;
    f32 w, h;
    s32 dsdx, dtdy;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4228);
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, r, g, b, a);

    w = 8.0f * z;
    h = 12.0f * z;
    unk = (1.0f / z) * 1024;
    dsdx = (unk * arg10);
    dtdy = (arg11 * unk);

    ulx = ((x - w) * 4.0f);
    uly = ((y - h) * 4.0f);
    lrx = ((x + w) * 4.0f);
    lry = ((y + h) * 4.0f);
    gSPTextureRectangle(OVERLAY_DISP++, ulx, uly, lrx, lry, G_TX_RENDERTILE, s, t, dsdx, dtdy);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4242);
}

void func_80AC79C8(GlobalContext* globalCtx, EnOssan* this) {
    s32 sp9C = this->unk_254.isEnabled;
    s32 sp98 = this->unk_28C.isEnabled;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4252);
    if (sp9C || sp98) {
        func_80094520(globalCtx->state.gfxCtx);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetTextureImage(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, &gArrowCursorTex);
        gDPSetTile(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
                   G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPLoadSync(OVERLAY_DISP++);
        gDPLoadBlock(OVERLAY_DISP++, G_TX_LOADTILE, 0, 0, 191, 1024);
        gDPPipeSync(OVERLAY_DISP++);
        gDPSetTile(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
                   G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPSetTileSize(OVERLAY_DISP++, G_TX_RENDERTILE, 0, 0, 15 * 4, 23 * 4);
        if (sp9C) {
            func_80AC77CC(globalCtx, this->unk_254.colorB.r, this->unk_254.colorB.g, this->unk_254.colorB.b,
                          this->unk_254.colorB.a, this->unk_254.xB, this->unk_254.yB, this->unk_254.z, 0, 0, -1.0f,
                          1.0f);
        }
        if (sp98) {
            func_80AC77CC(globalCtx, this->unk_28C.colorB.r, this->unk_28C.colorB.g, this->unk_28C.colorB.b,
                          this->unk_28C.colorB.a, this->unk_28C.xB, this->unk_28C.yB, this->unk_28C.z, 0, 0, 1.0f,
                          1.0f);
        }
        gDPSetTextureImage(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, &gControlStickTex);
        gDPSetTile(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
                   G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPLoadSync(OVERLAY_DISP++);
        gDPLoadBlock(OVERLAY_DISP++, G_TX_LOADTILE, 0, 0, 127, 1024);
        gDPPipeSync(OVERLAY_DISP++);
        gDPSetTile(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
                   G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
        gDPSetTileSize(OVERLAY_DISP++, G_TX_RENDERTILE, 0, 0, 15 * 4, 15 * 4);
        if (sp9C) {
            func_80AC77CC(globalCtx, this->unk_254.colorA.r, this->unk_254.colorA.g, this->unk_254.colorA.b,
                          this->unk_254.colorA.a, this->unk_254.xA, this->unk_254.yA, this->unk_254.z, 0, 0, -1.0f,
                          1.0f);
        }
        if (sp98) {
            func_80AC77CC(globalCtx, this->unk_28C.colorA.r, this->unk_28C.colorA.g, this->unk_28C.colorA.b,
                          this->unk_28C.colorA.a, this->unk_28C.xA, this->unk_28C.yA, this->unk_28C.z, 0, 0, 1.0f,
                          1.0f);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4300);
}

void EnOssan_DrawBazaarShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4320);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sBazaarShopkeeperEyeTextures[this->unk_1F2]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawDefaultShopkeeper, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4340);
}

s32 EnOssan_OverrideLimbDrawKokiriShopkeeper(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4354);

    if (limbIndex == 15) {
        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[this->objectIndex2].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objectIndex2].segment);
        *dList = D_06002820;
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sKokiriShopkeeperEyeTextures[this->unk_1F2]));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4374);

    return 0;
}

// Graph_Alloc EndDisplayList
Gfx* func_80AC801C(GraphicsContext* gfxCtx) {
    Gfx* disp = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(disp);
    return disp;
}

// Graph_Alloc SetEnvColor dlist
Gfx* func_80AC8048(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* disp = Graph_Alloc(gfxCtx, sizeof(Gfx) * 2);

    gDPSetEnvColor(disp, r, g, b, a);
    gSPEndDisplayList(disp + 1);
    return disp;
}

void EnOssan_DrawKokiriShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4409);

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x08, func_80AC8048(globalCtx->state.gfxCtx, 0, 130, 70, 255));
    gSPSegment(POLY_OPA_DISP++, 0x09, func_80AC8048(globalCtx->state.gfxCtx, 110, 170, 20, 255));
    gSPSegment(POLY_OPA_DISP++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawKokiriShopkeeper, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4434);
}

void EnOssan_DrawGoronShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4455);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EB8[this->unk_1F2]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(D_0600DE80));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4476);
}

s32 EnOssan_OverrideLimbDrawZoraShopkeeper(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;

    if (limbIndex == 15) {
        rot->x += this->unk_1EE;
    }
    return 0;
}

void EnOssan_DrawZoraShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4506);

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EC4[this->unk_1F2]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnOssan_OverrideLimbDrawZoraShopkeeper, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4531);
}

void EnOssan_DrawPotionShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4544);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8ED0[this->unk_1F2]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4564);
}

void EnOssan_DrawHappyMaskShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4578);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EDC[this->unk_1EC]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4598);
}

void EnOssan_DrawBombchuShopkeeper(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4611);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EE4[this->unk_1F2]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4631);
}
