#include "z_en_bom_bowl_pit.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

#define FLAGS ACTOR_FLAG_4

void EnBomBowlPit_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBomBowlPit_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBomBowlPit_Update(Actor* thisx, GlobalContext* globalCtx);

void EnBomBowlPit_SetupDetectHit(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_DetectHit(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_CameraDollyIn(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_SpawnPrize(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_SetupGivePrize(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_GivePrize(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_WaitTillPrizeGiven(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_Reset(EnBomBowlPit* this, GlobalContext* globalCtx);

static s32 sGetItemIds[] = { GI_BOMB_BAG_30, GI_HEART_PIECE, GI_BOMBCHUS_10, GI_BOMBS_1, GI_RUPEE_PURPLE };

const ActorInit En_Bom_Bowl_Pit_InitVars = {
    ACTOR_EN_BOM_BOWL_PIT,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBomBowlPit),
    (ActorFunc)EnBomBowlPit_Init,
    (ActorFunc)EnBomBowlPit_Destroy,
    (ActorFunc)EnBomBowlPit_Update,
    NULL,
};

void EnBomBowlPit_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlPit* this = (EnBomBowlPit*)thisx;

    this->actionFunc = EnBomBowlPit_SetupDetectHit;
}

void EnBomBowlPit_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnBomBowlPit_SetupDetectHit(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if (this->start != 0) {
        this->start = this->status = 0;
        this->actionFunc = EnBomBowlPit_DetectHit;
    }
}

void EnBomBowlPit_DetectHit(EnBomBowlPit* this, GlobalContext* globalCtx) {
    EnBomChu* chu;
    Vec3f chuPosDiff;

    if (globalCtx->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_CHU_BOWLING) {
        chu = (EnBomChu*)globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;

        while (chu != NULL) {
            if ((&chu->actor == &this->actor) || (chu->actor.id != ACTOR_EN_BOM_CHU)) {
                chu = (EnBomChu*)chu->actor.next;
                continue;
            }

            chuPosDiff.x = chu->actor.world.pos.x - this->actor.world.pos.x;
            chuPosDiff.y = chu->actor.world.pos.y - this->actor.world.pos.y;
            chuPosDiff.z = chu->actor.world.pos.z - this->actor.world.pos.z;

            if (((fabsf(chuPosDiff.x) < 40.0f) || (BREG(2))) && ((fabsf(chuPosDiff.y) < 40.0f) || (BREG(2))) &&
                ((fabsf(chuPosDiff.z) < 40.0f) || (BREG(2)))) {
                func_8002DF54(globalCtx, NULL, 8);
                chu->timer = 1;

                this->subCamId = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, CAM_ID_MAIN, CAM_STAT_WAIT);
                Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);

                this->subCamAtMaxVelFrac.x = this->subCamAtMaxVelFrac.y = this->subCamAtMaxVelFrac.z = 0.1f;
                this->subCamEyeMaxVelFrac.x = this->subCamEyeMaxVelFrac.y = this->subCamEyeMaxVelFrac.z = 0.1f;

                this->subCamAt.x = this->viewAt.x = globalCtx->view.at.x;
                this->subCamAt.y = this->viewAt.y = globalCtx->view.at.y;
                this->subCamAt.z = this->viewAt.z = globalCtx->view.at.z;

                this->subCamEye.x = this->viewEye.x = globalCtx->view.eye.x;
                this->subCamEye.y = this->viewEye.y = globalCtx->view.eye.y;
                this->subCamEye.z = this->viewEye.z = globalCtx->view.eye.z;

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

                Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);
                this->actor.textId = 0xF;
                Message_StartTextbox(globalCtx, this->actor.textId, NULL);
                this->unk_154 = TEXT_STATE_EVENT;
                func_80078884(NA_SE_EV_HIT_SOUND);
                func_8002DF54(globalCtx, NULL, 8);
                this->status = 1;
                this->actionFunc = EnBomBowlPit_CameraDollyIn;
                break;
            } else {
                chu = (EnBomChu*)chu->actor.next;
            }
        }
    }
}

void EnBomBowlPit_CameraDollyIn(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if (this->subCamId != SUB_CAM_ID_DONE) {
        Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamAtMaxVelFrac.x, this->subCamAtVel.x);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamAtMaxVelFrac.y, this->subCamAtVel.y);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamAtMaxVelFrac.z, this->subCamAtVel.z);
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamEyeMaxVelFrac.x, this->subCamEyeVel.x);
        Math_ApproachF(&this->subCamEye.y, this->subCamEyeNext.y, this->subCamEyeMaxVelFrac.y, this->subCamEyeVel.y);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamEyeMaxVelFrac.z, this->subCamEyeVel.z);
    }

    Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);

    if ((this->unk_154 == Message_GetState(&globalCtx->msgCtx)) && Message_ShouldAdvance(globalCtx)) {
        Message_CloseTextbox(globalCtx);
    }

    if ((fabsf(this->subCamEye.x - this->subCamEyeNext.x) < 5.0f) &&
        (fabsf(this->subCamEye.y - this->subCamEyeNext.y) < 5.0f) &&
        (fabsf(this->subCamEye.z - this->subCamEyeNext.z) < 5.0f) &&
        (fabsf(this->subCamAt.x - this->subCamAtNext.x) < 5.0f) &&
        (fabsf(this->subCamAt.y - this->subCamAtNext.y) < 5.0f) &&
        (fabsf(this->subCamAt.z - this->subCamAtNext.z) < 5.0f)) {
        Message_CloseTextbox(globalCtx);
        this->timer = 30;
        this->actionFunc = EnBomBowlPit_SpawnPrize;
    }
}

void EnBomBowlPit_SpawnPrize(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if (this->timer == 0) {
        this->exItem = (EnExItem*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_ITEM,
                                                     this->actor.world.pos.x, this->actor.world.pos.y,
                                                     this->actor.world.pos.z - 70.0f, 0, 0, 0, this->prizeIndex);
        if (this->exItem != NULL) {
            this->actionFunc = EnBomBowlPit_SetupGivePrize;
        }
    }
}

void EnBomBowlPit_SetupGivePrize(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if (this->exItemDone != 0) {
        switch (this->prizeIndex) {
            case EXITEM_BOMB_BAG_BOWLING:
                SET_ITEMGETINF(ITEMGETINF_11);
                break;
            case EXITEM_HEART_PIECE_BOWLING:
                SET_ITEMGETINF(ITEMGETINF_12);
                break;
        }

        Gameplay_ClearCamera(globalCtx, this->subCamId);
        Gameplay_ChangeCameraStatus(globalCtx, CAM_ID_MAIN, CAM_STAT_ACTIVE);
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = EnBomBowlPit_GivePrize;
    }
}

void EnBomBowlPit_GivePrize(EnBomBowlPit* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    func_8002DF54(globalCtx, NULL, 7);
    this->getItemId = sGetItemIds[this->prizeIndex];

    if ((this->getItemId == GI_BOMB_BAG_30) && (CUR_CAPACITY(UPG_BOMB_BAG) == 30)) {
        this->getItemId = GI_BOMB_BAG_40;
    }

    player->stateFlags1 &= ~PLAYER_STATE1_29;
    this->actor.parent = NULL;
    func_8002F434(&this->actor, globalCtx, this->getItemId, 2000.0f, 1000.0f);
    player->stateFlags1 |= PLAYER_STATE1_29;
    this->actionFunc = EnBomBowlPit_WaitTillPrizeGiven;
}

void EnBomBowlPit_WaitTillPrizeGiven(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = EnBomBowlPit_Reset;
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemId, 2000.0f, 1000.0f);
    }
}

void EnBomBowlPit_Reset(EnBomBowlPit* this, GlobalContext* globalCtx) {
    if ((Message_GetState(&globalCtx->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(globalCtx)) {
        // "Normal termination"/"completion"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        if (this->getItemId == GI_HEART_PIECE) {
            gSaveContext.healthAccumulator = 0x140;
            // "Ah recovery!" (?)
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ あぁ回復！ ☆☆☆☆☆ \n" VT_RST);
        }
        this->exItemDone = 0;
        this->status = 2;
        this->actionFunc = EnBomBowlPit_SetupDetectHit;
    }
}

void EnBomBowlPit_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlPit* this = (EnBomBowlPit*)thisx;

    this->actionFunc(this, globalCtx);

    if (this->timer != 0) {
        this->timer--;
    }
}
