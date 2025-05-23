/*
 * File: z_en_dnt_jiji.c
 * Overlay: ovl_En_Dnt_Jiji
 * Description: Forest Stage scrub leader
 */

#include "z_en_dnt_jiji.h"
#include "assets/objects/object_dns/object_dns.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnDntJiji_Init(Actor* thisx, PlayState* play);
void EnDntJiji_Destroy(Actor* thisx, PlayState* play);
void EnDntJiji_Update(Actor* thisx, PlayState* play);
void EnDntJiji_Draw(Actor* thisx, PlayState* play);

void EnDntJiji_SetFlower(EnDntJiji* this, PlayState* play);

void EnDntJiji_SetupWait(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupUnburrow(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupWalk(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupCower(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupGivePrize(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupHide(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupReturn(EnDntJiji* this, PlayState* play);

void EnDntJiji_Wait(EnDntJiji* this, PlayState* play);
void EnDntJiji_Up(EnDntJiji* this, PlayState* play);
void EnDntJiji_Unburrow(EnDntJiji* this, PlayState* play);
void EnDntJiji_Walk(EnDntJiji* this, PlayState* play);
void EnDntJiji_Burrow(EnDntJiji* this, PlayState* play);
void EnDntJiji_Cower(EnDntJiji* this, PlayState* play);
void EnDntJiji_SetupTalk(EnDntJiji* this, PlayState* play);
void EnDntJiji_Talk(EnDntJiji* this, PlayState* play);
void EnDntJiji_GivePrize(EnDntJiji* this, PlayState* play);
void EnDntJiji_Hide(EnDntJiji* this, PlayState* play);
void EnDntJiji_Return(EnDntJiji* this, PlayState* play);

ActorProfile En_Dnt_Jiji_Profile = {
    /**/ ACTOR_EN_DNT_JIJI,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_DNS,
    /**/ sizeof(EnDntJiji),
    /**/ EnDntJiji_Init,
    /**/ EnDntJiji_Destroy,
    /**/ EnDntJiji_Update,
    /**/ EnDntJiji_Draw,
};

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
    { 30, 80, 0, { 0, 0, 0 } },
};

void EnDntJiji_Init(Actor* thisx, PlayState* play) {
    EnDntJiji* this = (EnDntJiji*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    SkelAnime_Init(play, &this->skelAnime, &gDntJijiSkel, &gDntJijiBurrowAnim, this->jointTable, this->morphTable, 13);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->stage = (EnDntDemo*)this->actor.parent;
    PRINTF("\n\n");
    // "Deku Scrub mask show elder"
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ デグナッツお面品評会長老 ☆☆☆☆☆ %x\n" VT_RST, this->stage);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actionFunc = EnDntJiji_SetFlower;
    this->actor.gravity = -2.0f;
}

void EnDntJiji_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    EnDntJiji* this = (EnDntJiji*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnDntJiji_SetFlower(EnDntJiji* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->flowerPos = this->actor.world.pos;
        this->actionFunc = EnDntJiji_SetupWait;
    }
}

void EnDntJiji_SetupWait(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiBurrowAnim);
    Animation_Change(&this->skelAnime, &gDntJijiBurrowAnim, 0.0f, 0.0f, this->endFrame, ANIMMODE_LOOP, -10.0f);
    this->skelAnime.curFrame = 8.0f;
    this->isSolid = this->action = DNT_LEADER_ACTION_NONE;
    this->actionFunc = EnDntJiji_Wait;
}

void EnDntJiji_Wait(EnDntJiji* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    if ((this->timer == 1) && (this->actor.xzDistToPlayer < 150.0f) && !Play_InCsMode(play) &&
        !(player->stateFlags1 & PLAYER_STATE1_CARRYING_ACTOR)) {
        OnePointCutscene_Init(play, 2230, -99, &this->actor, CAM_ID_MAIN);
        this->timer = 0;
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = EnDntJiji_SetupUnburrow;
    }
}

void EnDntJiji_SetupUp(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiUpAnim);
    Animation_Change(&this->skelAnime, &gDntJijiUpAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_ONCE, -10.0f);
    EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, 6.0f, 0, 15, 5, 20, HAHEN_OBJECT_DEFAULT, 10, NULL);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_UP);
    this->actionFunc = EnDntJiji_Up;
}

void EnDntJiji_Up(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x1388, 0);
    if (this->actor.xzDistToPlayer < 150.0f) {
        this->actionFunc = EnDntJiji_SetupCower;
    }
}

void EnDntJiji_SetupUnburrow(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiUnburrowAnim);
    Animation_Change(&this->skelAnime, &gDntJijiUnburrowAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_ONCE, -10.0f);
    EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, 6.0f, 0, 15, 5, 20, HAHEN_OBJECT_DEFAULT, 10, NULL);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_UP);
    this->actionFunc = EnDntJiji_Unburrow;
}

void EnDntJiji_Unburrow(EnDntJiji* this, PlayState* play) {
    f32 frame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->endFrame <= frame) {
        if (this->action != DNT_LEADER_ACTION_ATTACK) {
            this->actionFunc = EnDntJiji_SetupWalk;
        } else {
            this->actionFunc = EnDntJiji_SetupReturn;
        }
    }
}

void EnDntJiji_SetupWalk(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiWalkAnim);
    Animation_Change(&this->skelAnime, &gDntJijiWalkAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_LOOP, -10.0f);
    this->actor.speed = 1.0f;
    this->isSolid = true;
    this->unburrow = true;
    this->actionFunc = EnDntJiji_Walk;
}

void EnDntJiji_Walk(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x3E8, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    Math_ApproachF(&this->actor.speed, 1.0f, 0.2f, 0.4f);
    if (this->sfxTimer == 0) {
        this->sfxTimer = 5;
        Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->actor.velocity.y = 9.0f;
        this->actor.speed = 3.0f;
    }
    if (this->actor.xzDistToPlayer < 100.0f) {
        if (CUR_UPG_VALUE(UPG_DEKU_STICKS) == 1) {
            this->getItemId = GI_DEKU_STICK_UPGRADE_20;
        } else {
            this->getItemId = GI_DEKU_STICK_UPGRADE_30;
        }
        this->actor.textId = 0x104D;
        Message_StartTextbox(play, this->actor.textId, NULL);
        this->actor.speed = 0.0f;
        this->unused = 5;
        this->actionFunc = EnDntJiji_Talk;
    }
}

void EnDntJiji_SetupBurrow(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiBurrowAnim);
    Animation_Change(&this->skelAnime, &gDntJijiBurrowAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_ONCE, -10.0f);
    EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, 6.0f, 0, 15, 5, 20, HAHEN_OBJECT_DEFAULT, 10, NULL);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_UP);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_DOWN);
    this->actionFunc = EnDntJiji_Burrow;
}

void EnDntJiji_Burrow(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
}

void EnDntJiji_SetupCower(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiCowerAnim);
    Animation_Change(&this->skelAnime, &gDntJijiCowerAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_ONCE, -10.0f);
    EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, 3.0f, 0, 9, 3, 10, HAHEN_OBJECT_DEFAULT, 10, NULL);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_UP);

    if ((CUR_UPG_VALUE(UPG_DEKU_NUTS) == 1) || (CUR_UPG_VALUE(UPG_DEKU_NUTS) == 0)) {
        this->getItemId = GI_DEKU_NUT_UPGRADE_30;
    } else {
        this->getItemId = GI_DEKU_NUT_UPGRADE_40;
    }
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.textId = 0x10DB;
    this->unused = 5;
    this->actionFunc = EnDntJiji_Cower;
}

void EnDntJiji_Cower(EnDntJiji* this, PlayState* play) {
    f32 frame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x1388, 0);
    if (frame >= this->endFrame) {
        if (Actor_TalkOfferAccepted(&this->actor, play)) {
            this->actionFunc = EnDntJiji_SetupTalk;
        } else {
            Actor_OfferTalk(&this->actor, play, 100.0f);
        }
    }
}

void EnDntJiji_SetupTalk(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiTalkAnim);
    Animation_Change(&this->skelAnime, &gDntJijiTalkAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = EnDntJiji_Talk;
}

void EnDntJiji_Talk(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x1388, 0);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
        Message_CloseTextbox(play);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actor.parent = NULL;
        Actor_OfferGetItem(&this->actor, play, this->getItemId, 400.0f, 200.0f);
        this->actionFunc = EnDntJiji_SetupGivePrize;
    }
}

void EnDntJiji_SetupGivePrize(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnDntJiji_GivePrize;
    } else {
        Actor_OfferGetItem(&this->actor, play, this->getItemId, 400.0f, 200.0f);
    }
}

void EnDntJiji_GivePrize(EnDntJiji* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        if ((this->getItemId == GI_DEKU_NUT_UPGRADE_30) || (this->getItemId == GI_DEKU_NUT_UPGRADE_40)) {
            // "nut"
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            PRINTF("実 \n");
            SET_ITEMGETINF(ITEMGETINF_FOREST_STAGE_NUT_UPGRADE);
        } else {
            // "stick"
            PRINTF("棒 \n");
            PRINTF("棒 \n");
            PRINTF("棒 \n");
            PRINTF("棒 \n");
            PRINTF("棒 \n");
            PRINTF("棒 \n");
            SET_ITEMGETINF(ITEMGETINF_FOREST_STAGE_STICK_UPGRADE);
        }
        this->actor.textId = 0;
        if ((this->stage != NULL) && (this->stage->actor.update != NULL)) {
            this->stage->action = DNT_ACTION_NONE;
            if (!this->unburrow) {
                this->stage->leaderSignal = DNT_SIGNAL_HIDE;
            } else {
                this->stage->leaderSignal = DNT_SIGNAL_RETURN;
            }
        }
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        if (!this->unburrow) {
            this->actionFunc = EnDntJiji_SetupHide;
        } else {
            this->actionFunc = EnDntJiji_SetupReturn;
        }
    }
}

void EnDntJiji_SetupHide(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiHideAnim);
    Animation_Change(&this->skelAnime, &gDntJijiHideAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_ONCE, -10.0f);
    this->actionFunc = EnDntJiji_Hide;
}

void EnDntJiji_Hide(EnDntJiji* this, PlayState* play) {
    f32 frame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->endFrame <= frame) {
        this->actionFunc = EnDntJiji_SetupWait;
    }
}

void EnDntJiji_SetupReturn(EnDntJiji* this, PlayState* play) {
    this->endFrame = (f32)Animation_GetLastFrame(&gDntJijiWalkAnim);
    Animation_Change(&this->skelAnime, &gDntJijiWalkAnim, 1.0f, 0.0f, this->endFrame, ANIMMODE_LOOP, -10.0f);
    this->actor.speed = 2.0f;
    this->isSolid = this->unburrow = true;
    this->actionFunc = EnDntJiji_Return;
}

void EnDntJiji_Return(EnDntJiji* this, PlayState* play) {
    f32 dx;
    f32 dz;

    SkelAnime_Update(&this->skelAnime);
    dx = this->flowerPos.x - this->actor.world.pos.x;
    dz = this->flowerPos.z - this->actor.world.pos.z;
    Math_SmoothStepToS(&this->actor.shape.rot.y, RAD_TO_BINANG(Math_FAtan2F(dx, dz)), 1, 0xBB8, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->actor.velocity.y = 9.0f;
        this->actor.speed = 3.0f;
    }
    if (this->sfxTimer == 0) {
        this->sfxTimer = 3;
        Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((fabsf(dx) < 5.0f) && (fabsf(dz) < 5.0f)) {
        this->actor.world.pos.x = this->flowerPos.x;
        this->actor.world.pos.z = this->flowerPos.z;
        if (this->attackFlag) {
            if ((this->stage->actor.update != NULL) && (this->stage->leaderSignal == DNT_SIGNAL_NONE)) {
                this->stage->leaderSignal = DNT_SIGNAL_HIDE;
                this->stage->action = DNT_ACTION_ATTACK;
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 8, NA_BGM_ENEMY);
            }
        }
        this->actor.speed = 0.0f;
        this->isSolid = 0;
        this->actionFunc = EnDntJiji_SetupBurrow;
    }
}

void EnDntJiji_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnDntJiji* this = (EnDntJiji*)thisx;

    Actor_SetScale(&this->actor, 0.015f);
    this->unkTimer++;
    if (BREG(0)) {
        // "time"
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 時間 ☆☆☆☆☆ %d\n" VT_RST, this->timer);
    }
    if ((this->timer > 1) && (this->timer != 0)) {
        this->timer--;
    }
    if (this->sfxTimer != 0) {
        this->sfxTimer--;
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    switch (this->stageSignal) {
        case DNT_LEADER_SIGNAL_UP:
            this->isSolid = true;
            this->action = DNT_LEADER_ACTION_UP;
            this->actionFunc = EnDntJiji_SetupUp;
            break;
        case DNT_LEADER_SIGNAL_BURROW:
            this->isSolid = false;
            this->action = DNT_LEADER_ACTION_NONE;
            this->actionFunc = EnDntJiji_SetupBurrow;
            break;
        case DNT_LEADER_SIGNAL_RETURN:
            this->actionFunc = EnDntJiji_SetupReturn;
            break;
        case DNT_LEADER_SIGNAL_NONE:
            break;
    }
    if (this->actor.textId != 0) {
        Actor_SetFocus(&this->actor, 30.0f);
    }
    if (this->stageSignal != DNT_LEADER_SIGNAL_NONE) {
        this->stageSignal = DNT_LEADER_SIGNAL_NONE;
    }
    if (this->blinkTimer == 0) {
        this->eyeState++;
        if (this->eyeState > 2) {
            this->eyeState = 0;
            this->blinkTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    if (this->isSolid != 0) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnDntJiji_Draw(Actor* thisx, PlayState* play) {
    static void* blinkTex[] = { gDntJijiEyeOpenTex, gDntJijiEyeHalfTex, gDntJijiEyeShutTex };
    EnDntJiji* this = (EnDntJiji*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dnt_jiji.c", 1019);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Matrix_Push();
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(blinkTex[this->eyeState]));
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, this);
    Matrix_Pop();
    Matrix_Translate(this->flowerPos.x, this->flowerPos.y, this->flowerPos.z, MTXMODE_NEW);
    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dnt_jiji.c", 1040);
    gSPDisplayList(POLY_OPA_DISP++, gDntJijiFlowerDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dnt_jiji.c", 1043);
}
