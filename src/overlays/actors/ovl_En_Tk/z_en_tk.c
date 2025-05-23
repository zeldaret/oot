/*
 * File: z_en_tk.c
 * Overlay: ovl_En_Tk
 * Description: Dampe NPC from "Dampe's Heart-Pounding Gravedigging Tour"
 */

#include "z_en_tk.h"

#include "libc64/math64.h"
#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "rand.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "z64face_reaction.h"
#include "z64play.h"
#include "z64save.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_tk/object_tk.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnTk_Init(Actor* thisx, PlayState* play);
void EnTk_Destroy(Actor* thisx, PlayState* play);
void EnTk_Update(Actor* thisx, PlayState* play);
void EnTk_Draw(Actor* thisx, PlayState* play);

s32 EnTk_CheckNextSpot(EnTk* this, PlayState* play);
void EnTk_Rest(EnTk* this, PlayState* play);
void EnTk_Walk(EnTk* this, PlayState* play);
void EnTk_Dig(EnTk* this, PlayState* play);

ActorProfile En_Tk_Profile = {
    /**/ ACTOR_EN_TK,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_TK,
    /**/ sizeof(EnTk),
    /**/ EnTk_Init,
    /**/ EnTk_Destroy,
    /**/ EnTk_Update,
    /**/ EnTk_Draw,
};

void EnTkEff_Create(EnTk* this, Vec3f* pos, Vec3f* speed, Vec3f* accel, u8 duration, f32 size, f32 growth) {
    s16 i;
    EnTkEff* eff = this->eff;

    for (i = 0; i < ARRAY_COUNT(this->eff); i++) {
        if (eff->active != 1) {
            eff->size = size;
            eff->growth = growth;
            eff->timeTotal = eff->timeLeft = duration;
            eff->active = 1;
            eff->pos = *pos;
            eff->accel = *accel;
            eff->speed = *speed;
            break;
        }
        eff++;
    }
}

void EnTkEff_Update(EnTk* this) {
    s16 i;
    EnTkEff* eff;

    eff = this->eff;
    for (i = 0; i < ARRAY_COUNT(this->eff); i++) {
        if (eff->active != 0) {
            eff->timeLeft--;
            if (eff->timeLeft == 0) {
                eff->active = 0;
            }
            eff->accel.x = Rand_ZeroOne() * 0.4f - 0.2f;
            eff->accel.z = Rand_ZeroOne() * 0.4f - 0.2f;
            eff->pos.x += eff->speed.x;
            eff->pos.y += eff->speed.y;
            eff->pos.z += eff->speed.z;
            eff->speed.x += eff->accel.x;
            eff->speed.y += eff->accel.y;
            eff->speed.z += eff->accel.z;
            eff->size += eff->growth;
        }
        eff++;
    }
}

void EnTkEff_Draw(EnTk* this, PlayState* play) {
    static void* dustTextures[] = {
        gDust8Tex, gDust7Tex, gDust6Tex, gDust5Tex, gDust4Tex, gDust3Tex, gDust2Tex, gDust1Tex,
    };

    EnTkEff* eff = this->eff;
    s16 imageIdx;
    s16 gfxSetup;
    s16 alpha;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tk_eff.c", 114);

    gfxSetup = 0;

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < ARRAY_COUNT(this->eff); i++, eff++) {
        if (eff->active == 0) {
            continue;
        }

        if (gfxSetup == 0) {
            POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_0);
            gSPDisplayList(POLY_XLU_DISP++, gDampeEff1DL);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 60, 20, 0);
            gfxSetup = 1;
        }

        alpha = eff->timeLeft * (255.0f / eff->timeTotal);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 170, 130, 90, alpha);

        gDPPipeSync(POLY_XLU_DISP++);
        Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
        Matrix_ReplaceRotation(&play->billboardMtxF);
        Matrix_Scale(eff->size, eff->size, 1.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_tk_eff.c", 140);

        imageIdx = eff->timeLeft * ((f32)ARRAY_COUNT(dustTextures) / eff->timeTotal);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(dustTextures[imageIdx]));

        gSPDisplayList(POLY_XLU_DISP++, gDampeEff2DL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tk_eff.c", 154);
}

s32 EnTkEff_CreateDflt(EnTk* this, Vec3f* pos, u8 duration, f32 size, f32 growth, f32 yAccelMax) {
    Vec3f speed = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };

    accel.y += Rand_ZeroOne() * yAccelMax;

    EnTkEff_Create(this, pos, &speed, &accel, duration, size, growth);

    return 0;
}

/** z_en_tk_eff.c ends here probably **/

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 30, 52, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

void EnTk_RestAnim(EnTk* this, PlayState* play) {
    AnimationHeader* anim = &gDampeRestAnim;

    Animation_Change(&this->skelAnime, anim, 1.0f, 0.0f, Animation_GetLastFrame(&gDampeRestAnim), ANIMMODE_LOOP,
                     -10.0f);

    this->actionCountdown = Rand_S16Offset(60, 60);
    this->actor.speed = 0.0f;
}

void EnTk_WalkAnim(EnTk* this, PlayState* play) {
    AnimationHeader* anim = &gDampeWalkAnim;

    Animation_Change(&this->skelAnime, anim, 1.0f, 0.0f, Animation_GetLastFrame(&gDampeRestAnim), ANIMMODE_LOOP,
                     -10.0f);

    this->actionCountdown = Rand_S16Offset(240, 240);
}

void EnTk_DigAnim(EnTk* this, PlayState* play) {
    AnimationHeader* anim = &gDampeDigAnim;

    Animation_Change(&this->skelAnime, anim, 1.0f, 0.0f, Animation_GetLastFrame(&gDampeDigAnim), ANIMMODE_LOOP, -10.0f);

    if (EnTk_CheckNextSpot(this, play) >= 0) {
        this->validDigHere = 1;
    }
}

void EnTk_UpdateEyes(EnTk* this) {
    if (DECR(this->blinkCountdown) == 0) {
        this->eyeTextureIdx++;
        if (this->eyeTextureIdx > 2) {
            this->blinkCycles--;
            if (this->blinkCycles < 0) {
                this->blinkCountdown = Rand_S16Offset(30, 30);
                this->blinkCycles = 2;
                if (Rand_ZeroOne() > 0.5f) {
                    this->blinkCycles++;
                }
            }
            this->eyeTextureIdx = 0;
        }
    }
}

s32 EnTk_CheckFacingPlayer(EnTk* this) {
    s16 v0;
    s16 v1;

    if (this->actor.xyzDistToPlayerSq > SQ(100.0f)) {
        return 0;
    }

    v0 = this->actor.shape.rot.y;
    v0 -= this->h_21E;
    v0 -= this->headRot;

    v1 = this->actor.yawTowardsPlayer - v0;
    if (ABS(v1) < 0x1554) {
        return 1;
    } else {
        return 0;
    }
}

s32 EnTk_CheckNextSpot(EnTk* this, PlayState* play) {
    Actor* prop;
    f32 dxz;
    f32 dy;

    prop = play->actorCtx.actorLists[ACTORCAT_PROP].head;

    while (prop != NULL) {
        if (prop->id != ACTOR_EN_IT) {
            prop = prop->next;
            continue;
        }

        if (prop == this->currentSpot) {
            prop = prop->next;
            continue;
        }

        dy = prop->world.pos.y - this->actor.floorHeight;
        dxz = Actor_WorldDistXZToActor(&this->actor, prop);
        if (dxz > 40.0f || dy > 10.0f) {
            prop = prop->next;
            continue;
        }

        this->currentSpot = prop;
        return prop->params;
    }

    return -1;
}

void EnTk_CheckCurrentSpot(EnTk* this) {
    f32 dxz;
    f32 dy;

    if (this->currentSpot != NULL) {
        dy = this->currentSpot->world.pos.y - this->actor.floorHeight;
        dxz = Actor_WorldDistXZToActor(&this->actor, this->currentSpot);
        if (dxz > 40.0f || dy > 10.0f) {
            this->currentSpot = NULL;
        }
    }
}

f32 EnTk_Step(EnTk* this, PlayState* play) {
    f32 stepFrames[] = { 36.0f, 10.0f };
    f32 a1_;
    s32 i;

    if (this->skelAnime.curFrame == 0.0f || this->skelAnime.curFrame == 25.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_MORIBLIN_WALK);
    }

    if (this->skelAnime.animation != &gDampeWalkAnim) {
        return 0.0f;
    }

    a1_ = this->skelAnime.curFrame;
    for (i = 0; i < ARRAY_COUNT(stepFrames); i++) {
        if (a1_ < stepFrames[i] + 12.0f && a1_ >= stepFrames[i]) {
            break;
        }
    }
    if (i >= ARRAY_COUNT(stepFrames)) {
        return 0.0f;
    } else {
        a1_ = (0x8000 / 12.0f) * (a1_ - stepFrames[i]);
        return Math_SinS(a1_) * 2.0f;
    }
}

s32 EnTk_Orient(EnTk* this, PlayState* play) {
    Path* path;
    Vec3s* point;
    f32 dx;
    f32 dz;

    if (this->actor.params < 0) {
        return 1;
    }

    path = &play->pathList[0];
    point = SEGMENTED_TO_VIRTUAL(path->points);
    point += this->currentWaypoint;

    dx = point->x - this->actor.world.pos.x;
    dz = point->z - this->actor.world.pos.z;

    Math_SmoothStepToS(&this->actor.shape.rot.y, RAD_TO_BINANG(Math_FAtan2F(dx, dz)), 10, 1000, 1);
    this->actor.world.rot = this->actor.shape.rot;

    if (SQ(dx) + SQ(dz) < 10.0f) {
        this->currentWaypoint++;
        if (this->currentWaypoint >= path->count) {
            this->currentWaypoint = 0;
        }

        return 0;
    } else {
        return 1;
    }
}

u16 EnTk_GetTextId(PlayState* play, Actor* thisx) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_DAMPE);

    if (textId != 0) {
        return textId;
    }

    if (GET_INFTABLE(INFTABLE_D9)) {
        /* "Do you want me to dig here? ..." */
        return 0x5019;
    } else {
        /* "Hey kid! ..." */
        return 0x5018;
    }
}

s16 EnTk_UpdateTalkState(PlayState* play, Actor* thisx) {
    s32 talkState = NPC_TALK_STATE_TALKING;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
            break;
        case TEXT_STATE_CLOSING:
            /* "I am the boss of the carpenters ..." (wtf?) */
            if (thisx->textId == 0x5028) {
                SET_INFTABLE(INFTABLE_D8);
            }
            talkState = NPC_TALK_STATE_IDLE;
            break;
        case TEXT_STATE_DONE_FADING:
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play) && (thisx->textId == 0x5018 || thisx->textId == 0x5019)) {
                if (play->msgCtx.choiceIndex == 1) {
                    /* "Thanks a lot!" */
                    thisx->textId = 0x0084;
                } else if (gSaveContext.save.info.playerData.rupees < 10) {
                    /* "You don't have enough Rupees!" */
                    thisx->textId = 0x0085;
                } else {
                    play->msgCtx.msgMode = MSGMODE_PAUSED;
                    Rupees_ChangeBy(-10);
                    SET_INFTABLE(INFTABLE_D9);
                    return NPC_TALK_STATE_ACTION;
                }
                Message_ContinueTextbox(play, thisx->textId);
                SET_INFTABLE(INFTABLE_D9);
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play) && (thisx->textId == 0x0084 || thisx->textId == 0x0085)) {
                Message_CloseTextbox(play);
                talkState = NPC_TALK_STATE_IDLE;
            }
            break;
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }

    return talkState;
}

s32 EnTk_ChooseReward(EnTk* this) {
    f32 luck;
    s32 reward;

    luck = Rand_ZeroOne();

    if (luck < 0.4f) {
        reward = 0;
    } else if (luck < 0.7) {
        reward = 1;
    } else if (luck < 0.9) {
        reward = 2;
    } else {
        reward = 3;
    }

    switch (reward) {
        case 0:
            if (this->rewardCount[0] < 8) {
                this->rewardCount[0] += 1;
                return reward;
            }
            break;
        case 1:
            if (this->rewardCount[1] < 4) {
                this->rewardCount[1] += 1;
                return reward;
            }
            break;
        case 2:
            if (this->rewardCount[2] < 2) {
                this->rewardCount[2] += 1;
                return reward;
            }
            break;
        case 3:
            if (this->rewardCount[3] < 1) {
                this->rewardCount[3] += 1;
                return reward;
            }
            break;
    }

    if (this->rewardCount[0] < 8) {
        this->rewardCount[0] += 1;
        reward = 0;
    } else if (this->rewardCount[1] < 4) {
        this->rewardCount[1] += 1;
        reward = 1;
    } else if (this->rewardCount[2] < 2) {
        this->rewardCount[2] += 1;
        reward = 2;
    } else if (this->rewardCount[3] < 1) {
        this->rewardCount[3] += 1;
        reward = 3;
    } else {
        reward = 0;
        this->rewardCount[0] = 1;
        this->rewardCount[1] = 0;
        this->rewardCount[2] = 0;
        this->rewardCount[3] = 0;
    }

    return reward;
}

void EnTk_DigEff(EnTk* this) {
    Vec3f pos = { 0.0f, 0.0f, 0.0f };
    Vec3f speed = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };

    if (this->skelAnime.curFrame >= 32.0f && this->skelAnime.curFrame < 40.0f) {
        pos.x = (Rand_ZeroOne() - 0.5f) * 12.0f + this->v3f_304.x;
        pos.y = (Rand_ZeroOne() - 0.5f) * 8.0f + this->v3f_304.y;
        pos.z = (Rand_ZeroOne() - 0.5f) * 12.0f + this->v3f_304.z;
        EnTkEff_CreateDflt(this, &pos, 12, 0.2f, 0.1f, 0.0f);
    }
}

void EnTk_Init(Actor* thisx, PlayState* play) {
    EnTk* this = (EnTk*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0, ActorShadow_DrawCircle, 24.0f);

    SkelAnime_InitFlex(play, &this->skelAnime, &gDampeSkel, NULL, this->jointTable, this->morphTable, 18);
    Animation_Change(&this->skelAnime, &gDampeRestAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gDampeRestAnim),
                     ANIMMODE_LOOP, 0.0f);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);

    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    if (gSaveContext.save.dayTime <= CLOCK_TIME(18, 0) || gSaveContext.save.dayTime >= CLOCK_TIME(21, 0) ||
        LINK_IS_ADULT || play->sceneId != SCENE_GRAVEYARD) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetScale(&this->actor, 0.01f);

    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actor.gravity = -0.1f;
    this->currentReward = -1;
    this->currentSpot = NULL;
    this->actionFunc = EnTk_Rest;
}

void EnTk_Destroy(Actor* thisx, PlayState* play) {
    EnTk* this = (EnTk*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnTk_Rest(EnTk* this, PlayState* play) {
    s16 v1;
    s16 a1_;

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsPlayer - v1;

        if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
            EnTk_DigAnim(this, play);
            this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
            this->actionFunc = EnTk_Dig;
            return;
        }

        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                          EnTk_GetTextId, EnTk_UpdateTalkState);
    } else if (EnTk_CheckFacingPlayer(this)) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsPlayer - v1;

        this->actionCountdown = 0;
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                          EnTk_GetTextId, EnTk_UpdateTalkState);
    } else if (Actor_TalkOfferAccepted(&this->actor, play)) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsPlayer - v1;

        this->actionCountdown = 0;
        this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
    } else if (DECR(this->actionCountdown) == 0) {
        EnTk_WalkAnim(this, play);
        this->actionFunc = EnTk_Walk;

        /*! @bug v1 is uninitialized past this branch */
    } else {
        v1 = 0;
    }

    a1_ = CLAMP(-v1, 1270, 10730);
    Math_SmoothStepToS(&this->headRot, a1_, 6, 1000, 1);
}

void EnTk_Walk(EnTk* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        EnTk_DigAnim(this, play);
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnTk_Dig;
    } else {
        this->actor.speed = EnTk_Step(this, play);
        EnTk_Orient(this, play);
        Math_SmoothStepToS(&this->headRot, 0, 6, 1000, 1);
        EnTk_CheckCurrentSpot(this);

        DECR(this->actionCountdown);
        if (EnTk_CheckFacingPlayer(this) || this->actionCountdown == 0) {
            EnTk_RestAnim(this, play);
            this->actionFunc = EnTk_Rest;
        }
    }
}

void EnTk_Dig(EnTk* this, PlayState* play) {
    Vec3f rewardOrigin;
    Vec3f rewardPos;
    s32 rewardParams[] = {
        ITEM00_RUPEE_GREEN, ITEM00_RUPEE_BLUE, ITEM00_RUPEE_RED, ITEM00_RUPEE_PURPLE, ITEM00_HEART_PIECE,
    };

    EnTk_DigEff(this);

    if (this->skelAnime.curFrame == 32.0f) {
        /* What's gonna come out? */
        Actor_PlaySfx(&this->actor, NA_SE_EV_DIG_UP);

        this->rewardTimer = 0;

        if (this->validDigHere == 1) {
            rewardOrigin.x = 0.0f;
            rewardOrigin.y = 0.0f;
            rewardOrigin.z = -40.0f;

            Matrix_RotateY(this->actor.shape.rot.y, MTXMODE_NEW);
            Matrix_MultVec3f(&rewardOrigin, &rewardPos);

            rewardPos.x += this->actor.world.pos.x;
            rewardPos.y += this->actor.world.pos.y;
            rewardPos.z += this->actor.world.pos.z;

            this->currentReward = EnTk_ChooseReward(this);
            if (this->currentReward == 3) {
                /*
                 * Upgrade the purple rupee reward to the heart piece if this
                 * is the first grand prize dig.
                 */
                if (!GET_ITEMGETINF(ITEMGETINF_1C)) {
                    SET_ITEMGETINF(ITEMGETINF_1C);
                    this->currentReward = 4;
                }
            }

            Item_DropCollectible(play, &rewardPos, rewardParams[this->currentReward]);
        }
    }

    if (this->skelAnime.curFrame >= 32.0f && this->rewardTimer == 10) {
        /* Play a reward sound effect shortly after digging */
        if (this->validDigHere == 0) {
            /* Bad dig spot */
            Actor_PlaySfx(&this->actor, NA_SE_SY_ERROR);
        } else if (this->currentReward == 4) {
            /* Heart piece */
            Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            /* Rupee */
            Actor_PlaySfx(&this->actor, NA_SE_SY_TRE_BOX_APPEAR);
        }
    }
    this->rewardTimer++;

    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        if (this->currentReward < 0) {
            /* "Nope, nothing here!" */
            Message_StartTextbox(play, 0x501A, NULL);
        } else {
            Message_CloseTextbox(play);
        }

        EnTk_RestAnim(this, play);

        this->currentReward = -1;
        this->validDigHere = 0;
        this->actionFunc = EnTk_Rest;
    }
}

void EnTk_Update(Actor* thisx, PlayState* play) {
    EnTk* this = (EnTk*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);

    SkelAnime_Update(&this->skelAnime);

    Actor_MoveXZGravity(&this->actor);

    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    this->actionFunc(this, play);

    EnTkEff_Update(this);

    EnTk_UpdateEyes(this);
}

void func_80B1D200(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_en_tk.c", 1188);

    gSPDisplayList(POLY_OPA_DISP++, gDampeShovelDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tk.c", 1190);
}

s32 EnTk_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnTk* this = (EnTk*)thisx;

    switch (limbIndex) {
        /* Limb 15 - Head */
        case 15:
            this->h_21E = rot->y;
            break;
        /* Limb 16 - Jaw */
        case 16:
            this->h_21E += rot->y;
            rot->y += this->headRot;
            break;
    }

    return false;
}

void EnTk_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnTk* this = (EnTk*)thisx;
    Vec3f sp28 = { 0.0f, 0.0f, 4600.0f };
    Vec3f sp1C = { 0.0f, 0.0f, 0.0f };

    /* Limb 16 - Jaw */
    if (limbIndex == 16) {
        Matrix_MultVec3f(&sp1C, &this->actor.focus.pos);
    }

    /* Limb 14 - Neck */
    if (limbIndex == 14) {
        Matrix_MultVec3f(&sp28, &this->v3f_304);
        func_80B1D200(play);
    }
}

void EnTk_Draw(Actor* thisx, PlayState* play) {
    static void* sEyesSegments[] = {
        gDampeEyeOpenTex,
        gDampeEyeHalfTex,
        gDampeEyeClosedTex,
    };
    EnTk* this = (EnTk*)thisx;

    Matrix_Push();
    EnTkEff_Draw(this, play);
    Matrix_Pop();

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tk.c", 1294);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->eyeTextureIdx]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTk_OverrideLimbDraw, EnTk_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tk.c", 1312);
}
