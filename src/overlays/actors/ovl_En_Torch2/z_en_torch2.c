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

/* static */ f32 D_80B1F9F0 = 0.0f; // Stick tilt
/* static */ s16 D_80B1F9F4 = 0;
/* static */ f32 D_80B1F9F8 = 0.0f;
/* static */ s32 D_80B1F9FC = 0;
/* static */ u8 D_80B1FA00 = false;
/* static */ u8 D_80B1FA04 = 0;
/* static */ DamageTable D_80B1FA08 = { 0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04,
                                        0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0xE2, 0x60, 0xD3, 0x00, 0x00,
                                        0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00 };

/* static */ Input D_80B20130;
/* static */ u8 D_80B20148;
/* static */ Vec3f D_80B20150; // spawnPoint
/* static */ u8 D_80B2015C;
/* static */ u8 D_80B2015D;
/* static */ u8 D_80B2015E; // actionState
/* static */ u8 D_80B2015F;
/* static */ u8 D_80B20160;
/* static */ u8 D_80B20161;
/* static */ u8 D_80B20162;
/* static */ u8 D_80B20163;
/* static */ s8 D_80B20164;
/* static */ u8 D_80B20165;

// #define NON_MATCHING

#ifdef NON_MATCHING
void EnTorch2_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Player* this = THIS;

    D_80B20130.cur.in.button = D_80B20130.press.in.button = D_80B20130.rel.in.button = 0;
    D_80B20130.cur.in.x = D_80B20130.cur.in.y = 0;
    this->currentShield = PLAYER_SHIELD_HYLIAN;
    this->heldItemActionParam = this->heldItemId = 3;
    Player_SetModelGroup(this, 2);
    globalCtx->playerInit(this, globalCtx, &D_06004764);
    this->actor.naviEnemyId = 0x26;
    this->cylinder.base.acFlags = 9;
    this->swordQuads[1].base.atFlags = 0x11;
    this->swordQuads[0].base.atFlags = 0x11;
    this->swordQuads[1].base.acFlags = 0xD;
    this->swordQuads[0].base.acFlags = 0xD;
    this->swordQuads[1].base.type = 9;
    this->swordQuads[0].base.type = 9;
    this->swordQuads[1].body.toucher.damage = 8;
    this->swordQuads[0].body.toucher.damage = 8;
    this->swordQuads[1].body.bumperFlags = 1;
    this->swordQuads[0].body.bumperFlags = 1;
    this->shieldQuad.base.atFlags = 0x11;
    this->shieldQuad.base.acFlags = 0xD;
    this->actor.colChkInfo.damageTable = &D_80B1FA08;
    this->actor.colChkInfo.health = gSaveContext.healthCapacity >> 3;
    this->actor.colChkInfo.unk_10 = 0x3C;
    this->actor.colChkInfo.unk_12 = 0x64;
    globalCtx->func_11D54(this, globalCtx);

    D_80B2015E = ENTORCH2_WAIT;
    D_80B20161 = 0;
    D_80B1F9F8 = 0.0f;
    D_80B20148 = 0;
    D_80B2015C = 0;
    D_80B2015D = 0;
    D_80B20160 = D_80B20163 = D_80B20162 = 0;
    D_80B20164 = 0;
    D_80B20165 = 0x5F;
    D_80B20150 = this->actor.initPosRot.pos;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Init.s")
#endif

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

Actor* func_80B1DB98(GlobalContext* globalCtx, Player* this) {
    Actor* tempActor = func_80033780(globalCtx, &this->actor, 4000.0f);

    if (tempActor != NULL) {
        return tempActor;
    } else {
        return func_80033684(globalCtx, &this->actor);
    }
}

s32 func_80B1DBD8(GlobalContext* globalCtx, Input* input, Player* this) {
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
    if (D_80B20165 != 0xFF) {
        phi_f2 += 2.0f;
    }
    if (((globalCtx->gameplayFrames & phi_v0) == 0) || (D_80B20148 != 0)) {
        if (phi_f2 <= Math_Rand_ZeroOne()) {
            if (D_80B20148 == 0) {
                switch ((s32)(Math_Rand_ZeroOne() * 7.0f)) {
                    case 1:
                    case 5:
                        D_80B1F9F4 += 0x4000;
                        D_80B1F9F0 = 127.0f;
                        break;
                    case 2:
                    case 6:
                        D_80B1F9F4 -= 0x4000;
                        D_80B1F9F0 = 127.0f;
                        break;
                }
            }
            input->cur.in.button = B_BUTTON;
            return 1;
        }
    }
    return 0;
}

void func_80B1DD70(Player* player, Input* input, Player* this) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    D_80B1F9F4 = this->actor.yawTowardsLink + 0x8000;
    D_80B1F9F0 = 127.0f;
    D_80B1FA00 = true;
    input->cur.in.button = A_BUTTON;
    player->invincibilityTimer = 10;
    D_80B20160 = 0;
}

#ifdef NON_EQUIVALENT
void EnTorch2_Update(Actor* thisx, GlobalContext* globalCtx) {
    // GlobalContext* globalCtx = globalCtx2;
    s32 pad7C;
    Player* player = PLAYER;
    Player* this = THIS;
    s32 phi_v0;
    s32 phi_a2;
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
    D_80B20130.cur.in.button = 0;
    camera = Gameplay_GetCamera(globalCtx, 0);
    sp5C = func_80B1DB98(globalCtx, this);
    switch (D_80B2015E) {
        case ENTORCH2_WAIT:
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            this->skelAnime.animCurrentFrame = 0.0f;
            this->skelAnime.animPlaybackSpeed = 0.0f;
            this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * 25.0f) + D_80B20150.x;
            this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * 25.0f) + D_80B20150.z;
            if ((this->actor.xzDistFromLink <= 120.0f) || func_80033A84(globalCtx, this) || (sp5C != NULL)) {
                if (sp5C != NULL) {
                    D_80B20161 = 1;
                    D_80B1F9F4 = this->actor.yawTowardsLink;
                    D_80B1F9F0 = 127.0f;
                    D_80B20130.cur.in.button = A_BUTTON;
                    D_80B1FA00 = false;
                    sp66 = camera->unk_13A.y - D_80B1F9F4;
                    D_80B20130.cur.in.x = D_80B1F9F0 * Math_Sins(sp66);
                    temp = D_80B1F9F0 * Math_Coss(sp66);
                    D_80B20130.cur.in.y = temp;
                }
                func_800F5ACC(0x38);
                D_80B2015E = ENTORCH2_ATTACK;
            }
            break;
        case ENTORCH2_ATTACK:
            D_80B1F9F0 = 0.0f;
            if ((this->swordQuads[0].base.acFlags & 0x80) || (this->swordQuads[1].base.acFlags & 0x80)) {
                this->swordQuads[0].base.acFlags &= ~0x80;
                this->swordQuads[1].base.acFlags &= ~0x80;
                this->swordQuads[0].base.atFlags |= 4;
                this->swordQuads[1].base.atFlags |= 4;
                this->cylinder.base.acFlags &= ~2;
                if (D_80B20164 != this->swordAnimation) {
                    D_80B20162++;
                    D_80B20164 = this->swordAnimation;
                }
                if ((gSaveContext.health < 0x50) && (D_80B20160 != 0)) {
                    D_80B20160 = 0;
                    D_80B20163 = 50;
                }
            }
            if ((D_80B20160 != 0) && this->swordState) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->swordQuads[0]);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->swordQuads[1]);
            }
            if ((this->invincibilityTimer < 0) && (D_80B2015E != ENTORCH2_DAMAGE) &&
                (this->cylinder.base.acFlags & 2)) {
                this->cylinder.base.acFlags &= ~2;
            }
            if (D_80B20161 != 0) {
                D_80B1F9F0 = 127.0f;
            } else if (sp5C != NULL) {
                D_80B20161 = 1;
                D_80B1F9F4 = this->actor.yawTowardsLink;
                D_80B1F9F0 = 127.0f;
                D_80B20130.cur.in.button = A_BUTTON;
            } else if (D_80B2015C == 0) {
                if ((player->swordState || (player->actor.velocity.y > -3.0f)) &&
                    (player->swordAnimation == 17)) { // jumpslash

                    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;

                    D_80B1F9F4 = (globalCtx->gameplayFrames & 1) ? this->actor.yawTowardsLink + 0x4000
                                                                 : this->actor.yawTowardsLink - 0x4000;
                    D_80B2015D = 0;
                    D_80B1F9F0 = 127.0f;
                    D_80B20130.cur.in.button |= A_BUTTON;
                    D_80B2015C = 15;
                } else if (D_80B20148 != 0) {
                    D_80B1F9F0 = 0.0f;
                    player->stateFlags3 |= 4;
                    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x,
                                            (Math_Sins(player->actor.shape.rot.y - 0x3E8) * 45.0f) +
                                                player->actor.posRot.pos.x,
                                            1.0f, 5.0f, 0.0f);
                    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z,
                                            (Math_Coss(player->actor.shape.rot.y - 0x3E8) * 45.0f) +
                                                player->actor.posRot.pos.z,
                                            1.0f, 5.0f, 0.0f);
                    D_80B2015F--;
                    if ((D_80B2015F == 0) || ((player->invincibilityTimer > 0) && !this->swordState)) {
                        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                        D_80B20130.cur.in.button = A_BUTTON;
                        player->stateFlags3 &= ~4;
                        D_80B1F9F0 = 127.0f;
                        player->skelAnime.animCurrentFrame = 3.0f;
                        D_80B1F9F4 = this->actor.yawTowardsLink + 0x8000;
                        D_80B20148 = 0;
                        D_80B2015F = 0;
                        this->actor.flags |= 1;
                    } else if (D_80B20148 == 1) {
                        if (D_80B2015F < 16) {
                            func_80B1DBD8(globalCtx, &D_80B20130, this);
                            D_80B20148++;
                        } else if (D_80B2015F == 19) {
                            func_800F4190(&this->actor.projectedPos, NA_SE_VO_LI_AUTO_JUMP);
                        }
                    }
                } else {
                    if (D_80B1F9FC != 0) {
                        D_80B1F9FC--;
                        D_80B20130.cur.in.button = R_TRIG;
                    }
                    if (func_800354B4(globalCtx, this, 120.0f, 0x7FFF, 0x7FFF, this->actor.posRot.rot.y)) {
                        if ((player->swordAnimation == 12) && (this->actor.xzDistFromLink < 90.0f)) {
                            if (!this->swordState && (D_80B20160 == 0) && (player->invincibilityTimer == 0) &&
                                (player->swordAnimation == 12) && (this->actor.xzDistFromLink <= 85.0f) &&
                                func_80033A84(globalCtx, this)) {

                                D_80B1F9F0 = 0.0f;
                                D_80B20148 = 1;
                                player->stateFlags3 |= 4;
                                this->actor.flags &= ~1;
                                D_80B2015F = 27;
                                player->swordState = 0;
                                player->linearVelocity = 0.0f;
                                this->invincibilityTimer = -7;
                                this->linearVelocity = 0.0f;
                                player->skelAnime.animCurrentFrame = 2.0f;
                                func_800A3BC0(globalCtx, &player->skelAnime);
                                D_80B1F9FC = 0;
                                D_80B20130.cur.in.button = A_BUTTON;
                            } else {
                                func_80B1DD70(this, &D_80B20130, this);
                            }
                        } else {
                            D_80B1F9F4 = this->actor.yawTowardsLink;
                            D_80B20130.cur.in.button = B_BUTTON;
                            if (player->swordAnimation <= 3) {
                                D_80B1F9F0 = 0.0f;
                            } else if (player->swordAnimation <= 7) {
                                D_80B1F9F0 = 127.0f;
                                D_80B1F9F4 += 0x4000;
                            } else if (player->swordAnimation <= 11) {
                                D_80B1F9F0 = 127.0f;
                                D_80B1F9F4 -= 0x4000;
                            } else if (player->swordAnimation <= 23) {
                                D_80B20130.cur.in.button = R_TRIG;
                            } else if (player->swordAnimation <= 27) {
                                func_80B1DD70(this, &D_80B20130, this);
                            } else {
                                func_80B1DD70(this, &D_80B20130, this);
                            }
                            if (!(D_80B20130.cur.in.button & (A_BUTTON | R_TRIG)) && !this->swordState &&
                                player->swordState) {
                                D_80B20160 = 1;
                            }
                        }
                    } else {
                        D_80B1F9F4 = this->actor.yawTowardsLink;
                        this->actor.xzDistFromLink = this->actor.xzDistFromLink;
                        pad60 = 0.0f;
                        if ((this->actor.xzDistFromLink <= 90.0f) && (70.0f < this->actor.xzDistFromLink) &&
                            (ABS(sp5A) >= 0x7800) &&
                            ((this->actor.unk_10C != 0) || !(player->stateFlags1 & 0x00400000))) {
                            func_80B1DBD8(globalCtx, &D_80B20130, this);
                        } else if (((this->actor.xzDistFromLink <= 70.0f) ||
                                    ((this->actor.xzDistFromLink <= (80.0f + pad60)) && player->swordState)) &&
                                   !this->swordState) {
                            if (!func_80B1DBD8(globalCtx, &D_80B20130, this) && !this->swordState &&
                                (D_80B20160 == 0)) {
                                func_80B1DD70(this, &D_80B20130, this);
                            }
                        } else if (this->actor.xzDistFromLink <= (50 + pad60)) {
                            D_80B1F9F0 = 127.0f;
                            D_80B1F9F4 = this->actor.yawTowardsLink;
                            if (this->actor.unk_10C == 0) {
                                Math_SmoothScaleMaxMinS(&D_80B1F9F4, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328, 0);
                            }
                        } else if ((100.0f + pad60) < this->actor.xzDistFromLink) {
                            if (!player->swordState || (player->swordAnimation < 0x18) ||
                                (player->swordAnimation > 0x1B) || (280.0f <= this->actor.xzDistFromLink)) {
                                D_80B1F9F0 = 127.0f;
                                D_80B1F9F4 = this->actor.yawTowardsLink;
                                if (this->actor.unk_10C == 0) {
                                    Math_SmoothScaleMaxMinS(&D_80B1F9F4, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328,
                                                            0);
                                }
                            } else {
                                func_80B1DD70(this, &D_80B20130, this);
                            }
                        } else if (((ABS(sp5A) < 0x7800) && (ABS(sp5A) >= 0x3000)) ||
                                   !func_80B1DBD8(globalCtx, &D_80B20130, this)) {
                            D_80B1F9F4 = this->actor.yawTowardsLink;
                            D_80B1F9F0 = 127.0f;
                            if (this->actor.unk_10C == 0) {
                                Math_SmoothScaleMaxMinS(&D_80B1F9F4, player->actor.shape.rot.y + 0x7FFF, 1, 0x2328, 0);
                            }
                        }
                    }
                }
            } else if ((D_80B2015D != 0) && (D_80B20165 == 0xFF) && (this->actor.velocity.y > 0)) {
                D_80B20130.cur.in.button |= B_BUTTON;
            } else if ((D_80B2015D == 0) && (this->actor.bgCheckFlags & 1)) {
                D_80B1F9F4 = this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                if (D_80B20165 != 0xFF) {
                    D_80B1F9F4 += 0x8000;
                    D_80B1F9F0 = 127.0f;
                    D_80B1FA00 = true;
                }
                D_80B20130.cur.in.button |= A_BUTTON;
                D_80B2015D = 1;
                this->invincibilityTimer = 10;
            }
            sp66 = camera->unk_13A.y - D_80B1F9F4;
            D_80B20130.cur.in.x = Math_Sins(sp66) * D_80B1F9F0;
            temp = Math_Coss(sp66) * D_80B1F9F0;
            D_80B20130.cur.in.y = temp;
            if ((D_80B20165 != 0xFF) && ((globalCtx->gameplayFrames % 8) == 0)) {
                D_80B20165++;
            }
            break;
        case ENTORCH2_DAMAGE:
            this->swordState = 0;
            D_80B20130.cur.in.x = 0;
            D_80B20130.cur.in.y = 0;
            if ((this->invincibilityTimer > 0) && (this->actor.posRot.pos.y < (this->actor.groundY - 160.0f))) {
                this->stateFlags3 &= ~1;
                this->actor.flags |= 1;
                this->invincibilityTimer = 0;
                this->actor.velocity.y = 0.0f;
                this->actor.posRot.pos.y = D_80B20150.y + 40.0f;
                this->actor.posRot.pos.x =
                    (Math_Sins(player->actor.shape.rot.y) * -120.0f) + player->actor.posRot.pos.x;
                this->actor.posRot.pos.z =
                    (Math_Coss(player->actor.shape.rot.y) * -120.0f) + player->actor.posRot.pos.z;
                if (func_8002DB6C(this, &D_80B20150) > 800.0f) {
                    sp50 = Math_Rand_ZeroOne() * 20.0f;
                    sp4E = Math_Rand_CenteredFloat(4000.0f);
                    this->actor.shape.rot.y = this->actor.posRot.rot.y =
                        Math_Vec3f_Yaw(&D_80B20150, &player->actor.posRot.pos);
                    this->actor.posRot.pos.x =
                        (Math_Sins(this->actor.posRot.rot.y + sp4E) * (25.0f + sp50)) + D_80B20150.x;
                    this->actor.posRot.pos.z =
                        (Math_Coss(this->actor.posRot.rot.y + sp4E) * (25.0f + sp50)) + D_80B20150.z;
                    this->actor.posRot.pos.y = D_80B20150.y;
                } else {
                    this->actor.posRot.pos.y = this->actor.groundY;
                }
                Math_Vec3f_Copy(&this->actor.initPosRot, &this->actor.posRot);
                globalCtx->func_11D54(this, globalCtx);
                D_80B2015E = ENTORCH2_ATTACK;
                D_80B1F9F0 = 0.0f;
                if (D_80B20165 != 255) {
                    D_80B20162 = 0;
                    D_80B20163 = 0;
                }
            }
            break;
        case ENTORCH2_DEATH:
            if (D_80B20165 - 13 <= 0) {
                D_80B20165 = 0;
                Actor_Kill(this);
                return;
            }
            D_80B20165 -= 13;
            this->actor.shape.unk_14 -= 13;
            break;
        default:
            break;
    }
    if ((gSaveContext.unk_13F0 == 3) &&
        (!player->swordState || (player->swordAnimation < 0x18) || (player->swordAnimation > 0x1C))) {
        D_80B1F9F0 = 0.0f;
        D_80B20130.cur.in.x = 0;
        D_80B20130.cur.in.y = 0;
        D_80B20130.cur.in.button = R_TRIG;
    }
    if ((D_80B2015E == ENTORCH2_ATTACK) && (this->actor.xzDistFromLink <= 610.0f) && D_80B1FA00) {
        D_80B20130.cur.in.button |= Z_TRIG;
    }
    phi_a2 = D_80B20130.cur.in.button;
    pad54 = D_80B20130.cur.in.button ^ D_80B20130.prev.in.button;
    D_80B20130.press.in.button = D_80B20130.cur.in.button & pad54;
    phi_v0 = D_80B20130.cur.in.button;

    if (D_80B20130.cur.in.button & R_TRIG) {
        D_80B20130.cur.in.button = phi_a2;
        phi_a2 = phi_v0 ^ R_TRIG;
        if ((D_80B20160 == 0) && (this->swordState == 0)) {
            phi_a2 = R_TRIG;
            phi_v0 = R_TRIG;
        } else {
            phi_a2 &= 0xFFFF;
            phi_v0 = phi_a2;
        }
    }
    D_80B20130.rel.in.button = D_80B20130.prev.in.button & pad54;
    D_80B20130.prev.in.button = phi_v0 & 0x3FFF; // & ~(A_BUTTON | B_BUTTON)
    D_80B20130.cur.in.button = phi_a2;

    // phi_a2 = D_80B20130.cur.in.button;
    // temp_a1 = D_80B20130.prev.in.button;
    // temp_t3 = phi_a2 & 0x10;
    // temp_v1 = phi_a2 ^ temp_a1;
    // temp_t9 = phi_a2 & temp_v1;
    // phi_v0 = D_80B20130.cur.in.button;

    // if(temp_t3 != 0) {
    // temp_t4 = D_80B20160;
    // D_80B20130.cur.in.button = phi_a2;
    // phi_a2 = phi_v0 ^ 0x10;
    // if(temp_t4 == 0 ){
    // temp_t6 = this->swordState;
    // if(this->swordState == 0) {
    // phi_a2 = 0x10;
    // phi_v0 = 0x10;
    // } else {
    // phi_a2 &= 0xFFFF;
    // phi_v0 = phi_a2;
    // }
    // } else {
    // phi_a2 &= 0xFFFF;
    // phi_v0 = phi_a2;
    // }
    // }
    // temp_t5 = temp_a1 & temp_v1;
    // D_80B20130.rel.in.button = temp_t5;
    // temp_t8 = phi_v0 & 0x3FFF;
    // D_80B20130.prev.in.button = temp_t8;
    // D_80B20130.cur.in.button = phi_a2;

    PadUtils_UpdateRelXY(&D_80B20130);
    D_80B20130.press.in.x += (D_80B20130.cur.in.x - D_80B20130.prev.in.x);
    D_80B20130.press.in.y += (D_80B20130.cur.in.y - D_80B20130.prev.in.y);
    if ((this->actor.colChkInfo.health == 0) && (D_80B1FA04 != 0)) {
        this->csMode = 0x18;
        this->unk_46A = 1;
        this->unk_448 = player;
        D_80B1FA04 = 0;
    }
    if ((this->invincibilityTimer == 0) && (this->actor.colChkInfo.health != 0) && (this->cylinder.base.acFlags & 2) &&
        !(this->stateFlags1 & 0x04000000) && !(this->swordQuads[0].base.atFlags & 2) &&
        !(this->swordQuads[1].base.atFlags & 2)) {

        if (!Actor_ApplyDamage(this)) {
            func_800F5B58();
            this->actor.flags &= ~5;
            this->unk_8A1 = 2;
            this->unk_8A2 = this->actor.yawTowardsLink + 0x8000;
            this->unk_8A4 = 6.0f;
            this->unk_8A8 = 6.0f;
            this->unk_8A0 = this->actor.colChkInfo.damage;
            D_80B1FA04++;
            D_80B2015E = ENTORCH2_DEATH;
            func_80032C7C(globalCtx, this);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
            this->stateFlags3 &= ~4;
        } else {
            func_800F5ACC(0x38);
            if (this->actor.colChkInfo.damageEffect == 1) {
                if (D_80B20165 == 255) {
                    func_8003426C(this, 0, 0xFF, 0, 0x50);
                } else {
                    func_8003426C(this, 0, 0xFF, 0x2000, 0x50);
                }
            } else {
                this->actor.flags &= ~1;
                this->unk_8A1 = 1;
                this->unk_8A2 = this->actor.yawTowardsLink + 0x8000;
                this->unk_8A8 = 6.0f;
                this->unk_8A0 = this->actor.colChkInfo.damage;
                this->unk_8A4 = 8.0f;
                func_80035650(this, &this->cylinder.body, 1);
                this->stateFlags3 &= ~4;
                this->stateFlags3 |= 1;
                D_80B2015E = ENTORCH2_DAMAGE;
                if (D_80B20165 == 0xFF) {
                    func_8003426C(this, 0x4000, 0xFF, 0, 0xC);
                } else {
                    func_8003426C(this, 0x4000, 0xFF, 0x2000, 0xC);
                }
            }
        }
        this->actor.colChkInfo.damage = 0;
        this->unk_8A0 = 0;
    }
    if ((this->actor.dmgEffectTimer == 0) || (this->actor.dmgEffectParams & 0x4000)) {
        this->stateFlags3 &= ~4;
    } else {
        this->invincibilityTimer = 0;
        this->stateFlags1 &= ~0x04000000;
        this->stateFlags3 |= 4;
        D_80B20130.press.in.x = D_80B20130.press.in.y = 0;
        D_80B20130.cur.in.button = 0;
        D_80B20130.press.in.button = 0;
        this->linearVelocity = 0.0f;
    }

    globalCtx->playerUpdate(this, globalCtx, &D_80B20130);

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
        if (phi_v0_3 < D_80B20162) {
            this->skelAnime.animPlaybackSpeed *= 0.6f;
            func_800F4190(&this->actor.projectedPos, NA_SE_PL_DAMAGE);
            D_80B20163 = 0;
            D_80B20162 = 0;
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

    if ((D_80B20160 != 0) && (D_80B20160 == 1)) {
        if (!this->swordState) {
            D_80B20160 = 0;
        } else {
            D_80B20160 = 2;
            this->swordState = 1;
            this->skelAnime.animCurrentFrame = player->skelAnime.animCurrentFrame - player->skelAnime.animPlaybackSpeed;
            this->skelAnime.animPlaybackSpeed = player->skelAnime.animPlaybackSpeed;
            func_800A3BC0(globalCtx, &this->skelAnime);
            Collider_QuadSetAT(globalCtx, &this->swordQuads[0]);
            Collider_QuadSetAT(globalCtx, &this->swordQuads[1]);
        }
    }
    if (D_80B20163 != 0) {
        D_80B20163--;
        if (D_80B20163 == 0) {
            D_80B20160 = 0;
            D_80B20162 = 0;
        }
    }
    if (D_80B20161 != 0) {
        if (D_80B20161 == 1) {
            this->invincibilityTimer = 20;
        }
        if (this->invincibilityTimer > 0) {
            D_80B20161 = 2;
        } else {
            D_80B20161 = 0;
        }
    }
    if (this->invincibilityTimer != 0) {
        this->cylinder.base.type = 0xA;
        this->cylinder.body.flags = 5;
    } else {
        this->cylinder.base.type = 5;
        this->cylinder.body.flags = 1;
    }
    if (D_80B20148 != 0) {
        Math_SmoothScaleMaxMinF(&D_80B1F9F8, 2630.0f, 1.0f, 2000.0f, 0.0f);
        this->actor.velocity.y -= 0.6f;
    } else if (D_80B1F9F8 != 0) {
        this->actor.posRot.pos.y += D_80B1F9F8 * 0.01f;
        D_80B1F9F8 = 0;
    }
    if ((D_80B2015E == ENTORCH2_WAIT) || (this->invincibilityTimer < 0)) {
        D_80B1FA00 = false;
    } else {
        D_80B1FA00 = true;
    }
    DECR(D_80B2015C);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 20.0f;
    this->actor.shape.unk_08 = D_80B1F9F8;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Update.s")
#endif

s32 func_80B1F7A8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx) {
    return func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, thisx);
}

void func_80B1F7D4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    func_80090D20(globalCtx, limbIndex, dList, rot, thisx);
}

void EnTorch2_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Player* this = THIS;
    s32 pad64;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_torch2.c", 1050);
    func_80093C80(globalCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (D_80B20165 == 255) {
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 0, 0, D_80B20165);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, D_80116280 + 2);
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);
        oGfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, &func_80B1F7A8, &func_80B1F7D4, &this->actor,
                                               oGfxCtx->polyOpa.p);
    } else {
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, D_80B20165);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, D_80116280);
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);
        oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, &func_80B1F7A8, &func_80B1F7D4, &this->actor,
                                               oGfxCtx->polyXlu.p);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_torch2.c", 1114);
}
