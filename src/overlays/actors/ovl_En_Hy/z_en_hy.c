/*
 * File: z_en_hy.c
 * Overlay: ovl_En_Hy
 * Description: Hylian NPCs
 */

#include "z_en_hy.h"
#include "objects/object_aob/object_aob.h"
#include "objects/object_os_anime/object_os_anime.h"

#define FLAGS 0x00000019

#define THIS ((EnHy*)thisx)

void EnHy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHy_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A70E34(EnHy* this, GlobalContext* globalCtx);
void func_80A7134C(EnHy* this, GlobalContext* globalCtx);
void func_80A71530(EnHy* this, GlobalContext* globalCtx);
void func_80A711B4(EnHy* this, GlobalContext* globalCtx);
void func_80A712C0(EnHy* this, GlobalContext* globalCtx);
void func_80A710F8(EnHy* this, GlobalContext* globalCtx);
void func_80A7127C(EnHy* this, GlobalContext* globalCtx);
void func_80A712B4(EnHy* this, GlobalContext* globalCtx);
void func_80A714C4(EnHy* this, GlobalContext* globalCtx);

extern Gfx D_06005BC8[];

const ActorInit En_Hy_InitVars = {
    ACTOR_EN_HY,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHy),
    (ActorFunc)EnHy_Init,
    (ActorFunc)EnHy_Destroy,
    (ActorFunc)EnHy_Update,
    (ActorFunc)EnHy_Draw,
};

static ColliderCylinderInit D_80A71EC0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 D_80A71EEC = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF };

static UNK_PTR D_80A71EF8[] = { 0x060005C8, 0x06000DC8, 0x060015C8, NULL };
static UNK_PTR D_80A71F08[] = { 0x0600057C, 0x0600067C, 0x0600077C, NULL };
static UNK_PTR D_80A71F18[] = { 0x060004C8, NULL };
static UNK_PTR D_80A71F20[] = { 0x060005FC, 0x060009FC, 0x06000DFC, NULL };
static UNK_PTR D_80A71F30[] = { 0x060005FC, 0x060006FC, 0x060007FC, NULL };
static UNK_PTR D_80A71F40[] = { 0x060007C8, 0x06000FC8, 0x060017C8, NULL };

typedef struct {
    /* 0x00 */ s16 objectId;
    /* 0x04 */ Gfx* dList;
    /* 0x08 */ UNK_PTR* unk_8;
} EnHyUnknownStruct1; // size = 0xC

static EnHyUnknownStruct1 D_80A71F50[] = {
    { OBJECT_AOB, gDogLadyHeadDL, D_80A71EF8 }, { OBJECT_BOB, 0x06003B78, D_80A71F40 },
    { OBJECT_BOJ, 0x060026F0, D_80A71F30 },     { OBJECT_BOJ, 0x060052E0, NULL },
    { OBJECT_BOJ, 0x06005528, NULL },           { OBJECT_BOJ, 0x06005738, NULL },
    { OBJECT_BOJ, 0x060059B0, NULL },           { OBJECT_AHG, 0x060030F0, D_80A71F08 },
    { OBJECT_AHG, 0x06005508, NULL },           { OBJECT_AHG, 0x06005728, NULL },
    { OBJECT_BBA, 0x06002948, D_80A71F18 },     { OBJECT_CNE, 0x06001300, NULL },
    { OBJECT_CNE, 0x06002860, NULL },           { OBJECT_BJI, 0x06002560, D_80A71F20 },
    { OBJECT_BJI, 0x06003F68, NULL },           { OBJECT_COB, 0x06001300, NULL },
};

typedef struct {
    /* 0x00 */ s16 objectId;
    /* 0x04 */ FlexSkeletonHeader* unk_4;
} EnHyUnknownStruct2; // size = 0x8

static EnHyUnknownStruct2 D_80A72010[] = {
    { OBJECT_AOB, &gDogLadySkel }, { OBJECT_BOB, 0x060000F0 }, { OBJECT_BOJ, 0x060000F0 }, { OBJECT_AHG, 0x060000F0 },
    { OBJECT_BBA, 0x060000F0 },    { OBJECT_CNE, 0x060000F0 }, { OBJECT_BJI, 0x060000F0 }, { OBJECT_COB, 0x060021F8 },
};

static struct_80034EC0_Entry D_80A72050[] = {
    { &gObjOsAnim_092C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_0228, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_4CF4, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_16EC, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_265C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_42AC, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_28DC, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_2160, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
    { &gObjOsAnim_265C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f }, { &gObjOsAnim_4E90, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_1E7C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_0170, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_00B4, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_3D84, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_41F8, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_300C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_31B0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_31B0, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gObjOsAnim_2D0C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_2DC0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_4408, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_1F18, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gObjOsAnim_4F28, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },   { &gObjOsAnim_33B4, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gObjOsAnim_12E8, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },  { &gObjOsAnim_0FE4, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gObjOsAnim_0BFC, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
};

typedef struct {
    /* 0x00 */ u8 unk_0;
    /* 0x01 */ u8 unk_1;
    /* 0x02 */ Color_RGBA8 unk_2;
    /* 0x06 */ u8 unk_6;
    /* 0x07 */ Color_RGBA8 unk_7;
    /* 0x0B */ u8 unk_B;
} EnHyUnknownStruct3; // size = 0xC

static EnHyUnknownStruct3 D_80A722D8[] = {
    { 0, 0, { 255, 255, 255, 255 }, 0, { 255, 255, 255, 255 }, 0 },
    { 15, 7, { 255, 255, 255, 255 }, 7, { 255, 255, 255, 255 }, 22 },
    { 7, 3, { 255, 255, 255, 255 }, 3, { 255, 255, 255, 255 }, 1 },
    { 3, 2, { 255, 255, 255, 0 }, 2, { 55, 55, 255, 0 }, 15 },
    { 8, 3, { 0, 0, 0, 0 }, 3, { 255, 0, 0, 0 }, 11 },
    { 4, 2, { 50, 80, 0, 0 }, 2, { 50, 80, 0, 0 }, 16 },
    { 10, 4, { 255, 255, 255, 255 }, 4, { 255, 255, 255, 255 }, 10 },
    { 13, 6, { 0, 50, 160, 0 }, 6, { 255, 255, 255, 0 }, 4 },
    { 11, 5, { 160, 180, 255, 0 }, 5, { 160, 180, 255, 0 }, 9 },
    { 2, 2, { 220, 0, 80, 0 }, 2, { 255, 255, 255, 0 }, 13 },
    { 2, 2, { 0, 130, 220, 0 }, 2, { 255, 255, 255, 0 }, 14 },
    { 12, 5, { 70, 160, 230, 0 }, 5, { 255, 255, 100, 0 }, 20 },
    { 5, 2, { 150, 60, 90, 0 }, 2, { 255, 240, 150, 0 }, 18 },
    { 9, 3, { 200, 180, 255, 0 }, 3, { 200, 180, 255, 0 }, 12 },
    { 6, 2, { 140, 255, 110, 0 }, 2, { 255, 255, 255, 0 }, 19 },
    { 14, 6, { 130, 70, 20, 0 }, 6, { 130, 180, 255, 0 }, 21 },
    { 2, 2, { 255, 255, 255, 255 }, 2, { 255, 255, 255, 255 }, 5 },
    { 8, 3, { 90, 100, 20, 255 }, 3, { 100, 140, 50, 255 }, 11 },
    { 1, 1, { 255, 255, 255, 255 }, 1, { 255, 255, 255, 255 }, 6 },
    { 14, 6, { 160, 0, 100, 0 }, 6, { 70, 130, 210, 0 }, 21 },
    { 9, 3, { 160, 230, 0, 0 }, 3, { 0, 150, 110, 0 }, 12 },
};

typedef struct {
    /* 0x00 */ Vec3s offset;
    /* 0x06 */ s16 radius;
    /* 0x08 */ s16 height;
} EnHyUnknownStruct4; // size 0xA

static EnHyUnknownStruct4 D_80A723D4[] = {
    { { 0, 0, 4 }, 24, 70 },     { { 0, 0, 8 }, 28, 62 }, { { 0, 0, 4 }, 20, 60 },  { { 0, 0, 2 }, 20, 60 },
    { { 0, 0, 65534 }, 20, 60 }, { { 0, 0, 8 }, 24, 40 }, { { 0, 0, 10 }, 26, 40 }, { { 0, 0, 12 }, 26, 58 },
    { { 0, 0, 2 }, 18, 68 },     { { 0, 0, 4 }, 20, 60 }, { { 0, 0, 4 }, 20, 60 },  { { 0, 0, 6 }, 20, 64 },
    { { 0, 0, 0 }, 18, 60 },     { { 0, 0, 0 }, 16, 60 }, { { 0, 0, 0 }, 16, 64 },  { { 0, 0, 8 }, 20, 58 },
    { { 4, 0, 0 }, 18, 62 },     { { 4, 0, 0 }, 18, 62 }, { { 0, 0, 8 }, 28, 62 },  { { 0, 0, 0 }, 16, 60 },
    { { 0, 0, 8 }, 20, 58 },
};

typedef struct {
    /* 0x00 */ u8 unk_0;
    /* 0x04 */ f32 unk_4;
    /* 0x08 */ f32 unk_8;
} EnHyUnknownStruct5; // size = 0xC

static EnHyUnknownStruct5 D_80A724A8[] = {
    { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x07, 40.0f, 20.0f }, { 0x06, 20.0f, 10.0f },
    { 0x07, 40.0f, 20.0f }, { 0x08, 0.0f, -20.0f }, { 0x09, 20.0f, 0.0f },  { 0x09, 20.0f, 0.0f },
    { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f },
    { 0x00, 0.0f, 0.0f },   { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x0A, 20.0f, 0.0f },
    { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f }, { 0x06, 20.0f, 10.0f },
    { 0x0A, 20.0f, 0.0f },
};

typedef struct {
    /* 0x00 */ f32 unk_0;
    /* 0x04 */ Vec3f unk_4;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ s8 unk_14;
    /* 0x18 */ f32 unk_18;
} EnHyUnknownStruct6; // size = 0x1C

static EnHyUnknownStruct6 D_80A725A4[] = {
    { 36.0f, { 0.0f, 0.0f, 600.0f }, 0.01f, 0x06, 30.0f },     { 40.0f, { -100.0f, 0.0f, 400.0f }, 0.01f, 0x06, 30.0f },
    { 22.0f, { 0.0f, 0.0f, -200.0f }, 0.01f, 0x06, 30.0f },    { 20.0f, { -100.0f, 0.0f, 0.0f }, 0.01f, 0x06, 30.0f },
    { 22.0f, { 0.0f, 0.0f, 0.0f }, 0.01f, 0x06, 30.0f },       { 21.0f, { 0.0f, 0.0f, 0.0f }, 0.01f, 0x06, 30.0f },
    { 25.0f, { -100.0f, 0.0f, 600.0f }, 0.01f, 0x06, 30.0f },  { 28.0f, { -100.0f, 0.0f, 800.0f }, 0.01f, 0x06, 30.0f },
    { 17.0f, { 0.0f, 0.0f, 700.0f }, 0.01f, 0x06, 30.0f },     { 18.0f, { 0.0f, 0.0f, 100.0f }, 0.01f, 0x06, 30.0f },
    { 18.0f, { 0.0f, 0.0f, -200.0f }, 0.01f, 0x06, 30.0f },    { 17.0f, { 0.0f, 0.0f, 700.0f }, 0.01f, 0x06, 30.0f },
    { 21.0f, { 0.0f, 0.0f, -300.0f }, 0.01f, 0x06, 30.0f },    { 20.0f, { 0.0f, 0.0f, -200.0f }, 0.01f, 0x06, 30.0f },
    { 18.0f, { -200.0f, 0.0f, -200.0f }, 0.01f, 0x06, 30.0f }, { 27.0f, { -100.0f, 0.0f, 800.0f }, 0.01f, 0x06, 30.0f },
    { 19.0f, { 400.0f, 0.0f, 0.0f }, 0.01f, 0x04, 30.0f },     { 19.0f, { 400.0f, 0.0f, 0.0f }, 0.01f, 0x06, 30.0f },
    { 40.0f, { -100.0f, 0.0f, 400.0f }, 0.01f, 0x06, 30.0f },  { 17.0f, { 0.0f, 0.0f, 700.0f }, 0.01f, 0x06, 30.0f },
    { 20.0f, { 0.0f, 0.0f, -200.0f }, 0.01f, 0x06, 30.0f },
};

s32 func_80A6F5B0(EnHy* this, GlobalContext* globalCtx) {
    u8 i2 = D_80A722D8[this->actor.params & 0x7F].unk_0;
    u8 i1 = D_80A722D8[this->actor.params & 0x7F].unk_1;
    u8 i0 = D_80A722D8[this->actor.params & 0x7F].unk_6;

    this->unk_198 = Object_GetIndex(&globalCtx->objectCtx, D_80A72010[i0].objectId);
    if (this->unk_198 < 0) {
        return false;
    }

    this->unk_197 = Object_GetIndex(&globalCtx->objectCtx, D_80A72010[i1].objectId);
    if (this->unk_197 < 0) {
        return false;
    }

    this->unk_196 = Object_GetIndex(&globalCtx->objectCtx, D_80A71F50[i2].objectId);
    if (this->unk_196 < 0) {
        return false;
    }

    return true;
}

s32 func_80A6F6C0(EnHy* this, GlobalContext* globalCtx) {
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_198)) {
        return false;
    }

    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_197)) {
        return false;
    }

    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_196)) {
        return false;
    }

    return true;
}

s32 func_80A6F744(EnHy* this, GlobalContext* globalCtx) {
    this->unk_199 = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
    if (this->unk_199 < 0) {
        return false;
    }

    return true;
}

s32 func_80A6F790(EnHy* this, GlobalContext* globalCtx) {
    if (!Object_IsLoaded(&globalCtx->objectCtx, this->unk_199)) {
        return false;
    }

    return true;
}

void func_80A6F7CC(EnHy* this, GlobalContext* globalCtx, s32 getItemId) {
    this->unk_260 = getItemId;
    func_8002F434(&this->actor, globalCtx, getItemId, this->actor.xzDistToPlayer + 1.0f,
                  fabsf(this->actor.yDistToPlayer) + 1.0f);
}

u16 func_80A6F810(GlobalContext* globalCtx, Actor* thisx) {
    Player* player = GET_PLAYER(globalCtx);
    EnHy* this = THIS;
    u16 textId = Text_GetFaceReaction(globalCtx, (this->actor.params & 0x7F) + 37);

    if (textId != 0) {
        if ((this->actor.params & 0x7F) == 5) {
            player->exchangeItemId = EXCH_ITEM_BLUE_FIRE;
        }
        return textId;
    }

    switch (this->actor.params & 0x7F) {
        case 0:
            if (globalCtx->sceneNum == SCENE_KAKARIKO) {
                return (this->unk_330 & 0x800) ? 0x508D : ((gSaveContext.infTable[12] & 0x800) ? 0x508C : 0x508B);
            } else if (globalCtx->sceneNum == SCENE_MARKET_DAY) {
                return (gSaveContext.eventInf[3] & 1) ? 0x709B : 0x709C;
            } else if (gSaveContext.dogIsLost) {
                s16 dogParam = (gSaveContext.dogParams & 0xF00) >> 8;
                if (dogParam) {
                    this->unk_215 = false;
                    return (dogParam == 1) ? 0x709F : 0x709E;
                } else {
                    return 0x709D;
                }
            } else {
                return 0x70A0;
            }
        case 1:
            if (gSaveContext.eventChkInf[8] & 1) {
                return (gSaveContext.infTable[12] & 2) ? 0x7017 : 0x7045;
            } else {
                return (gSaveContext.infTable[12] & 1) ? 0x7017 : 0x7016;
            }
        case 2:
            if (globalCtx->sceneNum == SCENE_KAKARIKO) {
                return 0x5086;
            } else if (globalCtx->sceneNum == SCENE_SPOT01) {
                return 0x5085;
            } else if (gSaveContext.eventChkInf[8] & 1) {
                return (gSaveContext.infTable[12] & 8) ? 0x701A : 0x7047;
            } else if (gSaveContext.eventChkInf[1] & 0x10) {
                return 0x701A;
            } else if (gSaveContext.eventChkInf[1] & 1) {
                return 0x701B;
            } else if (gSaveContext.infTable[12] & 4) {
                return 0x701C;
            } else {
                return 0x701A;
            }
        case 3:
            return (gSaveContext.eventChkInf[8] & 1) ? ((gSaveContext.infTable[12] & 0x10) ? 0x7001 : 0x70EB) : 0x7001;
        case 4:
            return (gSaveContext.eventChkInf[8] & 1) ? 0x704B : ((gSaveContext.infTable[12] & 0x20) ? 0x7024 : 0x7023);
        case 5:
            player->exchangeItemId = EXCH_ITEM_BLUE_FIRE;
            return 0x700C;
        case 6:
            return (gSaveContext.eventChkInf[8] & 1) ? 0x704A : ((gSaveContext.infTable[12] & 0x40) ? 0x7022 : 0x7021);
        case 7:
            if (globalCtx->sceneNum == SCENE_KAKARIKO) {
                return 0x5088;
            } else if (globalCtx->sceneNum == SCENE_SPOT01) {
                return 0x5087;
            } else {
                return (gSaveContext.eventChkInf[8] & 1) ? 0x704D
                                                         : ((gSaveContext.infTable[12] & 0x80) ? 0x7028 : 0x7027);
            }
        case 8:
            if (gSaveContext.eventChkInf[8] & 1) {
                return (gSaveContext.infTable[12] & 0x200) ? 0x701E : 0x7048;
            } else {
                return (gSaveContext.infTable[12] & 0x100) ? 0x701E : 0x701D;
            }
        case 9:
            if (globalCtx->sceneNum == SCENE_KAKARIKO) {
                return (gSaveContext.eventChkInf[10] & 0x400) ? 0x5082 : 0x5081;
            } else if (globalCtx->sceneNum == SCENE_SPOT01) {
                return CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) ? 0x5080 : 0x507F;
            } else {
                return (gSaveContext.eventChkInf[8] & 1) ? 0x7049
                                                         : ((gSaveContext.infTable[12] & 0x400) ? 0x7020 : 0x701F);
            }
        case 10:
            if (globalCtx->sceneNum == SCENE_LABO) {
                return (gSaveContext.eventChkInf[10] & 0x400) ? 0x507E : 0x507D;
            } else if (globalCtx->sceneNum == SCENE_SPOT01) {
                return CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) ? 0x507C : 0x507B;
            } else {
                return (gSaveContext.eventChkInf[8] & 1) ? 0x7046
                                                         : ((gSaveContext.infTable[12] & 0x2000) ? 0x7019 : 0x7018);
            }
        case 11:
            return (gSaveContext.infTable[8] & 0x800) ? ((gSaveContext.infTable[12] & 0x1000) ? 0x7014 : 0x70A4)
                                                      : 0x7014;
        case 12:
            if (globalCtx->sceneNum == SCENE_SPOT01) {
                return !IS_DAY ? 0x5084 : 0x5083;
            } else {
                return (gSaveContext.eventChkInf[8] & 1) ? 0x7044 : 0x7015;
            }
        case 13:
            return 0x7055;
        case 14:
            return 0x7089;
        case 15:
            return 0x708A;
        case 16:
            return 0x700E;
        case 17:
            if (!LINK_IS_ADULT) {
                if (!gSaveContext.nightFlag) {
                    return (gSaveContext.infTable[22] & 1) ? 0x5058 : 0x5057;
                } else {
                    return (gSaveContext.infTable[22] & 2) ? 0x505A : 0x5059;
                }
            } else if (!gSaveContext.nightFlag) {
                return (gSaveContext.infTable[22] & 4) ? 0x505C : 0x505B;
            } else {
                return 0x5058;
            }
        case 18:
            if (!LINK_IS_ADULT) {
                return (gSaveContext.eventChkInf[8] & 1) ? 0x505F : ((gSaveContext.infTable[22] & 8) ? 0x505E : 0x505D);
            } else {
                return (this->unk_330 & 0x800) ? 0x5062 : ((gSaveContext.infTable[22] & 0x10) ? 0x5061 : 0x5060);
            }
        case 19:
            return 0x7120;
        case 20:
            return 0x7121;
        default:
            return 0;
    }
}

s16 func_80A70058(GlobalContext* globalCtx, Actor* thisx) {
    EnHy* this = THIS;
    s16 beggarItems[] = { ITEM_BLUE_FIRE, ITEM_FISH, ITEM_BUG, ITEM_FAIRY };
    s16 beggarRewards[] = { 150, 100, 50, 25 };

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
            return 1;
        case 3:
            switch (this->actor.textId) {
                case 0x709E:
                case 0x709F:
                    if (!this->unk_215) {
                        Audio_PlaySoundGeneral(this->actor.textId == 0x709F ? NA_SE_SY_CORRECT_CHIME : NA_SE_SY_ERROR,
                                               &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        this->unk_215 = true;
                    }
                    break;
                case 0x70F0:
                case 0x70F1:
                case 0x70F2:
                case 0x70F3:
                    if (this->skelAnime.animation != &gObjOsAnim_33B4) {
                        func_80034EC0(&this->skelAnime, D_80A72050, 23);
                        func_800F5C64(NA_BGM_ITEM_GET | 0x900);
                    }
                    break;
            }
            return 1;
        case 2:
            switch (this->actor.textId) {
                case 0x70F0:
                case 0x70F1:
                case 0x70F2:
                case 0x70F3:
                    Rupees_ChangeBy(beggarRewards[this->actor.textId - 0x70F0]);
                    func_80034EC0(&this->skelAnime, D_80A72050, 17);
                    Player_UpdateBottleHeld(globalCtx, GET_PLAYER(globalCtx), ITEM_BOTTLE, PLAYER_AP_BOTTLE);
                    break;
                case 0x7016:
                    gSaveContext.infTable[12] |= 1;
                    break;
                case 0x7045:
                    gSaveContext.infTable[12] |= 2;
                    break;
                case 0x701B:
                    gSaveContext.infTable[12] |= 4;
                    break;
                case 0x7047:
                    gSaveContext.infTable[12] |= 8;
                    break;
                case 0x70EB:
                    gSaveContext.infTable[12] |= 0x10;
                    break;
                case 0x7023:
                    gSaveContext.infTable[12] |= 0x20;
                    break;
                case 0x7021:
                    gSaveContext.infTable[12] |= 0x40;
                    break;
                case 0x7027:
                    gSaveContext.infTable[12] |= 0x80;
                    break;
                case 0x701D:
                    gSaveContext.infTable[12] |= 0x100;
                    break;
                case 0x7048:
                    gSaveContext.infTable[12] |= 0x200;
                    break;
                case 0x701F:
                    gSaveContext.infTable[12] |= 0x400;
                    break;
                case 0x7018:
                    gSaveContext.infTable[12] |= 0x2000;
                    break;
                case 0x70A4:
                    gSaveContext.infTable[12] |= 0x1000;
                    break;
                case 0x5057:
                    gSaveContext.infTable[22] |= 1;
                    break;
                case 0x5059:
                    gSaveContext.infTable[22] |= 2;
                    break;
                case 0x505B:
                    gSaveContext.infTable[22] |= 4;
                    break;
                case 0x505D:
                    gSaveContext.infTable[22] |= 8;
                    break;
                case 0x5060:
                    gSaveContext.infTable[22] |= 0x10;
                    break;
                case 0x508B:
                    gSaveContext.infTable[12] |= 0x800;
                    break;
                case 0x709E:
                    gSaveContext.dogParams = 0;
                    break;
                case 0x709F:
                    func_80A6F7CC(this, globalCtx, (gSaveContext.infTable[25] & 2) ? GI_RUPEE_BLUE : GI_HEART_PIECE);
                    this->actionFunc = func_80A714C4;
                    break;
            }
            return 0;
        case 5:
            if (!func_80106BC8(globalCtx)) {
                return 1;
            } else {
                return 2;
            }
    }

    return 1;
}

void func_80A705A4(EnHy* this) {
    u8 i;

    if (DECR(this->unk_21A) == 0) {
        i = D_80A722D8[this->actor.params & 0x7F].unk_0;
        this->unk_218++;
        if ((D_80A71F50[i].unk_8 != NULL) && (D_80A71F50[i].unk_8[this->unk_218] == NULL)) {
            this->unk_21A = Rand_S16Offset(30, 30);
            this->unk_218 = 0;
        }
    }
}

void func_80A70660(EnHy* this) {
    u8 i = this->actor.params & 0x7F;

    this->collider.dim.radius = D_80A723D4[i].radius;
    this->collider.dim.height = D_80A723D4[i].height;
}

void func_80A70698(EnHy* this) {
    u8 i = this->actor.params & 0x7F;

    this->actor.shape.shadowScale = D_80A725A4[i].unk_0;
    Actor_SetScale(&this->actor, D_80A725A4[i].unk_10);
    this->actor.targetMode = D_80A725A4[i].unk_14;
    this->unk_264 = D_80A725A4[i].unk_4;
    this->unk_25C = D_80A725A4[i].unk_18;
    this->unk_25C += this->collider.dim.radius;
}

void func_80A70734(EnHy* this, GlobalContext* globalCtx) {
    Vec3s pos;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y;
    pos.z = this->actor.world.pos.z;
    pos.x += D_80A723D4[this->actor.params & 0x7F].offset.x;
    pos.y += D_80A723D4[this->actor.params & 0x7F].offset.y;
    pos.z += D_80A723D4[this->actor.params & 0x7F].offset.z;
    this->collider.dim.pos = pos;
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80A70834(EnHy* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((this->actor.params & 0x7F) == 5) {
        if (!Inventory_HasSpecificBottle(ITEM_BLUE_FIRE) && !Inventory_HasSpecificBottle(ITEM_BUG) &&
            !Inventory_HasSpecificBottle(ITEM_FISH)) {
            switch (func_8002F368(globalCtx)) {
                case EXCH_ITEM_POE:
                case EXCH_ITEM_BIG_POE:
                case EXCH_ITEM_LETTER_RUTO:
                    this->actor.textId = 0x70EF;
                    break;
                default:
                    if (Player_GetMask(globalCtx) == PLAYER_MASK_NONE) {
                        this->actor.textId = 0x70ED;
                    }
                    break;
            }
        } else {
            switch (func_8002F368(globalCtx)) {
                case EXCH_ITEM_BLUE_FIRE:
                    this->actor.textId = 0x70F0;
                    break;
                case EXCH_ITEM_FISH:
                    this->actor.textId = 0x70F1;
                    break;
                case EXCH_ITEM_BUG:
                    this->actor.textId = 0x70F2;
                    break;
                default:
                    if (Player_GetMask(globalCtx) == PLAYER_MASK_NONE) {
                        this->actor.textId = 0x700C;
                    }
                    break;
            }
        }

        player->actor.textId = this->actor.textId;
    }
}

void func_80A70978(EnHy* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s16 phi_a3;

    switch (this->actor.params & 0x7F) {
        case 3:
        case 7:
        case 9:
        case 10:
            phi_a3 = (this->unk_1E8.unk_00 == 0) ? 1 : 2;
            break;
        case 12:
            phi_a3 = 1;
            break;
        case 2:
        case 17:
            phi_a3 = 4;
            break;
        case 0:
        case 18:
            phi_a3 = (this->unk_1E8.unk_00 == 0) ? 2 : 4;
            break;
        default:
            phi_a3 = 2;
            break;
    }

    this->unk_1E8.unk_18 = player->actor.world.pos;

    if (LINK_IS_ADULT) {
        this->unk_1E8.unk_14 = D_80A724A8[this->actor.params & 0x7F].unk_8;
    } else {
        this->unk_1E8.unk_14 = D_80A724A8[this->actor.params & 0x7F].unk_4;
    }

    func_80034A14(&this->actor, &this->unk_1E8, D_80A724A8[this->actor.params & 0x7F].unk_0, phi_a3);

    if (func_800343CC(globalCtx, &this->actor, &this->unk_1E8.unk_00, this->unk_25C, func_80A6F810, func_80A70058)) {
        func_80A70834(this, globalCtx);
    }
}

s32 func_80A70AE4(EnHy* this, GlobalContext* globalCtx) {
    switch (globalCtx->sceneNum) {
        case SCENE_SPOT01:
            if (((this->actor.params & 0x7F) != 9) && ((this->actor.params & 0x7F) != 10) &&
                ((this->actor.params & 0x7F) != 12) && ((this->actor.params & 0x7F) != 2) &&
                ((this->actor.params & 0x7F) != 7)) {
                return true;
            } else if (!LINK_IS_ADULT) {
                return true;
            } else if (((this->actor.params & 0x7F) != 12) && IS_NIGHT) {
                return false;
            } else {
                return true;
            }
        case SCENE_LABO:
            if ((this->actor.params & 0x7F) != 10) {
                return true;
            } else if (LINK_IS_CHILD) {
                return false;
            } else if (((this->actor.params & 0x7F) == 10) && !gSaveContext.nightFlag) {
                return false;
            } else {
                return true;
            }
        case SCENE_IMPA:
            if ((this->actor.params & 0x7F) != 0) {
                return true;
            } else if (!gSaveContext.nightFlag) {
                return false;
            } else {
                return true;
            }
        case SCENE_KAKARIKO:
            if ((this->actor.params & 0x7F) == 0) {
                return !LINK_IS_ADULT ? false : true;
            } else if (((this->actor.params & 0x7F) != 9) && ((this->actor.params & 0x7F) != 2) &&
                       ((this->actor.params & 0x7F) != 7)) {
                return true;
            } else if (!gSaveContext.nightFlag) {
                return false;
            } else if (LINK_IS_CHILD) {
                return false;
            } else {
                return true;
            }
        case SCENE_MARKET_ALLEY:
        case SCENE_MARKET_ALLEY_N:
            if ((this->actor.params & 0x7F) != 14) {
                return true;
            } else if (IS_NIGHT) {
                return false;
            } else if ((gSaveContext.eventChkInf[8] & 1) && !(gSaveContext.eventChkInf[4] & 0x20)) {
                return false;
            } else {
                return true;
            }
        default:
            switch (this->actor.params & 0x7F) {
                case 19:
                case 20:
                    if (LINK_IS_ADULT) {
                        return false;
                    }
            }
            return true;
    }
}

void EnHy_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHy* this = THIS;

    if (((this->actor.params & 0x7F) > 20) || !func_80A6F744(this, globalCtx) || !func_80A6F5B0(this, globalCtx)) {
        Actor_Kill(&this->actor);
    }

    if (!func_80A70AE4(this, globalCtx)) {
        Actor_Kill(&this->actor);
    }

    this->actionFunc = func_80A70E34;
}

void EnHy_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHy* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A70E34(EnHy* this, GlobalContext* globalCtx) {
    if (func_80A6F790(this, globalCtx) && func_80A6F6C0(this, globalCtx)) {
        this->actor.objBankIndex = this->unk_198;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, D_80A72010[D_80A722D8[this->actor.params & 0x7F].unk_6].unk_4,
                           NULL, this->jointTable, this->morphTable, 16);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk_199].segment);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A71EC0);
        func_80A70660(this);
        CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &D_80A71EEC);
        func_80034EC0(&this->skelAnime, D_80A72050, D_80A722D8[this->actor.params & 0x7F].unk_B);

        if ((globalCtx->sceneNum == SCENE_MARKET_ALLEY) || (globalCtx->sceneNum == SCENE_MARKET_DAY)) {
            this->actor.flags &= ~0x10;
            this->actor.uncullZoneScale = 0.0f;
        }

        if (globalCtx->sceneNum == SCENE_KAKARIKO) {
            this->unk_330 = gSaveContext.eventChkInf[6];
        }

        func_80A70698(this);
        this->path = Path_GetByIndex(globalCtx, (this->actor.params & 0x780) >> 7, 15);

        switch (this->actor.params & 0x7F) {
            case 3:
                if (this->path != NULL) {
                    this->actor.speedXZ = 3.0f;
                }
                this->actionFunc = func_80A711B4;
                break;
            case 7:
                this->unk_195 = false;
                this->actionFunc = func_80A712C0;
                break;
            case 0:
                if (globalCtx->sceneNum == SCENE_MARKET_DAY) {
                    this->actionFunc = func_80A710F8;
                    break;
                }
            case 1:
            case 2:
            case 4:
            case 6:
            case 8:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                this->actionFunc = func_80A7127C;
                break;
            case 5:
            case 9:
            case 10:
            case 11:
            case 12:
                this->actionFunc = func_80A712B4;
                break;
            default:
                Actor_Kill(&this->actor);
                break;
        }
    }
}

void func_80A710F8(EnHy* this, GlobalContext* globalCtx) {
    if (this->unk_1E8.unk_00 != 0) {
        if (this->skelAnime.animation != &gObjOsAnim_0BFC) {
            func_80034EC0(&this->skelAnime, D_80A72050, 26);
        }
    } else if (gSaveContext.eventInf[3] & 1) {
        if (this->skelAnime.animation != &gObjOsAnim_0FE4) {
            func_80034EC0(&this->skelAnime, D_80A72050, 25);
        }
    } else if (this->skelAnime.animation != &gObjOsAnim_12E8) {
        func_80034EC0(&this->skelAnime, D_80A72050, 24);
    }
}

void func_80A711B4(EnHy* this, GlobalContext* globalCtx) {
    s16 yaw;
    f32 distSq;

    distSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->unk_214, &yaw);
    Math_SmoothStepToS(&this->actor.world.rot.y, yaw, 10, 1000, 1);
    this->actor.shape.rot = this->actor.world.rot;

    if ((distSq > 0.0f) && (distSq < 1000.0f)) {
        this->unk_214++;
        if (this->unk_214 > (this->path->count - 1)) {
            this->unk_214 = 0;
        }
    }
}

void func_80A7127C(EnHy* this, GlobalContext* globalCtx) {
    func_80034F54(globalCtx, this->unk_21C, this->unk_23C, 16);
}

void func_80A712B4(EnHy* this, GlobalContext* globalCtx) {
}

void func_80A712C0(EnHy* this, GlobalContext* globalCtx) {
    if ((this->actor.xzDistToPlayer <= 100.0f) && (this->path != NULL)) {
        func_80034EC0(&this->skelAnime, D_80A72050, 7);
        this->actor.speedXZ = 0.4f;
        this->actionFunc = func_80A7134C;
    }

    func_80034F54(globalCtx, this->unk_21C, this->unk_23C, 16);
}

void func_80A7134C(EnHy* this, GlobalContext* globalCtx) {
    s16 yaw;
    f32 distSq;

    if ((this->skelAnime.animation == &gObjOsAnim_2160) && (this->unk_1E8.unk_00 != 0)) {
        func_80034EC0(&this->skelAnime, D_80A72050, 8);
    }

    if ((this->skelAnime.animation == &gObjOsAnim_265C) && (this->unk_1E8.unk_00 == 0)) {
        func_80034EC0(&this->skelAnime, D_80A72050, 7);
    }

    this->actor.speedXZ = 0.4f;
    distSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->unk_214, &yaw);
    Math_SmoothStepToS(&this->actor.world.rot.y, yaw, 10, 1000, 1);
    this->actor.shape.rot = this->actor.world.rot;

    if (!(distSq <= 0.0f) && !(distSq >= 1000.0f)) {
        if (!this->unk_195) {
            this->unk_214++;
            if (this->unk_214 > (this->path->count - 1)) {
                this->unk_195 = true;
                this->unk_214 = this->path->count - 2;
            }
        } else {
            this->unk_214--;
            if (this->unk_214 < 0) {
                this->unk_195 = false;
                this->unk_214 = 1;
            }
        }
    }
}

void func_80A714C4(EnHy* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_80A71530;
    } else {
        func_8002F434(&this->actor, globalCtx, this->unk_260, this->actor.xzDistToPlayer + 1.0f,
                      fabsf(this->actor.yDistToPlayer) + 1.0f);
    }
}

void func_80A71530(EnHy* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        switch (this->unk_260) {
            case GI_HEART_PIECE:
                gSaveContext.dogParams = 0;
                gSaveContext.dogIsLost = false;
                gSaveContext.infTable[25] |= 2;
                break;
            case GI_RUPEE_BLUE:
                Rupees_ChangeBy(5);
                gSaveContext.dogParams = 0;
                gSaveContext.dogIsLost = false;
                break;
        }

        this->actionFunc = func_80A7127C;
    }
}

void EnHy_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHy* this = THIS;

    if (this->actionFunc != func_80A70E34) {
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk_199].segment);
        SkelAnime_Update(&this->skelAnime);
        func_80A705A4(this);

        if (this->unk_1E8.unk_00 == 0) {
            Actor_MoveForward(&this->actor);
        }

        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    }

    this->actionFunc(this, globalCtx);
    func_80A70978(this, globalCtx);
    func_80A70734(this, globalCtx);
}

s32 func_80A716B8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnHy* this = THIS;
    s32 pad;
    Vec3s sp48;
    u8 i;
    UNK_PTR ptr;

    if (1) {}

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2170);

    if (limbIndex == 15) {
        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[this->unk_196].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk_196].segment);
        i = D_80A722D8[this->actor.params & 0x7F].unk_0;
        *dList = D_80A71F50[i].dList;

        if (D_80A71F50[i].unk_8 != NULL) {
            ptr = D_80A71F50[i].unk_8[this->unk_218];
            gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(ptr));
        }

        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk_198].segment);
    }

    if (limbIndex == 15) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        sp48 = this->unk_1E8.unk_08;
        Matrix_RotateX((sp48.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp48.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }

    if (limbIndex == 8) {
        sp48 = this->unk_1E8.unk_0E;
        Matrix_RotateX((-sp48.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp48.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
    }

    if ((limbIndex == 8) || (limbIndex == 9) || (limbIndex == 12)) {
        rot->y += Math_SinS(this->unk_21C[limbIndex]) * 200.0f;
        rot->z += Math_CosS(this->unk_23C[limbIndex]) * 200.0f;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2228);

    return 0;
}

void func_80A71A64(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnHy* this = THIS;
    s32 pad;
    Vec3f sp3C = { 400.0f, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2255);

    if (limbIndex == 7) {
        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[this->unk_197].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk_197].segment);
    }

    if (((this->actor.params & 0x7F) == 3) && (limbIndex == 8)) {
        gSPDisplayList(POLY_OPA_DISP++, D_06005BC8);
    }

    if (limbIndex == 15) {
        Matrix_MultVec3f(&sp3C, &this->actor.focus.pos);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2281);
}

Gfx* func_80A71BBC(GraphicsContext* globalCtx, u8 envR, u8 envG, u8 envB, u8 envA) {
    Gfx* dList;

    dList = Graph_Alloc(globalCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(dList, envR, envG, envB, envA);
    gSPEndDisplayList(dList + 1);

    return dList;
}

void EnHy_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHy* this = THIS;
    Color_RGBA8 envColor1;
    Color_RGBA8 envColor2;
    Color_RGBA8 envColor3;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2318);

    if (this->actionFunc != func_80A70E34) {
        func_80093D18(globalCtx->state.gfxCtx);
        Matrix_Translate(this->unk_264.x, this->unk_264.y, this->unk_264.z, MTXMODE_APPLY);
        envColor1 = D_80A722D8[this->actor.params & 0x7F].unk_2;
        envColor2 = D_80A722D8[this->actor.params & 0x7F].unk_7;

        switch (this->actor.params & 0x7F) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
                gSPSegment(POLY_OPA_DISP++, 0x08,
                           func_80A71BBC(globalCtx->state.gfxCtx, envColor1.r, envColor1.g, envColor1.b, envColor1.a));
                gSPSegment(POLY_OPA_DISP++, 0x09,
                           func_80A71BBC(globalCtx->state.gfxCtx, envColor2.r, envColor2.g, envColor2.b, envColor2.a));

                if (((this->actor.params & 0x7F) == 8) || ((this->actor.params & 0x7F) == 11)) {
                    if ((this->actor.params & 0x7F) == 8) {
                        envColor3 = envColor1;
                    }
                    if ((this->actor.params & 0x7F) == 11) {
                        envColor3.r = envColor3.g = envColor3.b = 255;
                        envColor3.a = 0;
                    }
                    gSPSegment(
                        POLY_OPA_DISP++, 0x0A,
                        func_80A71BBC(globalCtx->state.gfxCtx, envColor3.r, envColor3.g, envColor3.b, envColor3.a));
                }
                break;
        }

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80A716B8, func_80A71A64, &this->actor);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_hy.c", 2388);
}
