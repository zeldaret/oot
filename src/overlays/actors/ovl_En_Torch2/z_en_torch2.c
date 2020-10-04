/*
 * File: z_en_torch2.c
 * Overlay: ovl_En_Torch2
 * Description: Dark Link
 */

#include "z_en_torch2.h"

#define FLAGS 0x00000035

#define THIS ((Player*)thisx)

typedef enum {
    /* 0 */ ENTORCH2_WAIT,
    /* 1 */ ENTORCH2_ATTACK,
    /* 2 */ ENTORCH2_DEATH,
    /* 3 */ ENTORCH2_DAMAGE
} EnTorch2ActionStates;

void EnTorch2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Draw(Actor* thisx, GlobalContext* globalCtx);

extern SkeletonHeader D_06004764;

const ActorInit En_Torch2_InitVars = {
    ACTOR_EN_TORCH2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_TORCH2,
    sizeof(Player),
    (ActorFunc)EnTorch2_Init,
    (ActorFunc)EnTorch2_Destroy,
    (ActorFunc)EnTorch2_Update,
    (ActorFunc)EnTorch2_Draw,
};

/* static */ f32 sStickTilt = 0.0f;
/* static */ s16 sStickAngle = 0;
/* static */ f32 sSwordJumpHeight = 0.0f;
/* static */ s32 sHoldShieldTimer = 0;
/* static */ u8 sZTargetFlag = false;
/* static */ u8 sDeathFlag = false;
/* static */ DamageTable sDamageTable = { 0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04,
                                          0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0xE2, 0x60, 0xD3, 0x00, 0x00,
                                          0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00 };

/* static */ Input sInput;
/* static */ u8 sSwordJumpState;
/* static */ Vec3f sSpawnPoint;
/* static */ u8 sJumpslashTimer;
/* static */ u8 sJumpslashFlag;
/* static */ u8 sActionState;
/* static */ u8 sSwordJumpTimer;
/* static */ u8 sCounterState;
/* static */ u8 sDodgeRollState;
/* static */ u8 sStaggerCount;
/* static */ u8 sStaggerTimer;
/* static */ s8 sLastSwordAnim;
/* static */ u8 sAlpha;

void EnTorch2_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Player* this = THIS;

    sInput.cur.button = sInput.press.button = sInput.rel.button = 0;
    sInput.cur.stick_x = sInput.cur.stick_y = 0;
    this->currentShield = PLAYER_SHIELD_HYLIAN;
    this->heldItemActionParam = this->heldItemId = 3;
    Player_SetModelGroup(this, 2);
    globalCtx->playerInit(this, globalCtx, &D_06004764);
    this->actor.naviEnemyId = 0x26;
    this->cylinder.base.acFlags = 9;
    this->swordQuads[0].base.atFlags = this->swordQuads[1].base.atFlags = 0x11;
    this->swordQuads[0].base.acFlags = this->swordQuads[1].base.acFlags = 0xD;
    this->swordQuads[0].base.type = this->swordQuads[1].base.type = 9;
    this->swordQuads[0].body.toucher.damage = this->swordQuads[1].body.toucher.damage = 8;
    this->swordQuads[0].body.bumperFlags = this->swordQuads[1].body.bumperFlags = 1;
    this->shieldQuad.base.atFlags = 0x11;
    this->shieldQuad.base.acFlags = 0xD;
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = gSaveContext.healthCapacity >> 3;
    this->actor.colChkInfo.unk_10 = 0x3C;
    this->actor.colChkInfo.unk_12 = 0x64;
    globalCtx->func_11D54(this, globalCtx);

    sActionState = ENTORCH2_WAIT;
    sDodgeRollState = 0;
    sSwordJumpHeight = 0.0f;
    sSwordJumpState = 0;
    sJumpslashTimer = 0;
    sJumpslashFlag = false;
    sCounterState = sStaggerTimer = sStaggerCount = 0;
    sLastSwordAnim = 0;
    sAlpha = 95;
    sSpawnPoint = this->actor.initPosRot.pos;
}

void EnTorch2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Player* this = THIS;

    Effect_Delete(globalCtx, this->swordEffectIndex);
    func_800F5B58();
    Collider_DestroyCylinder(globalCtx, &this->cylinder);
    Collider_DestroyQuad(globalCtx, &this->swordQuads[0]);
    Collider_DestroyQuad(globalCtx, &this->swordQuads[1]);
    Collider_DestroyQuad(globalCtx, &this->shieldQuad);
}

Actor* EnTorch2_AttackItem(GlobalContext* globalCtx, Player* this) {
    Actor* tempActor = func_80033780(globalCtx, &this->actor, 4000.0f);

    if (tempActor != NULL) {
        return tempActor;
    } else {
        return func_80033684(globalCtx, &this->actor);
    }
}

s32 EnTorch2_SwingSword(GlobalContext* globalCtx, Input* input, Player* this) {
    f32 phi_f2 = 0.0f;
    s32 phi_v0 = 7;
    Player* player = PLAYER;

    if ((this->linearVelocity < 0.0f) || (player->linearVelocity < 0.0f)) {
        return 0;
    }
    if (gSaveContext.health < 0x50) {
        phi_v0 = 15;
        phi_f2 += 0.3f;
    }
    if (sAlpha != 0xFF) {
        phi_f2 += 2.0f;
    }
    if (((globalCtx->gameplayFrames & phi_v0) == 0) || (sSwordJumpState != 0)) {
        if (phi_f2 <= Math_Rand_ZeroOne()) {
            if (sSwordJumpState == 0) {
                switch ((s32)(Math_Rand_ZeroOne() * 7.0f)) {
                    case 1:
                    case 5:
                        sStickAngle += 0x4000;
                        sStickTilt = 127.0f;
                        break;
                    case 2:
                    case 6:
                        sStickAngle -= 0x4000;
                        sStickTilt = 127.0f;
                        break;
                }
            }
            input->cur.button = BTN_B;
            return 1;
        }
    }
    return 0;
}

void EnTorch2_Backflip(Player* player, Input* input, Player* this) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    sStickAngle = this->actor.yawTowardsLink + 0x8000;
    sStickTilt = 127.0f;
    sZTargetFlag = true;
    input->cur.button = BTN_A;
    player->invincibilityTimer = 10;
    sCounterState = 0;
}

// #define NON_MATCHING

#ifdef NON_MATCHING
void EnTorch2_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Player* player = PLAYER;
    Player* this = THIS;
    u32 phi_v0;
    u16 phi_a2;
    s8 tempx;
    s8 tempy;
    Camera* camera;
    s16 sp66;
    u8 phi_v0_3;
    s8 temp;
    f32 pad60;
    Actor* sp5C;
    s16 sp5A;
    s16 pad58;
    s32 pad54;
    f32 sp50;
    s16 sp4E;
    s16 sp4C;

    sp5A = player->actor.shape.rot.y - this->actor.shape.rot.y;
    sInput.cur.button = 0;
    camera = Gameplay_GetCamera(globalCtx, 0);
    sp5C = EnTorch2_AttackItem(globalCtx, this);
    switch (sActionState) {
        case ENTORCH2_WAIT:
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            this->skelAnime.animCurrentFrame = 0.0f;
            this->skelAnime.animPlaybackSpeed = 0.0f;
            this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * 25.0f) + sSpawnPoint.x;
            this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * 25.0f) + sSpawnPoint.z;
            if ((this->actor.xzDistFromLink <= 120.0f) || func_80033A84(globalCtx, &this->actor) || (sp5C != NULL)) {
                if (sp5C != NULL) {
                    sDodgeRollState = 1;
                    sStickAngle = this->actor.yawTowardsLink;
                    sStickTilt = 127.0f;
                    sInput.cur.button = BTN_A;
                    sZTargetFlag = false;
                    sp66 = camera->unk_13A.y - sStickAngle;
                    sInput.cur.stick_x = sStickTilt * Math_Sins(sp66);
                    temp = sStickTilt * Math_Coss(sp66);
                    sInput.cur.stick_y = temp;
                }
                func_800F5ACC(0x38);
                sActionState = ENTORCH2_ATTACK;
            }
            break;
        case ENTORCH2_ATTACK:
            sStickTilt = 0.0f;
            if ((this->swordQuads[0].base.acFlags & 0x80) || (this->swordQuads[1].base.acFlags & 0x80)) {
                this->swordQuads[0].base.acFlags &= ~0x80;
                this->swordQuads[1].base.acFlags &= ~0x80;
                this->swordQuads[0].base.atFlags |= 4;
                this->swordQuads[1].base.atFlags |= 4;
                this->cylinder.base.acFlags &= ~2;
                if (sLastSwordAnim != this->swordAnimation) {
                    sStaggerCount++;
                    sLastSwordAnim = this->swordAnimation;
                }
                if ((gSaveContext.health < 0x50) && (sCounterState != 0)) {
                    sCounterState = 0;
                    sStaggerTimer = 50;
                }
            }
            if ((sCounterState != 0) && this->swordState) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->swordQuads[0].base);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->swordQuads[1].base);
            }
            if ((this->invincibilityTimer < 0) && (sActionState != ENTORCH2_DAMAGE) &&
                (this->cylinder.base.acFlags & 2)) {
                this->cylinder.base.acFlags &= ~2;
            }
            if (sDodgeRollState != 0) {
                sStickTilt = 127.0f;
            } else if (sp5C != NULL) {
                sDodgeRollState = 1;
                sStickAngle = this->actor.yawTowardsLink;
                sStickTilt = 127.0f;
                sInput.cur.button = BTN_A;
            } else if (sJumpslashTimer == 0) {
                if ((player->swordState || (player->actor.velocity.y > -3.0f)) &&
                    (player->swordAnimation == 17)) { // jumpslash
                    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
                    sStickAngle = (globalCtx->gameplayFrames % 2) ? this->actor.yawTowardsLink + 0x4000
                                                                  : this->actor.yawTowardsLink - 0x4000;
                    sStickTilt = 127.0f;
                    sJumpslashFlag = false;
                    sInput.cur.button |= BTN_A;
                    sJumpslashTimer = 15;
                } else if (sSwordJumpState != 0) {
                    sStickTilt = 0.0f;
                    player->stateFlags3 |= 4;
                    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x,
                                            (Math_Sins(player->actor.shape.rot.y - 0x3E8) * 45.0f) +
                                                player->actor.posRot.pos.x,
                                            1.0f, 5.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z,
                                            (Math_Coss(player->actor.shape.rot.y - 0x3E8) * 45.0f) +
                                                player->actor.posRot.pos.z,
                                            1.0f, 5.0f, 0.0f);
                    sSwordJumpTimer--;
                    if ((sSwordJumpTimer == 0) || ((player->invincibilityTimer > 0) && !this->swordState)) {
                        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                        sInput.cur.button = BTN_A;
                        player->stateFlags3 &= ~4;
                        sStickTilt = 127.0f;
                        player->skelAnime.animCurrentFrame = 3.0f;
                        sStickAngle = this->actor.yawTowardsLink + 0x8000;
                        sSwordJumpState = 0;
                        sSwordJumpTimer = 0;
                        this->actor.flags |= 1;
                    } else if (sSwordJumpState == 1) {
                        if (sSwordJumpTimer < 16) {
                            EnTorch2_SwingSword(globalCtx, &sInput, this);
                            sSwordJumpState++;
                        } else if (sSwordJumpTimer == 19) {
                            func_800F4190(&this->actor.projectedPos, NA_SE_VO_LI_AUTO_JUMP);
                        }
                    }
                } else {
                    if (sHoldShieldTimer != 0) {
                        sHoldShieldTimer--;
                        sInput.cur.button = BTN_R;
                    }
                    if (func_800354B4(globalCtx, &this->actor, 120.0f, 0x7FFF, 0x7FFF, this->actor.posRot.rot.y)) {
                        if ((player->swordAnimation == 12) && (this->actor.xzDistFromLink < 90.0f)) {
                            if (!this->swordState && (sCounterState == 0) && (player->invincibilityTimer == 0) &&
                                (player->swordAnimation == 12) && (this->actor.xzDistFromLink <= 85.0f) &&
                                func_80033A84(globalCtx, &this->actor)) {

                                sStickTilt = 0.0f;
                                sSwordJumpState = 1;
                                player->stateFlags3 |= 4;
                                this->actor.flags &= ~1;
                                sSwordJumpTimer = 27;
                                player->swordState = 0;
                                player->linearVelocity = 0.0f;
                                this->invincibilityTimer = -7;
                                this->linearVelocity = 0.0f;
                                player->skelAnime.animCurrentFrame = 2.0f;
                                func_800A3BC0(globalCtx, &player->skelAnime);
                                sHoldShieldTimer = 0;
                                sInput.cur.button = BTN_A;
                            } else {
                                EnTorch2_Backflip(this, &sInput, this);
                            }
                        } else {
                            sStickAngle = this->actor.yawTowardsLink;
                            sInput.cur.button = BTN_B;
                            if (player->swordAnimation <= 3) {
                                sStickTilt = 0.0f;
                            } else if (player->swordAnimation <= 7) {
                                sStickTilt = 127.0f;
                                sStickAngle += 0x4000;
                            } else if (player->swordAnimation <= 11) {
                                sStickTilt = 127.0f;
                                sStickAngle -= 0x4000;
                            } else if (player->swordAnimation <= 23) {
                                sInput.cur.button = BTN_R;
                            } else if (player->swordAnimation <= 27) {
                                EnTorch2_Backflip(this, &sInput, this);
                            } else {
                                EnTorch2_Backflip(this, &sInput, this);
                            }
                            if (!(sInput.cur.button & (BTN_A | BTN_R)) && !this->swordState &&
                                player->swordState) {
                                sCounterState = 1;
                            }
                        }
                    } else {
                        sStickAngle = this->actor.yawTowardsLink;
                        pad60 = 0.0f;
                        if ((this->actor.xzDistFromLink <= 90.0f) && (70.0f < this->actor.xzDistFromLink) &&
                            (ABS(sp5A) >= 0x7800) &&
                            ((this->actor.unk_10C != 0) || !(player->stateFlags1 & 0x00400000))) {
                            EnTorch2_SwingSword(globalCtx, &sInput, this);
                        } else if (((this->actor.xzDistFromLink <= 70.0f) ||
                                    ((this->actor.xzDistFromLink <= (80.0f + pad60)) && player->swordState)) &&
                                   !this->swordState) {
                            if (!EnTorch2_SwingSword(globalCtx, &sInput, this) && !this->swordState &&
                                (sCounterState == 0)) {
                                EnTorch2_Backflip(this, &sInput, this);
                            }
                        } else if (this->actor.xzDistFromLink <= (50 + pad60)) {
                            sStickTilt = 127.0f;
                            sStickAngle = this->actor.yawTowardsLink;
                            if (this->actor.unk_10C == 0) {
                                Math_SmoothScaleMaxMinS(&sStickAngle, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328, 0);
                            }
                        } else if ((100.0f + pad60) < this->actor.xzDistFromLink) {
                            if (!player->swordState || (player->swordAnimation < 0x18) ||
                                (player->swordAnimation > 0x1B) || (280.0f <= this->actor.xzDistFromLink)) {
                                sStickTilt = 127.0f;
                                sStickAngle = this->actor.yawTowardsLink;
                                if (this->actor.unk_10C == 0) {
                                    Math_SmoothScaleMaxMinS(&sStickAngle, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328,
                                                            0);
                                }
                            } else {
                                EnTorch2_Backflip(this, &sInput, this);
                            }
                        } else if (((ABS(sp5A) < 0x7800) && (ABS(sp5A) >= 0x3000)) ||
                                   !EnTorch2_SwingSword(globalCtx, &sInput, this)) {
                            sStickAngle = this->actor.yawTowardsLink;
                            sStickTilt = 127.0f;
                            if (this->actor.unk_10C == 0) {
                                Math_SmoothScaleMaxMinS(&sStickAngle, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328, 0);
                            }
                        }
                    }
                }
            } else if (sJumpslashFlag && (sAlpha == 255) && (this->actor.velocity.y > 0)) {
                sInput.cur.button |= BTN_B;
            } else if (!sJumpslashFlag && (this->actor.bgCheckFlags & 1)) {
                sStickAngle = this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                if (sAlpha != 255) {
                    sStickAngle += 0x8000;
                    sStickTilt = 127.0f;
                    sZTargetFlag = true;
                }
                sInput.cur.button |= BTN_A;
                sJumpslashFlag = true;
                this->invincibilityTimer = 10;
            }
            sp66 = camera->unk_13A.y - sStickAngle;

            sInput.cur.stick_x = Math_Sins(sp66) * sStickTilt;
            temp = Math_Coss(sp66) * sStickTilt;
            sInput.cur.stick_y = temp;
            if ((sAlpha != 255) && ((globalCtx->gameplayFrames % 8) == 0)) {
                sAlpha++;
            }
            break;
        case ENTORCH2_DAMAGE:
            this->swordState = 0;
            sInput.cur.stick_x = sInput.cur.stick_y = 0;
            if ((this->invincibilityTimer > 0) && (this->actor.posRot.pos.y < (this->actor.groundY - 160.0f))) {
                this->stateFlags3 &= ~1;
                this->actor.flags |= 1;
                this->invincibilityTimer = 0;
                this->actor.velocity.y = 0.0f;
                this->actor.posRot.pos.y = sSpawnPoint.y + 40.0f;
                this->actor.posRot.pos.x =
                    (Math_Sins(player->actor.shape.rot.y) * -120.0f) + player->actor.posRot.pos.x;
                this->actor.posRot.pos.z =
                    (Math_Coss(player->actor.shape.rot.y) * -120.0f) + player->actor.posRot.pos.z;
                if (func_8002DB6C(&this->actor, &sSpawnPoint) > 800.0f) {
                    sp50 = Math_Rand_ZeroOne() * 20.0f;
                    sp4E = Math_Rand_CenteredFloat(4000.0f);
                    this->actor.shape.rot.y = this->actor.posRot.rot.y =
                        Math_Vec3f_Yaw(&sSpawnPoint, &player->actor.posRot.pos);
                    this->actor.posRot.pos.x =
                        (Math_Sins(this->actor.posRot.rot.y + sp4E) * (25.0f + sp50)) + sSpawnPoint.x;
                    this->actor.posRot.pos.z =
                        (Math_Coss(this->actor.posRot.rot.y + sp4E) * (25.0f + sp50)) + sSpawnPoint.z;
                    this->actor.posRot.pos.y = sSpawnPoint.y;
                } else {
                    this->actor.posRot.pos.y = this->actor.groundY;
                }
                Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
                globalCtx->func_11D54(this, globalCtx);
                sActionState = ENTORCH2_ATTACK;
                sStickTilt = 0.0f;
                if (sAlpha != 255) {
                    sStaggerCount = 0;
                    sStaggerTimer = 0;
                }
            }
            break;
        case ENTORCH2_DEATH:
            if (sAlpha - 13 <= 0) {
                sAlpha = 0;
                Actor_Kill(&this->actor);
                return;
            }
            sAlpha -= 13;
            this->actor.shape.unk_14 -= 13;
            break;
    }
    if ((gSaveContext.unk_13F0 == 3) &&
        (!player->swordState || (player->swordAnimation < 0x18) || (player->swordAnimation > 0x1B))) {
        sStickTilt = 0.0f;
        sInput.cur.stick_x = 0;
        sInput.cur.stick_y = 0;
        sInput.cur.button = BTN_R;
    }
    if ((sActionState == ENTORCH2_ATTACK) && (this->actor.xzDistFromLink <= 610.0f) && sZTargetFlag) {
        sInput.cur.button |= BTN_Z;
    }

    phi_a2 = sInput.cur.button;
    pad54 = sInput.cur.button ^ sInput.prev.button;
    sInput.press.button = sInput.cur.button & pad54;
    phi_v0 = sInput.cur.button;
    if (sInput.cur.button & BTN_R) {
        sInput.cur.button = phi_a2;
        if ((sCounterState == 0) && !this->swordState) {
            phi_a2 = BTN_R;
        } else {
            phi_a2 = phi_v0 ^ BTN_R;
        }
        phi_v0 = phi_a2;
    }
    sInput.rel.button = sInput.prev.button & pad54;
    sInput.prev.button = phi_v0 & 0x3FFF; // & ~(BTN_A | BTN_B)
    sInput.cur.button = phi_a2;

    PadUtils_UpdateRelXY(&sInput);

    sInput.press.stick_x += (s8)(sInput.cur.stick_x - sInput.prev.stick_x);
    sInput.press.stick_y += (s8)(sInput.cur.stick_y - sInput.prev.stick_y);

    if ((this->actor.colChkInfo.health == 0) && sDeathFlag) {
        this->csMode = 0x18;
        this->unk_448 = &player->actor;
        this->unk_46A = 1;
        sDeathFlag = false;
    }
    if ((this->invincibilityTimer == 0) && (this->actor.colChkInfo.health != 0) && (this->cylinder.base.acFlags & 2) &&
        !(this->stateFlags1 & 0x04000000) && !(this->swordQuads[0].base.atFlags & 2) &&
        !(this->swordQuads[1].base.atFlags & 2)) {

        if (!Actor_ApplyDamage(&this->actor)) {
            func_800F5B58();
            this->actor.flags &= ~5;
            this->unk_8A1 = 2;
            this->unk_8A4 = 6.0f;
            this->unk_8A8 = 6.0f;
            this->unk_8A0 = this->actor.colChkInfo.damage;
            this->unk_8A2 = this->actor.yawTowardsLink + 0x8000;
            sDeathFlag++;
            sActionState = ENTORCH2_DEATH;
            func_80032C7C(globalCtx, &this->actor);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
            this->stateFlags3 &= ~4;
        } else {
            func_800F5ACC(0x38);
            if (this->actor.colChkInfo.damageEffect == 1) {
                if (sAlpha == 255) {
                    func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                } else {
                    func_8003426C(&this->actor, 0, 0xFF, 0x2000, 0x50);
                }
            } else {
                this->actor.flags &= ~1;
                this->unk_8A1 = 1;
                this->unk_8A8 = 6.0f;
                this->unk_8A0 = this->actor.colChkInfo.damage;
                this->unk_8A4 = 8.0f;
                this->unk_8A2 = this->actor.yawTowardsLink + 0x8000;
                func_80035650(&this->actor, &this->cylinder.body, 1);
                this->stateFlags3 &= ~4;
                this->stateFlags3 |= 1;
                sActionState = ENTORCH2_DAMAGE;
                if (sAlpha == 0xFF) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
                } else {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 0xC);
                }
            }
        }
        this->actor.colChkInfo.damage = 0;
        this->unk_8A0 = 0;
    }
    if ((this->actor.dmgEffectTimer == 0) || (this->actor.dmgEffectParams & 0x4000)) {
        this->stateFlags3 &= ~4;
    } else {
        this->stateFlags1 &= ~0x04000000;
        this->stateFlags3 |= 4;
        this->invincibilityTimer = 0;
        sInput.press.stick_x = sInput.press.stick_y = 0;
        sInput.cur.button = 0;
        sInput.press.button = 0;
        this->linearVelocity = 0.0f;
    }

    globalCtx->playerUpdate(this, globalCtx, &sInput);

    if (this->linearVelocity == -18.0f) {
        phi_v0_3 = (u32)Math_Rand_CenteredFloat(2.0f) + 6;
        if (gSaveContext.health < 0x50) {
            phi_v0_3 = (u32)Math_Rand_CenteredFloat(2.0f) + 3;
        }
        if (this->actor.xzDistFromLink > 80.0f) {
            this->linearVelocity = 1.2f;
        } else if (this->actor.xzDistFromLink < 70.0f) {
            this->linearVelocity = -1.5f;
        } else {
            this->linearVelocity = 1.0f;
        }
        if (phi_v0_3 < sStaggerCount) {
            this->skelAnime.animPlaybackSpeed *= 0.6f;
            func_800F4190(&this->actor.projectedPos, NA_SE_PL_DAMAGE);
            sStaggerTimer = 0;
            sStaggerCount = 0;
        }
    }
    if (player->linearVelocity == -18.0f) {
        if (this->actor.xzDistFromLink < 80.0f) {
            player->linearVelocity = 1.2f;
        } else if (this->actor.xzDistFromLink < 70.0f) {
            player->linearVelocity = -1.5f;
        } else {
            player->linearVelocity = 1.0f;
        }
    }

    if ((sCounterState != 0) && (sCounterState == 1)) {
        if (!this->swordState) {
            sCounterState = 0;
        } else {
            sCounterState = 2;
            this->swordState = 1;
            this->skelAnime.animCurrentFrame = player->skelAnime.animCurrentFrame - player->skelAnime.animPlaybackSpeed;
            this->skelAnime.animPlaybackSpeed = player->skelAnime.animPlaybackSpeed;
            func_800A3BC0(globalCtx, &this->skelAnime);
            Collider_QuadSetAT(globalCtx, &this->swordQuads[0].base);
            Collider_QuadSetAT(globalCtx, &this->swordQuads[1].base);
        }
    }
    if (sStaggerTimer != 0) {
        sStaggerTimer--;
        if (sStaggerTimer == 0) {
            sCounterState = 0;
            sStaggerCount = 0;
        }
    }
    if (sDodgeRollState != 0) {
        if (sDodgeRollState == 1) {
            this->invincibilityTimer = 20;
        }
        sDodgeRollState = (this->invincibilityTimer > 0) ? 2 : 0;
    }
    if (this->invincibilityTimer != 0) {
        this->cylinder.base.type = 0xA;
        this->cylinder.body.flags = 5;
    } else {
        this->cylinder.base.type = 5;
        this->cylinder.body.flags = 1;
    }
    if (sSwordJumpState != 0) {
        Math_SmoothScaleMaxMinF(&sSwordJumpHeight, 2630.0f, 1.0f, 2000.0f, 0.0f);
        this->actor.velocity.y -= 0.6f;
    } else if (sSwordJumpHeight != 0) {
        this->actor.posRot.pos.y += sSwordJumpHeight * 0.01f;
        sSwordJumpHeight = 0;
    }
    if ((sActionState == ENTORCH2_WAIT) || (this->invincibilityTimer < 0)) {
        sZTargetFlag = false;
    } else {
        sZTargetFlag = true;
    }
    DECR(sJumpslashTimer);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 20.0f;
    this->actor.shape.unk_08 = sSwordJumpHeight;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Update.s")
#endif

s32 EnTorch2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              Actor* thisx, Gfx** gfx) {
    return func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, thisx);
}

void EnTorch2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    func_80090D20(globalCtx, limbIndex, dList, rot, thisx);
}

void EnTorch2_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Player* this = THIS;
    s32 pad64;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_torch2.c", 1050);
    func_80093C80(globalCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (sAlpha == 255) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 0, 0, sAlpha);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, D_80116280 + 2);
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);
        oGfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, &EnTorch2_OverrideLimbDraw,
                                               &EnTorch2_PostLimbDraw, &this->actor, oGfxCtx->polyOpa.p);
    } else {
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, sAlpha);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, D_80116280);
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);
        oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, &EnTorch2_OverrideLimbDraw,
                                               &EnTorch2_PostLimbDraw, &this->actor, oGfxCtx->polyXlu.p);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_torch2.c", 1114);
}
