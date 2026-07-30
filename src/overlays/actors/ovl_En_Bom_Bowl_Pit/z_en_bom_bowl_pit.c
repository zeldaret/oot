#include "z_en_bom_bowl_pit.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

#include "printf.h"
#include "regs.h"
#include "camera.h"
#include "play_state.h"
#include "player.h"
#include "save.h"
#include "z_lib.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnBomBowlPit_Init(Actor* thisx, PlayState* play);
void EnBomBowlPit_Destroy(Actor* thisx, PlayState* play);
void EnBomBowlPit_Update(Actor* thisx, PlayState* play);

void func_809C4E60(EnBomBowlPit* this, PlayState* play);
void func_809C4E8C(EnBomBowlPit* this, PlayState* play);
void func_809C5184(EnBomBowlPit* this, PlayState* play);
void func_809C5360(EnBomBowlPit* this, PlayState* play);
void func_809C53F0(EnBomBowlPit* this, PlayState* play);
void func_809C54A8(EnBomBowlPit* this, PlayState* play);
void func_809C55B0(EnBomBowlPit* this, PlayState* play);
void func_809C5608(EnBomBowlPit* this, PlayState* play);

static s32 D_809C56E0[5] = {
    GI_BOMB_BAG_30, GI_HEART_PIECE, GI_BOMBCHUS_10, GI_BOMBS_1, GI_RUPEE_PURPLE,
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

    this->unk14C = func_809C4E60;
}

void EnBomBowlPit_Destroy(Actor* thisx, PlayState* play) {
}

void func_809C4E60(EnBomBowlPit* this, PlayState* play) {
    if (this->unk15C != 0) {
        this->unk15C = this->unk164 = 0;
        this->unk14C = func_809C4E8C;
    }
}

void func_809C4E8C(EnBomBowlPit* this, PlayState* play) {
    Actor* var_v1;
    EnBomChu* sp24;
    Vec3f diff;
    Actor* thisx = &this->actor;

    if (play->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_CHU_BOWLING) {
        var_v1 = play->actorCtx.actorLists[3].head;
        while (var_v1 != NULL) {
            if ((var_v1 == thisx) || (var_v1->id != ACTOR_EN_BOM_CHU)) {
                var_v1 = var_v1->next;
                continue;
            }
            diff.x = var_v1->world.pos.x - this->actor.world.pos.x;
            diff.y = var_v1->world.pos.y - this->actor.world.pos.y;
            diff.z = var_v1->world.pos.z - this->actor.world.pos.z;
            if (((fabsf(diff.x) < 40.0f) || (gRegEditor->data[0x962] != 0)) &&
                ((fabsf(diff.y) < 40.0f) || (gRegEditor->data[0x962] != 0)) &&
                ((fabsf(diff.z) < 40.0f) || (gRegEditor->data[0x962] != 0))) {
                sp24 = (EnBomChu*)var_v1;
                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                sp24->timer = 1;
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
                this->subCamEyeVel.x = fabsf(this->subCamEye.x - 20.0f) * 0.02f;
                this->subCamEyeVel.y = fabsf(this->subCamEye.y - 50.0f) * 0.02f;
                this->subCamEyeVel.z = fabsf(this->subCamEye.z - -485.0f) * 0.02f;
                this->subCamAtVel.x = fabsf(this->subCamAt.x - this->subCamAtNext.x) * 0.02f;
                this->subCamAtVel.y = fabsf(this->subCamAt.y - this->subCamAtNext.y) * 0.02f;
                this->subCamAtVel.z = fabsf(this->subCamAt.z - this->subCamAtNext.z) * 0.02f;
                Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
                this->actor.textId = 0xF;
                Message_StartTextbox(play, this->actor.textId, NULL);
                this->unk154 = 5;
                Sfx_PlaySfxCentered(0x28D3U);
                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                this->unk164 = 1;
                this->unk14C = func_809C5184;
                return;
            }
            var_v1 = var_v1->next;
        }
    }
}

void func_809C5184(EnBomBowlPit* this, PlayState* play) {
    if (this->subCamId != SUB_CAM_ID_DONE) {
        Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamAtMaxVelFrac.x, this->subCamAtVel.x);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamAtMaxVelFrac.y, this->subCamAtVel.y);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamAtMaxVelFrac.z, this->subCamAtVel.z);
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamEyeMaxVelFrac.x, this->subCamEyeVel.x);
        Math_ApproachF(&this->subCamEye.y, this->subCamEyeNext.y, this->subCamEyeMaxVelFrac.y, this->subCamEyeVel.y);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamEyeMaxVelFrac.z, this->subCamEyeVel.z);
    }
    Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    if ((this->unk154 == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
    }
    if ((fabsf(this->subCamEye.x - this->subCamEyeNext.x) < 5.0f) &&
        (fabsf(this->subCamEye.y - this->subCamEyeNext.y) < 5.0f) &&
        (fabsf(this->subCamEye.z - this->subCamEyeNext.z) < 5.0f) &&
        (fabsf(this->subCamAt.x - this->subCamAtNext.x) < 5.0f) &&
        (fabsf(this->subCamAt.y - this->subCamAtNext.y) < 5.0f) &&
        (fabsf(this->subCamAt.z - this->subCamAtNext.z) < 5.0f)) {
        Message_CloseTextbox(play);
        this->unk158 = 0x1E;
        this->unk14C = func_809C5360;
    }
}

void func_809C5360(EnBomBowlPit* this, PlayState* play) {
    if (this->unk158 == 0) {
        this->unk1E0 =
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z - 70.0f, 0, 0, 0, this->unk15A);
        if (this->unk1E0 != NULL) {
            this->unk14C = func_809C53F0;
        }
    }
}

void func_809C53F0(EnBomBowlPit* this, PlayState* play) {
    if (this->unk156 != 0) {
        switch (this->unk15A) {
            case 0:
                SET_ITEMGETINF(ITEMGETINF_11);
                break;
            case EXITEM_HEART_PIECE_BOWLING:
                SET_ITEMGETINF(ITEMGETINF_12);
                break;
        }
        Play_ClearCamera(play, this->subCamId);
        Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_ACTIVE);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->unk14C = func_809C54A8;
    }
}

void func_809C54A8(EnBomBowlPit* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
    this->unk160 = D_809C56E0[this->unk15A];
    if ((this->unk160 == GI_BOMB_BAG_30) && (CUR_CAPACITY(1) == 30)) {
        this->unk160 = GI_BOMB_BAG_40;
    }
    player->stateFlags1 &= ~PLAYER_STATE1_29;
    this->actor.parent = NULL;
    Actor_OfferGetItem(&this->actor, play, this->unk160, 2000.0f, 1000.0f);
    player->stateFlags1 |= PLAYER_STATE1_29;
    this->unk14C = func_809C55B0;
}

void func_809C55B0(EnBomBowlPit* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->unk14C = func_809C5608;
        return;
    }
    Actor_OfferGetItem(&this->actor, play, this->unk160, 2000.0f, 1000.0f);
}

void func_809C5608(EnBomBowlPit* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        PRINTF("\x1b[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n\x1b[m");
        if (this->unk160 == GI_HEART_PIECE) {
            gSaveContext.healthAccumulator = 0x140;
            PRINTF("\x1b[32m☆☆☆☆☆ あぁ回復！ ☆☆☆☆☆ \n\x1b[m");
        }
        this->unk156 = 0;
        this->unk164 = 2;
        this->unk14C = func_809C4E60;
    }
}

void EnBomBowlPit_Update(Actor* thisx, PlayState* play) {
    EnBomBowlPit* this = (EnBomBowlPit*)thisx;

    this->unk14C(this, play);
    if (this->unk158 != 0) {
        this->unk158--;
    }
}
