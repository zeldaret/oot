#include "z_en_ossan.h"
#include "vt.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#define FLAGS 0x00000019

#define THIS ((EnOssan*)thisx)

void EnOssan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80AC80B4(Actor* thisx, GlobalContext* globalCtx);
void func_80AC854C(Actor* thisx, GlobalContext* globalCtx);
void func_80AC8784(Actor* thisx, GlobalContext* globalCtx);
void func_80AC7DAC(Actor* thisx, GlobalContext* globalCtx);
void func_80AC83DC(Actor* thisx, GlobalContext* globalCtx);
void func_80AC8244(Actor* thisx, GlobalContext* globalCtx);
void func_80AC8668(Actor* thisx, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_0600FEF0;
extern FlexSkeletonHeader D_060000F0;
extern FlexSkeletonHeader D_06004258;
extern FlexSkeletonHeader D_06004658;
extern FlexSkeletonHeader D_06004868;
extern FlexSkeletonHeader D_06009B38;
extern FlexSkeletonHeader D_0600BFA8;
extern AnimationHeader D_060000FC;
extern AnimationHeader D_060002E4;
extern AnimationHeader D_06000338;
extern AnimationHeader D_060004A8;
extern AnimationHeader D_0600065C;
extern AnimationHeader D_0600078C;
extern UNK_TYPE D_0400CDC0;
extern UNK_TYPE D_0400CE40;
extern UNK_TYPE D_0400CF40;
extern Gfx D_06002820[];
extern Gfx D_0600DE80[];

void func_80AC7094(EnOssan* this, GlobalContext* globalCtx);
void func_80AC73B4(EnOssan* this, GlobalContext* globalCtx);

void func_80AC3098(GlobalContext* globalCtx);
void func_80AC30B8(GlobalContext* globalCtx);
void func_80AC30FC(GlobalContext* globalCtx);
void func_80AC311C(GlobalContext* globalCtx);
void func_80AC313C(GlobalContext* globalCtx);
void func_80AC3180(GlobalContext* globalCtx);
void func_80AC31A0(GlobalContext* globalCtx);
void func_80AC31F4(GlobalContext* globalCtx);
void func_80AC32C4(GlobalContext* globalCtx);

s16 func_80AC2CA8(s16 v);
s16 func_80AC2CB8(s16 v);
s16 func_80AC2CE8(s16 v);
s16 func_80AC2D18(s16 v);
s16 func_80AC2D48(s16 v);
s16 func_80AC2D78(s16 v);
s16 func_80AC2DA8(s16 v);

void func_80AC6B3C(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6E0C(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6ECC(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6E0C(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6D30(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6C54(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx);
void func_80AC6E6C(EnOssan* this, GlobalContext* globalCtx);

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
    0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000100, 0x001E0050, 0x00000000, 0x00000000,
};

// prices for something (masks?)
s16 D_80AC88EC[] = { 10, 30, 20, 50 };

// item yaw offsets too much data in here, maybe unused values?
s16 D_80AC88F4[] = { 0xEAAC, 0xEAAC, 0xEAAC, 0xEAAC, 0x1554, 0x1554, 0x1554, 0x1554,
                     0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025 };

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

s16 D_80AC8940[][3] = {
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

TestFunc D_80AC8984[] = {
    func_80AC311C, func_80AC30B8, func_80AC3180, func_80AC30FC, func_80AC313C, func_80AC3098,
    func_80AC3098, func_80AC31A0, func_80AC31F4, func_80AC3098, func_80AC32C4,
};

// scales
f32 D_80AC89B0[] = {
    0.01f, 0.011f, 0.0105f, 0.011f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f, 0.01f,
};

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 xOffset;
    /* 0x04 */ s16 yOffset;
    /* 0x06 */ s16 zOffset;
} ShopItem; // size 0x8

ShopItem D_80AC89DC[][8] = {
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

s32 D_80AC8D6C[] = { 0x41880000, 0x42680000, 0x41F00000, 0xC1880000, 0x42680000, 0x41F00000 };

// npc init
EnOssanUnkFunc1 D_80AC8D84[] = {
    func_80AC6B3C, func_80AC6E0C, func_80AC6ECC, func_80AC6E0C, func_80AC6ADC, func_80AC6ADC,
    func_80AC6ADC, func_80AC6D30, func_80AC6C54, func_80AC6ADC, func_80AC6E6C,
};

// shop keeper position offsets
Vec3f D_80AC8DB0[] = {
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

s32 D_80AC8EA0[] = { 0x06004878, 0x060052B8, 0x060056B8 };
s32 D_80AC8EAC[] = { 0x06001570, 0x060001F0, 0x06000B30 };
s32 D_80AC8EB8[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };
s32 D_80AC8EC4[] = { 0x06003E40, 0x06004640, 0x06004E40 };
s32 D_80AC8ED0[] = { 0x060030D8, 0x060034D8, 0x060038D8 };
s32 D_80AC8EDC[] = { 0x060035D8, 0x060039D8 };
s32 D_80AC8EE4[] = { 0x06003968, 0x06003D68, 0x06004168 };

void EnOssan_SetupAction(EnOssan* this, EnOssanActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

s16 func_80AC2CA8(s16 v) {
    return v;
}

s16 func_80AC2CB8(s16 v) {
    if (gSaveContext.itemGetInf[3] & 0x200) {
        return v;
    }
    return -1;
}

s16 func_80AC2CE8(s16 v) {
    if (gSaveContext.itemGetInf[3] & 0x100) {
        return v;
    }
    return -1;
}

s16 func_80AC2D18(s16 v) {
    if (gSaveContext.itemGetInf[3] & 0x400) {
        return v;
    }
    return -1;
}

s16 func_80AC2D48(s16 v) {
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return v;
    }
    return -1;
}

s16 func_80AC2D78(s16 v) {
    if (gSaveContext.itemGetInf[3] & 0x8000) {
        return v;
    }
    return -1;
}

s16 func_80AC2DA8(s16 v) {
    if ((gSaveContext.itemGetInf[3] & 0x8000)) {
        return v;
    }
    return -1;
}

// spawn items on the shelves
void func_80AC2DD8(EnOssan* this, GlobalContext* globalCtx, ShopItem* items);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2DD8.s")
// void func_80AC2DD8(EnOssan* this, GlobalContext* globalCtx, ShopItem* items) {
//     ShopItem* itemEntry = items;
//     EnTana* shelves;
//     s16 itemParams;
//     s16 temp;
//     s32 i;
//     //itemEntry = &items[0];

//     for (i = 0; i < 8; i++, itemEntry++) {
//         temp = itemEntry->unk_00;
//         if (temp < 0) {
//             this->items[i] = NULL;
//         } else {
//             itemParams = D_80AC8C9C[temp](temp);

//             if (itemParams < 0) {
//                 this->items[i] = NULL;
//             } else {
//                 shelves = this->shelves;
//                 this->items[i] = Actor_Spawn(
//                     &globalCtx->actorCtx, globalCtx, ACTOR_EN_GIRLA, shelves->actor.world.pos.x +
//                     itemEntry->xOffset, shelves->actor.world.pos.y + itemEntry->yOffset, shelves->actor.world.pos.z
//                     + itemEntry->zOffset, shelves->actor.shape.rot.x, shelves->actor.shape.rot.y + D_80AC88F4[i],
//                     shelves->actor.shape.rot.z, itemParams);
//             }
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2F2C.s")

void func_80AC3098(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x9E);
}

void func_80AC30B8(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x5046);
    }
    else {
        func_8010B720(globalCtx, 0x504E);
    }
}

void func_80AC30FC(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x504E);
}

void func_80AC311C(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x10BA);
}

void func_80AC313C(GlobalContext* globalCtx) {
    if (globalCtx->curSpawn == 0) {
        func_8010B720(globalCtx, 0x9D);
    }
    else {
        func_8010B720(globalCtx, 0x9C);
    }
}

void func_80AC3180(GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x7076);
}

void func_80AC31A0(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        func_8010B720(globalCtx, 0x403A);
    }
    else
    {
        func_8010B720(globalCtx, 0x403B);
    }
}

// Goron City, Goron
void func_80AC31F4(GlobalContext* globalCtx) {
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        if ((gSaveContext.eventChkInf[2] & 0x20)) {
            func_8010B720(globalCtx, 0x3028);
        }
        else if (CUR_UPG_VALUE(UPG_STRENGTH)) {
            func_8010B720(globalCtx, 0x302D);
        }
        else {
            func_8010B720(globalCtx, 0x300F);
        }
    }
    else if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        func_8010B720(globalCtx, 0x3057);
    }
    else
    {
        func_8010B720(globalCtx, 0x305B);
    }
}

// Happy Mask Shop
void func_80AC32C4(GlobalContext* globalCtx) {
    if ((gSaveContext.itemGetInf[3] & 0x100) &&
        (gSaveContext.itemGetInf[3] & 0x200) &&
        (gSaveContext.itemGetInf[3] & 0x400) && 
        (gSaveContext.itemGetInf[3] & 0x800)) {
        func_8010B720(globalCtx, 0x70AE);
    }
    else switch (globalCtx->msgCtx.choiceIndex)
    {
    case 1:
        func_8010B720(globalCtx, 0x70A4); break;
    case 0:
        func_8010B720(globalCtx, 0x70A3); break;
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

    if ((this->actor.params == 6) && (LINK_AGE_IN_YEARS != YEARS_CHILD)) {
        this->actor.params = 9;
    }

    //! @bug This check will always evaluate to false, it should be || not &&
    if ((this->actor.params >= 11) && (this->actor.params < 0)) {
        Actor_Kill(&this->actor);
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("引数がおかしいよ(arg_data=%d)！！\n", this->actor.params);
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_oB1.c", 1246);
        return;
    }

    if ((this->actor.params == 0xA) && (!(gSaveContext.infTable[7] & 0x40))) {
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->actor.params == 1) && (LINK_AGE_IN_YEARS == YEARS_CHILD)) {
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->actor.params == 2) && (!(gSaveContext.eventChkInf[2] & 0x20))) {
        Actor_Kill(&this->actor);
        return;
    }

    objectIds = D_80AC8940[this->actor.params];

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
    func_8002F194(this, globalCtx);
    globalCtx->msgCtx.msgMode = 0x36;
    globalCtx->msgCtx.unk_E3E7 = 4;
    player->stateFlags2 &= ~0x20000000;
    func_800BC490(globalCtx, 1);
    Interface_ChangeAlpha(0x32);
    this->unk_251 = 0;
    this->unk_288 = 0;
    this->unk_2C0 = 0;
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

s32 func_80AC38C8(EnOssan* this, GlobalContext* globalCtx, Input* input);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC38C8.s")

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

    if (this->actor.params == 0xA) {
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
    this->unk_2C0 = 1;
    this->unk_288 = 1;
    func_80AC3350(this, globalCtx, 0.0f);
}

void func_80AC3A80(GlobalContext* globalCtx, EnOssan* this) {
    this->unk_1FC = 3;
    D_80AC8984[this->actor.params](globalCtx);
    Interface_SetDoAction(globalCtx, 6);
    this->unk_288 = 0;
    this->unk_2C0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3AE0.s")

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

void func_80AC3BCC(GlobalContext* globalCtx, EnOssan* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3BCC.s")
// void func_80AC3BCC(GlobalContext* globalCtx, EnOssan* this) {
//     Input* controller1 = &globalCtx->state.input[0];
//     s8 stickX = controller1->rel.stick_x;
//     s8 stickY = controller1->rel.stick_y;

//     this->moveHorizontal = false;
//     this->moveVertical = false;

//     if (this->stickX == 0) {
//         if ((stickX > 30) || (stickX < -30)) {
//             this->stickX = stickX;
//             this->moveHorizontal = true;
//         }
//     } else if ((stickX <= 30) && (stickX >= -30)) {
//         this->stickX = 0;
//     } else if ((this->stickX * stickX) < 0) {
//         this->stickX = stickX;
//         this->moveHorizontal = true;
//     } else {
//         this->stickX += stickX;

//         if (this->stickX > 2000) {
//             this->stickX = 2000;
//         } else if (this->stickX < -2000) {
//             this->stickX = -2000;
//         }
//     }

//     if (this->stickY == 0) {
//         if ((stickY > 30) || (stickY < -30)) {
//             this->stickY = stickY;
//             this->moveVertical = true;
//         }
//     } else if ((stickY <= 30) && (stickY >= -30)) {
//         this->stickY = 0;
//     } else if ((this->stickY * stickY) < 0) {
//         this->stickY = stickY;
//         this->moveVertical = true;
//     } else {
//         this->stickY += stickY;

//         if (this->stickY > 2000) {
//             this->stickY = 2000;
//         } else if (this->stickY < -2000) {
//             this->stickY = -2000;
//         }
//     }
// }

u8 func_80AC3D18(EnOssan* this, s32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3E50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3ED8.s")

// pay salesman back
void func_80AC3F38(EnOssan* this, GlobalContext* globalCtx) {
    s16 price = D_80AC88EC[this->unk_1EB];

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

    if ((this->actor.params == 0xA) && (dialogState == 4)) {
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
    } else if ((dialogState == 5) && (func_80106BC8(globalCtx))) {
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
                this->unk_288 = 0;
                func_80078884(NA_SE_SY_CURSOR);
            }
        } else if (this->stickX > 0) {
            temp = func_80AC3D18(this, 0);

            if (temp != 0xFF) {
                this->unk_252 = temp;
                this->unk_1FC = 5;
                Interface_SetDoAction(globalCtx, 6);
                this->unk_2C0 = 0;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC45C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC47DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4B4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC51B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC52C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC53F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC54F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC576C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5900.s")

void func_80AC4EC8(GlobalContext* globalCtx, EnOssan* this);

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5A28.s")
void func_80AC5A28(EnOssan* this, GlobalContext* globalCtx, Player* player) {
    u8 sp27;
    EnGirlA* sp20;

    sp27 = func_8010BDBC(&globalCtx->msgCtx);
    sp20 = this->items[this->unk_252];
    if (func_80AC6490(this) == 0) {
        osSyncPrintf("%s[%d]:\x1b[32mズーム中！！\x1b[m\n", "../z_en_oB1.c", 0xB1D);
        return;
    }
    if (sp27 == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            this->unk_1FC = this->unk_1FE;
            func_8010B720(globalCtx, this->items[this->unk_252]->actor.textId);
            return;
        }
    }
    else if ((sp27 == 4) && (func_80AC38C8(this, globalCtx, &globalCtx->state.input[0]) == 0) && (func_80106BC8(globalCtx) != 0)) {
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC60E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC61B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC62C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC62F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC646C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC652C.s")

void func_80AC65B8(EnOssan* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC65B8.s")
//void func_80AC65B8(EnOssan* this) {
//    s32 temp_v1;
//    EnGirlA* temp_a1;
//    EnGirlA** phi_v0;
//    s32 phi_v1;
//
//    for (phi_v1 = 0; phi_v1 < 8; phi_v1++) {
//        temp_a1 = &this->items[phi_v1];
//        //temp_a1 = phi_v0[phi_v1];
//        if (temp_a1 != NULL) {
//            //temp_a2 = this->unk_1FC;
//            if ((this->unk_1FC == 9
//                || this->unk_1FC == 0xA
//                || this->unk_1FC == 0xB
//                || this->unk_1FC == 0xC
//                || this->unk_1FC == 0xD
//                || this->unk_1FC == 0x18
//                || this->unk_1FC == 0xE
//                || this->unk_251 != 0) && phi_v1 == this->unk_252) {
//                temp_a1->unk_1B4 = 1;
//            }
//            else {
//                temp_a1->unk_1B4 = 0;
//            }
//        }
//    }
//}

void func_80AC66F4(EnOssan* this) {
    f32 t;

    t = this->unk_24C;
    if (this->unk_250 == 0) {
        t += 0.05f;
        if (t >= 1.0f) {
            t = 1.0f;
            this->unk_250 = 1;
        }
    }
    else {
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

void func_80AC67C4(EnOssan* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC67C4.s")
//void func_80AC67C4(EnOssan* this) {
//    s32 temp_f18;
//    f32 phi_f2;
//    f32 phi_f0;
//    s32 r, v1, a1, a2;
//
//
//    phi_f2 = this->unk_2C4;
//    phi_f0 = this->unk_2C8;
//    if (this->unk_2CC == 0) {
//        phi_f2 += 0.05f;
//        if (phi_f2 > 1.0f) {
//            phi_f2 = 1.0f;
//            this->unk_2CC = 1;
//        }
//    }
//    else {
//        phi_f2 -= 0.05f;
//        if (phi_f2 < 0.0f) {
//            phi_f2 = 0.0f;
//            this->unk_2CC = 0;
//        }
//    }
//    this->unk_2C4 = phi_f2;
//    if (this->unk_2CD == 0) {
//        phi_f0 += 0.1f;
//        if (phi_f0 > 1.0f) {
//            phi_f0 = 1.0f;
//            this->unk_2CD = 1;
//        }
//    }
//    else {
//        phi_f0 = 0.0f;
//        this->unk_2CD = 0;
//    }
//
//    this->unk_2C8 = phi_f0;
//    r = ColChanMix(255, 155, phi_f2); v1 = ColChanMix(255, 155, phi_f2); a1 = ColChanMix(0, -100, phi_f2); a2 = ColChanMix(200, 50, phi_f2);;
//
//    do {
//        this->unk_26C.r = r; //(0xFF - ((s32)(155 * phi_f2))) & 0xFF;
//        this->unk_26C.g = v1; //(0xFF - ((s32)(155 * phi_f2))) & 0xFF;
//        this->unk_26C.b = a1; //(0 - ((s32)((-100) * phi_f2))) & 0xFF;
//        this->unk_26C.a = a2;  //(0xC8 - ((s32)(50 * phi_f2))) & 0xFF;
//    } while (0);
//    this->unk_2B4 = 290.0f;
//    do {
//        this->unk_2A4.r = this->unk_26C.r;//(0xFF - ((s32)(155 * phi_f2))) & 0xFF;
//        this->unk_2A4.g = this->unk_26C.g; //(0xFF - ((s32)(155 * phi_f2))) & 0xFF;
//        this->unk_2A4.b = this->unk_26C.b; //(0 - ((s32)((-100) * phi_f2))) & 0xFF;
//        this->unk_2A4.a = this->unk_26C.a;//(0xC8 - ((s32)(50 * phi_f2))) & 0xFF;
//    } while (0);
//
//    this->unk_2B8 = 91.0f;
//    this->unk_280 = 91.0f;
//    this->unk_2A0 = 95.0f;
//    this->unk_268 = 95.0f;
//    this->unk_27C = 33.0f;
//    this->unk_29C = (8 * phi_f0) + 274;
//    this->unk_264 = -(8 * phi_f0) + 49.0f;
//}


void func_80AC6970(EnOssan* this) {
    s16 decr = this->unk_1F4 - 1;

    if (decr != 0) {
        this->unk_1F4 = decr;
    } else {
        this->unk_1F8 = func_80AC69A4;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC69A4.s")

s32 func_80AC6A44(EnOssan* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex1)) {
        if ((this->objectIndex2 >= 0) && !Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex2)) {
            return 0;
        }

        if ((this->objectIndex3 >= 0) && !Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex3)) {
            return 0;
        }

        return 1;
    }

    return 0;
}

void func_80AC6ADC(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009B38, &D_06000338, NULL, NULL, 0);
    this->actor.draw = func_80AC7DAC;
    this->unk_194 = NULL;
}

// init kokiri shopowner
void func_80AC6B3C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060000F0, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_060004A8, 1.0f, 0.0f, Animation_GetLastFrame(&D_060004A8), 0, 0.0f);
    this->actor.draw = func_80AC80B4;
    this->unk_194 = func_80AC7380;
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);
}

void func_80AC6C54(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_060000FC, 1.0f, 0.0f, Animation_GetLastFrame(&D_060000FC), 0, 0.0f);
    this->actor.draw = func_80AC8244;
    this->unk_194 = func_80AC7380;
}

void func_80AC6D30(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600BFA8, NULL, NULL, NULL, 0);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objectIndex3].segment);
    Animation_Change(&this->skelAnime, &D_0600078C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600078C), 0, 0.0f);
    this->actor.draw = func_80AC83DC;
    this->unk_194 = func_80AC7380;
}

void func_80AC6E0C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004258, &D_060002E4, 0, 0, 0);
    this->actor.draw = func_80AC854C;
    this->unk_194 = NULL;
}

void func_80AC6E6C(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004658, &D_060002E4, NULL, NULL, 0);
    this->actor.draw = func_80AC8668;
    this->unk_194 = NULL;
}

void func_80AC6ECC(EnOssan* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06004868, &D_0600065C, 0, 0, 0);
    this->actor.draw = func_80AC8784;
    this->unk_194 = NULL;
}

u16 func_80AC6F2C(EnOssan* this) {
    this->unk_1EB = 8;
    // mask shop messages
    if (this->actor.params == 0xA) {
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7094.s")
// void func_80AC7094(EnOssan* this, GlobalContext* globalCtx) {
//     ShopItem* items;

//     if (func_80AC6A44(this, globalCtx)) {
//         this->actor.flags &= ~0x10;
//         this->actor.objBankIndex = this->objectIndex1;
//         Actor_SetObjectDependency(globalCtx, this);

//         this->shelves = Actor_Find(&globalCtx->actorCtx, ACTOR_EN_TANA, 6);

//         if (this->shelves == NULL) {
//             osSyncPrintf(VT_COL(RED, WHITE));
//             // "Warning!! There are no shelves!!"
//             osSyncPrintf("★★★ 警告！！ 棚がないよ！！ ★★★\n");
//             osSyncPrintf(VT_RST);
//             return;
//         }

//         // "Shopkeeper (params) init"
//         osSyncPrintf(VT_FGCOL(YELLOW) "◇◇◇ 店のおやじ( %d ) 初期設定 ◇◇◇" VT_RST "\n", this->actor.params);

//         this->actor.world.pos.x += D_80AC8DB0[this->actor.params].x;
//         this->actor.world.pos.y += D_80AC8DB0[this->actor.params].y;
//         this->actor.world.pos.z += D_80AC8DB0[this->actor.params].z;

//         items = D_80AC89DC[this->actor.params];

//         ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
//         D_80AC8D84[this->actor.params](this, globalCtx);
//         this->actor.textId = func_80AC6F2C(this);
//         this->unk_230 = 100.0f;
//         this->unk_234 = 100.0f;
//         this->actor.colChkInfo.mass = 0xFF;
//         this->actor.colChkInfo.unk_10 = 0x32;
//         this->unk_1FC = 0;
//         this->stickY = 0;
//         this->stickX = 0;
//         this->unk_252 = 0;
//         this->unk_23C = 0;
//         this->unk_240 = 0xFF;
//         this->unk_244 = 0x50;
//         this->unk_248 = 0xFF;
//         this->unk_250 = 0;
//         this->unk_251 = 0;
//         this->unk_1EC = 0;
//         this->unk_254 = 0xC8;
//         this->unk_258 = 0xC8;
//         this->unk_25C = 0xC8;
//         this->unk_260 = 0xB4;
//         this->unk_26C = 0xFF;
//         this->unk_270 = 0xFF;
//         this->unk_274 = 0;
//         this->unk_278 = 0xC8;
//         this->unk_288 = 0;
//         this->unk_28C = 0xC8;
//         this->unk_290 = 0xC8;
//         this->unk_294 = 0xC8;
//         this->unk_298 = 0xB4;
//         this->unk_2A4 = 0xFF;
//         this->unk_2A8 = 0xFF;
//         this->unk_2AC = 0;
//         this->unk_2B0 = 0xC8;
//         this->unk_2C0 = 0;
//         this->unk_2CC = 0;
//         this->unk_2CD = 0;
//         this->unk_238 = 1.5f;
//         this->unk_268 = 95.0f;
//         this->unk_2A0 = 95.0f;
//         this->unk_280 = 91.0f;
//         this->unk_2B8 = 91.0f;
//         this->unk_284 = 1.0f;
//         this->unk_2BC = 1.0f;
//         this->unk_264 = 49.0f;
//         this->unk_27C = 33.0f;
//         this->unk_24C = 0.0f;
//         this->unk_2C4 = 0.0f;
//         this->unk_2C8 = 0.0f;
//         this->unk_2D0 = 0.0f;
//         this->unk_29C = 274.0f;
//         this->unk_2B4 = 290.0f;
//         Actor_SetScale(this, D_80AC89B0[this->actor.params]);
//         func_80AC2DD8(this, globalCtx, items);
//         this->lookAngle = 0;
//         this->unk_1F4 = 20;
//         this->unk_1F2 = 0;
//         this->unk_1F8 = func_80AC6970;
//         this->actor.flags &= ~1;
//         this->unk_1EE = this->lookAngle;
//         EnOssan_SetupAction(this, func_80AC73B4);
//     }
// }

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
    Actor_SetScale(&this->actor, D_80AC89B0[this->actor.params]);

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

s32 func_80AC74F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;

    if (limbIndex == 8) {
        rot->x += this->unk_1EE;
    }

    return 0;
}

// draw cursor
void func_80AC7528(GlobalContext* globalCtx, EnOssan* this, f32 arg2, f32 arg3, f32 arg4, u8 arg5);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7528.s")
// void func_80AC7528(GlobalContext *globalCtx, EnOssan *this, f32 arg2, f32 arg3, f32 arg4, u8 arg5) {
//     GraphicsContext *sp5C;
//     Gfx *sp4C;
//     Gfx *temp_v0;
//     Gfx *temp_v0_10;
//     Gfx *temp_v0_11;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     Gfx *temp_v0_4;
//     Gfx *temp_v0_5;
//     Gfx *temp_v0_6;
//     Gfx *temp_v0_7;
//     Gfx *temp_v0_8;
//     Gfx *temp_v0_9;
//     GraphicsContext *temp_a1;
//     f32 temp_f0;
//     s32 temp_a0;

//     temp_a1 = globalCtx->state.gfxCtx;
//     sp5C = temp_a1;
//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4192);
//     if (arg5 != 0) {
//         sp5C = sp5C;
//         func_80094520(globalCtx->state.gfxCtx);
//         gDPSetPrimColor(OVERLAY_DISP++, 0, 0, this->unk_23C, this->unk_240, this->unk_244, this->unk_248);

//         gDPSetTextureImage(OVERLAY_DISP++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, &D_0400CDC0);
//         temp_v0_2 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_2 + 8;
//         temp_v0_2->words.w0 = 0xFD700000;
//         temp_v0_2->words.w1 = 0x0400CDC0;
//         temp_v0_3 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_3 + 8;
//         temp_v0_3->words.w0 = 0xF5700000;
//         temp_v0_3->words.w1 = 0x7050140;
//         temp_v0_4 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_4 + 8;
//         temp_v0_4->words.w1 = 0;
//         temp_v0_4->words.w0 = 0xE6000000;
//         temp_v0_5 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_5 + 8;
//         temp_v0_5->words.w1 = 0x703F800;
//         temp_v0_5->words.w0 = 0xF3000000;
//         temp_v0_6 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_6 + 8;
//         temp_v0_6->words.w1 = 0;
//         temp_v0_6->words.w0 = 0xE7000000;
//         temp_v0_7 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_7 + 8;
//         temp_v0_7->words.w1 = 0x50140;
//         temp_v0_7->words.w0 = 0xF5600200;
//         temp_v0_8 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_8 + 8;
//         temp_v0_8->words.w0 = 0xF2000000;
//         temp_v0_8->words.w1 = 0x3C03C;
//         temp_f0 = 16.0f * arg4;
//         temp_v0_9 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_9 + 8;
//         temp_v0_9->words.w0 = ((((arg2 + temp_f0) * 4.0f) & 0xFFF) << 0xC) | 0xE4000000 | (((arg3 + temp_f0) * 4.0f) & 0xFFF);
//         temp_v0_9->words.w1 = ((((arg2 - temp_f0) * 4.0f) & 0xFFF) << 0xC) | (((arg3 - temp_f0) * 4.0f) & 0xFFF);
//         temp_v0_10 = sp5C->overlay.p;
//         sp5C->overlay.p = temp_v0_10 + 8;
//         temp_v0_10->words.w1 = 0;
//         temp_v0_10->words.w0 = 0xE1000000;
//         temp_v0_11 = sp5C->overlay.p;
//         temp_a0 = ((1.0f / arg4) * 1024.0f) & 0xFFFF;
//         sp5C->overlay.p = temp_v0_11 + 8;
//         temp_v0_11->words.w1 = (temp_a0 << 0x10) | temp_a0;
//         temp_v0_11->words.w0 = 0xF1000000;
//     }
//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4215);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC77CC.s")

void func_80AC79C8(GlobalContext* globalCtx, EnOssan* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC79C8.s")

void func_80AC7DAC(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4320);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EA0[this->unk_1F2]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80AC74F4, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4340);
}

s32 func_80AC7ED0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4354);

    if (limbIndex == 15) {
        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[this->objectIndex2].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objectIndex2].segment);
        *dList = D_06002820;
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(D_80AC8EAC[this->unk_1F2]));
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

void func_80AC80B4(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4409);

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x08, func_80AC8048(globalCtx->state.gfxCtx, 0, 130, 70, 255));
    gSPSegment(POLY_OPA_DISP++, 0x09, func_80AC8048(globalCtx->state.gfxCtx, 110, 170, 20, 255));
    gSPSegment(POLY_OPA_DISP++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80AC7ED0, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4434);
}

void func_80AC8244(Actor* thisx, GlobalContext* globalCtx) {
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

s32 func_80AC83A8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnOssan* this = THIS;

    if (limbIndex == 15) {
        rot->x += this->unk_1EE;
    }

    return 0;
}

void func_80AC83DC(Actor* thisx, GlobalContext* globalCtx) {
    EnOssan* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4506);

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, func_80AC801C(globalCtx->state.gfxCtx));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AC8EC4[this->unk_1F2]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80AC83A8, NULL, this);
    func_80AC7528(globalCtx, this, this->unk_230, this->unk_234, this->unk_238, this->unk_251);
    func_80AC79C8(globalCtx, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_oB1.c", 4531);
}

void func_80AC854C(Actor* thisx, GlobalContext* globalCtx) {
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

void func_80AC8668(Actor* thisx, GlobalContext* globalCtx) {
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

void func_80AC8784(Actor* thisx, GlobalContext* globalCtx) {
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

