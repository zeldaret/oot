/*
 * File: z_en_am.c
 * Overlay: ovl_En_Am
 * Description: Armos
 */

#include "z_en_am.h"

#define FLAGS 0x04000015

#define THIS ((EnAm*)thisx)

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809AE4A8(EnAm* this);
void func_809AF30C(EnAm* this, GlobalContext* globalCtx);

// void EnAm_Init(EnAm* this, GlobalContext* globalCtx);
// void EnAm_Destroy(EnAm* this, GlobalContext* globalCtx);
// void EnAm_Update(EnAm* this, GlobalContext* globalCtx);
// void EnAm_Draw(EnAm* this, GlobalContext* globalCtx);

const ActorInit En_Am_InitVars = {
    ACTOR_EN_AM,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_AM,
    sizeof(EnAm),
    (ActorFunc)EnAm_Init,
    (ActorFunc)EnAm_Destroy,
    (ActorFunc)EnAm_Update,
    (ActorFunc)EnAm_Draw,
};

ColliderCylinderInit D_809AFF80 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 15, 70, 0, { 0, 0, 0 } },
};

ColliderCylinderInit D_809AFFAC = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00400106, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 15, 70, 0, { 0, 0, 0 } },
};

ColliderQuadInit D_809AFFD8 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

DamageTable D_809B0028 = {
    0x10, 0x02, 0x01, 0xF2, 0x60, 0xF2, 0xF2, 0x60, 0x01, 0xF2, 0xF4, 0xF2, 0xD4, 0xF2, 0x02, 0x02,
    0x02, 0xE0, 0xD3, 0xE0, 0x00, 0x00, 0x01, 0xF4, 0xF2, 0x02, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00,
};

InitChainEntry D_809B0048[] = {
    ICHAIN_S8(naviEnemyId, 19, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -4000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 5300, ICHAIN_STOP),
};

s32 D_809B0054[] = { 0x64646400 };
s32 D_809B0058[] = { 0x28282800 };
s32 D_809B005C[] = { 0x00000000, 0xBFC00000, 0x00000000 };
s32 D_809B0068[] = { 0x00000000, 0xBE4CCCCD, 0x00000000 };
s32 D_809B0074[] = { 0x451C4000, 0x45DAC000, 0x00000000 };
s32 D_809B0080[] = { 0xC51C4000, 0x00000000, 0x00000000 };
s32 D_809B008C[] = { 0x451C4000, 0x45DAC000, 0x457A0000 };
s32 D_809B0098[] = { 0xC51C4000, 0x00000000, 0x457A0000 };
s32 D_809B00A4[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809B00B0[] = { 0x969696FF };
s32 D_809B00B4[] = { 0x64646496, 0x44898000, 0xC42F0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };
s32 D_809B00D0[] = { 0x41A00000, 0x42200000, 0x00000000, 0x41200000, 0x42700000, 0x41200000, 0xC1200000, 0x42700000,
                     0x41200000, 0xC1A00000, 0x42200000, 0x00000000, 0x41200000, 0x42700000, 0xC1200000, 0xC1200000,
                     0x42700000, 0xC1200000, 0x00000000, 0x42200000, 0xC1A00000, 0x41200000, 0x41A00000, 0x41200000,
                     0x41200000, 0x41A00000, 0xC1200000, 0x00000000, 0x42200000, 0x41A00000, 0xC1200000, 0x41A00000,
                     0x41200000, 0xC1200000, 0x41A00000, 0xC1200000 };

extern CollisionHeader D_06000118;
extern UNK_TYPE D_06000238;
extern AnimationHeader D_0600033C;
extern SkeletonHeader D_06005948;
extern UNK_TYPE D_06005B3C;

void EnAm_SetupAction(EnAm* this, EnAmActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809ADF28.s")

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx) {
    CollisionHeader* colHeader = NULL;
    s32 pad;
    EnAm* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, D_809B0048);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 48.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06005948, &D_0600033C, this->jointTable, this->morphTable, 14);
    Actor_SetScale(&this->dyna.actor, 0.01f);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    Collider_InitCylinder(globalCtx, &this->cylinder1);
    Collider_InitCylinder(globalCtx, &this->cylinder2);
    Collider_SetCylinder(globalCtx, &this->cylinder1, &this->dyna.actor, &D_809AFF80);

    if (this->dyna.actor.params == ARMOS_STATUE) {
        this->dyna.actor.colChkInfo.health = 1;
        Collider_SetCylinder(globalCtx, &this->cylinder2, &this->dyna.actor, &D_809AFF80);
        this->cylinder1.base.maskA = 0x35;
        this->cylinder2.base.maskA = 0xD;
        CollisionHeader_GetVirtual(&D_06000118, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna, colHeader);
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->dyna.actor, ACTORTYPE_BG);
        func_809AE4A8(this);
    } else {
        Collider_SetCylinder(globalCtx, &this->cylinder2, &this->dyna.actor, &D_809AFFAC);
        Collider_InitQuad(globalCtx, &this->hitCollider);
        Collider_SetQuad(globalCtx, &this->hitCollider, &this->dyna.actor, &D_809AFFD8);
        this->dyna.actor.colChkInfo.health = 1;
        this->dyna.actor.colChkInfo.damageTable = &D_809B0028;
        func_809AE40C(this);
        this->unk_258 = 0;
    }

    this->dyna.actor.colChkInfo.mass = 0xFE;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE40C.s")

void func_809AE4A8(EnAm* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_0600033C);

    Animation_Change(&this->skelAnime, &D_0600033C, 0.0f, lastFrame, lastFrame, ANIMMODE_LOOP, 0.0f);
    this->dyna.actor.flags &= ~1;
    this->unk_1A8 = 3;
    this->dyna.actor.speedXZ = 0.0f;
    EnAm_SetupAction(this, func_809AF30C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE7F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AED8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEF00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEFA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF0DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AFD9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Draw.s")
