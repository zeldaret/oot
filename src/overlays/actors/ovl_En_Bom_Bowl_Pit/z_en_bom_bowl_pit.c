#include "z_en_bom_bowl_pit.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Bom_Chu/z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

#define FLAGS 0x00000010

#define THIS ((EnBomBowlPit*)thisx)

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
    EnBomBowlPit* this = THIS;

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

    if (globalCtx->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_FIXED1) {
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
                Gameplay_ChangeCameraStatus(globalCtx, CAM_ID_MAIN, CAM_STATUS_WAIT);
                Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STATUS_ACTIVE);

                this->unk_1C8.x = this->unk_1C8.y = this->unk_1C8.z = 0.1f;
                this->unk_1A4.x = this->unk_1A4.y = this->unk_1A4.z = 0.1f;

                this->subCamAt.x = this->unk_168.x = globalCtx->view.lookAt.x;
                this->subCamAt.y = this->unk_168.y = globalCtx->view.lookAt.y;
                this->subCamAt.z = this->unk_168.z = globalCtx->view.lookAt.z;

                this->subCamEye.x = this->unk_174.x = globalCtx->view.eye.x;
                this->subCamEye.y = this->unk_174.y = globalCtx->view.eye.y;
                this->subCamEye.z = this->unk_174.z = globalCtx->view.eye.z;

                this->subCamAtTarget.x = 20.0f;
                this->subCamAtTarget.y = 100.0f;
                this->subCamAtTarget.z = -800.0f;

                this->subCamEyeTarget.x = 20.0f;
                this->subCamEyeTarget.y = 50.0f;
                this->subCamEyeTarget.z = -485.0f;

                this->unk_1B0.x = fabsf(this->subCamEye.x - this->subCamEyeTarget.x) * 0.02f;
                this->unk_1B0.y = fabsf(this->subCamEye.y - this->subCamEyeTarget.y) * 0.02f;
                this->unk_1B0.z = fabsf(this->subCamEye.z - this->subCamEyeTarget.z) * 0.02f;

                this->unk_1D4.x = fabsf(this->subCamAt.x - this->subCamAtTarget.x) * 0.02f;
                this->unk_1D4.y = fabsf(this->subCamAt.y - this->subCamAtTarget.y) * 0.02f;
                this->unk_1D4.z = fabsf(this->subCamAt.z - this->subCamAtTarget.z) * 0.02f;

                Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);
                this->actor.textId = 0xF;
                func_8010B680(globalCtx, this->actor.textId, NULL);
                this->unk_154 = 5;
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
    if (this->subCamId != CAM_ID_MAIN) {
        Math_ApproachF(&this->subCamAt.x, this->subCamAtTarget.x, this->unk_1C8.x, this->unk_1D4.x);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtTarget.y, this->unk_1C8.y, this->unk_1D4.y);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtTarget.z, this->unk_1C8.z, this->unk_1D4.z);
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeTarget.x, this->unk_1A4.x, this->unk_1B0.x);
        Math_ApproachF(&this->subCamEye.y, this->subCamEyeTarget.y, this->unk_1A4.y, this->unk_1B0.y);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeTarget.z, this->unk_1A4.z, this->unk_1B0.z);
    }

    Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);

    if ((this->unk_154 == func_8010BDBC(&globalCtx->msgCtx)) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
    }

    if ((fabsf(this->subCamEye.x - this->subCamEyeTarget.x) < 5.0f) && (fabsf(this->subCamEye.y - this->subCamEyeTarget.y) < 5.0f) &&
        (fabsf(this->subCamEye.z - this->subCamEyeTarget.z) < 5.0f) && (fabsf(this->subCamAt.x - this->subCamAtTarget.x) < 5.0f) &&
        (fabsf(this->subCamAt.y - this->subCamAtTarget.y) < 5.0f) && (fabsf(this->subCamAt.z - this->subCamAtTarget.z) < 5.0f)) {
        func_80106CCC(globalCtx);
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
                gSaveContext.itemGetInf[1] |= 2;
                break;
            case EXITEM_HEART_PIECE_BOWLING:
                gSaveContext.itemGetInf[1] |= 4;
                break;
        }

        Gameplay_ClearCamera(globalCtx, this->subCamId);
        Gameplay_ChangeCameraStatus(globalCtx, CAM_ID_MAIN, CAM_STATUS_ACTIVE);
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

    player->stateFlags1 &= ~0x20000000;
    this->actor.parent = NULL;
    func_8002F434(&this->actor, globalCtx, this->getItemId, 2000.0f, 1000.0f);
    player->stateFlags1 |= 0x20000000;
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
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        // Normal termination/completion
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        if (this->getItemId == GI_HEART_PIECE) {
            gSaveContext.healthAccumulator = 0x140;
            // Ah recovery! (?)
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ あぁ回復！ ☆☆☆☆☆ \n" VT_RST);
        }
        this->exItemDone = 0;
        this->status = 2;
        this->actionFunc = EnBomBowlPit_SetupDetectHit;
    }
}

void EnBomBowlPit_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlPit* this = THIS;

    this->actionFunc(this, globalCtx);

    if (this->timer != 0) {
        this->timer--;
    }
}
