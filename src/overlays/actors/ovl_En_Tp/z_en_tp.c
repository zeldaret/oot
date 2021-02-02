/*
 * File: z_en_tp.c
 * Overlay: ovl_En_Tp
 * Description: Electric Tailpasaran
 */

#include "z_en_tp.h"

#define FLAGS 0x00000000

#define THIS ((EnTp*)thisx)

void EnTp_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTp_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTp_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTp_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B21084(EnTp* this);
void func_80B210B0(EnTp* this, GlobalContext* globalCtx);
void func_80B2128C(EnTp* this);
void func_80B212C0(EnTp* this, GlobalContext* globalCtx);
void func_80B217FC(EnTp* this);
void func_80B21900(EnTp* this, GlobalContext* globalCtx);
void func_80B2194C(EnTp* this);
void func_80B219A8(EnTp* this, GlobalContext* globalCtx);
void func_80B21B90(EnTp* this);
void func_80B21BDC(EnTp* this, GlobalContext* globalCtx);
void func_80B21EE8(EnTp* this);
void func_80B21F18(EnTp* this, GlobalContext* globalCtx);

const ActorInit En_Tp_InitVars = {
    ACTOR_EN_TP,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_TP,
    sizeof(EnTp),
    (ActorFunc)EnTp_Init,
    (ActorFunc)EnTp_Destroy,
    (ActorFunc)EnTp_Update,
    (ActorFunc)EnTp_Draw,
};

/* static */ ColliderJntSphElementInit D_80B22A90[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x03, 0x08 },
            { 0xFFCFFFFF, 0x01, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 4 }, 100 },
    },
};

/* static */ ColliderJntSphInit D_80B22AB4 = {
    {
        COLTYPE_HIT1,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80B22A90,
};

// extern ColliderJntSphInit D_80B22AB4;

// extern DamageTable D_80B22AC4;
/* static */ DamageTable D_80B22AC4 = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0xF),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0x0),
    /* Boomerang     */ DMG_ENTRY(1, 0xF),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0xE),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xE),
    /* Master sword  */ DMG_ENTRY(2, 0xE),
    /* Giant's Knife */ DMG_ENTRY(4, 0xE),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0xE),
    /* Giant spin    */ DMG_ENTRY(4, 0xE),
    /* Master spin   */ DMG_ENTRY(2, 0xE),
    /* Kokiri jump   */ DMG_ENTRY(2, 0xE),
    /* Giant jump    */ DMG_ENTRY(8, 0xE),
    /* Master jump   */ DMG_ENTRY(4, 0xE),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0xE),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

// extern InitChainEntry D_80B22AE4[];
// sInitChain
/* static */ InitChainEntry D_80B22AE4[] = {
    ICHAIN_F32(targetArrowOffset, 10, ICHAIN_STOP),
};

Vec3f D_80B22AE8 = { 0.0f, 0.5f, 0.0f };

Vec3f D_80B22AF4 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80B22B00 = { 0.0f, -0.5f, 0.0f };

s32 D_80B22B0C[] = { 0xFFFFFFFF };

s32 D_80B22B10[] = { 0x96969600 };

Vec3f D_80B22B14 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80B22B20 = { 0.0f, -0.6f, 0.0f };

s32 D_80B22B2C[] = { 0x0000FFFF };

s32 D_80B22B30[] = { 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

extern UNK_TYPE D_06000000;
extern UNK_TYPE D_060008D0;
extern UNK_TYPE D_06000C68;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B20DE0.s")
void func_80B20DE0(EnTp* this, EnTpActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Init.s")
/* void EnTp_Init(Actor* thisx, GlobalContext* globalCtx2) {
    // s32 pad;
    GlobalContext* globalCtx = globalCtx2;
    EnTp* this = THIS;

    Actor* phi_s5;
    EnTp* temp_v0_2;
    s32 phi_s1;
    // s16 temp_s2;

    Actor_ProcessInitChain(&this->actor, D_80B22AE4);
    this->actor.targetMode = 3;
    this->actor.colChkInfo.damageTable = &D_80B22AC4;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.14f);
    this->unk_150 = 0;
    this->actor.colChkInfo.health = 1;
    this->unk_15E = 0xFF;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80B22AB4, this->colliderItems);

    if (this->actor.params < 0) {
        this->actor.naviEnemyId = 6;
        this->unk_15A = 0;
        this->collider.base.acFlags |= 4;
        this->collider.elements->dim.modelSphere.radius = this->collider.elements->dim.worldSphere.radius = 8;
        // temp_v0 = this->collider.elements;
        func_80B21B90(this);
        this->actor.flags |= 0x15;
        this->actor.focus.pos = this->actor.world.pos;
        Actor_SetScale(&this->actor, 1.5f);

        phi_s5 = &this->actor;
        for (phi_s1 = 0; phi_s1 < 7; phi_s1++) {

            temp_v0_2 = (EnTp*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_TP, this->actor.world.pos.x,
                                    this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);

            if (temp_v0_2 != NULL) {
                phi_s5->child = &temp_v0_2->actor;
                temp_v0_2->actor.parent = phi_s5;
                temp_v0_2->unk_162 = phi_s1 + 1;
                temp_v0_2->unk_1D4 = &this->actor;
                Actor_SetScale(&temp_v0_2->actor, 0.3f);

                if (phi_s1 == 2) {
                    temp_v0_2->unk_150 = 1;
                    temp_v0_2->actor.flags |= 0x15;
                }

                temp_v0_2->unk_15A = temp_v0_2->unk_15C  = (0 - phi_s1) * 5;
                temp_v0_2->unk_16C = 6.0f - (phi_s1 * 0.75f);
                phi_s5 = &temp_v0_2->actor;
            }
        }
    } else if (this->actor.params == 0) {
        func_80B21084(this);
        // return;
    } else {
        func_80B217FC(this);
    }
} */

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Destroy.s")
void EnTp_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTp* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21084.s")
void func_80B21084(EnTp* this) {
    this->unk_14C = 2;
    func_80B20DE0(this, func_80B210B0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B210B0.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B2128C.s")
void func_80B2128C(EnTp *this) {
    this->unk_14C = 7;
    this->unk_15A = 0xC8;
    func_80B20DE0(this, func_80B212C0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B212C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B214CC.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B217FC.s")
void func_80B217FC(EnTp *this) {
    this->unk_14C = 0;
    this->actor.world.pos.x += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.world.pos.y += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.world.pos.z += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.velocity.x = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.y = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.z = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.flags &= ~1;
    func_80B20DE0(this, func_80B21900);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21900.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B2194C.s")
void func_80B2194C(EnTp *this) {
    this->unk_15A = (s32) ((Rand_ZeroOne() * 15.0f) + 40.0f);
    this->unk_14C = 8;
    func_80B20DE0(this, func_80B219A8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B219A8.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21B90.s")
void func_80B21B90(EnTp* this) {
    this->unk_14C = 4;
    this->unk_150 = 0;
    this->actor.shape.rot.x = -0x4000;
    this->unk_15A = 0x3C;
    this->unk_15C = 0;
    this->actor.speedXZ = 0.0f;
    func_80B20DE0(this, func_80B21BDC);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21BDC.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21EE8.s")
void func_80B21EE8(EnTp *this) {
    this->unk_14C = 9;
    this->unk_15A = 0;
    func_80B20DE0(this, func_80B21F18);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21F18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B221E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Draw.s")
