/*
 * File: z_en_wf.c
 * Overlay: ovl_En_Wf
 * Description: Wolfos
 */

#include "z_en_wf.h"

#define FLAGS 0x00000015

#define THIS ((EnWf*)thisx)

void EnWf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnWf_SetupWaitToAppear(EnWf* this);
void EnWf_WaitToAppear(EnWf* this, GlobalContext* globalCtx);
void EnWf_SetupWait(EnWf* this);
void func_80B345E4(EnWf* this, GlobalContext* globalCtx);
void func_80B3487C(EnWf* this, GlobalContext* globalCtx);
void EnWf_SearchForPlayer(EnWf* this, GlobalContext* globalCtx);
void func_80B35024(EnWf* this, GlobalContext* globalCtx);
void func_80B355BC(EnWf* this, GlobalContext* globalCtx);
void func_80B359A8(EnWf* this, GlobalContext* globalCtx);
void func_80B35C10(EnWf* this, GlobalContext* globalCtx);
void EnWf_Stunned(EnWf* this, GlobalContext* globalCtx);
void EnWf_Damaged(EnWf* this, GlobalContext* globalCtx);
void func_80B361A0(EnWf* this, GlobalContext* globalCtx);
void EnWf_ReactToPlayer(EnWf* this, GlobalContext* globalCtx);
void func_80B36740(EnWf* this, GlobalContext* globalCtx);
void EnWf_Die(EnWf* this, GlobalContext* globalCtx);
void EnWf_SetupDeath(EnWf* this);
void func_80B360E8(EnWf* this);
void func_80B34F28(EnWf* this);

extern FlexSkeletonHeader D_06003BC0;
extern AnimationHeader D_06004638;
extern AnimationHeader D_06004AD0;
extern AnimationHeader D_06004CA4;
extern AnimationHeader D_06005430;
extern AnimationHeader D_060057A0;
extern FlexSkeletonHeader D_06009690;
extern AnimationHeader D_060098C8;
extern AnimationHeader D_06009B20;
extern AnimationHeader D_0600A4AC;

static ColliderJntSphElementInit sJntSphItemsInit[4] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 15, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 21, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_HOOKABLE,
            OCELEM_ON,
        },
        { 17, { { 800, 0, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_HOOKABLE,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    4,
    sJntSphItemsInit,
};

static ColliderCylinderInit sCylinderInit1 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 20, -15, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0x0),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(4, 0xE),
    /* Ice arrow     */ DMG_ENTRY(2, 0x0),
    /* Light arrow   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0x0),
    /* Fire magic    */ DMG_ENTRY(4, 0xE),
    /* Ice magic     */ DMG_ENTRY(0, 0x6),
    /* Light magic   */ DMG_ENTRY(3, 0xD),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

const ActorInit En_Wf_InitVars = {
    ACTOR_EN_WF,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_WF,
    sizeof(EnWf),
    (ActorFunc)EnWf_Init,
    (ActorFunc)EnWf_Destroy,
    (ActorFunc)EnWf_Update,
    (ActorFunc)EnWf_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000, ICHAIN_STOP),
};

void EnWf_SetupAction(EnWf* this, EnWfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnWf_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWf* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    thisx->focus.pos = thisx->world.pos;
    thisx->colChkInfo.mass = 0xFE;
    thisx->colChkInfo.health = 8;
    thisx->colChkInfo.cylRadius = 50;
    thisx->colChkInfo.cylHeight = 100;
    this->unk_2FC = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    this->eyeIndex = 0;
    this->unk_2F4 = 10.0f;

    Collider_InitJntSph(globalCtx, &this->colliderSphere);
    Collider_SetJntSph(globalCtx, &this->colliderSphere, thisx, &sJntSphInit, this->colliderSphereElements);
    Collider_InitCylinder(globalCtx, &this->colliderCylinder1);
    Collider_SetCylinder(globalCtx, &this->colliderCylinder1, thisx, &sCylinderInit1);
    Collider_InitCylinder(globalCtx, &this->colliderCylinder2);
    Collider_SetCylinder(globalCtx, &this->colliderCylinder2, thisx, &sCylinderInit2);

    if (thisx->params == 0) {
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009690, &D_0600A4AC, this->jointTable, this->morphTable,
                           22);
        Actor_SetScale(thisx, 0.0075f);
        thisx->naviEnemyId = 0x4C;
    } else {
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06003BC0, &D_0600A4AC, this->jointTable, this->morphTable,
                           22);
        Actor_SetScale(thisx, 0.01f);
        this->colliderSphere.elements[0].info.toucher.damage = this->colliderSphere.elements[1].info.toucher.damage = 8;
        thisx->naviEnemyId = 0x57;
    }

    EnWf_SetupWaitToAppear(this);

    if ((this->unk_2FC != 0xFF) && (Flags_GetSwitch(globalCtx, this->unk_2FC))) {
        Actor_Kill(thisx);
    }
}

void EnWf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnWf* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->colliderSphere);
    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder1);
    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder2);

    if ((this->actor.params != 0) && (this->unk_2FC != 0xFF)) {
        func_800F5B58();
    }

    if (this->actor.parent != NULL) {
        EnWf* parent = (EnWf*)this->actor.parent;

        if (parent->actor.update != NULL) {
            if (parent->bodyPartsPos[1].x > 0) {
                parent->bodyPartsPos[1].x--;
            }

            osSyncPrintf("\n\n");
            // Translation: "☆☆☆☆☆ Number of concurrent events ☆☆☆☆☆"
            osSyncPrintf("\x1b[32m☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n\x1b[m", parent->bodyPartsPos[1].x);
            osSyncPrintf("\n\n");
        }
    }
}

// EnWf_???????????
s32 func_80B33FB0(GlobalContext* globalCtx, EnWf* this, s16 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B33FB0.s")

void EnWf_SetupWaitToAppear(EnWf* this) {
    Animation_Change(&this->skelAnime, &D_06005430, 0.5f, 0.0f, 7.0f, ANIMMODE_ONCE_INTERP, 0.0f);
    this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;
    this->actionTimer = 20;
    this->unk_300 = 0;
    this->unk_2D4 = 0;
    this->actor.flags &= ~1;
    this->actor.scale.y = 0.0f;
    this->actor.gravity = 0.0f;
    EnWf_SetupAction(this, EnWf_WaitToAppear);
}

void EnWf_WaitToAppear(EnWf* this, GlobalContext* globalCtx) {
    if (this->actionTimer >= 6) {
        this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;

        if (this->actor.xzDistToPlayer < 240.0f) {
            this->actionTimer = 5;
            this->actor.flags |= 1;

            if ((this->actor.params != 0) && (this->unk_2FC != 0xFF)) {
                func_800F5ACC(0x38); // Mini-Boss Battle Theme
            }
        }
    } else if (this->actionTimer != 0) {
        this->actor.scale.y += (this->actor.scale.x * 0.2f);
        this->actor.world.pos.y += 0.5f;
        Math_SmoothStepToF(&this->actor.shape.shadowScale, 70.0f, 1.0f, 14.0f, 0.0f);
        this->actionTimer--;

        if (this->actionTimer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_APPEAR);
        }
    } else if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.scale.y = this->actor.scale.x;
        this->actor.gravity = -2.0f;
        EnWf_SetupWait(this);
    }
}

void EnWf_SetupWait(EnWf* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_0600A4AC, -4.0f);
    this->unk_2D4 = 6;
    this->actionTimer = (Rand_ZeroOne() * 10.0f) + 2.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, func_80B345E4);
}

// EnWf_Wait
void func_80B345E4(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B345E4.s")

// EnWf_Setup?????? (probably when it runs forward)
void func_80B347FC(EnWf* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_060057A0);

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP_INTERP, -4.0f);
    this->unk_2D4 = 9;
    EnWf_SetupAction(this, func_80B3487C);
}

// EnWf_?????? (probably when it runs forward)
void func_80B3487C(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B3487C.s")

void EnWf_SetupSearchForPlayer(EnWf* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_060098C8, -4.0f);
    this->unk_2D4 = 10;
    EnWf_SetupAction(this, EnWf_SearchForPlayer);
}

void EnWf_SearchForPlayer(EnWf* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    s16 phi_v1;
    f32 phi_f2;

    if (!(EnWf_DodgeRanged(globalCtx, this)) && (!(func_80B33FB0(globalCtx, this, 0)))) {
        yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        phi_v1 = (yawDiff > 0) ? (yawDiff * 0.25f) + 2000.0f : (yawDiff * 0.25f) - 2000.0f;
        this->actor.shape.rot.y += phi_v1;
        this->actor.world.rot.y = this->actor.shape.rot.y;

        if (yawDiff > 0) {
            phi_f2 = phi_v1 * 0.5f;
            if (phi_f2 > 1.0f) {
                phi_f2 = 1.0f;
            }
        } else {
            phi_f2 = phi_v1 * 0.5f;
            if (phi_f2 < -1.0f) {
                phi_f2 = -1.0f;
            }
        }

        this->skelAnime.playSpeed = -phi_f2;
        SkelAnime_Update(&this->skelAnime);

        if (func_8002E084(&this->actor, 0x1555)) {
            if (Rand_ZeroOne() > 0.8f) {
                func_80B34F28(this);
            } else {
                func_80B347FC(this, globalCtx);
            }
        }

        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

// EnWf_Setup???? (Related to moving in front of the player)
void func_80B34F28(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_060057A0);

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP_INTERP, -4.0f);

    if (Rand_ZeroOne() > 0.5f) {
        this->unk_2FE = 16000;
    } else {
        this->unk_2FE = -16000;
    }

    this->skelAnime.playSpeed = this->actor.speedXZ = 6.0f;
    this->skelAnime.playSpeed *= 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionTimer = (Rand_ZeroOne() * 30.0f) + 30.0f;
    this->unk_2D4 = 11;
    this->unk_2EC = 0.0f;

    EnWf_SetupAction(this, func_80B35024);
}

// EnWf_????? (Related to moving in front of the player)
void func_80B35024(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35024.s")

// EnWf_Setup??????
void func_80B35540(EnWf* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06004638);
    this->colliderSphere.base.atFlags &= ~4;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->unk_2D4 = 8;
    this->unk_2FA = 0;
    this->actionTimer = 7;
    this->skelAnime.endFrame = 20.0f;
    this->actor.speedXZ = 0.0f;

    EnWf_SetupAction(this, func_80B355BC);
}

// EnWf_??????
void func_80B355BC(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B355BC.s")

// EnWf_Setup??????
void func_80B3590C(EnWf* this) {
    f32 endFrame = 1.0f;

    if ((s32)this->skelAnime.curFrame >= 0x10) {
        endFrame = 15.0f;
    }

    Animation_Change(&this->skelAnime, &D_06004638, -0.5f, this->skelAnime.curFrame - 1.0f, endFrame,
                     ANIMMODE_ONCE_INTERP, 0.0f);
    this->unk_2D4 = 12;
    this->unk_2F8 = 0;
    EnWf_SetupAction(this, func_80B359A8);
}

// EnWf_??????
void func_80B359A8(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B359A8.s")

void EnWf_SetupBackFlip(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06004AD0, -3.0f);
    this->actor.speedXZ = -6.0f;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    this->actionTimer = 0;
    this->unk_300 = 1;
    this->unk_2D4 = 5;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    EnWf_SetupAction(this, func_80B35C10);
}

// EnWf_BackFlip
void func_80B35C10(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35C10.s")

void EnWf_SetupStunned(EnWf* this) {
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    Animation_PlayOnceSetSpeed(&this->skelAnime, &D_06009B20, 0.0f);
    this->unk_2D4 = 15;
    EnWf_SetupAction(this, EnWf_Stunned);
}

void EnWf_Stunned(EnWf* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }

        this->unk_300 = 0;
    }

    if ((this->actor.colorFilterTimer == 0) && ((this->actor.bgCheckFlags & 1) != 0)) {
        if (this->actor.colChkInfo.health == 0) {
            EnWf_SetupDeath(this);
        } else {
            func_80B33FB0(globalCtx, this, 1);
        }
    }
}

void EnWf_SetupDamaged(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06009B20, -4.0f);

    if (this->actor.bgCheckFlags & 1) {
        this->unk_300 = 0;
        this->actor.speedXZ = -4.0f;
    } else {
        this->unk_300 = 1;
    }

    this->unk_2E2 = 0;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_DAMAGE);
    this->unk_2D4 = 3;
    EnWf_SetupAction(this, EnWf_Damaged);
}

void EnWf_Damaged(EnWf* this, GlobalContext* globalCtx) {
    s16 angleToWall;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }

        this->unk_300 = 0;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4500, 0);

    if ((!(func_80B33FB0(globalCtx, this, 0))) && SkelAnime_Update(&this->skelAnime)) {
        if ((this->actor.bgCheckFlags & 1) != 0) {
            angleToWall = this->actor.wallYaw - this->actor.shape.rot.y;
            angleToWall = ABS(angleToWall);

            if ((this->actor.bgCheckFlags & 8) != 0) {
                if ((ABS(angleToWall) < 12000) && (this->actor.xzDistToPlayer < 120.0f)) {
                    func_80B360E8(this);
                    return;
                }
            }

            if (EnWf_DodgeRanged(globalCtx, this) == 0) {
                if ((this->actor.xzDistToPlayer <= 80.0f) && (!(func_80033AB8(globalCtx, this))) &&
                    ((globalCtx->gameplayFrames & 7) != 0)) {
                    func_80B35540(this);
                } else if (Rand_ZeroOne() > 0.5f) {
                    EnWf_SetupWait(this);
                    this->actionTimer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                    this->unk_2E2 = 30;
                } else {
                    EnWf_SetupBackFlip(this);
                }
            }
        }
    }
}

// EnWf_Setup?????? (Related to moving around?)
void func_80B360E8(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06004AD0);

    Animation_Change(&this->skelAnime, &D_06004AD0, -1.0f, lastFrame, 0.0f, ANIMMODE_ONCE, -3.0f);
    this->actionTimer = 0;
    this->unk_300 = 0;
    this->unk_2D4 = 4;
    this->actor.speedXZ = 6.5f;
    this->actor.velocity.y = 15.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, func_80B361A0);
}

// EnWf_?????? (Related to moving around?)
void func_80B361A0(EnWf* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4000, 1);

    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(globalCtx, &this->unk_4C8);
        func_800355B8(globalCtx, &this->unk_4BC);
    }

    if ((SkelAnime_Update(&this->skelAnime)) && (this->actor.bgCheckFlags & 3)) {
        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
        this->actor.shape.rot.x = 0;
        this->actor.speedXZ = this->actor.velocity.y = 0.0f;
        this->actor.world.pos.y = this->actor.floorHeight;

        if (func_80033AB8(globalCtx, this) == 0) {
            func_80B35540(this);
        } else {
            EnWf_SetupWait(this);
        }
    }
}

void EnWf_SetupReactToPlayer(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06004CA4);

    if (this->unk_2F8 != 0) {
        this->unk_2F8 = -1;
    }

    this->actor.speedXZ = 0.0f;
    this->unk_2D4 = 7;
    this->actionTimer = 10;

    Animation_Change(&this->skelAnime, &D_06004CA4, 0.0f, 0.0f, lastFrame, ANIMMODE_ONCE_INTERP, -4.0f);
    EnWf_SetupAction(this, EnWf_ReactToPlayer);
}

void EnWf_ReactToPlayer(EnWf* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    } else {
        this->skelAnime.playSpeed = 1.0f;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        s16 yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

        if ((!(ABS(yawDiff) > 0x4000)) && (this->actor.xzDistToPlayer < 60.0f) &&
            (ABS(this->actor.yDistToPlayer) < 50.0f)) {
            if (func_800354B4(globalCtx, this, 100.0f, 10000, 0x4000, this->actor.shape.rot.y)) {
                if (player->swordAnimation == 0x11) {
                    EnWf_SetupReactToPlayer(this);
                } else {
                    if ((globalCtx->gameplayFrames & 1) != 0) {
                        EnWf_SetupReactToPlayer(this);
                    } else {
                        EnWf_SetupBackFlip(this);
                    }
                }
            } else {
                s16 angleFacingLink = player->actor.shape.rot.y - this->actor.shape.rot.y;

                if (!((func_80033AB8(globalCtx, this)) ||
                      (((globalCtx->gameplayFrames & 1) == 0) && (!(ABS(angleFacingLink) < 0x38E0))))) {
                    func_80B35540(this);
                } else {
                    func_80B34F28(this);
                }
            }
        } else {
            func_80B34F28(this);
        }
    } else if (this->actionTimer == 0) {
        if (func_800354B4(globalCtx, &this->actor, 100.0f, 10000, 0x4000, this->actor.shape.rot.y)) {
            if (player->swordAnimation == 0x11) {
                EnWf_SetupReactToPlayer(this);
            } else if ((globalCtx->gameplayFrames & 1) != 0) {
                EnWf_SetupReactToPlayer(this);
            } else {
                EnWf_SetupBackFlip(this);
            }
        }
    }
}

void EnWf_SetupSideStep(EnWf* this, GlobalContext* globalCtx) {
    s16 angle;
    Player* player;
    f32 lastFrame = Animation_GetLastFrame(&D_060057A0);

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP_INTERP, -4.0f);

    player = PLAYER;
    angle = player->actor.shape.rot.y + this->unk_2FE;

    if (Math_SinS(angle - this->actor.yawTowardsPlayer) > 0.0f) {
        this->unk_2FE = 16000;
    } else if (Math_SinS(angle - this->actor.yawTowardsPlayer) < 0.0f) {
        this->unk_2FE = -16000;
    } else if (Rand_ZeroOne() > 0.5f) {
        this->unk_2FE = 16000;
    } else {
        this->unk_2FE = -16000;
    }

    this->skelAnime.playSpeed = this->actor.speedXZ = 6.0f;
    this->skelAnime.playSpeed *= 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->unk_2EC = 0.0f;
    this->actionTimer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->unk_2D4 = 14;

    EnWf_SetupAction(this, func_80B36740);
}

// EnWf_SideStep
//void func_80B36740(EnWf* this, GlobalContext* globalCtx);
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36740.s")

void func_80B36740(EnWf *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 sp64;
    s32 sp60;
    f32 sp58;
    s16 sp4E;
    f32 sp44;
    void *sp3C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f12;
    s16 temp_a2;
    s16 temp_v0;
    s16 temp_v1_2;
    s32 temp_t3;
    s32 temp_v1;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v1_2;
    f32 phi_f14;
    f32 phi_f12;
    f32 phi_f12_2;
    f32 phi_f12_3;
    f32 phi_f12_4;
    s32 phi_v0_2;
    s32 phi_v1_3;
    f32 phi_f12_5;

    sp58 = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->unk_2FE, 1, 3000, 1);

    if (!(this->actor.bgCheckFlags & 8)) {
        if (func_800339B8(this, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y) == 0) {
block_3:
            phi_v0 = 0;
            if (this->actor.bgCheckFlags & 8) {
                phi_v0 = (this->actor.wallYaw - this->actor.yawTowardsPlayer) - this->unk_2FE;
            }

            if (ABS(phi_v0) > 0x2EE0) {
                this->unk_2FE = 0 - this->unk_2FE;
            }
        }
    } else {
        goto block_3;
    }

    this->actor.world.rot.y = this->actor.shape.rot.y;

    if (func_80033AB8(globalCtx, this) != 0) {
        sp58 = 150.0f;
    }

    if (this->actor.xzDistToPlayer <= (60.0f + sp58)) {
        Math_SmoothStepToF(&this->unk_2EC, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if ((80.0f + sp58) < this->actor.xzDistToPlayer) {
        Math_SmoothStepToF(&this->unk_2EC, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->unk_2EC, 0.0f, 1.0f, 6.65f, 0.0f);
    }
    
    if (this->unk_2EC != 0.0f) {
        this->actor.world.pos.x += (Math_SinS(this->actor.shape.rot.y) * this->unk_2EC);
        this->actor.world.pos.z += (Math_CosS(this->actor.shape.rot.y) * this->unk_2EC);
    }

    if (this->unk_2EC >= 0.0f) {
        phi_f14 = this->unk_2EC;
    } else {
        phi_f14 = -this->unk_2EC;
    }

    if (this->actor.speedXZ >= 0.0f) {
        phi_f12 = this->actor.speedXZ;
    } else {
        phi_f12 = -this->actor.speedXZ;
    }

    if (phi_f14 < phi_f12) {
        this->skelAnime.playSpeed = this->actor.speedXZ * 0.175f;
    } else {
        this->skelAnime.playSpeed = this->unk_2EC * 0.175f;
    }

    if (this->skelAnime.playSpeed < -3.0f) {
        this->skelAnime.playSpeed = -3.0f;
    } else {
        if (this->skelAnime.playSpeed > 3.0f) {
            phi_f12_2 = 3.0f;
        } else {
            phi_f12_2 = this->skelAnime.playSpeed;
        }

        this->skelAnime.playSpeed = phi_f12_2;
    }

    sp64 = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);

    if (this->skelAnime.playSpeed >= 0.0f) {
        phi_f12_3 = this->skelAnime.playSpeed;
    } else {
        phi_f12_3 = -this->skelAnime.playSpeed;
    }

    sp60 = this->skelAnime.curFrame - phi_f12_3;

    if (this->skelAnime.playSpeed >= 0.0f) {
        phi_f12_4 = this->skelAnime.playSpeed;
    } else {
        phi_f12_4 = -this->skelAnime.playSpeed;
    }

    sp44 = phi_f12_4;
    temp_f12 = phi_f12_4;
    if (func_80B33FB0(globalCtx, this, 0) == 0) {
        this->actionTimer--;
        phi_f12_5 = temp_f12;
        if (this->actionTimer == 0) {
            temp_v1_2 = this->actor.yawTowardsPlayer;
            temp_v0 = player->shape.rot.y - temp_v1_2;
            phi_v0_2 = temp_v0;
            if (temp_v0 < 0) {
                phi_v0_2 = 0 - temp_v0;
            }
            if (phi_v0_2 >= 0x3A98) {
                sp44 = temp_f12;
                EnWf_SetupWait(this);
                this->actionTimer = (Rand_ZeroOne() * 3.0f) + 1.0f;
                phi_f12_5 = temp_f12;
            } else {
                temp_a2 = globalCtx->actorCtx.actorLists[2].head->shape.rot.y - temp_v1_2;
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if ((this->actor.xzDistToPlayer <= 80.0f) && (sp4E = temp_a2, sp44 = temp_f12, (func_80033AB8(globalCtx, this) == 0))) {
                    if ((globalCtx->gameplayFrames & 3) != 0) {
                        phi_v1_3 = 0 - temp_a2;
                        if (temp_a2 >= 0) {
                            phi_v1_3 = temp_a2;
                        }
                        if (phi_v1_3 < 0x38E0) {
block_51:
                            sp44 = temp_f12;
                            func_80B35540(this);
                        } else {
block_52:
                            sp44 = phi_f12_4;
                            func_80B347FC(this, globalCtx);
                        }
                    } else {
                        goto block_51;
                    }
                } else {
                    goto block_52;
                }
                phi_f12_5 = sp44;
            }
        }
        sp3C = globalCtx + 0x10000;
        if ((sp64 != this->skelAnime.curFrame) && (sp60 <= 0) && ((phi_f12_5 + sp64) > 0)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_WALK);
            func_80033260(globalCtx, this, &this->actor.world, 20.0f, 3, 3.0f, 50, 50, 1);
        }
        if ((sp3C->unk1DE4 & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

void EnWf_SetupDeath(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06005430, -4.0f);
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;

    if (this->actor.bgCheckFlags & 1) {
        this->unk_300 = 0;
        this->actor.speedXZ = -6.0f;
    } else {
        this->unk_300 = 1;
    }

    this->unk_2D4 = 2;
    this->actor.flags &= ~1;
    this->actionTimer = this->skelAnime.animLength;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_DEAD);
    EnWf_SetupAction(this, EnWf_Die);
}

void EnWf_Die(EnWf* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
        this->unk_300 = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xD0);

        if (this->unk_2FC != 0xFF) {
            Flags_SetSwitch(globalCtx, this->unk_2FC);
        }

        Actor_Kill(this);
    } else {
        s32 i;
        Vec3f pos;
        Vec3f velAndAccel = { 0.0f, 0.5f, 0.0f };

        this->actionTimer--;

        for (i = ((s32)this->skelAnime.animLength - this->actionTimer) >> 1; i >= 0; i++) {
            pos.x = Rand_CenteredFloat(60.0f) + this->actor.world.pos.x;
            pos.z = Rand_CenteredFloat(60.0f) + this->actor.world.pos.z;
            pos.y = Rand_CenteredFloat(50.0f) + (this->actor.world.pos.y + 20.0f);
            EffectSsDeadDb_Spawn(globalCtx, &pos, &velAndAccel, &velAndAccel, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1,
                                 9, true);
        }
    }
}

void EnWf_FaceTowardsPlayer(EnWf* this, GlobalContext* globalCtx) {
    if ((this->unk_2D4 == 6) && (this->unk_2E2 != 0)) {
        this->unk_4D4.y = Math_SinS(this->unk_2E2 * 0x1068) * 8920.0f;
    } else if (this->unk_2D4 != 15) {
        if (this->unk_2D4 != 8) {
            Math_SmoothStepToS(&this->unk_4D4.y, this->actor.yawTowardsPlayer - this->actor.shape.rot.y, 1, 1500, 0);
            this->unk_4D4.y = CLAMP(this->unk_4D4.y, -0x3127, 0x3127);
        } else {
            this->unk_4D4.y = 0;
        }
    }
}

void EnWf_ApplyDamage(EnWf* this, GlobalContext* globalCtx) {
    if (this->colliderSphere.base.acFlags & 0x80) {
        this->colliderSphere.base.acFlags &= ~0x82;
        this->colliderCylinder1.base.acFlags &= ~2;
        this->colliderCylinder2.base.acFlags &= ~2;
    } else if ((this->colliderCylinder1.base.acFlags & 2) || (this->colliderCylinder2.base.acFlags & 2)) {
        if (this->unk_2D4 >= 6) {
            s16 yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

            if (((!(this->colliderCylinder1.base.acFlags & 2)) && (this->colliderCylinder2.base.acFlags & 2)) ||
                (ABS(yawDiff) > 19000)) {
                this->actor.colChkInfo.damage *= 4;
            }

            this->colliderCylinder1.base.acFlags &= ~2;
            this->colliderCylinder2.base.acFlags &= ~2;

            if (this->actor.colChkInfo.damageEffect != 6) {
                this->unk_2E6 = this->actor.colChkInfo.damageEffect;
                func_80035650(&this->actor, &this->colliderCylinder1.info, 1);
                this->unk_2F8 = 0;

                if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 15)) {
                    if (this->unk_2D4 != 15) {
                        func_8003426C(&this->actor, 0, 120, 0, 80);
                        Actor_ApplyDamage(&this->actor);
                        EnWf_SetupStunned(this);
                    }
                } else {
                    func_8003426C(&this->actor, 0x4000, 255, 0, 8);

                    if (this->unk_2E6 == 14) {
                        this->fireTimer = 40;
                    }

                    if (!(Actor_ApplyDamage(&this->actor))) {
                        EnWf_SetupDeath(this);
                        func_80032C7C(globalCtx, &this->actor);
                    } else {
                        EnWf_SetupDamaged(this);
                    }
                }
            }
        }
    }
}

void EnWf_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWf* this = THIS;
    s32 pad;

    EnWf_ApplyDamage(this, globalCtx);

    if (this->actor.colChkInfo.damageEffect != 6) {
        Actor_MoveForward(this);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 32.0f, 30.0f, 60.0f, 29);
        this->actionFunc(this, globalCtx);
        EnWf_FaceTowardsPlayer(this, globalCtx);
    }

    if (this->actor.bgCheckFlags & 3) {
        func_800359B8(&this->actor, this->actor.shape.rot.y, &this->actor.shape.rot);
    } else {
        Math_SmoothStepToS(&this->actor.shape, 0, 1, 1000, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, 0, 1, 1000, 0);
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);

    if (this->unk_2D4 >= 6) {
        if ((this->actor.colorFilterTimer == 0) || (!(this->actor.colorFilterParams & 0x4000))) {
            Collider_UpdateCylinder(&this->actor, &this->colliderCylinder1);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder2.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder1.base);
        }
    }

    if (this->unk_2D4 == 7) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere);
    }

    if (this->unk_2F8 > 0) {
        if (!(this->colliderSphere.base.atFlags & 4)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere);
        } else {
            func_80B3590C(this);
        }
    }

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 25.0f;

    if (this->eyeIndex == 0) {
        if ((Rand_ZeroOne() < 0.2f) && ((globalCtx->gameplayFrames & 3) == 0) && (this->actor.colorFilterTimer == 0)) {
            this->eyeIndex++;
        }
    } else {
        this->eyeIndex = (this->eyeIndex + 1) & 3;
    }
}

s32 EnWf_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnWf* this = THIS;

    if ((limbIndex == 17) || (limbIndex == 18)) {
        rot->y -= this->unk_4D4.y;
    }

    return 0;
}

void EnWf_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f colliderVec = { 1200.0f, 0.0f, 0.0f };
    static Vec3f bodyPartVec = { 0.0f, 0.0f, 0.0f };
    EnWf* this = THIS;
    s32 bodyPartIndex = -1;

    Collider_UpdateSpheres(limbIndex, &this->colliderSphere);

    if (limbIndex == 6) {
        Vec3f colliderPos;

        bodyPartIndex = -1;
        Matrix_MultVec3f(&colliderVec, &colliderPos);
        this->colliderCylinder2.dim.pos.x = colliderPos.x;
        this->colliderCylinder2.dim.pos.y = colliderPos.y;
        this->colliderCylinder2.dim.pos.z = colliderPos.z;
    }

    if ((this->fireTimer != 0) || ((this->actor.colorFilterTimer != 0) && (this->actor.colorFilterParams & 0x4000))) {
        switch (limbIndex) {
            case 18:
                bodyPartIndex = 0;
                break;
            case 14:
                bodyPartIndex = 1;
                break;
            case 20:
                bodyPartIndex = 2;
                break;
            case 12:
                bodyPartIndex = 3;
                break;
            case 7:
                bodyPartIndex = 4;
                break;
            case 6:
                bodyPartIndex = 5;
                break;
            case 9:
                bodyPartIndex = 6;
                break;
            case 37:
                bodyPartIndex = 7;
                break;
            case 10:
                bodyPartIndex = 8;
                break;
            case 5:
                bodyPartIndex = 9;
        }

        if (bodyPartIndex >= 0) {
            Vec3f bodyPartPos;

            Matrix_MultVec3f(&bodyPartVec, &bodyPartPos);
            this->bodyPartsPos[bodyPartIndex].x = bodyPartPos.x;
            this->bodyPartsPos[bodyPartIndex].y = bodyPartPos.y;
            this->bodyPartsPos[bodyPartIndex].z = bodyPartPos.z;
        }
    }
}

static u64* sWolfosEyeTextures[] = { 0x06007B68, 0x06008368, 0x06008568, 0x06008368 };
static u64* sWhiteWolfosEyeTextures[] = { 0x06000300, 0x060027D8, 0x060029D8, 0x060027D8 };

void EnWf_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnWf* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_wf.c", 2157);

    if ((this->unk_2D4 != 0) || (this->unk_300 == 0)) {
        func_80093D18(globalCtx->state.gfxCtx);

        if (this->actor.params == 0) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sWolfosEyeTextures[this->eyeIndex]));
        } else {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sWhiteWolfosEyeTextures[this->eyeIndex]));
        }

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, EnWf_OverrideLimbDraw, EnWf_PostLimbDraw, &this->actor);

        if (this->fireTimer != 0) {
            this->actor.colorFilterTimer++;
            if (1) {}
            this->fireTimer--;

            if ((this->fireTimer % 4) == 0) {
                s32 fireIndex = this->fireTimer >> 2;

                EffectSsEnFire_SpawnVec3s(globalCtx, &this->actor, &this->bodyPartsPos[fireIndex], 75, 0, 0, fireIndex);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_wf.c", 2190);
}

s32 EnWf_DodgeRanged(GlobalContext* globalCtx, EnWf* this) {
    Actor* actor = func_80033780(globalCtx, &this->actor, 600.0f);

    if (actor != NULL) {
        s16 angleToFacing;
        s16 pad;
        f32 dist;

        angleToFacing = Actor_WorldYawTowardActor(&this->actor, actor) - this->actor.shape.rot.y;
        this->actor.world.rot.y = (u16)this->actor.shape.rot.y & 0xFFFF;
        dist = Actor_WorldDistXYZToPoint(&this->actor, &actor->world.pos);

        if ((ABS(angleToFacing) < 0x2EE0) && (sqrt(dist) < 400.0)) {
            EnWf_SetupReactToPlayer(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(angleToFacing) < 0x2000) || (ABS(angleToFacing) > 0x5FFF)) {
                EnWf_SetupSideStep(this, globalCtx);
                this->actor.speedXZ *= 2.0f;
            } else if (ABS(angleToFacing) < 0x5FFF) {
                EnWf_SetupBackFlip(this);
            }
        }
        return true;
    }

    return false;
}
