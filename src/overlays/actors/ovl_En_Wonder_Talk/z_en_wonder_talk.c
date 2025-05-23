/*
 * File: z_en_wonder_talk.c
 * Overlay: ovl_En_Wonder_Talk
 * Description: Checkable spot (Green Navi)
 */

#include "z_en_wonder_talk.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_LOCK_ON_DISABLED)

void EnWonderTalk_Init(Actor* thisx, PlayState* play);
void EnWonderTalk_Destroy(Actor* thisx, PlayState* play);
void EnWonderTalk_Update(Actor* thisx, PlayState* play);

void func_80B391CC(EnWonderTalk* this, PlayState* play);
void func_80B395F0(EnWonderTalk* this, PlayState* play);
void func_80B3943C(EnWonderTalk* this, PlayState* play);

ActorProfile En_Wonder_Talk_Profile = {
    /**/ ACTOR_EN_WONDER_TALK,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnWonderTalk),
    /**/ EnWonderTalk_Init,
    /**/ EnWonderTalk_Destroy,
    /**/ EnWonderTalk_Update,
    /**/ NULL,
};

void EnWonderTalk_Destroy(Actor* thisx, PlayState* play) {
}

void EnWonderTalk_Init(Actor* thisx, PlayState* play) {
    EnWonderTalk* this = (EnWonderTalk*)thisx;

    PRINTF("\n\n");
    // "Special conversation"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 特殊会話くん ☆☆☆☆☆ %x\n" VT_RST, this->actor.params);

    this->unk_150 = PARAMS_GET_U(this->actor.params, 11, 5);
    this->unk_152 = PARAMS_GET_U(this->actor.params, 6, 5);
    this->switchFlag = PARAMS_GET_U(this->actor.params, 0, 6);
    if (this->switchFlag == 0x3F) {
        this->switchFlag = -1;
    }
    this->actor.attentionRangeType = ATTENTION_RANGE_1;
    if (this->switchFlag >= 0) {
        if (Flags_GetSwitch(play, this->switchFlag)) {
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
            Actor_Kill(&this->actor);
            return;
        }
    }
    this->actionFunc = func_80B391CC;
    this->unk_15C = 40.0f;
}

void func_80B391CC(EnWonderTalk* this, PlayState* play) {
    if (this->switchFlag < 0 || !Flags_GetSwitch(play, this->switchFlag)) {
        switch (this->unk_150) {
            case 1:
                // "Slate GO!"
                PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ 石板ＧＯ！ ☆☆☆☆☆ \n" VT_RST);
                this->height = 0.0f;
                this->unk_15C = 80.0f;
                // "Attention coordinates"
                PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n" VT_RST, 0.0f);
                if (!LINK_IS_ADULT) {
                    this->actor.textId = 0x7040;
                    // "Children"
                    PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ こども ☆☆☆☆☆ \n" VT_RST);
                } else {
                    // "Adult"
                    PRINTF(VT_FGCOL(CYAN) " ☆☆☆☆☆ おとな ☆☆☆☆☆ \n" VT_RST);
                    this->actor.textId = 0x7088;
                }

                this->unk_156 = TEXT_STATE_EVENT;
                PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n" VT_RST, this->actor.textId);
                break;
            case 2:
                // "Diary start!"
                PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ 日記帳スタート！ ☆☆☆☆☆ \n" VT_RST);
                this->actor.textId = 0x5002;
                this->unk_156 = TEXT_STATE_CHOICE;
                this->unk_15C = 40.0f;
                this->height = 30.0f;
                // "Attention coordinates"
                PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n" VT_RST, 30.0f);
                break;
            case 3:
                this->actor.textId = 0x501E;
                this->unk_156 = TEXT_STATE_EVENT;
                this->height = 0.0f;
                this->unk_15C = 110.0f;
                // "Attention coordinates"
                PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n" VT_RST, 0.0f);
                break;
            case 4:
                this->actor.textId = 0x5020;
                this->unk_156 = TEXT_STATE_DONE;
                this->height = 0.0f;
                // "Attention coordinates"
                PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n" VT_RST, 0.0f);
                this->unk_15C = 120.0f;
                if (GET_EVENTCHKINF(EVENTCHKINF_1D)) {
                    Actor_Kill(&this->actor);
                }
                break;
            case 5:
                this->actor.textId = 0x501F;
                this->unk_156 = TEXT_STATE_EVENT;
                this->height = 0.0f;
                this->unk_15C = 110.0f;
                // "Attention coordinates"
                PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n" VT_RST, 0.0f);
                break;
            default:
                this->actor.textId = 0x7072;
                this->unk_156 = TEXT_STATE_EVENT;
                break;
        }

        PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n" VT_RST, this->actor.textId);
        this->actionFunc = func_80B3943C;
    }
}

void func_80B3943C(EnWonderTalk* this, PlayState* play) {
    s16 yawDiff;
    s16 yawDiffTemp;

    this->unk_15A++;
    if (this->unk_150 == 4 && GET_EVENTCHKINF(EVENTCHKINF_1D)) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->switchFlag < 0 || !Flags_GetSwitch(play, this->switchFlag)) {
        if ((Actor_TalkOfferAccepted(&this->actor, play))) {
            if (this->unk_156 != TEXT_STATE_DONE) {
                this->actionFunc = func_80B395F0;
            } else {
                if (this->switchFlag >= 0) {
                    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                    Flags_SetSwitch(play, this->switchFlag);
                }
                this->actionFunc = func_80B391CC;
            }
        } else if (!(this->unk_15C < this->actor.xzDistToPlayer)) {
            yawDiffTemp = (this->actor.yawTowardsPlayer - this->actor.world.rot.y);
            yawDiff = ABS(yawDiffTemp);

            if (yawDiff < 0x4000) {
                if (this->unk_15A >= 2) {
                    PRINTF("\n\n");
                    // "Save information"
                    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ セーブ情報\t\t☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
                    // "Type index"
                    PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 種類インデックス\t☆☆☆☆☆ %d\n" VT_RST, this->unk_150);
                    // "Actual message type"
                    PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ 実質メッセージ種類     %x\n" VT_RST, this->actor.textId);
                    // "Specified range"
                    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 指定範囲               %d\n" VT_RST, this->actor.world.rot.z);
                    PRINTF("\n\n");
                }
                this->unk_15A = 0;
                Actor_OfferTalk(&this->actor, play, this->unk_15C);
            }
        }
    }
}

void func_80B395F0(EnWonderTalk* this, PlayState* play) {
    if (this->unk_156 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        if (this->switchFlag >= 0) {
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            Flags_SetSwitch(play, this->switchFlag);
        }
        switch (this->unk_150) {
            case 1:
                Message_CloseTextbox(play);
                this->actionFunc = func_80B391CC;
                break;
            case 2:
                switch (play->msgCtx.choiceIndex) {
                    case 0:
                        if (!LINK_IS_ADULT) {
                            // "I'm still a child!"
                            PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ まだコドモなの！ ☆☆☆☆☆ \n" VT_RST);
                            this->actor.textId = 0x5001;
                        } else {
                            // "I'm an adult. .. .."
                            PRINTF(VT_FGCOL(YELLOW) " ☆☆☆☆☆ アダルトなの。。。 ☆☆☆☆☆ \n" VT_RST);
                            this->actor.textId = 0x5003;
                        }
                        break;
                    case 1:
                        // "Out!"
                        PRINTF(VT_FGCOL(MAGENTA) " ☆☆☆☆☆ はずれ！ ☆☆☆☆☆ \n" VT_RST);
                        this->actor.textId = 0x5004;
                        break;
                }

                this->unk_156 = TEXT_STATE_DONE;
                Message_ContinueTextbox(play, this->actor.textId);
                this->actionFunc = func_80B391CC;
                break;
            case 3:
                Message_CloseTextbox(play);
                if (this->unk_164 == 0) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_POH, this->actor.world.pos.x, this->actor.world.pos.y,
                                this->actor.world.pos.z, 0, 0, 0, 2);
                    this->unk_164 = 1;
                }

                this->actionFunc = func_80B391CC;
                break;
            case 5:
                Message_CloseTextbox(play);
                if (this->unk_164 == 0) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_POH, this->actor.world.pos.x, this->actor.world.pos.y,
                                this->actor.world.pos.z, 0, 0, 0, 3);
                    this->unk_164 = 1;
                }
                this->actionFunc = func_80B391CC;
                break;
        }
    }
}

void EnWonderTalk_Update(Actor* thisx, PlayState* play) {
    EnWonderTalk* this = (EnWonderTalk*)thisx;

    if (this->unk_158 != 0) {
        this->unk_158--;
    }
    this->actionFunc(this, play);
    Actor_SetFocus(&this->actor, this->height);

    if (DEBUG_FEATURES && BREG(0) != 0) {
        if (this->unk_15A != 0) {
            if ((this->unk_15A & 1) == 0) {
                DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                       this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                       1.0f, 1.0f, 10, 10, 10, 255, 4, play->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                   this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                   1.0f, 1.0f, 0, 255, 0, 255, 4, play->state.gfxCtx);
        }
    }
}
