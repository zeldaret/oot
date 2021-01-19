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
void func_80B34428(EnWf* this, GlobalContext* globalCtx);
void EnWf_SetupWait(EnWf* this);
void func_80B345E4(EnWf* this, GlobalContext* globalCtx);
void func_80B3487C(EnWf* this, GlobalContext* globalCtx);
void func_80B34D48(EnWf* this, GlobalContext* globalCtx);
void func_80B35024(EnWf* this, GlobalContext* globalCtx);
void func_80B355BC(EnWf* this, GlobalContext* globalCtx);
void func_80B359A8(EnWf* this, GlobalContext* globalCtx);
void func_80B35C10(EnWf* this, GlobalContext* globalCtx);
void func_80B35D90(EnWf* this, GlobalContext* globalCtx);
void func_80B35EE4(EnWf* this, GlobalContext* globalCtx);
void func_80B361A0(EnWf* this, GlobalContext* globalCtx);
void EnWf_ReactToPlayer(EnWf* this, GlobalContext* globalCtx);
void func_80B36740(EnWf* this, GlobalContext* globalCtx);
void func_80B36D3C(EnWf* this, GlobalContext* globalCtx);

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

static ColliderJntSphItemInit sJntSphItemsInit[4] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { 15, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { 21, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 17, { { 800, 0, 0 }, 25 }, 100 },
    },
    {
        { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 12, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x0D, 0x39, 0x10, COLSHAPE_JNTSPH },
    ARRAY_COUNT(sJntSphItemsInit),
    sJntSphItemsInit,
};

static ColliderCylinderInit sCylinderInit1 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 15, 20, -15, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0xE4, 0x02, 0x02, 0x02, 0x02,
    0x02, 0xE4, 0x60, 0xD3, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

const ActorInit En_Wf_InitVars = {
    ACTOR_EN_WF,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_WF,
    sizeof(EnWf),
    (ActorFunc)EnWf_Init,
    (ActorFunc)EnWf_Destroy,
    (ActorFunc)EnWf_Update,
    (ActorFunc)EnWf_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
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

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);

    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->colChkInfo.mass = 0xFE;
    thisx->colChkInfo.health = 8;
    thisx->colChkInfo.unk_10 = 50;
    thisx->colChkInfo.unk_12 = 100;
    this->unk_2FC = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    this->eyeIndex = 0;
    this->unk_2F4 = 10.0f;

    Collider_InitJntSph(globalCtx, &this->colliderSphere);
    Collider_SetJntSph(globalCtx, &this->colliderSphere, thisx, &sJntSphInit, this->colliderSphereItems);
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
        this->colliderSphere.list[0].body.toucher.damage = this->colliderSphere.list[1].body.toucher.damage = 8;
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
            // Translation: "Number of concurrent events"
            osSyncPrintf("\x1b[32m☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n\x1b[m", parent->bodyPartsPos[1].x);
            osSyncPrintf("\n\n");
        }
    }
}

// EnWf_???????????
s32 func_80B33FB0(GlobalContext* globalCtx, EnWf* this, s16 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B33FB0.s")

void EnWf_SetupWaitToAppear(EnWf* this) {
    Animation_Change(&this->skelAnime, &D_06005430, 0.5f, 0.0f, 7.0f, 3, 0.0f);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 5.0f;
    this->actionTimer = 20;
    this->unk_300 = 0;
    this->unk_2D4 = 0;
    this->actor.flags &= ~1;
    this->actor.scale.y = 0.0f;
    this->actor.gravity = 0.0f;
    EnWf_SetupAction(this, func_80B34428);
}

// EnWf_WaitToAppear
void func_80B34428(EnWf* this, GlobalContext* globalCtx) {
    if (this->actionTimer >= 6) {
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 5.0f;

        if (this->actor.xzDistToLink < 240.0f) {
            this->actionTimer = 5;
            this->actor.flags |= 1;

            if ((this->actor.params != 0) && (this->unk_2FC != 0xFF)) {
                func_800F5ACC(0x38); // Mini-Boss Battle Theme
                return;
            }
        }
    } else if (this->actionTimer != 0) {
        this->actor.scale.y += (this->actor.scale.x * 0.2f);
        this->actor.posRot.pos.y += 0.5f;
        Math_SmoothStepToF(&this->actor.shape.unk_10, 70.0f, 1.0f, 14.0f, 0.0f);
        this->actionTimer--;

        if (this->actionTimer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_APPEAR);
            return;
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
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, func_80B345E4);
}

// EnWf_Wait
void func_80B345E4(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B345E4.s")

// EnWf_Setup?????? (probably when it runs forward)
void func_80B347FC(EnWf* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_060057A0);

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, 1, -4.0f);
    this->unk_2D4 = 9;
    EnWf_SetupAction(this, func_80B3487C);
}

// EnWf_?????? (probably when it runs forward)
void func_80B3487C(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B3487C.s")

// EnWf_Setup?????? (searching for the player?)
void func_80B34CFC(EnWf* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_060098C8, -4.0f);
    this->unk_2D4 = 10;
    EnWf_SetupAction(this, func_80B34D48);
}

// EnWf_?????? (searching for the player?)
void func_80B34D48(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34D48.s")

// EnWf_Setup???? (Related to moving in front of the player)
void func_80B34F28(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_060057A0);

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, 1, -4.0f);

    if (Rand_ZeroOne() > 0.5f) {
        this->unk_2FE = 16000;
    } else {
        this->unk_2FE = -16000;
    }

    this->skelAnime.playSpeed = this->actor.speedXZ = 6.0f;
    this->skelAnime.playSpeed *= 0.175f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
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
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
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
    f32 phi_f0 = 1.0f;

    if ((s32)this->skelAnime.curFrame >= 0x10) {
        phi_f0 = 15.0f;
    }

    Animation_Change(&this->skelAnime, &D_06004638, -0.5f, this->skelAnime.curFrame - 1.0f, phi_f0, 3, 0.0f);
    this->unk_2D4 = 0xC;
    this->unk_2F8 = 0;
    EnWf_SetupAction(this, func_80B359A8);
}

// EnWf_??????
void func_80B359A8(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B359A8.s")

void EnWf_SetupBackFlip(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06004AD0, -3.0f);
    this->actor.speedXZ = -6.0f;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
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
    EnWf_SetupAction(this, func_80B35D90);
}

// EnWf_Stunned
void func_80B35D90(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35D90.s")

void EnWf_SetupDamaged(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06009B20, -4.0f);

    if (this->actor.bgCheckFlags & 1) {
        this->unk_300 = 0;
        this->actor.speedXZ = -4.0f;
    } else {
        this->unk_300 = 1;
    }

    this->unk_2E2 = 0;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_WOLFOS_DAMAGE);
    this->unk_2D4 = 3;
    EnWf_SetupAction(this, func_80B35EE4);
}

// EnWf_Damaged
void func_80B35EE4(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35EE4.s")

// EnWf_Setup?????? (Related to moving around?)
void func_80B360E8(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06004AD0);

    Animation_Change(&this->skelAnime, &D_06004AD0, -1.0f, lastFrame, 0.0f, 2, -3.0f);
    this->actionTimer = 0;
    this->unk_300 = 0;
    this->unk_2D4 = 4;
    this->actor.speedXZ = 6.5f;
    this->actor.velocity.y = 15.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, func_80B361A0);
}

// EnWf_?????? (Related to moving around?)
void func_80B361A0(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B361A0.s")

void EnWf_SetupReactToPlayer(EnWf* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06004CA4);

    if (this->unk_2F8 != 0) {
        this->unk_2F8 = -1;
    }

    this->actor.speedXZ = 0.0f;
    this->unk_2D4 = 7;
    this->actionTimer = 10;

    Animation_Change(&this->skelAnime, &D_06004CA4, 0.0f, 0.0f, lastFrame, 3, -4.0f);
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
        s16 temp_v0_2 = this->actor.yawTowardsLink - this->actor.shape.rot.y;

        if ((!(ABS(temp_v0_2) > 0x4000)) && (this->actor.xzDistToLink < 60.0f) &&
            (ABS(this->actor.yDistToLink) < 50.0f)) {
            if (func_800354B4(globalCtx, this, 100.0f, 10000, 0x4000, this->actor.shape.rot.y)) {
                if (player->swordAnimation == 0x11) {
                    EnWf_SetupReactToPlayer(this);
                } else {
                    if (globalCtx->gameplayFrames & 1) {
                        EnWf_SetupReactToPlayer(this);
                    } else {
                        EnWf_SetupBackFlip(this);
                    }
                }
            } else {
                s16 temp_a2 = player->actor.shape.rot.y - this->actor.shape.rot.y;

                if (!((func_80033AB8(globalCtx, this)) ||
                      ((!(globalCtx->gameplayFrames & 1)) && (!(ABS(temp_a2) < 0x38E0))))) {
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
            } else if (globalCtx->gameplayFrames & 1) {
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

    Animation_Change(&this->skelAnime, &D_060057A0, 1.0f, 0.0f, lastFrame, 1, -4.0f);

    player = PLAYER;
    angle = player->actor.shape.rot.y + this->unk_2FE;

    if (Math_SinS(angle - this->actor.yawTowardsLink) > 0.0f) {
        this->unk_2FE = 16000;
    } else if (Math_SinS(angle - this->actor.yawTowardsLink) < 0.0f) {
        this->unk_2FE = -16000;
    } else if (Rand_ZeroOne() > 0.5f) {
        this->unk_2FE = 16000;
    } else {
        this->unk_2FE = -16000;
    }

    this->skelAnime.playSpeed = this->actor.speedXZ = 6.0f;
    this->skelAnime.playSpeed *= 0.175f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_2EC = 0.0f;
    this->actionTimer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->unk_2D4 = 14;

    EnWf_SetupAction(this, func_80B36740);
}

// EnWf_SideStep
void func_80B36740(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36740.s")

void EnWf_SetupDeath(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06005430, -4.0f);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;

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
    EnWf_SetupAction(this, func_80B36D3C);
}

Vec3f D_80B37AD0 = { 0.0f, 0.5f, 0.0f };
// EnWf_Die
void func_80B36D3C(EnWf* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36D3C.s")

void EnWf_FaceTowardsPlayer(EnWf* this, GlobalContext* globalCtx) {
    if ((this->unk_2D4 == 6) && (this->unk_2E2 != 0)) {
        this->unk_4D4.y = Math_SinS(this->unk_2E2 * 0x1068) * 8920.0f;
    } else if (this->unk_2D4 != 15) {
        if (this->unk_2D4 != 8) {
            Math_SmoothStepToS(&this->unk_4D4.y, this->actor.yawTowardsLink - this->actor.shape.rot.y, 1, 1500, 0);
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
            s16 angle = this->actor.yawTowardsLink - this->actor.shape.rot.y;

            if (((!(this->colliderCylinder1.base.acFlags & 2)) && (this->colliderCylinder2.base.acFlags & 2)) ||
                (ABS(angle) > 19000)) {
                this->actor.colChkInfo.damage *= 4;
            }

            this->colliderCylinder1.base.acFlags &= ~2;
            this->colliderCylinder2.base.acFlags &= ~2;

            if (this->actor.colChkInfo.damageEffect != 6) {
                this->unk_2E6 = this->actor.colChkInfo.damageEffect;
                func_80035650(&this->actor, &this->colliderCylinder1.body, 1);
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

                    if (Actor_ApplyDamage(&this->actor) == 0) {
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
        func_8002E4B4(globalCtx, this, 32.0f, 30.0f, 60.0f, 29);
        this->actionFunc(this, globalCtx);
        EnWf_FaceTowardsPlayer(this, globalCtx);
    }

    if (this->actor.bgCheckFlags & 3) {
        func_800359B8(this, this->actor.shape.rot.y, &this->actor.shape);
    } else {
        Math_SmoothStepToS(&this->actor.shape, 0, 1, 0x3E8, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, 0, 1, 0x3E8, 0);
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);

    if (this->unk_2D4 >= 6) {
        if ((this->actor.dmgEffectTimer == 0) || (!(this->actor.dmgEffectParams & 0x4000))) {
            Collider_CylinderUpdate(&this->actor, &this->colliderCylinder1);
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

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 25.0f;

    if (this->eyeIndex == 0) {
        if ((Rand_ZeroOne() < 0.2f) && ((globalCtx->gameplayFrames & 3) == 0) && (this->actor.dmgEffectTimer == 0)) {
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

    func_800628A4(limbIndex, &this->colliderSphere);

    if (limbIndex == 6) {
        Vec3f colliderPos;

        bodyPartIndex = -1;
        Matrix_MultVec3f(&colliderVec, &colliderPos);
        this->colliderCylinder2.dim.pos.x = colliderPos.x;
        this->colliderCylinder2.dim.pos.y = colliderPos.y;
        this->colliderCylinder2.dim.pos.z = colliderPos.z;
    }

    if ((this->fireTimer != 0) || ((this->actor.dmgEffectTimer != 0) && (this->actor.dmgEffectParams & 0x4000))) {
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
            this->actor.dmgEffectTimer++;
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

// EnWf_?????? (related to dodging like in GeldB?)
s32 func_80B37830(GlobalContext* globalCtx, EnWf* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B37830.s")

// Similiar looking function, likely useful
/*
s32 EnGeldB_DodgeRanged(GlobalContext* globalCtx, EnGeldB* this) {
    Actor* actor = func_80033780(globalCtx, &this->actor, 800.0f);

    if (actor != NULL) {
        s16 angleToFacing;
        s16 pad18;
        f32 dist;

        angleToFacing = func_8002DA78(&this->actor, actor) - this->actor.shape.rot.y;
        this->actor.posRot.rot.y = (u16)this->actor.shape.rot.y & 0xFFFF;
        dist = func_8002DB6C(&this->actor, &actor->posRot.pos);
        //! @bug
        // func_8002DB6C already sqrtfs the distance, so this actually checks for a
        // distance of 360000. Also it's a double calculation because no f on sqrt.
        if ((ABS(angleToFacing) < 0x2EE0) && (sqrt(dist) < 600.0)) {
            if (actor->id == ACTOR_ARMS_HOOK) {
                EnGeldB_SetupJump(this);
            } else {
                EnGeldB_SetupBlock(this);
            }
        } else {
            this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(angleToFacing) < 0x2000) || (ABS(angleToFacing) > 0x5FFF)) {
                EnGeldB_SetupSidestep(this, globalCtx);
                this->actor.speedXZ *= 3.0f;
            } else if (ABS(angleToFacing) < 0x5FFF) {
                EnGeldB_SetupRollBack(this);
            }
        }
        return true;
    }
    return false;
}
*/
