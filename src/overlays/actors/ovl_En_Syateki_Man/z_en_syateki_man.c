#include "z_en_syateki_man.h"
#include "terminal.h"
#include "overlays/actors/ovl_En_Syateki_Itm/z_en_syateki_itm.h"
#include "assets/objects/object_ossan/object_ossan.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_LOCK_ON_DISABLED)

typedef enum EnSyatekiManGameResult {
    /* 0 */ SYATEKI_RESULT_NONE,
    /* 1 */ SYATEKI_RESULT_WINNER,
    /* 2 */ SYATEKI_RESULT_ALMOST,
    /* 3 */ SYATEKI_RESULT_FAILURE,
    /* 4 */ SYATEKI_RESULT_REFUSE
} EnSyatekiManGameResult;

typedef enum EnSyatekiManTextIdx {
    /* 0 */ SYATEKI_TEXT_CHOICE,
    /* 1 */ SYATEKI_TEXT_START_GAME,
    /* 2 */ SYATEKI_TEXT_NO_RUPEES,
    /* 3 */ SYATEKI_TEXT_REFUSE
} EnSyatekiManTextIdx;

void EnSyatekiMan_Init(Actor* thisx, PlayState* play);
void EnSyatekiMan_Destroy(Actor* thisx, PlayState* play);
void EnSyatekiMan_Update(Actor* thisx, PlayState* play);
void EnSyatekiMan_Draw(Actor* thisx, PlayState* play);

void EnSyatekiMan_Start(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Idle(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Talk(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_StopTalk(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_StartGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_WaitForGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_EndGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_GivePrize(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_FinishPrize(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_RestartGame(EnSyatekiMan* this, PlayState* play);

void EnSyatekiMan_BlinkWait(EnSyatekiMan* this);
void EnSyatekiMan_Blink(EnSyatekiMan* this);

#if DEBUG_FEATURES
void EnSyatekiMan_SetBgm(void);
#endif

ActorProfile En_Syateki_Man_Profile = {
    /**/ ACTOR_EN_SYATEKI_MAN,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_OSSAN,
    /**/ sizeof(EnSyatekiMan),
    /**/ EnSyatekiMan_Init,
    /**/ EnSyatekiMan_Destroy,
    /**/ EnSyatekiMan_Update,
    /**/ EnSyatekiMan_Draw,
};

#if DEBUG_FEATURES
static u16 sBgmList[] = {
    NA_BGM_GENERAL_SFX,
    NA_BGM_NATURE_AMBIENCE,
    NA_BGM_FIELD_LOGIC,
    NA_BGM_DUNGEON,
    NA_BGM_KAKARIKO_ADULT,
    NA_BGM_FIELD_LOGIC,
    NA_BGM_KAKARIKO_ADULT,
    NA_BGM_ENEMY,
    NA_BGM_ENEMY,
    NA_BGM_ENEMY | 0x800,
    NA_BGM_BOSS,
    NA_BGM_INSIDE_DEKU_TREE,
    NA_BGM_MARKET,
    NA_BGM_TITLE,
    NA_BGM_LINK_HOUSE,
    NA_BGM_GAME_OVER,
    NA_BGM_BOSS_CLEAR,
    NA_BGM_ITEM_GET | 0x900,
    NA_BGM_OPENING_GANON,
    NA_BGM_HEART_GET | 0x900,
    NA_BGM_OCA_LIGHT,
    NA_BGM_JABU_JABU,
    NA_BGM_KAKARIKO_KID,
    NA_BGM_GREAT_FAIRY,
    NA_BGM_ZELDA_THEME,
    NA_BGM_FIRE_TEMPLE,
    NA_BGM_OPEN_TRE_BOX | 0x900,
    NA_BGM_FOREST_TEMPLE,
    NA_BGM_COURTYARD,
    NA_BGM_GANON_TOWER,
    NA_BGM_LONLON,
    NA_BGM_GORON_CITY,
    NA_BGM_SPIRITUAL_STONE,
    NA_BGM_OCA_BOLERO,
    NA_BGM_OCA_MINUET,
    NA_BGM_OCA_SERENADE,
    NA_BGM_OCA_REQUIEM,
    NA_BGM_OCA_NOCTURNE,
    NA_BGM_MINI_BOSS,
    NA_BGM_SMALL_ITEM_GET,
    NA_BGM_TEMPLE_OF_TIME,
    NA_BGM_EVENT_CLEAR,
    NA_BGM_KOKIRI,
    NA_BGM_OCA_FAIRY_GET,
    NA_BGM_SARIA_THEME,
    NA_BGM_SPIRIT_TEMPLE,
    NA_BGM_HORSE,
    NA_BGM_HORSE_GOAL,
    NA_BGM_INGO,
    NA_BGM_MEDALLION_GET,
    NA_BGM_OCA_SARIA,
    NA_BGM_OCA_EPONA,
    NA_BGM_OCA_ZELDA,
    NA_BGM_OCA_SUNS,
    NA_BGM_OCA_TIME,
    NA_BGM_OCA_STORM,
    NA_BGM_NAVI_OPENING,
    NA_BGM_DEKU_TREE_CS,
    NA_BGM_WINDMILL,
    NA_BGM_HYRULE_CS,
    NA_BGM_MINI_GAME,
    NA_BGM_SHEIK,
    NA_BGM_ZORA_DOMAIN,
    NA_BGM_APPEAR,
    NA_BGM_ADULT_LINK,
    NA_BGM_MASTER_SWORD,
    NA_BGM_INTRO_GANON,
    NA_BGM_SHOP,
    NA_BGM_CHAMBER_OF_SAGES,
    NA_BGM_FILE_SELECT,
    NA_BGM_ICE_CAVERN,
    NA_BGM_DOOR_OF_TIME,
    NA_BGM_OWL,
    NA_BGM_SHADOW_TEMPLE,
    NA_BGM_WATER_TEMPLE,
    NA_BGM_BRIDGE_TO_GANONS,
    NA_BGM_CUTSCENE_EFFECTS,
    NA_BGM_OCARINA_OF_TIME,
    NA_BGM_OCARINA_OF_TIME,
    NA_BGM_GERUDO_VALLEY,
    NA_BGM_POTION_SHOP,
    NA_BGM_KOTAKE_KOUME,
    NA_BGM_CUTSCENE_EFFECTS,
    NA_BGM_ESCAPE,
    NA_BGM_UNDERGROUND,
    NA_BGM_GANONDORF_BOSS,
    NA_BGM_GANON_BOSS,
    NA_BGM_END_DEMO,
};
#endif

static s16 sTextIds[] = { 0x2B, 0x2E, 0xC8, 0x2D };

static s16 sTextBoxCount[] = { TEXT_STATE_CHOICE, TEXT_STATE_EVENT, TEXT_STATE_EVENT, TEXT_STATE_EVENT };

void EnSyatekiMan_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnSyatekiMan* this = (EnSyatekiMan*)thisx;

    PRINTF("\n\n");
    // "Old man appeared!! Muhohohohohohohon"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n" VT_RST);
    this->actor.attentionRangeType = ATTENTION_RANGE_1;
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gObjectOssanSkel, &gObjectOssanAnim_000338, this->jointTable,
                       this->morphTable, 9);
    if (!LINK_IS_ADULT) {
        this->headRot.z = 20;
    }
    this->blinkTimer = 20;
    this->eyeState = 0;
    this->blinkFunc = EnSyatekiMan_BlinkWait;
    this->actor.colChkInfo.cylRadius = 100;
    this->actionFunc = EnSyatekiMan_Start;
}

void EnSyatekiMan_Destroy(Actor* thisx, PlayState* play) {
}

void EnSyatekiMan_Start(EnSyatekiMan* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&gObjectOssanAnim_000338);

    Animation_Change(&this->skelAnime, &gObjectOssanAnim_000338, 1.0f, 0.0f, (s16)lastFrame, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = EnSyatekiMan_SetupIdle;
}

void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, PlayState* play) {
    if (this->gameResult == SYATEKI_RESULT_REFUSE) {
        this->textIdx = SYATEKI_TEXT_REFUSE;
    }

    this->actor.textId = sTextIds[this->textIdx];
    this->numTextBox = sTextBoxCount[this->textIdx];
    this->actionFunc = EnSyatekiMan_Idle;
}

void EnSyatekiMan_Idle(EnSyatekiMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnSyatekiMan_Talk;
    } else {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
}

void EnSyatekiMan_Talk(EnSyatekiMan* this, PlayState* play) {
    s16 nextState = 0;

    SkelAnime_Update(&this->skelAnime);
    if (this->cameraHold) {
        play->shootingGalleryStatus = -2;
    }
    if ((this->numTextBox == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        if (this->textIdx == SYATEKI_TEXT_CHOICE) {
            switch (play->msgCtx.choiceIndex) {
                case 0:
                    if (gSaveContext.save.info.playerData.rupees >= 20) {
                        Rupees_ChangeBy(-20);
                        this->textIdx = SYATEKI_TEXT_START_GAME;
                        nextState = 1;
                    } else {
                        this->textIdx = SYATEKI_TEXT_NO_RUPEES;
                        nextState = 2;
                    }
                    this->actor.textId = sTextIds[this->textIdx];
                    this->numTextBox = sTextBoxCount[this->textIdx];
                    break;
                case 1:
                    this->actor.textId = sTextIds[SYATEKI_TEXT_REFUSE];
                    this->numTextBox = sTextBoxCount[SYATEKI_TEXT_REFUSE];
                    nextState = 2;
                    break;
            }
            Message_ContinueTextbox(play, this->actor.textId);
        } else {
            Message_CloseTextbox(play);
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

void EnSyatekiMan_StopTalk(EnSyatekiMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->cameraHold) {
        play->shootingGalleryStatus = -2;
    }
    if ((this->numTextBox == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        if (this->cameraHold) {
            OnePointCutscene_EndCutscene(play, this->subCamId);
            this->subCamId = CAM_ID_NONE;
            this->cameraHold = false;
        }
        Message_CloseTextbox(play);
        this->actionFunc = EnSyatekiMan_SetupIdle;
    }
}

void EnSyatekiMan_StartGame(EnSyatekiMan* this, PlayState* play) {
    EnSyatekiItm* gallery;

    SkelAnime_Update(&this->skelAnime);
    if (this->cameraHold) {
        play->shootingGalleryStatus = -2;
    }
    if ((this->numTextBox == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        if (this->cameraHold) {
            OnePointCutscene_EndCutscene(play, this->subCamId);
            this->subCamId = CAM_ID_NONE;
            this->cameraHold = false;
        }
        Message_CloseTextbox(play);
        gallery = ((EnSyatekiItm*)this->actor.parent);
        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_START;
            this->actionFunc = EnSyatekiMan_WaitForGame;
        }
    }
}

void EnSyatekiMan_WaitForGame(EnSyatekiMan* this, PlayState* play) {
    EnSyatekiItm* gallery;

    SkelAnime_Update(&this->skelAnime);

    gallery = ((EnSyatekiItm*)this->actor.parent);
    if ((gallery->actor.update == NULL) || (gallery->signal != ENSYATEKI_END)) {
        return;
    }

    this->subCamId = OnePointCutscene_Init(play, 8002, -99, &this->actor, CAM_ID_MAIN);
    switch (gallery->hitCount) {
        case 10:
            this->gameResult = SYATEKI_RESULT_WINNER;
            this->actor.textId = 0x71AF;
            break;
        case 8:
        case 9:
            this->gameResult = SYATEKI_RESULT_ALMOST;
            this->actor.textId = 0x71AE;
            break;
        default:
            this->gameResult = SYATEKI_RESULT_FAILURE;
            this->actor.textId = 0x71AD;
            if (play->shootingGalleryStatus == 15 + 1) {
                this->gameResult = SYATEKI_RESULT_REFUSE;
                this->actor.textId = 0x2D;
            }
            break;
    }
    play->shootingGalleryStatus = -2;
    Message_StartTextbox(play, this->actor.textId, NULL);
    this->actionFunc = EnSyatekiMan_EndGame;
}

void EnSyatekiMan_EndGame(EnSyatekiMan* this, PlayState* play) {
    EnSyatekiItm* gallery;

    SkelAnime_Update(&this->skelAnime);
    if ((this->numTextBox == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        if (this->gameResult != SYATEKI_RESULT_FAILURE) {
            OnePointCutscene_EndCutscene(play, this->subCamId);
            this->subCamId = CAM_ID_NONE;
        }
        Message_CloseTextbox(play);
        gallery = ((EnSyatekiItm*)this->actor.parent);
        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_RESULTS;
            this->textIdx = 0;
            switch (this->gameResult) {
                case SYATEKI_RESULT_WINNER:
                    this->tempGallery = this->actor.parent;
                    this->actor.parent = NULL;
                    if (!LINK_IS_ADULT) {
                        if (!GET_ITEMGETINF(ITEMGETINF_0D)) {
                            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Pachinko ☆☆☆☆☆ %d\n" VT_RST,
                                   CUR_UPG_VALUE(UPG_BULLET_BAG));
                            if (CUR_UPG_VALUE(UPG_BULLET_BAG) == 1) {
                                this->getItemId = GI_BULLET_BAG_40;
                            } else {
                                this->getItemId = GI_BULLET_BAG_50;
                            }
                        } else {
                            this->getItemId = GI_RUPEE_PURPLE;
                        }
                    } else {
                        if (!GET_ITEMGETINF(ITEMGETINF_0E)) {
                            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ Equip_Bow ☆☆☆☆☆ %d\n" VT_RST, CUR_UPG_VALUE(UPG_QUIVER));
                            switch (CUR_UPG_VALUE(UPG_QUIVER)) {
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
                    Actor_OfferGetItem(&this->actor, play, this->getItemId, 2000.0f, 1000.0f);
                    this->actionFunc = EnSyatekiMan_GivePrize;
                    break;
                case SYATEKI_RESULT_ALMOST:
                    this->timer = 20;
                    func_8008EF44(play, 15);
                    this->actionFunc = EnSyatekiMan_RestartGame;
                    break;
                default:
                    if (this->gameResult == SYATEKI_RESULT_REFUSE) {
                        this->actionFunc = EnSyatekiMan_SetupIdle;
                    } else {
                        this->cameraHold = true;
                        this->actor.textId = sTextIds[this->textIdx];
                        this->numTextBox = sTextBoxCount[this->textIdx];
                        Message_StartTextbox(play, this->actor.textId, NULL);
                        this->actionFunc = EnSyatekiMan_Talk;
                    }
                    break;
            }
        }
    }
}

void EnSyatekiMan_GivePrize(EnSyatekiMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnSyatekiMan_FinishPrize;
    } else {
        Actor_OfferGetItem(&this->actor, play, this->getItemId, 2000.0f, 1000.0f);
    }
}

void EnSyatekiMan_FinishPrize(EnSyatekiMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        // "Successful completion"
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        if (!LINK_IS_ADULT) {
            SET_ITEMGETINF(ITEMGETINF_0D);
        } else if ((this->getItemId == GI_QUIVER_40) || (this->getItemId == GI_QUIVER_50)) {
            SET_ITEMGETINF(ITEMGETINF_0E);
        }
        this->gameResult = SYATEKI_RESULT_NONE;
        this->actor.parent = this->tempGallery;
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        this->actionFunc = EnSyatekiMan_SetupIdle;
    }
}

void EnSyatekiMan_RestartGame(EnSyatekiMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer == 0) {
        EnSyatekiItm* gallery = ((EnSyatekiItm*)this->actor.parent);

        if (gallery->actor.update != NULL) {
            gallery->signal = ENSYATEKI_START;
            this->gameResult = SYATEKI_RESULT_NONE;
            this->actionFunc = EnSyatekiMan_WaitForGame;
            // "Let's try again! Baby!"
            PRINTF(VT_FGCOL(BLUE) "再挑戦だぜ！ベイビー！" VT_RST "\n");
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
            this->blinkTimer = 20 + (s32)(Rand_ZeroOne() * 60.0f);
            this->blinkFunc = EnSyatekiMan_BlinkWait;
        } else {
            this->eyeState = nextEyeState;
            this->blinkTimer = 1;
        }
    }
}

void EnSyatekiMan_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnSyatekiMan* this = (EnSyatekiMan*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, play);

#if DEBUG_FEATURES
    EnSyatekiMan_SetBgm();
#endif

    this->blinkFunc(this);
    this->actor.focus.pos.y = 70.0f;
    Actor_SetFocus(&this->actor, 70.0f);
    Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->bodyRot, this->actor.focus.pos);
}

s32 EnSyatekiMan_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSyatekiMan* this = (EnSyatekiMan*)thisx;
    s32 turnDirection;

    if (limbIndex == 1) {
        rot->x += this->bodyRot.y;
    }
    if (limbIndex == 8) {
        *dList = gObjectOssanEnSyatekiManDL_007E28;
        turnDirection = 1;
        if (this->gameResult == SYATEKI_RESULT_REFUSE) {
            turnDirection = -1;
        }
        rot->x += this->headRot.y * turnDirection;
        rot->z += this->headRot.z;
    }
    return 0;
}

void EnSyatekiMan_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    EnSyatekiMan* this = (EnSyatekiMan*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnSyatekiMan_OverrideLimbDraw, NULL, this);
}

#if DEBUG_FEATURES
void EnSyatekiMan_SetBgm(void) {
    if (BREG(80)) {
        BREG(80) = false;
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, sBgmList[BREG(81)]);
    }
}
#endif
