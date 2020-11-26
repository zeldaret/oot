#include "z_en_bom_bowl_man.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Niw/z_en_syateki_niw.h"

#define FLAGS 0x08000039

#define THIS ((EnBomBowlMan*)thisx)

void EnBomBowlMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBomBowlMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBomBowlMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBomBowlMan_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnBomBowMan_SetupWaitAsleep(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_WaitAsleep(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_TalkAsleep(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_WakeUp(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_BlinkAwake(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_CheckBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_WaitNotBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_TalkNotBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_SetupRunGame(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_RunGame(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowlMan_HandlePlayChoice(EnBomBowlMan* this, GlobalContext* globalCtx);
void func_809C41FC(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_SetupChooseShowPrize(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowMan_ChooseShowPrize(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowlMan_BeginPlayGame(EnBomBowlMan* this, GlobalContext* globalCtx);

extern SkeletonHeader D_06006EB0;
extern AnimationHeader D_06000710;
extern AnimationHeader D_06000080;
extern AnimationHeader D_060072AC;

const ActorInit En_Bom_Bowl_Man_InitVars = {
    ACTOR_EN_BOM_BOWL_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_BG,
    sizeof(EnBomBowlMan),
    (ActorFunc)EnBomBowlMan_Init,
    (ActorFunc)EnBomBowlMan_Destroy,
    (ActorFunc)EnBomBowlMan_Update,
    (ActorFunc)EnBomBowlMan_Draw,
};

static f32 sCuccoColliderDims[2][3] = { { 16, 46, 0 }, { 36, 56, 0 } };

static Vec3f sCuccoSpawnPoss[2] = { { 60, -60, -430 }, { 0, -120, -620 } };

static f32 sCuccoScales[] = { 0.01f, 0.03f };

static Vec3f sEffectAccel = { 0.0f, 0.1f, 0.0f };

static Vec3f sEffectVelocity = { 0.0f, 0.0f, 0.0f };

static Vec3f sPrizePosOffset[] = {
    { 0.0f, 22.0f, 0.0f }, { 0.0f, 22.0f, 0.0f }, { 0.0f, 8.0f, 0.0f }, { 0.0f, 9.0f, 0.0f }, { 0.0f, -2.0f, 0.0f },
};

static s16 sPrizeRot[] = { 0x4268, 0x4268, 0xFC18, 0x0000, 0x4268, 0x0000 };

static UNK_PTR D_809C4AA8[] = { 0x06004110, 0x06004910, 0x06005110 };

void EnBomBowlMan_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlMan* this = THIS;

    EnSyatekiNiw* cucco;
    s32 i;
    GlobalContext* globalCtx2 = globalCtx;

    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_InitSV(globalCtx2, &this->skelAnime, &D_06006EB0, &D_06000710, this->limbDrawTable,
                     this->transitionDrawTable, 11);
    // ☆ Man, my shoulders hurt~ ☆
    osSyncPrintf(VT_FGCOL(GREEN) "☆ もー 肩こっちゃうよねぇ〜 \t\t ☆ \n" VT_RST);
    // ☆ Isn't there some sort of job that will pay better and be more relaxing? ☆ %d
    osSyncPrintf(VT_FGCOL(GREEN) "☆ もっとラクしてもうかるバイトないかしら？ ☆ %d\n" VT_RST,
                 globalCtx2->bombchuBowlingAmmo);
    this->unk_248 = this->actor.posRot.pos;
    this->actor.shape.unk_08 = -60.0f;
    Actor_SetScale(&this->actor, 0.013f);
    for (i = 0; i < 2; i++) {
        cucco =
            (EnSyatekiNiw*)Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_SYATEKI_NIW, sCuccoSpawnPoss[i].x,
                                       sCuccoSpawnPoss[i].y, sCuccoSpawnPoss[i].z, 0, 0, 0, 1);
        if (cucco != NULL) {
            cucco->unk_2F4 = sCuccoScales[i];
            cucco->collider.dim.radius = (s16)sCuccoColliderDims[i][0];
            cucco->collider.dim.height = (s16)sCuccoColliderDims[i][1];
        }
    }
    this->prizeSelect = (s16)Math_Rand_ZeroFloat(4.99f);
    ;
    this->actor.unk_1F = 1;
    this->actionFunc = EnBomBowMan_SetupWaitAsleep;
}

void EnBomBowlMan_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnBomBowMan_SetupWaitAsleep(EnBomBowlMan* this, GlobalContext* globalCtx) {
    this->frameCount = (f32)SkelAnime_GetFrameCount(&D_06000710.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000710, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
    this->actor.textId = 0xC0; // "zzzzz...zzzzz..."
    this->unk_22E = 5;
    this->actionFunc = EnBomBowMan_WaitAsleep;
}

void EnBomBowMan_WaitAsleep(EnBomBowlMan* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = EnBomBowMan_TalkAsleep;
    } else {
        yawDiff = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y));
        if (!(120.0f < this->actor.xzDistFromLink) && (yawDiff < 0x4300)) {
            func_8002F2CC(&this->actor, globalCtx, 120.0f);
        }
    }
}

void EnBomBowMan_TalkAsleep(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        globalCtx->msgCtx.msgMode = 0x37;
        this->actionFunc = EnBomBowMan_WakeUp;
    }
}

void EnBomBowMan_WakeUp(EnBomBowlMan* this, GlobalContext* globalCtx) { // start waking up
    this->frameCount = (f32)SkelAnime_GetFrameCount(&D_06000080.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000080, 1.0f, 0.0f, this->frameCount, 2, -10.0f);
    this->eyeMode = 1;
    this->actionFunc = EnBomBowMan_BlinkAwake;
}

void EnBomBowMan_BlinkAwake(EnBomBowlMan* this, GlobalContext* globalCtx) { // finish waking up
    f32 frameCount = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (frameCount == 30.0f) {
        this->unk_22E = 5;
        // Check for beaten Dodongo's Cavern
        if (((gSaveContext.eventChkInf[2] & 0x20) != 0) || BREG(2)) {
            this->actor.textId = 0xBF;
            // "Huh? Wha--!  Uh-oh!  A customer!"
        } else {
            this->actor.textId = 0x7058;
            // "Oh, I'm sorry. We're not open for business yet. Please come back soon!"
        }
    }
    func_8010B720(globalCtx, this->actor.textId);
    // if eyes open, eye state is blink sleep away, blink timer is 0
    if ((this->eyeIndex == 0) && (this->eyeMode == 2) && (this->blinkTimer == 0)) {
        // Blink twice, then move on
        this->eyeIndex = 2;
        this->blinkCount++;
        if (this->blinkCount >= 3) {
            this->actionFunc = EnBomBowMan_CheckBeatenDC;
        }
    }
}

void EnBomBowMan_CheckBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx) { // awake, wating
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->frameCount = (f32)SkelAnime_GetFrameCount(&D_060072AC.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060072AC, 1.0f, 0.0f, this->frameCount, 0, -10.0f);
        this->eyeMode = 3;
        this->blinkTimer = (s16)Math_Rand_ZeroFloat(60.0f) + 20;
        // Check for beaten Dodongo's Cavern
        if (((gSaveContext.eventChkInf[2] & 0x20) == 0) && (!BREG(2))) {
            this->actionFunc = EnBomBowMan_WaitNotBeatenDC;
        } else {
            this->actor.textId = 0x18;
            // "Welcome to our cutting-edge  amusement center:  The Bombchu Bowling Alley!  Do you want to know what you
            // can win? Well, it's a secret. I can't tell you until you've paid to play.  It's 30 Rupees per game. Do
            // you want to play? Yes No"
            this->unk_22E = 4;
            func_8010B720(globalCtx, this->actor.textId);
            this->actionFunc = EnBomBowlMan_HandlePlayChoice;
        }
    }
}

void EnBomBowMan_WaitNotBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx) { // loop if not beaten Dodongo's Cavern
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = EnBomBowMan_TalkNotBeatenDC;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 120.0f);
    }
}

void EnBomBowMan_TalkNotBeatenDC(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actionFunc = EnBomBowMan_WaitNotBeatenDC;
    }
}

void EnBomBowMan_SetupRunGame(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->minigamePlayStatus == 0) {
        if (this->notFirstPlay == 0) {
            this->actor.textId = 0x18;
            // "Welcome to our cutting-edge  amusement center:  The Bombchu Bowling Alley!  Do you want to know what you
            // can win? Well, it's a secret. I can't tell you until you've paid to play.  It's 30 Rupees per game. Do
            // you want to play? Yes No"
        } else {
            this->actor.textId = 0x1A; // "Do you want to play again?  Yes No"
        }
        this->unk_22E = 4;
    } else {
        this->actor.textId = 0x19;
        // "OKAY!!  Aim for the hole in the center  and let Bombchu go! You get ten tries. Ready...  LET'S BOWL!"
        this->unk_22E = 5;
    }
    this->actionFunc = EnBomBowMan_RunGame;
}

void EnBomBowMan_RunGame(EnBomBowlMan* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (BREG(3)) {
        osSyncPrintf(VT_FGCOL(RED) "☆ game_play->bomchu_game_flag ☆ %d\n" VT_RST, globalCtx->bombchuBowlingAmmo);
        osSyncPrintf(VT_FGCOL(RED) "☆ 壁１の状態どう？ ☆ %d\n" VT_RST, this->wallStatus[0]);
        //  HOW'S THE FIRST WALL DOING?
        osSyncPrintf(VT_FGCOL(RED) "☆ 壁２の状態どう？ ☆ %d\n" VT_RST, this->wallStatus[1]);
        //  HOW'S THE SECOND WALL DOING?
        osSyncPrintf(VT_FGCOL(RED) "☆ 穴情報\t     ☆ %d\n" VT_RST, this->bowlPit->status);
        // HOLE INFORMATION
        osSyncPrintf("\n\n");
    }
    this->gameResult = 0;
    if (this->bowlPit != 0) {
        if ((this->wallStatus[0] != 1) && (this->wallStatus[1] != 1) && (this->bowlPit->status == 2)) {
            this->gameResult = 1; // Won
            this->bowlPit->status = 0;
            // Center HIT!
            osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 中央ＨＩＴ！！！！ ☆☆☆☆☆ \n" VT_RST);
        }
        if ((globalCtx->bombchuBowlingAmmo == -1) && (globalCtx->actorCtx.actorList[3].length == 0) &&
            (this->bowlPit->status == 0) && (this->wallStatus[0] != 1) && (this->wallStatus[1] != 1)) {
            this->gameResult = 2; // Lost
            osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ ボムチュウ消化 ☆☆☆☆☆ \n" VT_RST);
            // Bombchu lost
        }
    }
    if (this->gameResult != 0) { // won or lost
        this->actor.textId = 0x1A; // "Do you want to play again?  Yes No"
        this->unk_22E = 4;
        this->minigamePlayStatus = 0;
        if ((this->exItem != NULL) && (this->exItem->actor.update != 0)) {
            this->exItem->unk_160 = 1;
            this->exItem = NULL;
        }
        globalCtx->bombchuBowlingAmmo = 0;
        this->playingAgain = 1;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        if (this->gameResult == 2) {
            func_8002DF54(globalCtx, NULL, 8);
        }
        this->actionFunc = EnBomBowlMan_HandlePlayChoice;
    } else {
        if (func_8002F194(&this->actor, globalCtx) != 0) {
            if (this->minigamePlayStatus == 0) {
                this->actionFunc = EnBomBowlMan_HandlePlayChoice;
            } else {
                this->actionFunc = func_809C41FC;
            }
        } else {
            yawDiff = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y));
            if (!(120.0f < this->actor.xzDistFromLink) && (yawDiff < 0x4300)) {
                func_8002F2CC(&this->actor, globalCtx, 120.0f);
            }
        }
    }
}

void EnBomBowlMan_HandlePlayChoice(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // Yes
                if (gSaveContext.rupees >= 30) {
                    Rupees_ChangeBy(-30);
                    this->wallStatus[1] = 0;
                    this->minigamePlayStatus = 1;
                    this->wallStatus[0] = this->wallStatus[1];
                    globalCtx->bombchuBowlingAmmo = 10;
                    Flags_SetSwitch(globalCtx, 0x38);
                    if ((this->notFirstPlay == 0) && (this->playingAgain == 0)) {
                        this->actor.textId = 0x19;
                        // "OKAY!!  Aim for the hole in the center  and let Bombchu go! You get ten tries. Ready...
                        // LET'S BOWL!"
                        func_8010B720(globalCtx, this->actor.textId);
                        this->unk_22E = 5;
                        this->actionFunc = func_809C41FC;
                    } else {
                        this->actor.textId = 0x1B; // "Oh, I almost forgot! Here is what you can win!"
                        func_8010B720(globalCtx, this->actor.textId);
                        this->unk_22E = 5;
                        func_800800F8(globalCtx, 0x1F4A, -0x63, NULL, 0);
                        func_8002DF54(globalCtx, NULL, 8);
                        this->actionFunc = EnBomBowMan_SetupChooseShowPrize;
                    }
                } else {
                    this->playingAgain = 0;
                    this->actor.textId = 0x85; // "You don't have enough Rupees!"
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_22E = 5;
                    this->actionFunc = func_809C41FC;
                }
                break;
            case 1: // No
                this->playingAgain = 0;
                this->actor.textId = 0x2D; // "All right. You don't have to play if you don't want to."
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_22E = 5;
                this->actionFunc = func_809C41FC;
        }
    }
}

void func_809C41FC(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        if ((this->actor.textId == 0x2D) || (this->actor.textId == 0x85)) {
            if (Flags_GetSwitch(globalCtx, 0x38) != 0) {
                Flags_UnsetSwitch(globalCtx, 0x38);
            }
        }
        if (this->minigamePlayStatus == 1) {
            this->actor.textId = 0x1B; // "Oh, I almost forgot! Here is what you can win!"
            func_8010B720(globalCtx, this->actor.textId);
            this->unk_22E = 5;
            func_800800F8(globalCtx, 8010, -99, NULL, 0);
            func_8002DF54(globalCtx, NULL, 8);
            this->actionFunc = EnBomBowMan_SetupChooseShowPrize;
        } else {
            if (this->gameResult == 2) {
                func_8002DF54(globalCtx, NULL, 7);
            }
            this->actionFunc = EnBomBowMan_SetupRunGame;
        }
    }
}

void EnBomBowMan_SetupChooseShowPrize(EnBomBowlMan* this, GlobalContext* globalCtx) {
    Vec3f accel = sEffectAccel;
    Vec3f velocity = sEffectVelocity;
    Vec3f pos;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        pos.x = 148.0f;
        pos.y = 40.0f;
        pos.z = 300.0f;
        EffectSsBomb2_SpawnLayered(globalCtx, &pos, &velocity, &accel, 50, 15);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_GOODS_APPEAR);
        this->prizeRevealTimer = 10;
        this->actionFunc = EnBomBowMan_ChooseShowPrize;
    }
}

void EnBomBowMan_ChooseShowPrize(EnBomBowlMan* this, GlobalContext* globalCtx) {
    s16 prizeTemp;
    s32 pad;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->prizeRevealTimer == 0) {
        switch (this->prizeSelect) {
            case 0:
                prizeTemp = 0;
                if ((gSaveContext.itemGetInf[1] & 2) != 0) {
                    prizeTemp = 4;
                }
                break;
            case 1:
                prizeTemp = 4;
                break;
            case 2:
                prizeTemp = 2;
                break;
            case 3:
                prizeTemp = 1;
                if ((gSaveContext.itemGetInf[1] & 4) != 0) {
                    prizeTemp = 4;
                }
                break;
            case 4:
                prizeTemp = 3;
                break;
        }
        this->prizeIndex = prizeTemp;
        if (BREG(7)) {
            this->prizeIndex = BREG(7) - 1;
        }
        this->exItem = (EnExItem*)Actor_SpawnAsChild(
            &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_ITEM,
            sPrizePosOffset[this->prizeIndex].x + 148.0f, sPrizePosOffset[this->prizeIndex].y + 40.0f,
            sPrizePosOffset[this->prizeIndex].z + 300.0f, 0, sPrizeRot[this->prizeIndex], 0, this->prizeIndex + 5);
        if (this->notFirstPlay == 0) {
            this->bowlPit = (EnBomBowlPit*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx,
                                                              ACTOR_EN_BOM_BOWL_PIT, 0.0f, 90.0f, -860.0f, 0, 0, 0, 0);
            if (this->bowlPit != NULL) {
                this->bowlPit->prizeIndex = this->prizeIndex;
            }
        } else {
            this->bowlPit->prizeIndex = this->prizeIndex;
        }
        this->bowlPit->start = 1;
        this->minigamePlayStatus = 2;
        this->actor.textId = 0x405A; // "START!"
        func_8010B720(globalCtx, this->actor.textId);
        this->unk_22E = 5;
        // Cycle through prizes in order
        this->prizeSelect++;
        if (this->prizeSelect >= 5) {
            this->prizeSelect = 0;
        }
        this->actionFunc = EnBomBowlMan_BeginPlayGame;
    }
}

void EnBomBowlMan_BeginPlayGame(EnBomBowlMan* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == this->unk_22E) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        func_8005B1A4(globalCtx->cameraPtrs[globalCtx->activeCamera]);
        this->notFirstPlay = 1;
        if (BREG(2)) {
            BREG(2) = 0;
        }
        osSyncPrintf(VT_FGCOL(YELLOW) "☆ わー ☆ %d\n" VT_RST, globalCtx->bombchuBowlingAmmo);
        // Wow
        func_8002DF54(globalCtx, NULL, 7);
        this->actionFunc = EnBomBowMan_SetupRunGame;
    }
}

void EnBomBowlMan_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlMan* this = THIS;

    this->unk_22C++;
    this->actor.posRot2.pos.y = 60.0f;
    Actor_SetHeight(&this->actor, 60.0f);
    switch (this->eyeMode) {
        case 0: // asleep
            this->eyeIndex = 2;
            break;
        case 1: // waking up
            if (this->eyeIndex > 0) { // eyes not fully open
                this->eyeIndex--; // open eyes slowly
            } else {
                this->blinkTimer = 30;
                this->eyeMode = 2;
            }
            break;
        case 2: // blinking sleep away
            if (this->blinkTimer == 0 && this->eyeIndex > 0) {
                this->eyeIndex--; // open eyes slowly
            }
            break;
        default: // fully awake: random blink interval, close slowly, open quickly
            if (this->blinkTimer == 0) {
                this->eyeIndex++;
                if (this->eyeIndex >= 3) {
                    this->eyeIndex = 0;
                    this->blinkTimer = (s16)Math_Rand_ZeroFloat(60.0f) + 20;
                }
            }
            func_80038290(globalCtx, &this->actor, &this->unk_218, &this->unk_224, this->actor.posRot2.pos);
            break;
    }
    DECR(this->prizeRevealTimer);
    DECR(this->blinkTimer);
    this->actionFunc(this, globalCtx);
}

s32 EnBomBowlMan_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                  Actor* thisx) {
    EnBomBowlMan* this = THIS;

    if (limbIndex == 4) {
        rot->x += this->unk_218.y;
        rot->z += this->unk_218.z;
    }
    return 0;
}

void EnBomBowlMan_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBomBowlMan* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bom_bowl_man.c", 907);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809C4AA8[this->eyeIndex]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, (s32)this->skelAnime.dListCount,
                     EnBomBowlMan_OverrideLimbDraw, 0, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bom_bowl_man.c", 923);
}
