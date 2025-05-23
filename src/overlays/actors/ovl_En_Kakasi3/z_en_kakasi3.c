/*
 * File: z_en_kakasi3.c
 * Overlay: ovl_En_Kakasi3
 * Description: Bonooru the Scarecrow
 */

#include "z_en_kakasi3.h"
#include "terminal.h"
#include "assets/objects/object_ka/object_ka.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void EnKakasi3_Init(Actor* thisx, PlayState* play);
void EnKakasi3_Destroy(Actor* thisx, PlayState* play);
void EnKakasi3_Update(Actor* thisx, PlayState* play);
void EnKakasi3_Draw(Actor* thisx, PlayState* play);

void func_80A911F0(EnKakasi3* this, PlayState* play);
void func_80A91284(EnKakasi3* this, PlayState* play);
void func_80A91348(EnKakasi3* this, PlayState* play);
void func_80A915B8(EnKakasi3* this, PlayState* play);
void func_80A91620(EnKakasi3* this, PlayState* play);
void func_80A91760(EnKakasi3* this, PlayState* play);
void func_80A917FC(EnKakasi3* this, PlayState* play);
void func_80A9187C(EnKakasi3* this, PlayState* play);
void func_80A918E4(EnKakasi3* this, PlayState* play);
void func_80A91A90(EnKakasi3* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

ActorProfile En_Kakasi3_Profile = {
    /**/ ACTOR_EN_KAKASI3,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_KA,
    /**/ sizeof(EnKakasi3),
    /**/ EnKakasi3_Init,
    /**/ EnKakasi3_Destroy,
    /**/ EnKakasi3_Update,
    /**/ EnKakasi3_Draw,
};

void EnKakasi3_Destroy(Actor* thisx, PlayState* play) {
    EnKakasi3* this = (EnKakasi3*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
    //! @bug SkelAnime_Free is not called
}

void EnKakasi3_Init(Actor* thisx, PlayState* play) {
    EnKakasi3* this = (EnKakasi3*)thisx;

    PRINTF("\n\n");
    // "Obonur" -- Related to the name of the scarecrow (Bonooru)
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n" VT_RST);
    this->actor.attentionRangeType = ATTENTION_RANGE_6;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    SkelAnime_InitFlex(play, &this->skelAnime, &object_ka_Skel_0065B0, &object_ka_Anim_000214, NULL, NULL, 0);
    this->actor.flags |= ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER;
    this->rot = this->actor.world.rot;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A911F0;
}

void func_80A90E28(EnKakasi3* this) {
    this->unk_1A4 = 0;
    this->skelAnime.playSpeed = 0.0f;
    this->unk_1AA = this->unk_1AE = 0x0;

    Math_ApproachZeroF(&this->skelAnime.curFrame, 0.5f, 1.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.x, this->rot.x, 5, 0x2710, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->rot.y, 5, 0x2710, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->rot.z, 5, 0x2710, 0);
}

void func_80A90EBC(EnKakasi3* this, PlayState* play, s32 arg) {
    s16 currentFrame;
    s16 ocarinaNote = play->msgCtx.lastOcarinaButtonIndex;

    if (arg != 0) {
        if (this->unk_19C[3] == 0) {
            this->unk_19C[3] = (s16)Rand_ZeroFloat(10.99f) + 30;
            this->unk_1A6 = (s16)Rand_ZeroFloat(4.99f);
        }

        this->unk_19A = (s16)Rand_ZeroFloat(2.99f) + 5;
        ocarinaNote = this->unk_1A6;
    }
    switch (ocarinaNote) {
        case OCARINA_BTN_A:
            this->unk_19A++;
            if (this->unk_1A4 == 0) {
                this->unk_1A4 = 1;
                Actor_PlaySfx(&this->actor, NA_SE_EV_KAKASHI_ROLL);
            }
            break;
        case OCARINA_BTN_C_DOWN:
            this->unk_19A++;
            this->unk_1B8 = 1.0f;
            break;
        case OCARINA_BTN_C_RIGHT:
            this->unk_19A++;
            if (this->unk_1AE == 0x0) {
                this->unk_1AE = 0x1388;
            }
            break;
        case OCARINA_BTN_C_LEFT:
            this->unk_19A++;
            if (this->unk_1AA == 0x0) {
                this->unk_1AA = 0x1388;
            }
            break;
        case OCARINA_BTN_C_UP:
            this->unk_19A++;
            this->unk_1B8 = 2.0f;
            break;
    }

    if (this->unk_19A > 8) {
        this->unk_19A = 8;
    }

    if (this->unk_19A != 0) {
        this->actor.gravity = -1.0f;
        if (this->unk_19A == 8 && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->actor.velocity.y = 3.0f;
            Actor_PlaySfx(&this->actor, NA_SE_IT_KAKASHI_JUMP);
        }
        Math_ApproachF(&this->skelAnime.playSpeed, this->unk_1B8, 0.1f, 0.2f);
        Math_SmoothStepToS(&this->actor.shape.rot.x, this->unk_1AA, 0x5, 0x3E8, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, this->unk_1AE, 0x5, 0x3E8, 0);

        if (this->unk_1AA != 0x0 && fabsf(this->actor.shape.rot.x - this->unk_1AA) < 50.0f) {
            this->unk_1AA *= -1.0f;
        }
        if (this->unk_1AE != 0x0 && fabsf(this->actor.shape.rot.z - this->unk_1AE) < 50.0f) {
            this->unk_1AE *= -1.0f;
        }

        if (this->unk_1A4 != 0) {
            this->actor.shape.rot.y += 0x1000;
            if (this->actor.shape.rot.y == 0) {
                this->unk_1A4 = 0;
            }
        }
        currentFrame = this->skelAnime.curFrame;
        if (currentFrame == 11 || currentFrame == 17) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_KAKASHI_SWING);
        }
        SkelAnime_Update(&this->skelAnime);
    }
}

void func_80A911F0(EnKakasi3* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&object_ka_Anim_000214);

    Animation_Change(&this->skelAnime, &object_ka_Anim_000214, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A91284;
}

void func_80A91284(EnKakasi3* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    this->actor.textId = 0x40A1;
    this->dialogState = TEXT_STATE_DONE;
    this->unk_19A = 0;

    if (!LINK_IS_ADULT) {
        this->unk_194 = false;
        if (gSaveContext.save.info.scarecrowSpawnSongSet) {
            this->actor.textId = 0x40A0;
            this->dialogState = TEXT_STATE_EVENT;
            this->unk_1A8 = 1;
        }
    } else {
        this->unk_194 = true;
        if (gSaveContext.save.info.scarecrowSpawnSongSet) {
            if (this->unk_195) {
                this->actor.textId = 0x40A2;
            } else {
                this->actor.textId = 0x40A3;
            }
        }
    }
    this->actionFunc = func_80A91348;
}

void func_80A91348(EnKakasi3* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    this->subCamId = CAM_ID_NONE;
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        if (!this->unk_194) {
            if (this->unk_1A8 == 0) {
                this->actionFunc = func_80A91284;
            } else {
                this->actionFunc = func_80A91760;
            }
        } else {
            this->actionFunc = func_80A91284;
        }
    } else {
        s16 angleTowardsLink = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

        if (!(this->actor.xzDistToPlayer > 120.0f)) {
            s16 absAngleTowardsLink = ABS(angleTowardsLink);

            if (absAngleTowardsLink < 0x4300) {
                if (!this->unk_194) {

                    if (player->stateFlags2 & PLAYER_STATE2_24) {
                        this->subCamId = OnePointCutscene_Init(play, 2260, -99, &this->actor, CAM_ID_MAIN);
                        play->msgCtx.msgMode = MSGMODE_PAUSED;
                        this->dialogState = TEXT_STATE_EVENT;
                        this->unk_1B8 = 0.0f;
                        Message_StartTextbox(play, 0x40A4, NULL);
                        player->stateFlags2 |= PLAYER_STATE2_23;
                        this->actionFunc = func_80A915B8;
                        return;
                    }
                    if (this->actor.xzDistToPlayer < 80.0f) {
                        player->stateFlags2 |= PLAYER_STATE2_23;
                    }
                } else if (gSaveContext.save.info.scarecrowSpawnSongSet && !this->unk_195) {

                    if (player->stateFlags2 & PLAYER_STATE2_24) {
                        this->subCamId = OnePointCutscene_Init(play, 2260, -99, &this->actor, CAM_ID_MAIN);
                        play->msgCtx.msgMode = MSGMODE_PAUSED;
                        this->dialogState = TEXT_STATE_EVENT;
                        this->unk_1B8 = 0.0f;
                        Message_StartTextbox(play, 0x40A8, NULL);
                        player->stateFlags2 |= PLAYER_STATE2_23;
                        this->actionFunc = func_80A9187C;
                        return;
                    }
                    if (this->actor.xzDistToPlayer < 80.0f) {
                        player->stateFlags2 |= PLAYER_STATE2_23;
                    }
                }
                Actor_OfferTalk(&this->actor, play, 100.0f);
            }
        }
    }
}

void func_80A915B8(EnKakasi3* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Message_StartOcarina(play, OCARINA_ACTION_SCARECROW_SPAWN_RECORDING);
        this->actionFunc = func_80A91620;
    }
}

void func_80A91620(EnKakasi3* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((play->msgCtx.ocarinaMode == OCARINA_MODE_04 ||
         (play->msgCtx.ocarinaMode >= OCARINA_MODE_05 && play->msgCtx.ocarinaMode < OCARINA_MODE_0B)) &&
        (play->msgCtx.msgMode == MSGMODE_NONE)) {

        OnePointCutscene_EndCutscene(play, this->subCamId);
        if (play->cameraPtrs[this->subCamId] == NULL) {
            this->subCamId = CAM_ID_NONE;
        }
        if (this->subCamId != CAM_ID_NONE) {
            Camera_SetFinishedFlag(play->cameraPtrs[this->subCamId]);
        }
        this->actionFunc = func_80A911F0;
        return;
    }

    if (play->msgCtx.ocarinaMode == OCARINA_MODE_03 && play->msgCtx.msgMode == MSGMODE_NONE) {
        this->dialogState = TEXT_STATE_EVENT;
        Message_StartTextbox(play, 0x40A5, NULL);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (play->msgCtx.ocarinaMode == OCARINA_MODE_01) {
        func_80A90EBC(this, play, 0);
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void func_80A91760(EnKakasi3* this, PlayState* play) {

    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    if (this->dialogState == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        play->msgCtx.msgMode = MSGMODE_PAUSED;
        Message_StartOcarina(play, OCARINA_ACTION_SCARECROW_SPAWN_PLAYBACK);
        this->actionFunc = func_80A917FC;
        this->subCamId = OnePointCutscene_Init(play, 2280, -99, &this->actor, CAM_ID_MAIN);
    }
}

void func_80A917FC(EnKakasi3* this, PlayState* play) {

    if (play->msgCtx.ocarinaMode != OCARINA_MODE_0F) {
        func_80A90EBC(this, play, 1);
    } else {
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        Message_CloseTextbox(play);
        OnePointCutscene_EndCutscene(play, this->subCamId);
        this->actionFunc = func_80A911F0;
    }
}

void func_80A9187C(EnKakasi3* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Message_StartOcarina(play, OCARINA_ACTION_CHECK_SCARECROW_SPAWN);
        this->actionFunc = func_80A918E4;
    }
}

void func_80A918E4(EnKakasi3* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (BREG(3) != 0) {
        // "No way!"
        PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ まさか！ ☆☆☆☆☆ %d\n" VT_RST, play->msgCtx.ocarinaMode);
    }
    if ((play->msgCtx.ocarinaMode == OCARINA_MODE_04 ||
         (play->msgCtx.ocarinaMode >= OCARINA_MODE_05 && play->msgCtx.ocarinaMode < OCARINA_MODE_0B)) &&
        play->msgCtx.msgMode == MSGMODE_NONE) {

        Message_StartTextbox(play, 0x40A6, NULL);
        this->dialogState = TEXT_STATE_EVENT;
        OnePointCutscene_EndCutscene(play, this->subCamId);
        this->subCamId = CAM_ID_NONE;
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (play->msgCtx.ocarinaMode == OCARINA_MODE_03 && play->msgCtx.msgMode == MSGMODE_NONE) {
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        if (BREG(3) != 0) {
            PRINTF("\n\n");
            // "With this, other guys are OK! That's it!"
            PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ これで、他の奴もＯＫ！だ！ ☆☆☆☆☆ %d\n" VT_RST, play->msgCtx.ocarinaMode);
        }
        this->unk_195 = true;
        Message_StartTextbox(play, 0x40A7, NULL);
        this->dialogState = TEXT_STATE_EVENT;
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (play->msgCtx.ocarinaMode == OCARINA_MODE_01) {
        func_80A90EBC(this, play, 0);
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void func_80A91A90(EnKakasi3* this, PlayState* play) {
    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

    if (this->dialogState == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        if (this->unk_195) {
            if (!GET_EVENTCHKINF(EVENTCHKINF_9C)) {
                SET_EVENTCHKINF(EVENTCHKINF_9C);
            }
        }
        if (play->cameraPtrs[this->subCamId] == NULL) {
            this->subCamId = CAM_ID_NONE;
        }
        if (this->subCamId != CAM_ID_NONE) {
            Camera_SetFinishedFlag(play->cameraPtrs[this->subCamId]);
        }
        Message_CloseTextbox(play);
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actionFunc = func_80A911F0;
    }
}

void EnKakasi3_Update(Actor* thisx, PlayState* play) {
    EnKakasi3* this = (EnKakasi3*)thisx;
    s32 pad;
    s32 i;

    if (BREG(2) != 0) {
        PRINTF("\n\n");
        // "flag!"
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n" VT_RST, gSaveContext.save.info.scarecrowSpawnSongSet);
    }

    this->unk_198++;
    this->actor.world.rot = this->actor.shape.rot;
    for (i = 0; i < ARRAY_COUNT(this->unk_19C); i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    Actor_SetFocus(&this->actor, 60.0f);
    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 50.0f, 50.0f, 100.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void EnKakasi3_Draw(Actor* thisx, PlayState* play) {
    EnKakasi3* this = (EnKakasi3*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
}
