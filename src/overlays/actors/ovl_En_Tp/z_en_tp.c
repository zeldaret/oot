/*
 * File: z_en_tp.c
 * Overlay: ovl_En_Tp
 * Description: Electric Tailpasaran
 */

#include "z_en_tp.h"
#include "objects/object_tp/object_tp.h"

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
void func_80B21454(EnTp* this);
void func_80B214CC(EnTp* this, GlobalContext* globalCtx);
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

static ColliderJntSphElementInit D_80B22A90[1] = {
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

static ColliderJntSphInit D_80B22AB4 = {
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

static DamageTable D_80B22AC4 = {
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

// sInitChain
static InitChainEntry D_80B22AE4[] = {
    ICHAIN_F32(targetArrowOffset, 10, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func _80B20DE0.s")
void EnTp_SetupAction(EnTp* this, EnTpActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Init.s")
// #ifdef NON_MATCHING
// Regalloc, some stack, and compiler refuses to put zero in temp_s4; all seems to be related
void EnTp_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnTp* this = THIS;

    EnTp* now;
    EnTp* next;
    s32 i;
    // s64 new_var;
    s64 temp_s4;

    Actor_ProcessInitChain(&this->actor, D_80B22AE4);
    this->actor.targetMode = 3;
    this->actor.colChkInfo.damageTable = &D_80B22AC4;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.14f);
    this->unk_150 = 0;
    this->actor.colChkInfo.health = 1;
    now = this;
    this->unk_15E = 255;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80B22AB4, this->colliderItems);

    if (this->actor.params < 0) {
        this->actor.naviEnemyId = 6;
        this->unk_15A = 0;
        this->collider.base.acFlags |= 4;
        this->collider.elements->dim.modelSphere.radius = this->collider.elements->dim.worldSphere.radius = 8;
        func_80B21B90(this);
        this->actor.focus.pos = this->actor.world.pos;
        this->actor.flags |= 0x15;
        Actor_SetScale(&this->actor, 1.5f);

        for (i = 0; i <= 6; i++) {
        temp_s4 = 0;
        // new_var = 0;
            next =
            (EnTp*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_TP, this->actor.world.pos.x,
                                    this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, temp_s4);

            if (next != NULL) {
                now->actor.child = &next->actor;
                next->actor.parent = &now->actor;
                next->unk_162 = i + 1;
                next->unk_1D4 = this;
                Actor_SetScale(&next->actor, 0.3f);

                if (i == 2) {
                    next->actor.flags |= 0x15;
                    next->unk_150 = 1;
                }


                next->unk_15A = next->unk_15C  = i * -5;
                next->unk_16C = 6.0f - (i * 0.75f);
                now = next;
            }
        }
    } else if (this->actor.params == 0) {
        func_80B21084(this);
    } else {
        func_80B217FC(this);
    }
}

// #else
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Init.s")
// #endif

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Destroy.s")
void EnTp_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTp* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21084.s")
void func_80B21084(EnTp* this) {
    this->unk_14C = 2;
    EnTp_SetupAction(this, func_80B210B0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B210B0.s")
void func_80B210B0(EnTp* this, GlobalContext* globalCtx) {
    s16 sp36;
    s16 temp_a0;

    if (this->actor.params == 0xB) {
        this->unk_14C = 1;

        if (this->actor.parent == NULL) {
            func_80B21454(this);
        }
    } else {
        if (this->unk_150 != 0) {
            this->actor.flags |= 1;
        }

        if (this->unk_1D4->unk_150 != 0) {
            this->actor.speedXZ = this->unk_160 = this->actor.velocity.y = this->unk_168 = 0.0f;
            if (this->actor.world.pos.y < this->unk_1D4->actor.home.pos.y) {
                this->actor.flags &= ~1;
            }

            this->actor.world.pos = this->actor.parent->prevPos;
        } else {
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.parent->world.pos.y - 4.0f, 1.0f, 1.0f, 0.0f);
            sp36 = this->unk_1D4->actor.shape.rot.y + 0x4000;
            temp_a0 = 2000 * (this->unk_1D4->unk_15C + this->unk_15A);
            this->actor.world.pos.x = this->actor.home.pos.x + Math_SinS(temp_a0) * (Math_SinS(sp36) * this->unk_16C);
            this->actor.world.pos.z = this->actor.home.pos.z + Math_SinS(temp_a0) * (Math_CosS(sp36) * this->unk_16C);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B2128C.s")
void func_80B2128C(EnTp* this) {
    this->unk_14C = 7;
    this->unk_15A = 200;
    EnTp_SetupAction(this, func_80B212C0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B212C0.s")
void func_80B212C0(EnTp* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 30.0f, 1.0f, 0.5f, 0.0f);
    Audio_PlaySoundGeneral(NA_SE_EN_TAIL_FLY - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                           &D_801333E8);

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if (&player->actor == this->collider.base.at) {
            this->unk_15A = 1;
        }
    }

    if (this->unk_160 < 255) {
        this->unk_160 += 15;
    }

    if (Math_CosF(this->unk_168) == 0.0f) {
        this->unk_170 = 2.0f * Rand_ZeroOne();
    }

    this->actor.world.pos.y += Math_CosF(this->unk_168) * (2.0f + this->unk_170);
    this->unk_168 += 0.2f;
    Math_SmoothStepToF(&this->actor.speedXZ, 2.5f, 0.1f, 0.2f, 0.0f);
    this->unk_15A--;

    if (this->unk_15A != 0) {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 750, 0);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    } else {
        func_80B21EE8(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21454.s")
void func_80B21454(EnTp* this) {
    Actor* phi_v0;

    this->unk_15A = 2;
    if (this->actor.params < 0) {
        for (phi_v0 = this->actor.child; phi_v0 != NULL; phi_v0 = phi_v0->child) {
            phi_v0->params = 0xB;
            phi_v0->colChkInfo.health = 0;
        }

        this->unk_15A = 13;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TAIL_DEAD);
    }
    this->unk_14C = 1;
    EnTp_SetupAction(this, func_80B214CC);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B214CC.s")
void func_80B214CC(EnTp* this, GlobalContext* globalCtx) {
    EnTp* temp_v0;
    s16 phi_s1;
    s32 pad;
    Vec3f effectVelAccel = { 0.0f, 0.5f, 0.0f };
    Vec3f effectPos = { 0.0f, 0.0f, 0.0f };

    this->unk_15A--;

    if (this->unk_15A <= 0) {
        if (this->actor.params == 0xC) {
            effectPos.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            effectPos.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            effectPos.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(globalCtx, &effectPos, &effectVelAccel, &effectVelAccel, 100, 0, 255, 255, 255, 255, 0,
                                 0, 255, 1, 9, 1);

            effectPos.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            effectPos.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            effectPos.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(globalCtx, &effectPos, &effectVelAccel, &effectVelAccel, 100, 0, 255, 255, 255, 255, 0,
                                 0, 255, 1, 9, 1);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x50);
        } else {
            for (phi_s1 = 0; phi_s1 < 1; phi_s1++) {
                temp_v0 = (EnTp*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_TP, this->actor.world.pos.x,
                                             this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0xA);

                if (temp_v0 != NULL) {
                    Actor_SetScale(&temp_v0->actor, this->actor.scale.z * 0.5f);
                    temp_v0->unk_160 = this->unk_160;
                }
            }
        }

        if (this->actor.child != NULL) {
            this->actor.child->parent = NULL;
            this->actor.child->params = 0xB;
            this->actor.child->colChkInfo.health = 0;
        }

        this->unk_150 = 2;
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B217FC.s")
void func_80B217FC(EnTp* this) {
    this->unk_14C = 0;
    this->actor.world.pos.x += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.world.pos.y += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.world.pos.z += ((Rand_ZeroOne() - 0.5f) * 5.0f);
    this->actor.velocity.x = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.y = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.z = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.flags &= ~1;
    EnTp_SetupAction(this, func_80B21900);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21900.s")
void func_80B21900(EnTp* this, GlobalContext* globalCtx) {
    func_8002D7EC(&this->actor);
    this->unk_15E -= 20;

    if (this->unk_15E < 20) {
        this->unk_15E = 0;
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B2194C.s")
void func_80B2194C(EnTp* this) {
    this->unk_15A = (s32)((Rand_ZeroOne() * 15.0f) + 40.0f);
    this->unk_14C = 8;
    EnTp_SetupAction(this, func_80B219A8);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B219A8.s")
void func_80B219A8(EnTp* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    Math_SmoothStepToF(&this->actor.speedXZ, 2.5f, 0.1f, 0.2f, 0.0f);
    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 85.0f + this->unk_16C, 1.0f,
                       this->actor.speedXZ * 0.25f, 0.0f);
    Audio_PlaySoundGeneral(NA_SE_EN_TAIL_FLY - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                           &D_801333E8);

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if (&player->actor == this->collider.base.at) {
            this->unk_15C = 1;
        }
    }

    if (this->unk_160 != 0) {
        this->unk_160 -= 15;
    }

    if (Math_CosF(this->unk_168) == 0.0f) {
        this->unk_170 = Rand_ZeroOne() * 4.0f;
    }

    this->actor.world.pos.y += (Math_CosF(this->unk_168) * ((this->actor.speedXZ * 0.25f) + this->unk_170));
    this->actor.world.rot.y += this->unk_164;
    this->unk_168 += 0.2f;

    if (this->unk_15A != 0) {
        this->unk_15A--;
    }

    Math_SmoothStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos), 1, 750,
                       0);

    if (this->unk_15A == 0) {
        func_80B2128C(this);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21B90.s")
void func_80B21B90(EnTp* this) {
    this->unk_14C = 4;
    this->unk_150 = 0;
    this->actor.shape.rot.x = -0x4000;
    this->unk_15A = 60;
    this->unk_15C = 0;
    this->actor.speedXZ = 0.0f;
    EnTp_SetupAction(this, func_80B21BDC);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21BDC.s")
void func_80B21BDC(EnTp* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 sp32;

    this->unk_15C--;

    if (this->actor.xzDistToPlayer < 200.0f) {
        if (this->collider.base.atFlags & 2) {
            this->collider.base.atFlags &= ~2;
            if (&player->actor == this->collider.base.at) {
                this->unk_15A = 0;
            }
        }

        if (this->unk_15A != 0) {
            this->unk_15A--;

            Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 1, 500, 0);
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 1500, 0);

            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos) + 0x4000;
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 30.0f, 0.3f, 1.0f, 0.3f);
            this->actor.world.pos.x =
                this->actor.home.pos.x + (Math_SinS(2000 * this->unk_15C) * (Math_SinS(sp32) * this->unk_16C));
            this->actor.world.pos.z =
                this->actor.home.pos.z + (Math_SinS(2000 * this->unk_15C) * (Math_CosS(sp32) * this->unk_16C));
        } else {
            this->actor.shape.rot.x = 0;
            this->unk_150 = 1;
            func_80B2194C(this);
        }
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.x, -0x4000, 1, 500, 0);

        if (Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.3f, 1.5f, 0.3f) == 0.0f) {
            this->unk_15A = 60;
        } else {
            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos);
            this->actor.world.pos.x =
                this->actor.home.pos.x + (Math_SinS(2000 * this->unk_15C) * (Math_SinS(sp32) * 6.0f));
            this->actor.world.pos.z =
                this->actor.home.pos.z + (Math_SinS(2000 * this->unk_15C) * (Math_CosS(sp32) * 6.0f));
        }
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.world.pos.y != this->actor.home.pos.y) {
        Audio_PlaySoundGeneral(NA_SE_EN_TAIL_FLY - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21EE8.s")
void func_80B21EE8(EnTp* this) {
    this->unk_14C = 9;
    this->unk_15A = 0;
    EnTp_SetupAction(this, func_80B21F18);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B21F18.s")
void func_80B21F18(EnTp* this, GlobalContext* globalCtx) {
    static Vec3f bubbleAccel = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 bubblePrimColor = { 255, 255, 255, 255 };
    static Color_RGBA8 bubbleEnvColor = { 150, 150, 150, 0 };
    Vec3f bubbleVelocity;
    Vec3f bubblePos;
    s32 closeToFloor;
    EnTp* phi_v0;
    s16 temp_v0;

    closeToFloor = false;
    temp_v0 = this->unk_15A;
    this->unk_15C--;

    if ((temp_v0 != 0) || ((this->actor.home.pos.y - this->actor.world.pos.y) > 60.0f)) {
        this->unk_15A = temp_v0 - 1;
        temp_v0 = this->unk_15A;

        if (temp_v0 == 0) {
            func_80B21B90(this);

            for (phi_v0 = (EnTp*)this->actor.child; phi_v0 != NULL; phi_v0 = (EnTp*)phi_v0->actor.child) {
                phi_v0->unk_15C = phi_v0->unk_15A;
            }
        } else {
            if (this->actor.shape.rot.x != -0x4000) {
                this->unk_15A = 80;
                this->actor.velocity.y = 0.0f;
                this->actor.speedXZ = 0.0f;
                this->actor.world.pos = this->actor.home.pos;
                this->actor.shape.rot.x = -0x4000;

                for (phi_v0 = (EnTp*)this->actor.child; phi_v0 != NULL; phi_v0 = (EnTp*)phi_v0->actor.child) {
                    phi_v0->actor.velocity.y = 0.0f;
                    phi_v0->actor.speedXZ = 0.0f;
                    phi_v0->actor.world.pos = this->actor.home.pos;
                    phi_v0->actor.world.pos.y = this->actor.home.pos.y - 80.0f;
                }
            }

            this->actor.world.pos.y = this->actor.home.pos.y - this->unk_15A;
        }
    } else {
        if (this->actor.shape.rot.x != 0x4000) {
            this->actor.shape.rot.x -= 0x400;
        }

        if (this->unk_160 != 0) {
            this->unk_160 -= 15;
        }

        this->actor.speedXZ = 2.0f * Math_CosS(this->actor.shape.rot.x);
        this->actor.velocity.y = Math_SinS(this->actor.shape.rot.x) * -2.0f;

        if ((this->actor.world.pos.y - this->actor.floorHeight) < 20.0f) {
            closeToFloor = true;
        }

        if (this->actor.world.pos.y != this->actor.home.pos.y) {
            Audio_PlaySoundGeneral(NA_SE_EN_TAIL_FLY - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }

        if (closeToFloor && ((globalCtx->gameplayFrames & 1) != 0)) {
            bubblePos = this->actor.world.pos;
            bubblePos.y = this->actor.floorHeight;

            bubbleVelocity.x = Rand_CenteredFloat(5.0f);
            bubbleVelocity.y = (Rand_ZeroOne() * 3.5f) + 1.5f;
            bubbleVelocity.z = Rand_CenteredFloat(5.0f);

            EffectSsDtBubble_SpawnCustomColor(globalCtx, &bubblePos, &bubbleVelocity, &bubbleAccel, &bubblePrimColor,
                                              &bubbleEnvColor, Rand_S16Offset(100, 50), 20, 0);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/func_80B221E8.s")
void func_80B221E8(EnTp* this, GlobalContext* globalCtx) {
    s32 phi_s2;
    s32 phi_s4;
    EnTp* temp_s0; // Can eliminate this and just use phi_s0, but they're used differently
    EnTp* phi_s0;

    if ((this->collider.base.acFlags & 2) && (this->unk_14C >= 2)) {
        phi_s4 = phi_s2 = 0;

        if (this->actor.params < 0) {
            phi_s2 = 1;
        }

        this->collider.base.acFlags &= ~2;
        func_8003573C(&this->actor, &this->collider, 1);
        this->unk_158 = this->actor.colChkInfo.damageEffect;

        if (this->actor.colChkInfo.damageEffect != 0) {
            if (this->actor.colChkInfo.damageEffect == 1) {
                phi_s4 = 1;
            }

            if (phi_s2 == 0) {
                Actor_ApplyDamage(&this->actor);
            }

            if (this->actor.colChkInfo.health == 0) {
                this->actor.flags &= ~1;
                temp_s0 = this->unk_1D4;

                if (temp_s0->actor.params < 0) {
                    func_80B21454(temp_s0);
                    temp_s0->unk_158 = this->actor.colChkInfo.damageEffect;
                    temp_s0->actor.params = 0xC;
                }
            } else {
                if (phi_s4 != 0) {
                    this->actor.freezeTimer = 0x50;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                    if (phi_s2 != 0) {
                        Actor_SetColorFilter(&this->actor, 0, 0xFF, 0, 0x50);
                    } else {
                        Actor_SetColorFilter(&this->actor, 0, 0xFF, 0x2000, 0x50);
                    }
                }

                for (phi_s0 = (EnTp*)this->actor.parent; phi_s0 != NULL; phi_s0 = (EnTp*)phi_s0->actor.parent) {
                    phi_s0->collider.base.acFlags &= ~2;

                    if (phi_s4 != 0) {
                        phi_s0->actor.freezeTimer = 0x50;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);

                        if (phi_s2 != 0) {
                            Actor_SetColorFilter(&phi_s0->actor, 0, 0xFF, 0, 0x50);
                        } else {
                            Actor_SetColorFilter(&phi_s0->actor, 0, 0xFF, 0x2000, 0x50);
                        }
                    }
                }

                for (phi_s0 = (EnTp*)this->actor.child; phi_s0 != NULL; phi_s0 = (EnTp*)phi_s0->actor.child) {
                    phi_s0->collider.base.acFlags &= ~2;
                    if (phi_s4 != 0) {
                        phi_s0->actor.freezeTimer = 0x50;

                        if (phi_s2 != 0) {
                            Actor_SetColorFilter(&phi_s0->actor, 0, 0xFF, 0, 0x50);
                        } else {
                            Actor_SetColorFilter(&phi_s0->actor, 0, 0xFF, 0x2000, 0x50);
                        }
                    }
                }
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Update.s")
void EnTp_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnTp* this = THIS;
    Vec3f kiraVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f kiraAccel = { 0.0f, -0.6f, 0.0f };
    Vec3f kiraPos;
    Color_RGBA8 kiraPrimColor = { 0, 0, 255, 255 };
    Color_RGBA8 kiraEnvColor = { 0, 0, 0, 0 };
    Player* player = PLAYER;
    s16 yawToWall;

    if (player->stateFlags1 & 0x4000000) {
        this->unk_158 = 0;
    }

    if (this->actor.colChkInfo.health != 0) {
        func_80B221E8(this, globalCtx);
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.params < 0) {
        Actor_MoveForward(&this->actor);

        if (this->unk_14C != 9) {
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 15.0f, 10.0f, 5);
        }
        if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {
            yawToWall = this->actor.wallYaw - this->actor.world.rot.y;

            if (ABS(yawToWall) > 0x4000) {
                if (yawToWall >= 0) {
                    this->actor.world.rot.y -= 0x1F4;
                } else {
                    this->actor.world.rot.y += 0x1F4;
                }

                this->actor.shape.rot.y = this->actor.world.rot.y;
            }
        }

        this->actor.shape.rot.z += 0x800;

        if (this->actor.shape.rot.z == 0) {
            Audio_PlaySoundGeneral(NA_SE_EN_TAIL_CRY, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }

        if (this->unk_14C >= 2) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
    if (this->actor.params != 0xB) {
        this->unk_162--;
        this->unk_162 &= 7;
    }

    this->actor.focus.pos = this->actor.world.pos;

    if (this->unk_158 == 0xE) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    if ((this->unk_162 & 7) == 0) {
        kiraPrimColor.r = this->unk_160;
        kiraAccel.x = -this->actor.velocity.x * 0.25f;
        kiraAccel.y = -this->actor.velocity.y * 0.25f;
        kiraAccel.z = -this->actor.velocity.z * 0.25f;
        kiraPos.x = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.x;
        kiraPos.y = ((Rand_ZeroOne() - 0.5f) * 20.0f) + this->actor.world.pos.y;
        kiraPos.z = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.z;
        EffectSsKiraKira_SpawnSmall(globalCtx, &kiraPos, &kiraVelocity, &kiraAccel, &kiraPrimColor, &kiraEnvColor);
    }

    if ((this->unk_14C >= 2) && (this->actor.colChkInfo.health != 0)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

// Matching, but permuter doesn't like it
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tp/EnTp_Draw.s")
void EnTp_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnTp* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_tp.c", 1451);

    if (this->unk_150 != 2) {
        if ((thisx->params < 0) || (thisx->params == 0xC)) {
            func_80093D18(globalCtx->state.gfxCtx);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_tp.c", 0x5B3),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gTailpasaranHeadDL);

            Matrix_Translate(0.0f, 0.0f, 8.0f, MTXMODE_APPLY);
        } else {
            func_80093D84(globalCtx->state.gfxCtx);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, this->unk_160, 0, 255, this->unk_15E);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetCombineLERP(POLY_XLU_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT);
            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gTailpasaranTailSegmentTex));
            gDPPipeSync(POLY_XLU_DISP++);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_tp.c", 0x5C8),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gTailpasaranTailSegmentDL);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_tp.c", 1495);

    if ((thisx->params <= 0) || (thisx->params == 0xB)) {
        Collider_UpdateSpheres(0, &this->collider);
    }
}
