/*
 * File: z_en_po_relay.c
 * Overlay: ovl_En_Po_Relay
 * Description: Dampé's Ghost
 */

#include "z_en_po_relay.h"
#include "overlays/actors/ovl_En_Honotrap/z_en_honotrap.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "light.h"
#include "play_state.h"
#include "player.h"
#include "save.h"
#include "array_count.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_IGNORE_QUAKE | ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED)

void EnPoRelay_Init(Actor* thisx, PlayState* play);
void EnPoRelay_Destroy(Actor* thisx, PlayState* play);
void EnPoRelay_Update(Actor* thisx, PlayState* play);
void EnPoRelay_Draw(Actor* thisx, PlayState* play);

void EnPoRelay_Idle(EnPoRelay* this, PlayState* play);
void EnPoRelay_Race(EnPoRelay* this, PlayState* play);
void EnPoRelay_EndRace(EnPoRelay* this, PlayState* play);
void EnPoRelay_Talk(EnPoRelay* this, PlayState* play);
void EnPoRelay_Talk2(EnPoRelay* this, PlayState* play);
void EnPoRelay_DisappearAndReward(EnPoRelay* this, PlayState* play);
void EnPoRelay_SetupIdle(EnPoRelay* this);

static Vec3s sPathPoints[] = {
    { 0xFFC4, 0xFDEE, 0xF47A }, { 0x0186, 0xFE0C, 0xF47A }, { 0x0186, 0xFE0C, 0xF0F6 }, { 0x00D2, 0xFDEE, 0xF0F6 },
    { 0x00D2, 0xFD9E, 0xEEDA }, { 0x023A, 0xFDC6, 0xEEDA }, { 0x023A, 0xFDC6, 0xED18 }, { 0x00D2, 0xFDC6, 0xED18 },
    { 0x00D2, 0xFDC6, 0xEBCE }, { 0x00D2, 0xFDC6, 0xEAA2 }, { 0x023A, 0xFDC6, 0xEAA2 }, { 0x023A, 0xFDC6, 0xEBB0 },
    { 0x04EC, 0xFD9E, 0xEBB0 }, { 0x0672, 0xFD62, 0xED18 }, { 0x0672, 0xFD30, 0xEE80 }, { 0x07DA, 0xFD26, 0xEE80 },
    { 0x07DA, 0xFD26, 0xEF70 }, { 0x07DA, 0xFD26, 0xF204 }, { 0x0672, 0xFD44, 0xF204 }, { 0x0672, 0xFD6C, 0xF3C6 },
    { 0x088E, 0xFD6C, 0xF3C6 }, { 0x088E, 0xFDB2, 0xF5E2 }, { 0x099C, 0xFDD0, 0xF5E2 }, { 0x0B54, 0xFE66, 0xF772 },
    { 0x0B4E, 0xFE66, 0xF87E }, { 0x0B4A, 0xFE66, 0xF97A }, { 0x0B4A, 0xFE98, 0xF9FC }, { 0x0BAE, 0xFE98, 0xF9FC },
};

ActorProfile En_Po_Relay_Profile = {
    /**/ ACTOR_EN_PO_RELAY,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_TK,
    /**/ sizeof(EnPoRelay),
    /**/ EnPoRelay_Init,
    /**/ EnPoRelay_Destroy,
    /**/ EnPoRelay_Update,
    /**/ EnPoRelay_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 30, 52, 0, { 0, 0, 0 } },
};

static s32 sAlreadySpawned = false;

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_DAMPES_GHOST, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 1500, ICHAIN_STOP),
};

static Vec3f sDisappearParticlesVelocity = { 0.0f, 1.5f, 0.0f };

static Vec3f sDisappearParticlesAccel = { 0.0f, 0.0f, 0.0f };

// the offset (in model space) from the position of the lantern limb and the position of the actual light
static Vec3f sLanternLightOffset = { 0.0f, 1200.0f, 0.0f };

typedef enum DampeEyes {
    /* 0 */ DAMPE_EYES_FULLY_OPEN,
    /* 1 */ DAMPE_EYES_HALF_OPEN,
    /* 2 */ DAMPE_EYES_CLOSED,
    /* 3 */ DAMPE_EYES_MAX
} DampeEyes;

static void* sEyesTextures[] = {
    gDampeEyeOpenTex,   // DAMPE_EYES_FULLY_OPEN
    gDampeEyeHalfTex,   // DAMPE_EYES_HALF_OPEN
    gDampeEyeClosedTex, // DAMPE_EYES_CLOSED
};

void EnPoRelay_Init(Actor* thisx, PlayState* play) {
    EnPoRelay* this = (EnPoRelay*)thisx;
    s32 temp;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 42.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gDampeSkel, &gDampeFloatAnim, this->jointTable, this->morphTable,
                       LIMB_OBJECT_TK_00BE40_MAX);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z,
                              255, 255, 255, 200);
    this->lightColor.a = 255;
    temp = true;
    if (sAlreadySpawned) {
        Actor_Kill(&this->actor);
    } else {
        sAlreadySpawned = temp;
        Actor_SetTextWithPrefix(play, &this->actor, 65);
        this->textId = this->actor.textId;
        EnPoRelay_SetupIdle(this);
    }
    this->actor.params &= 0x3F;
}

void EnPoRelay_Destroy(Actor* thisx, PlayState* play) {
    EnPoRelay* this = (EnPoRelay*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    Collider_DestroyCylinder(play, &this->collider);
}

void EnPoRelay_SetupIdle(EnPoRelay* this) {
    this->bobTimer = 32;
    this->pathPoint = 0;

    // does not despawn upon room transitions
    this->actor.room = -1;

    this->actor.shape.rot.y = 0;
    this->actor.world.rot.y = -0x8000;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actionFunc = EnPoRelay_Idle;
}

void EnPoRelay_Vec3sToVec3f(Vec3f* dest, Vec3s* src) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void EnPoRelay_SetupRace(EnPoRelay* this) {
    Vec3f vec;

    EnPoRelay_Vec3sToVec3f(&vec, &sPathPoints[this->pathPoint]);
    this->actionTimer = ((s16)(this->actor.shape.rot.y - this->actor.world.rot.y - 0x8000) >> 0xB) % 32U;
    Interface_SetTimer(0);
    this->hookshotSlotFull = INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE;
    this->yawTowardsPathPoint = Actor_WorldYawTowardPoint(&this->actor, &vec);
    this->actor.flags |= ACTOR_FLAG_LOCK_ON_DISABLED;
    Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = EnPoRelay_Race;
}

void EnPoRelay_SetupEndRace(EnPoRelay* this) {
    this->actor.world.rot.y = this->actor.home.rot.y + 0xC000;
    this->actor.flags &= ~ACTOR_FLAG_LOCK_ON_DISABLED;
    this->actor.speed = 0.0f;
    this->actionFunc = EnPoRelay_EndRace;
}

void EnPoRelay_CorrectY(EnPoRelay* this) {
    Math_StepToF(
        &this->actor.home.pos.y,
        sPathPoints[(this->pathPoint >= ARRAY_COUNT(sPathPoints)) ? ARRAY_COUNT(sPathPoints) - 1 : this->pathPoint].y +
            45.0f,
        2.0f);
    this->actor.world.pos.y = Math_SinS(this->bobTimer * 0x800) * 8.0f + this->actor.home.pos.y;
}

void EnPoRelay_Idle(EnPoRelay* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0x100);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnPoRelay_Talk;
    } else if (this->actor.xzDistToPlayer < 250.0f) {
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actor.textId = this->textId;
        Actor_OfferTalk(&this->actor, play, 250.0f);
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void EnPoRelay_Talk(EnPoRelay* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0x100);
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        Actor_SetTextWithPrefix(play, &this->actor, 0x2F);
        this->textId = this->actor.textId;
        EnPoRelay_SetupRace(this);
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void EnPoRelay_Race(EnPoRelay* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f vec;
    f32 speedXZ;
    f32 multiplier;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    }

    // 3% chance of throwing a flame every 32 frames (1.6 seconds), if it fails
    // it checks again the next frame without waiting the 32 frames
    if (this->actionTimer == 0 && Rand_ZeroOne() < 0.03f) {
        this->actionTimer = 32;
        if (this->pathPoint < 23) {
            speedXZ = Rand_ZeroOne() * 3.0f;
            if (speedXZ < 1.0f) {
                multiplier = 1.0f;
            } else if (speedXZ < 2.0f) {
                multiplier = -1.0f;
            } else {
                multiplier = 0.0f;
            }
            speedXZ = 30.0f * multiplier;
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HONOTRAP,
                        Math_CosS(this->yawTowardsPathPoint) * speedXZ + this->actor.world.pos.x,
                        this->actor.world.pos.y,
                        Math_SinS(this->yawTowardsPathPoint) * speedXZ + this->actor.world.pos.z, 0,
                        (this->yawTowardsPathPoint + 0x8000) - (0x2000 * multiplier), 0, HONOTRAP_TYPE_FLAME_DROP);
        }
    }
    Math_SmoothStepToS(&this->actor.world.rot.y, this->yawTowardsPathPoint, 2, 0x1000, 0x100);
    this->actor.shape.rot.y = this->actor.world.rot.y + (this->actionTimer * 0x800) + 0x8000;
    if (this->pathPoint < 23) {
        //! @bug Dampé's speed is directly proportional to the player's speed when less than 300 units away from the
        //! player and not in the branching paths, so if the player's speed is negative (by HESSing or similar),
        //! Dampé will also move backwards, away from the next path point rather than towards it

        // If the player travels along a different path to Dampé that converges later
        if ((Math3D_PointInSquare2D(660.0f, 840.0f, -4480.0f, -3760.0f, player->actor.world.pos.x,
                                    player->actor.world.pos.z) != 0) ||
            (Math3D_PointInSquare2D(1560.0f, 1740.0f, -4030.0f, -3670.0f, player->actor.world.pos.x,
                                    player->actor.world.pos.z) != 0) ||
            (Math3D_PointInSquare2D(1580.0f, 2090.0f, -3030.0f, -2500.0f, player->actor.world.pos.x,
                                    player->actor.world.pos.z) != 0)) {
            speedXZ = (this->hookshotSlotFull) ? player->actor.speed * 1.4f : player->actor.speed * 1.2f;
        } else if (this->actor.xzDistToPlayer < 150.0f) {
            speedXZ = (this->hookshotSlotFull) ? player->actor.speed * 1.2f : player->actor.speed;
        } else if (this->actor.xzDistToPlayer < 300.0f) {
            speedXZ = (this->hookshotSlotFull) ? player->actor.speed : player->actor.speed * 0.8f;
        } else if (this->hookshotSlotFull) {
            speedXZ = 4.5f;
        } else {
            speedXZ = 3.5f;
        }
        multiplier = 250.0f - this->actor.xzDistToPlayer;
        multiplier = CLAMP_MIN(multiplier, 0.0f);
        speedXZ += multiplier * 0.02f + 1.0f;
        Math_ApproachF(&this->actor.speed, speedXZ, 0.5f, 1.5f);
    } else {
        Math_ApproachF(&this->actor.speed, 3.5f, 0.5f, 1.5f);
    }
    EnPoRelay_Vec3sToVec3f(&vec, &sPathPoints[this->pathPoint]);
    if (Actor_WorldDistXZToPoint(&this->actor, &vec) < 40.0f) {
        this->pathPoint++;
        EnPoRelay_Vec3sToVec3f(&vec, &sPathPoints[this->pathPoint]);
        if (this->pathPoint == ARRAY_COUNT(sPathPoints)) {
            EnPoRelay_SetupEndRace(this);
        } else if (this->pathPoint == 9) { // first door
            Flags_SetSwitch(play, 0x35);
        } else if (this->pathPoint == 17) { // second door
            Flags_SetSwitch(play, 0x36);
        } else if (this->pathPoint == 25) { // third door
            Flags_SetSwitch(play, 0x37);
        }
    }
    this->yawTowardsPathPoint = Actor_WorldYawTowardPoint(&this->actor, &vec);
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
}

void EnPoRelay_EndRace(EnPoRelay* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.y, -0x4000, 0x800);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnPoRelay_Talk2;
    } else if (play->roomCtx.curRoom.num == 5) {
        Actor_Kill(&this->actor);
        gSaveContext.timerState = TIMER_STATE_OFF;
    } else if (Actor_IsFacingAndNearPlayer(&this->actor, 150.0f, 0x3000)) {
        this->actor.textId = this->textId;
        Actor_OfferTalk(&this->actor, play, 250.0f);
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void EnPoRelay_Talk2(EnPoRelay* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0x100);
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) {
        if (Message_ShouldAdvance(play)) {
            if (this->hookshotSlotFull) {
                Actor_SetTextWithPrefix(play, &this->actor, 0x2E);
            } else {
                Actor_SetTextWithPrefix(play, &this->actor, 0x2D);
            }
            this->textId = this->actor.textId;
            Message_ContinueTextbox(play, this->actor.textId);
        }
    } else if (Actor_TextboxIsClosing(&this->actor, play)) {
        gSaveContext.timerState = TIMER_STATE_OFF;
        this->actionTimer = 0;
        this->actionFunc = EnPoRelay_DisappearAndReward;
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void EnPoRelay_DisappearAndReward(EnPoRelay* this, PlayState* play) {
    Vec3f vec;
    f32 multiplier;
    s32 pad;

    this->actionTimer++;
    if (this->actionTimer < 8) {
        if (this->actionTimer < 5) {
            vec.y = Math_SinS((this->actionTimer * 0x1000) - 0x4000) * 23.0f + (this->actor.world.pos.y + 40.0f);
            multiplier = Math_CosS((this->actionTimer * 0x1000) - 0x4000) * 23.0f;
            vec.x =
                (Math_SinS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4800) * multiplier) + this->actor.world.pos.x;
            vec.z =
                (Math_CosS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4800) * multiplier) + this->actor.world.pos.z;
        } else {
            vec.y = this->actor.world.pos.y + 40.0f + 15.0f * (this->actionTimer - 5);
            vec.x = (Math_SinS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4800) * 23.0f) + this->actor.world.pos.x;
            vec.z = (Math_CosS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4800) * 23.0f) + this->actor.world.pos.z;
        }
        EffectSsDeadDb_Spawn(play, &vec, &sDisappearParticlesVelocity, &sDisappearParticlesAccel,
                             this->actionTimer * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
        vec.x = (this->actor.world.pos.x + this->actor.world.pos.x) - vec.x;
        vec.z = (this->actor.world.pos.z + this->actor.world.pos.z) - vec.z;
        EffectSsDeadDb_Spawn(play, &vec, &sDisappearParticlesVelocity, &sDisappearParticlesAccel,
                             this->actionTimer * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
        vec.x = this->actor.world.pos.x;
        vec.z = this->actor.world.pos.z;
        EffectSsDeadDb_Spawn(play, &vec, &sDisappearParticlesVelocity, &sDisappearParticlesAccel,
                             this->actionTimer * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
        if (this->actionTimer == 1) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_EXTINCT);
        }
    }
    if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.001f) != 0) {
        if (this->hookshotSlotFull) {
            Vec3f posAtGround;
            s32 pad1;

            posAtGround.x = this->actor.world.pos.x;
            posAtGround.y = this->actor.floorHeight;
            posAtGround.z = this->actor.world.pos.z;
            if (gSaveContext.timerSeconds < HIGH_SCORE(HS_DAMPE_RACE)) {
                HIGH_SCORE(HS_DAMPE_RACE) = gSaveContext.timerSeconds;
            }
            if (!Flags_GetCollectible(play, this->actor.params) && (gSaveContext.timerSeconds <= 60)) {
                Item_DropCollectible2(play, &posAtGround, (this->actor.params << 8) + (0x4000 | ITEM00_HEART_PIECE));
            } else {
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ITEM00, posAtGround.x, posAtGround.y, posAtGround.z, 0, 0,
                            0, 2);
            }
        } else {
            Flags_SetTempClear(play, 4);
            HIGH_SCORE(HS_DAMPE_RACE) = gSaveContext.timerSeconds;
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.x;
    this->actor.scale.z = this->actor.scale.x;
    this->actor.world.pos.y += 10.0f;
}

void EnPoRelay_Update(Actor* thisx, PlayState* play) {
    EnPoRelay* this = (EnPoRelay*)thisx;
    s32 pad;

    SkelAnime_Update(&this->skelAnime);
    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
    EnPoRelay_CorrectY(this);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 27.0f, 60.0f, UPDBGCHECKINFO_FLAG_2);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_SetFocus(&this->actor, 50.0f);
    if (this->bobTimer != 0) {
        this->bobTimer -= 1;
    }
    if (this->bobTimer == 0) {
        this->bobTimer = 32;
    }
    this->eyeTextureIdx++;
    if (this->eyeTextureIdx == DAMPE_EYES_MAX) {
        this->eyeTextureIdx = DAMPE_EYES_FULLY_OPEN;
    }
}

void EnPoRelay_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnPoRelay* this = (EnPoRelay*)thisx;

    // lantern
    if (limbIndex == LIMB_OBJECT_TK_00BDCC) {
        f32 rand;
        Vec3f vec;

        OPEN_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 885);
        rand = Rand_ZeroOne();

        // lantern can be from a light orange to pure white
        this->lightColor.r = (s16)(rand * 30.0f) + 225;
        this->lightColor.g = (s16)(rand * 100.0f) + 155;
        this->lightColor.b = (s16)(rand * 160.0f) + 95;
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, this->lightColor.r, this->lightColor.g, this->lightColor.b, 128);
        gSPDisplayList(POLY_OPA_DISP++, gDampeLanternDL);
        CLOSE_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 901);
        Matrix_MultVec3f(&sLanternLightOffset, &vec);
        Lights_PointNoGlowSetInfo(&this->lightInfo, vec.x, vec.y, vec.z, this->lightColor.r, this->lightColor.g,
                                  this->lightColor.b, 200);

        // halo
    } else if (limbIndex == LIMB_OBJECT_TK_00BD84) {
        OPEN_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 916);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_po_relay.c", 918);
        gSPDisplayList(POLY_OPA_DISP++, gDampeHaloDL);
        CLOSE_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 922);
    }
}

void EnPoRelay_Draw(Actor* thisx, PlayState* play) {
    EnPoRelay* this = (EnPoRelay*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 940);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesTextures[this->eyeTextureIdx]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          EnPoRelay_PostLimbDraw, &this->actor);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_po_relay.c", 954);
}
