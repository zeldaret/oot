#include "z_en_syateki_man.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Itm/z_en_syateki_itm.h"

#define FLAGS 0x08000019

#define THIS ((EnSyatekiMan*)thisx)
#define GALLERY ((EnSyatekiItm*)this->actor.parent)

typedef enum {
    /* 0 */ RESULT_NONE,
    /* 1 */ RESULT_WINNER,
    /* 2 */ RESULT_ALMOST,
    /* 3 */ RESULT_FAILURE,
    /* 4 */ RESULT_REFUSE
} EnSyatekiManGameResult;

typedef enum {
    /* 0 */ TEXT_CHOICE,
    /* 1 */ TEXT_START_GAME,
    /* 2 */ TEXT_NO_RUPEES,
    /* 3 */ TEXT_REFUSE
} EnSyatekiManTextIdx;

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnSyatekiMan_Start(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_Idle(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_Talk(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_StopTalk(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_StartGame(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_WaitForGame(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_EndGame(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_GivePrize(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyaketiMan_FinishPrize(EnSyatekiMan* this, GlobalContext* globalCtx);
void EnSyatekiMan_RestartGame(EnSyatekiMan* this, GlobalContext* globalCtx);

void EnSyatekiMan_BlinkWait(EnSyatekiMan* this);
void EnSyatekiMan_Blink(EnSyatekiMan* this);

void EnSyatekiMan_Jukebox(void);

extern AnimationHeader D_06000338;
extern Gfx D_06007E28[];
extern FlexSkeletonHeader D_06009B38;

const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OSSAN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};

static u16 sBgmList[] = {
    0x00, 0x01,  0x02, 0x18, 0x19, 0x02, 0x19, 0x1A, 0x1A,  0x81A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x922,
    0x23, 0x924, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x92B, 0x2C,  0x2D, 0x2E, 0x2F, 0x30, 0x32, 0x33, 0x34, 0x35,
    0x36, 0x37,  0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E,  0x3F,  0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49,  0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50,  0x51,  0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
    0x5A, 0x5B,  0x5C, 0x5D, 0x6D, 0x5E, 0x5E, 0x5F, 0x60,  0x61,  0x6D, 0x62, 0x63, 0x64, 0x65, 0x66,
};
static s16 sTextIds[] = { 0x2B, 0x2E, 0xC8, 0x2D };

static s16 sTextBoxCount[] = { 4, 5, 5, 5 };

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    osSyncPrintf("\n\n");
    // Old man appeared!! Muhohohohohohohon
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n" VT_RST);
    this->actor.unk_1F = 1;
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009B38, &D_06000338, this->limbDrawTbl,
                       this->transitionDrawTbl, 9);
    if (gSaveContext.linkAge != 0) {
        this->headRot.z = 20;
    }
    this->blinkTimer = 20;
    this->eyeState = 0;
    this->blinkFunc = EnSyatekiMan_BlinkWait;
    this->actor.colChkInfo.unk_10 = 100;
    this->actionFunc = EnSyatekiMan_Start;
}

void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnSyatekiMan_Start(EnSyatekiMan* this, GlobalContext* globalCtx) {
    f32 lastFrame = SkelAnime_GetFrameCount(&D_06000338);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000338, 1.0f, 0.0f, (s16)lastFrame, 0, -10.0f);
    this->actionFunc = EnSyatekiMan_SetupIdle;
}

void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, GlobalContext* globalCtx) {
    if (this->gameResult == RESULT_REFUSE) {
        this->textIdx = TEXT_REFUSE;
    }

    this->actor.textId = sTextIds[this->textIdx];
    this->numTextBox = sTextBoxCount[this->textIdx];
    this->actionFunc = EnSyatekiMan_Idle;
}

void EnSyatekiMan_Idle(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = EnSyatekiMan_Talk;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

void EnSyatekiMan_Talk(EnSyatekiMan* this, GlobalContext* globalCtx) {
    s16 nextState = 0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->cameraHold) {
        globalCtx->shootingGalleryAmmo = -2;
    }
    if ((this->numTextBox == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->textIdx == TEXT_CHOICE) {
            switch (globalCtx->msgCtx.choiceIndex) {
                case 0:
                    if (gSaveContext.rupees >= 20) {
                        Rupees_ChangeBy(-20);
                        this->textIdx = TEXT_START_GAME;
                        nextState = 1;
                    } else {
                        this->textIdx = TEXT_NO_RUPEES;
                        nextState = 2;
                    }
                    this->actor.textId = sTextIds[this->textIdx];
                    this->numTextBox = sTextBoxCount[this->textIdx];
                    break;
                case 1:
                    this->actor.textId = sTextIds[TEXT_REFUSE];
                    this->numTextBox = sTextBoxCount[TEXT_REFUSE];
                    nextState = 2;
                    break;
            }
            func_8010B720(globalCtx, this->actor.textId);
        } else {
            func_80106CCC(globalCtx);
        }
        switch (nextState) {
            case 0:
                this->actionFunc = EnSyatekiMan_SetupIdle;
                break;
            case 1:
                this->actionFunc = EnSyatekiMan_StartGame;
                break;
            case 2:
                this->actionFunc = EnSyatekiMan_StopTalk;
                break;
        }
    }
}

void EnSyatekiMan_StopTalk(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->cameraHold) {
        globalCtx->shootingGalleryAmmo = -2;
    }
    if ((this->numTextBox == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->cameraHold) {
            func_800803F0(globalCtx, this->onePointCam);
            this->onePointCam = -1;
            this->cameraHold = false;
        }
        func_80106CCC(globalCtx);
        this->actionFunc = EnSyatekiMan_SetupIdle;
    }
}

void EnSyatekiMan_StartGame(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->cameraHold) {
        globalCtx->shootingGalleryAmmo = -2;
    }
    if ((this->numTextBox == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->cameraHold) {
            func_800803F0(globalCtx, this->onePointCam);
            this->onePointCam = -1;
            this->cameraHold = false;
        }
        func_80106CCC(globalCtx);
        gallery = GALLERY;
        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_START;
            this->actionFunc = EnSyatekiMan_WaitForGame;
        }
    }
}

void EnSyatekiMan_WaitForGame(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (1) {}
    gallery = GALLERY;
    if ((gallery->actor.update != NULL) && (gallery->signal == ENSYATEKI_END)) {
        this->onePointCam = func_800800F8(globalCtx, 0x1F42, -0x63, &this->actor, 0);
        switch (gallery->hitCount) {
            case 10:
                this->gameResult = RESULT_WINNER;
                this->actor.textId = 0x71AF;
                break;
            case 8:
            case 9:
                this->gameResult = RESULT_ALMOST;
                this->actor.textId = 0x71AE;
                break;
            default:
                this->gameResult = RESULT_FAILURE;
                this->actor.textId = 0x71AD;
                if (globalCtx->shootingGalleryAmmo == 15 + 1) {
                    this->gameResult = RESULT_REFUSE;
                    this->actor.textId = 0x2D;
                }
                break;
        }
        globalCtx->shootingGalleryAmmo = -2;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        this->actionFunc = EnSyatekiMan_EndGame;
    }
}

void EnSyatekiMan_EndGame(EnSyatekiMan* this, GlobalContext* globalCtx) {
    EnSyatekiItm* gallery;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->numTextBox == func_8010BDBC(&globalCtx->msgCtx)) && func_80106BC8(globalCtx)) {
        if (this->gameResult != RESULT_FAILURE) {
            func_800803F0(globalCtx, this->onePointCam);
            this->onePointCam = -1;
        }
        func_80106CCC(globalCtx);
        gallery = GALLERY;
        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_RESULTS;
            this->textIdx = 0;
            switch (this->gameResult) {
                case RESULT_WINNER:
                    this->tempGallery = this->actor.parent;
                    this->actor.parent = NULL;
                    if (gSaveContext.linkAge != 0) {
                        if (!(gSaveContext.itemGetInf[0] & 0x2000)) {
                            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Pachinko ☆☆☆☆☆ %d\n" VT_RST,
                                         (s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[5]) >>
                                             gUpgradeShifts[5]);
                            if ((s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[5]) >> gUpgradeShifts[5] == 1) {
                                this->getItemId = GI_BULLET_BAG_40;
                            } else {
                                this->getItemId = GI_BULLET_BAG_50;
                            }
                        } else {
                            this->getItemId = GI_RUPEE_PURPLE;
                        }
                    } else {
                        if (!(gSaveContext.itemGetInf[0] & 0x4000)) {
                            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Bow ☆☆☆☆☆ %d\n" VT_RST,
                                         (s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[0]) >>
                                             gUpgradeShifts[0]);
                            switch ((s32)(gSaveContext.inventory.upgrades & gUpgradeMasks[0]) >> gUpgradeShifts[0]) {
                                case 0:
                                    this->getItemId = GI_RUPEE_PURPLE;
                                    break;
                                case 1:
                                    this->getItemId = GI_QUIVER_40;
                                    break;
                                case 2:
                                    this->getItemId = GI_QUIVER_50;
                                    break;
                            }
                        } else {
                            this->getItemId = GI_RUPEE_PURPLE;
                        }
                    }
                    func_8002F434(&this->actor, globalCtx, this->getItemId, 2000.0f, 1000.0f);
                    this->actionFunc = EnSyatekiMan_GivePrize;
                    break;
                case RESULT_ALMOST:
                    this->timer = 20;
                    func_8008EF44(globalCtx, 15);
                    this->actionFunc = EnSyatekiMan_RestartGame;
                    break;
                default:
                    if (this->gameResult == RESULT_REFUSE) {
                        this->actionFunc = EnSyatekiMan_SetupIdle;
                    } else {
                        this->cameraHold = true;
                        this->actor.textId = sTextIds[this->textIdx];
                        this->numTextBox = sTextBoxCount[this->textIdx];
                        func_8010B680(globalCtx, this->actor.textId, NULL);
                        this->actionFunc = EnSyatekiMan_Talk;
                    }
                    break;
            }
        }
    }
}

void EnSyatekiMan_GivePrize(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = EnSyaketiMan_FinishPrize;
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemId, 2000.0f, 1000.0f);
    }
}

void EnSyaketiMan_FinishPrize(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        // Successful completion
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        if (gSaveContext.linkAge != 0) {
            gSaveContext.itemGetInf[0] |= 0x2000;
        } else if ((this->getItemId == 0x30) || (this->getItemId == 0x31)) {
            gSaveContext.itemGetInf[0] |= 0x4000;
        }
        this->gameResult = RESULT_NONE;
        this->actor.parent = this->tempGallery;
        this->actor.flags |= 1;
        this->actionFunc = EnSyatekiMan_SetupIdle;
    }
}

void EnSyatekiMan_RestartGame(EnSyatekiMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer == 0) {
        EnSyatekiItm* gallery = GALLERY;

        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_START;
            this->gameResult = RESULT_NONE;
            this->actionFunc = EnSyatekiMan_WaitForGame;
            // Let's try again! Baby!
            osSyncPrintf(VT_FGCOL(BLUE) "再挑戦だぜ！ベイビー！" VT_RST "\n", this);
        }
    }
}

void EnSyatekiMan_BlinkWait(EnSyatekiMan* this) {
    s16 decrBlinkTimer = this->blinkTimer - 1;

    if (decrBlinkTimer != 0) {
        this->blinkTimer = decrBlinkTimer;
    } else {
        this->blinkFunc = EnSyatekiMan_Blink;
    }
}

void EnSyatekiMan_Blink(EnSyatekiMan* this) {
    s16 decrBlinkTimer = this->blinkTimer - 1;

    if (decrBlinkTimer != 0) {
        this->blinkTimer = decrBlinkTimer;
    } else {
        s16 nextEyeState = this->eyeState + 1;

        if (nextEyeState >= 3) {
            this->eyeState = 0;
            this->blinkTimer = 20 + (s32)(Math_Rand_ZeroOne() * 60.0f);
            this->blinkFunc = EnSyatekiMan_BlinkWait;
        } else {
            this->eyeState = nextEyeState;
            this->blinkTimer = 1;
        }
    }
}

void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, globalCtx);
    EnSyatekiMan_Jukebox();
    this->blinkFunc(this);
    this->actor.posRot2.pos.y = 70.0f;
    Actor_SetHeight(&this->actor, 70.0f);
    func_80038290(globalCtx, &this->actor, &this->headRot, &this->bodyRot, this->actor.posRot2.pos);
}

s32 func_80B1148C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSyatekiMan* this = THIS;
    s32 turnDirection;

    if (limbIndex == 1) {
        rot->x += this->bodyRot.y;
    }
    if (limbIndex == 8) {
        *dList = D_06007E28;
        turnDirection = 1;
        if (this->gameResult == RESULT_REFUSE) {
            turnDirection = -1;
        }
        rot->x += this->headRot.y * turnDirection;
        rot->z += this->headRot.z;
    }
    return false;
}

void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiMan* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          func_80B1148C, NULL, this);
}

void EnSyatekiMan_Jukebox(void) {
    if (BREG(80)) {
        BREG(80) = false;
        Audio_SetBGM(sBgmList[BREG(81)]);
    }
}
