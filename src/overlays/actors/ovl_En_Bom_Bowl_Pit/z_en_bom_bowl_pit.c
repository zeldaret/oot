/*
 * File: z_en_bom_bowl_pit.c
 * Overlay: ovl_En_Bom_Bowl_Pit
 * Description: Bowling Alley bombchu detector for the final wall
 */

#include "z_en_bom_bowl_pit.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

#include "printf.h"
#include "regs.h"
#include "camera.h"
#include "play_state.h"
#include "player.h"
#include "save.h"
#include "sfx.h"
#include "z_lib.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnBomBowlPit_Init(Actor* thisx, PlayState* play);
void EnBomBowlPit_Destroy(Actor* thisx, PlayState* play);
void EnBomBowlPit_Update(Actor* thisx, PlayState* play);

void EnBomBowlPit_WaitGameStarted(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_WaitHit(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_WaitCutscene(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_SpawnReward(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_WaitRewardFinishedAppearing(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_GiveReward(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_WaitRewardGiven(EnBomBowlPit* this, PlayState* play);
void EnBomBowlPit_WaitRewardText(EnBomBowlPit* this, PlayState* play);

static s32 sGetItemIdRewards[5] = {
    GI_BOMB_BAG_30,  // EXITEM_BOMB_BAG_BOWLING
    GI_HEART_PIECE,  // EXITEM_HEART_PIECE_BOWLING
    GI_BOMBCHUS_10,  // EXITEM_BOMBCHUS_BOWLING
    GI_BOMBS_1,      // EXITEM_BOMBS_BOWLING
    GI_RUPEE_PURPLE, // EXITEM_PURPLE_RUPEE_BOWLING
};

ActorProfile En_Bom_Bowl_Pit_Profile = {
    /**/ ACTOR_EN_BOM_BOWL_PIT,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnBomBowlPit),
    /**/ EnBomBowlPit_Init,
    /**/ EnBomBowlPit_Destroy,
    /**/ EnBomBowlPit_Update,
    /**/ NULL,
};

void EnBomBowlPit_Init(Actor* thisx, PlayState* play) {
    EnBomBowlPit* this = (EnBomBowlPit*)thisx;

    this->actionFunc = EnBomBowlPit_WaitGameStarted;
}

void EnBomBowlPit_Destroy(Actor* thisx, PlayState* play) {
}

void EnBomBowlPit_WaitGameStarted(EnBomBowlPit* this, PlayState* play) {
    if (this->gameStarted) {
        this->gameStarted = this->rewardState = 0; // false, EN_BOM_BOWL_PIT_REWARD_STATE_WAIT_HIT
        this->actionFunc = EnBomBowlPit_WaitHit;
    }
}

void EnBomBowlPit_WaitHit(EnBomBowlPit* this, PlayState* play) {
    Actor* explosive;
    EnBomChu* bombchu;
    Vec3f diff;
    Actor* thisx = &this->actor;

    if (play->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_CHU_BOWLING) {
        explosive = play->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
        while (explosive != NULL) {
            if ((explosive == thisx) || (explosive->id != ACTOR_EN_BOM_CHU)) {
                explosive = explosive->next;
                continue;
            }
            diff.x = explosive->world.pos.x - this->actor.world.pos.x;
            diff.y = explosive->world.pos.y - this->actor.world.pos.y;
            diff.z = explosive->world.pos.z - this->actor.world.pos.z;
            if (((fabsf(diff.x) < 40.0f) || (BREG(2) != 0)) && ((fabsf(diff.y) < 40.0f) || (BREG(2) != 0)) &&
                ((fabsf(diff.z) < 40.0f) || (BREG(2) != 0))) {
                bombchu = (EnBomChu*)explosive;
                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                bombchu->timer = 1;
                this->subCamId = Play_CreateSubCamera(play);
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
                this->subCamAtMaxVelFrac.x = this->subCamAtMaxVelFrac.y = this->subCamAtMaxVelFrac.z = 0.1f;
                this->subCamEyeMaxVelFrac.x = this->subCamEyeMaxVelFrac.y = this->subCamEyeMaxVelFrac.z = 0.1f;
                this->subCamAt.x = this->viewAt.x = play->view.at.x;
                this->subCamAt.y = this->viewAt.y = play->view.at.y;
                this->subCamAt.z = this->viewAt.z = play->view.at.z;
                this->subCamEye.x = this->viewEye.x = play->view.eye.x;
                this->subCamEye.y = this->viewEye.y = play->view.eye.y;
                this->subCamEye.z = this->viewEye.z = play->view.eye.z;
                this->subCamAtNext.x = 20.0f;
                this->subCamAtNext.y = 100.0f;
                this->subCamAtNext.z = -800.0f;
                this->subCamEyeNext.x = 20.0f;
                this->subCamEyeNext.y = 50.0f;
                this->subCamEyeNext.z = -485.0f;
                this->subCamEyeVel.x = fabsf(this->subCamEye.x - this->subCamEyeNext.x) * 0.02f;
                this->subCamEyeVel.y = fabsf(this->subCamEye.y - this->subCamEyeNext.y) * 0.02f;
                this->subCamEyeVel.z = fabsf(this->subCamEye.z - this->subCamEyeNext.z) * 0.02f;
                this->subCamAtVel.x = fabsf(this->subCamAt.x - this->subCamAtNext.x) * 0.02f;
                this->subCamAtVel.y = fabsf(this->subCamAt.y - this->subCamAtNext.y) * 0.02f;
                this->subCamAtVel.z = fabsf(this->subCamAt.z - this->subCamAtNext.z) * 0.02f;
                Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
                this->actor.textId = 0xF;
                Message_StartTextbox(play, this->actor.textId, NULL);
                this->waitMessageState = TEXT_STATE_EVENT;
                Sfx_PlaySfxCentered(NA_SE_EV_HIT_SOUND);
                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                this->rewardState = EN_BOM_BOWL_PIT_REWARD_STATE_GIVING_REWARD;
                this->actionFunc = EnBomBowlPit_WaitCutscene;
                return;
            }
            explosive = explosive->next;
        }
    }
}

void EnBomBowlPit_WaitCutscene(EnBomBowlPit* this, PlayState* play) {
    if (this->subCamId != SUB_CAM_ID_DONE) {
        Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamAtMaxVelFrac.x, this->subCamAtVel.x);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamAtMaxVelFrac.y, this->subCamAtVel.y);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamAtMaxVelFrac.z, this->subCamAtVel.z);
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamEyeMaxVelFrac.x, this->subCamEyeVel.x);
        Math_ApproachF(&this->subCamEye.y, this->subCamEyeNext.y, this->subCamEyeMaxVelFrac.y, this->subCamEyeVel.y);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamEyeMaxVelFrac.z, this->subCamEyeVel.z);
    }
    Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
    }
    if ((fabsf(this->subCamEye.x - this->subCamEyeNext.x) < 5.0f) &&
        (fabsf(this->subCamEye.y - this->subCamEyeNext.y) < 5.0f) &&
        (fabsf(this->subCamEye.z - this->subCamEyeNext.z) < 5.0f) &&
        (fabsf(this->subCamAt.x - this->subCamAtNext.x) < 5.0f) &&
        (fabsf(this->subCamAt.y - this->subCamAtNext.y) < 5.0f) &&
        (fabsf(this->subCamAt.z - this->subCamAtNext.z) < 5.0f)) {
        Message_CloseTextbox(play);
        this->timer = 30;
        this->actionFunc = EnBomBowlPit_SpawnReward;
    }
}

void EnBomBowlPit_SpawnReward(EnBomBowlPit* this, PlayState* play) {
    if (this->timer == 0) {
        this->rewardItem =
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z - 70.0f, 0, 0, 0, this->reward);
        if (this->rewardItem != NULL) {
            this->actionFunc = EnBomBowlPit_WaitRewardFinishedAppearing;
        }
    }
}

void EnBomBowlPit_WaitRewardFinishedAppearing(EnBomBowlPit* this, PlayState* play) {
    if (this->hasRewardFinishedAppearing) {
        switch (this->reward) {
            case EXITEM_BOMB_BAG_BOWLING:
                SET_ITEMGETINF(ITEMGETINF_BOWLING_BOMB_BAG);
                break;
            case EXITEM_HEART_PIECE_BOWLING:
                SET_ITEMGETINF(ITEMGETINF_BOWLING_HEART_PIECE);
                break;
        }
        Play_ClearCamera(play, this->subCamId);
        Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_ACTIVE);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = EnBomBowlPit_GiveReward;
    }
}

void EnBomBowlPit_GiveReward(EnBomBowlPit* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
    this->rewardGetItemId = sGetItemIdRewards[this->reward];
    if ((this->rewardGetItemId == GI_BOMB_BAG_30) && (CUR_CAPACITY(UPG_BOMB_BAG) == 30)) {
        this->rewardGetItemId = GI_BOMB_BAG_40;
    }
    player->stateFlags1 &= ~PLAYER_STATE1_29;
    this->actor.parent = NULL;
    Actor_OfferGetItem(&this->actor, play, this->rewardGetItemId, 2000.0f, 1000.0f);
    player->stateFlags1 |= PLAYER_STATE1_29;
    this->actionFunc = EnBomBowlPit_WaitRewardGiven;
}

void EnBomBowlPit_WaitRewardGiven(EnBomBowlPit* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnBomBowlPit_WaitRewardText;
        return;
    }
    Actor_OfferGetItem(&this->actor, play, this->rewardGetItemId, 2000.0f, 1000.0f);
}

void EnBomBowlPit_WaitRewardText(EnBomBowlPit* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        if (this->rewardGetItemId == GI_HEART_PIECE) {
            gSaveContext.healthAccumulator = 0x140;
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ あぁ回復！ ☆☆☆☆☆ \n" VT_RST);
        }
        this->hasRewardFinishedAppearing = false;
        this->rewardState = EN_BOM_BOWL_PIT_REWARD_STATE_REWARD_GIVEN;
        this->actionFunc = EnBomBowlPit_WaitGameStarted;
    }
}

void EnBomBowlPit_Update(Actor* thisx, PlayState* play) {
    EnBomBowlPit* this = (EnBomBowlPit*)thisx;

    this->actionFunc(this, play);
    if (this->timer != 0) {
        this->timer--;
    }
}
