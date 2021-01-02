#include "z_en_ny.h"

#define FLAGS 0x00000005

#define THIS ((EnNy*)thisx)

void EnNy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ABDBF8(Actor* thisx, GlobalContext* globalCtx);
void func_80ABCF4C(EnNy* this, GlobalContext* globalCtx);
void func_80ABCD40(EnNy* this);
void func_80ABCDBC(EnNy *this);

extern UNK_TYPE D_06001DD0;
extern UNK_TYPE D_06001EA8;
extern UNK_TYPE D_06001FC8;

const ActorInit En_Ny_InitVars = {
    ACTOR_EN_NY,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_NY,
    sizeof(EnNy),
    (ActorFunc)EnNy_Init,
    (ActorFunc)EnNy_Destroy,
    (ActorFunc)EnNy_Update,
    (ActorFunc)EnNy_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x04, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit sColliderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static DamageTable sDamageTable = { {
    0x00, 0x00, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x12, 0x00, 0xF2, 0xF4, 0x24, 0xF2, 0xF2, 0xE4, 0x00,
    0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xF2, 0x00, 0xF8, 0xF4, 0x00, 0x00, 0x00, 0x00,
} };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 40, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

s32 D_80ABE390[] = { 0x00000000, 0x00000000, 0x00000000 };

s32 D_80ABE39C[] = { 0x00000000, 0x3DCCCCCD, 0x00000000 };

s32 D_80ABE3A8[] = { 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000 };

void EnNy_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNy* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->colChkInfo.damageTable = &sDamageTable;
    thisx->colChkInfo.health = 2;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sColliderInit, &this->items);
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    this->unk_1CA = 0;
    this->unk_1D0 = 0;
    Actor_SetScale(thisx, 0.01f);
    thisx->speedXZ = 0.0f;
    thisx->shape.rot.y = 0;
    thisx->gravity = -0.4f;
    this->unk_1CC = 0;
    this->unk_1CE = 2;
    thisx->velocity.y = 0.0f;
    this->unk_1D4 = 0xFF;
    this->unk_1D8 = 0;
    this->unk_1E8 = 0.0f;
    this->unk_1E0 = 0.25f;
    if (thisx->params == 0) {
        // New initials
        osSyncPrintf("ニュウ イニシャル[ %d ] ！！\n", thisx->params);
        thisx->colChkInfo.mass = 0;
        this->unk_1D4 = 0;
        this->unk_1D8 = 0xFF;
        this->unk_1E0 = 1.0f;
        func_80ABCDBC(this);
        return;
    }

    // Dummy new initials
    osSyncPrintf("ダミーニュウ イニシャル[ %d ] ！！\n", thisx->params);
    osSyncPrintf("En_Ny_actor_move2[ %x ] ！！\n", func_80ABDBF8);
    thisx->colChkInfo.mass = 0xFF;
    this->collider.base.type = COLTYPE_METAL_SHIELD;
    thisx->update = &func_80ABDBF8;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDAC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDBC.s")
void func_80ABCDBC(EnNy *this) {
    this->unk_1F4 = 0.0f;
    func_80ABCD40(this);
    this->unk_1DC = 0xB4;
    this->actionFunc = &func_80ABCF4C;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD11C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABE040.s")
