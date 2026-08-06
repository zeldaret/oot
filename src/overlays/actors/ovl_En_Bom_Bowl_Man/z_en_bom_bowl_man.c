#include "z_en_bom_bowl_man.h"
#include "overlays/actors/ovl_En_Bom_Bowl_Pit/z_en_bom_bowl_pit.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"
#include "overlays/actors/ovl_En_Syateki_Niw/z_en_syateki_niw.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "rand.h"
#include "regs.h"
#include "segmented_address.h"
#include "sfx.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_bg/object_bg.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_LOCK_ON_DISABLED)

void EnBomBowlMan_Init(Actor* thisx, PlayState* play2);
void EnBomBowlMan_Destroy(Actor* thisx, PlayState* play);
void EnBomBowlMan_Update(Actor* thisx, PlayState* play);
void EnBomBowlMan_Draw(Actor* thisx, PlayState* play);

void EnBomBowlMan_SetupWaitTalk(EnBomBowlMan* this, PlayState* play);
void EnBomBowlMan_WaitTalk(EnBomBowlMan* this, PlayState* play);
void func_809C395C(EnBomBowlMan* this, PlayState* play);
void func_809C39D0(EnBomBowlMan* this, PlayState* play);
void func_809C3A54(EnBomBowlMan* this, PlayState* play);
void func_809C3B50(EnBomBowlMan* this, PlayState* play);
void func_809C3C7C(EnBomBowlMan* this, PlayState* play);
void func_809C3CD4(EnBomBowlMan* this, PlayState* play);
void func_809C3DC4(EnBomBowlMan* this, PlayState* play);
void func_809C4040(EnBomBowlMan* this, PlayState* play);
void func_809C41FC(EnBomBowlMan* this, PlayState* play);
void func_809C4318(EnBomBowlMan* this, PlayState* play);
void func_809C441C(EnBomBowlMan* this, PlayState* play);
void func_809C4664(EnBomBowlMan* this, PlayState* play);

ActorProfile En_Bom_Bowl_Man_Profile = {
    /**/ ACTOR_EN_BOM_BOWL_MAN,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_BG,
    /**/ sizeof(EnBomBowlMan),
    /**/ EnBomBowlMan_Init,
    /**/ EnBomBowlMan_Destroy,
    /**/ EnBomBowlMan_Update,
    /**/ EnBomBowlMan_Draw,
};

typedef struct CuccoColliderDim {
    f32 radius;
    f32 height;
    s32 unk_8; // unused
} CuccoColliderDim;
CuccoColliderDim sCuccoColliderDims[2] = { { 16.0f, 46.0f, 0 }, { 36.0f, 56.0f, 0 } };
Vec3f sCuccoPositions[2] = { { 60.0f, -60.0f, -430.0f }, { 0.0f, -120.0f, -620.0f } };
f32 sCuccoScales[2] = { 0.01f, 0.03f };
Vec3f D_809C4A48 = { 0.0f, 0.1f, 0.0f };
Vec3f D_809C4A54 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809C4A60[5] = {
    { 0.0f, 22.0f, 0.0f }, { 0.0f, 22.0f, 0.0f }, { 0.0f, 8.0f, 0.0f }, { 0.0f, 9.0f, 0.0f }, { 0.0f, -2.0f, 0.0f },
};
static s16 D_809C4A9C[6] = { 0x4268, 0x4268, -0x3E8, 0, 0x4268, 0 };
static void* sEyeTextures[] = { gBowlingGirlEyeOpenTex, gBowlingGirlEyeHalfTex, gBowlingGirlEyeClosedTex };

void EnBomBowlMan_Init(Actor* thisx, PlayState* play2) {
    EnBomBowlMan* this = (EnBomBowlMan*)thisx;
    PlayState* play = play2;
    s32 i;
    EnSyatekiNiw* cucco;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gBowlingGirlSkel, &gBowlingGirlSleepingAnim, this->jointTable,
                       this->morphTable, BOWLING_GIRL_LIMB_MAX);
    PRINTF(VT_FGCOL(GREEN) "☆ もー 肩こっちゃうよねぇ〜 \t\t ☆ \n" VT_RST);
    PRINTF(VT_FGCOL(GREEN) "☆ もっとラクしてもうかるバイトないかしら？ ☆ %d\n" VT_RST, play->bombchuBowlingStatus);
    this->unk248 = this->actor.world.pos;
    this->actor.shape.yOffset = -60.0f;
    Actor_SetScale(&this->actor, 0.013f);
    for (i = 0; i < 2; i++) {
        cucco = (EnSyatekiNiw*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_SYATEKI_NIW, sCuccoPositions[i].x,
                                           sCuccoPositions[i].y, sCuccoPositions[i].z, 0, 0, 0, SYATEKI_MINIGAME_ALLEY);
        if (cucco != NULL) {
            cucco->scale = sCuccoScales[i];
            cucco->collider.dim.radius = sCuccoColliderDims[i].radius;
            cucco->collider.dim.height = sCuccoColliderDims[i].height;
        }
    }
    this->unk242 = Rand_ZeroFloat(4.99f);
    this->actor.attentionRangeType = ATTENTION_RANGE_1;
    this->actionFunc = EnBomBowlMan_SetupWaitTalk;
}

void EnBomBowlMan_Destroy(Actor* thisx, PlayState* play) {
}

void EnBomBowlMan_SetupWaitTalk(EnBomBowlMan* this, PlayState* play) {
    this->curAnimFrameCount = Animation_GetLastFrame(&gBowlingGirlSleepingAnim);
    Animation_Change(&this->skelAnime, &gBowlingGirlSleepingAnim, 1.0f, 0.0f, this->curAnimFrameCount, ANIMMODE_LOOP,
                     -10.0f);
    this->actor.textId = 0xC0;
    this->waitMessageState = TEXT_STATE_EVENT;
    this->actionFunc = EnBomBowlMan_WaitTalk;
}

void EnBomBowlMan_WaitTalk(EnBomBowlMan* this, PlayState* play) {
    s16 relYawTowardsPlayer;
    s16 absRelYawTowardsPlayer;

    SkelAnime_Update(&this->skelAnime);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = func_809C395C;
    } else {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        absRelYawTowardsPlayer = ABS(relYawTowardsPlayer);
        if (!(this->actor.xzDistToPlayer > 120.0f) && (absRelYawTowardsPlayer < 0x4300)) {
            Actor_OfferTalk(&this->actor, play, 120.0f);
        }
    }
}

void func_809C395C(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        play->msgCtx.msgMode = MSGMODE_PAUSED;
        this->actionFunc = func_809C39D0;
    }
}

void func_809C39D0(EnBomBowlMan* this, PlayState* play) {
    this->curAnimFrameCount = Animation_GetLastFrame(&gBowlingGirlNonchalantAnim_);
    Animation_Change(&this->skelAnime, &gBowlingGirlNonchalantAnim_, 1.0f, 0.0f, this->curAnimFrameCount, ANIMMODE_ONCE,
                     -10.0f);
    this->eyesState = 1;
    this->actionFunc = func_809C3A54;
}

void func_809C3A54(EnBomBowlMan* this, PlayState* play) {
    f32 prevFrame;

    prevFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    if (prevFrame == 30.0f) {
        this->waitMessageState = TEXT_STATE_EVENT;
        if (GET_EVENTCHKINF(EVENTCHKINF_25) || (BREG(2) != 0)) {
            this->actor.textId = 0xBF;
        } else {
            this->actor.textId = 0x7058;
        }
    }
    Message_ContinueTextbox(play, this->actor.textId);
    if ((this->eyeTexIndex == 0) && (this->eyesState == 2) && (this->eyesTimer == 0)) {
        this->eyeTexIndex = 2;
        this->unk23A += 1;
        if (this->unk23A >= 3) {
            this->actionFunc = func_809C3B50;
        }
    }
}

void func_809C3B50(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->curAnimFrameCount = Animation_GetLastFrame(&gBowlingGirlHandsOnBarAnim);
        Animation_Change(&this->skelAnime, &gBowlingGirlHandsOnBarAnim, 1.0f, 0.0f, this->curAnimFrameCount,
                         ANIMMODE_LOOP, -10.0f);
        this->eyesState = 3;
        this->eyesTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        if (!GET_EVENTCHKINF(EVENTCHKINF_25) && (BREG(2) == 0)) {
            this->actionFunc = func_809C3C7C;
        } else {
            this->actor.textId = 0x18;
            this->waitMessageState = TEXT_STATE_CHOICE;
            Message_ContinueTextbox(play, this->actor.textId);
            this->actionFunc = func_809C4040;
        }
    }
}

void func_809C3C7C(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = func_809C3CD4;
    } else {
        Actor_OfferTalk(&this->actor, play, 120.0f);
    }
}

void func_809C3CD4(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = func_809C3C7C;
    }
}

void func_809C3D40(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_258 == 0) {
        if (!this->unk232) {
            this->actor.textId = 0x18;
        } else {
            this->actor.textId = 0x1A;
        }
        this->waitMessageState = TEXT_STATE_CHOICE;
    } else {
        this->actor.textId = 0x19;
        this->waitMessageState = TEXT_STATE_EVENT;
    }
    this->actionFunc = func_809C3DC4;
}

void func_809C3DC4(EnBomBowlMan* this, PlayState* play) {
    s16 relYawTowardsPlayer;
    s16 relYawTowardsPlayerAbs;

    SkelAnime_Update(&this->skelAnime);
    if (BREG(3) != 0) {
        PRINTF(VT_FGCOL(RED) "☆ game_play->bomchu_game_flag ☆ %d\n" VT_RST, play->bombchuBowlingStatus);
        PRINTF(VT_FGCOL(RED) "☆ 壁１の状態どう？ ☆ %d\n" VT_RST, this->unk23E_arr[0]);
        PRINTF(VT_FGCOL(RED) "☆ 壁２の状態どう？ ☆ %d\n" VT_RST, this->unk23E_arr[1]);
        PRINTF(VT_FGCOL(RED) "☆ 穴情報\t     ☆ %d\n" VT_RST, this->unk25C->unk164);
        PRINTF("\n\n");
    }
    this->unk244 = 0;
    if (this->unk25C != NULL) {
        if ((this->unk23E_arr[0] != 1) && (this->unk23E_arr[1] != 1) && (this->unk25C->unk164 == 2)) {
            this->unk244 = 1;
            this->unk25C->unk164 = 0;
            PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ 中央ＨＩＴ！！！！ ☆☆☆☆☆ \n" VT_RST);
        }
        if ((play->bombchuBowlingStatus == -1) && (play->actorCtx.actorLists[3].length == 0) &&
            (this->unk25C->unk164 == 0) && (this->unk23E_arr[0] != 1) && (this->unk23E_arr[1] != 1)) {
            this->unk244 = 2;
            PRINTF(VT_FGCOL(MAGENTA) "☆☆☆☆☆ ボムチュウ消化 ☆☆☆☆☆ \n" VT_RST);
        }
    }
    if (this->unk244 != 0) {
        this->actor.textId = 0x1A;
        this->waitMessageState = TEXT_STATE_CHOICE;
        this->unk_258 = 0;
        if ((this->unk260 != NULL) && (this->unk260->actor.update != NULL)) {
            this->unk260->killItem = true;
            this->unk260 = NULL;
        }
        play->bombchuBowlingStatus = 0;
        this->unk23C = 1;
        Message_StartTextbox(play, this->actor.textId, NULL);
        if (this->unk244 == 2) {
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        }
        this->actionFunc = func_809C4040;
    } else if (Actor_TalkOfferAccepted(&this->actor, play)) {
        if (this->unk_258 == 0) {
            this->actionFunc = func_809C4040;
        } else {
            this->actionFunc = func_809C41FC;
        }
    } else {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        relYawTowardsPlayerAbs = ABS(relYawTowardsPlayer);
        if (!(this->actor.xzDistToPlayer > 120.0f) && (relYawTowardsPlayerAbs < 0x4300)) {
            Actor_OfferTalk(&this->actor, play, 120.0f);
        }
    }
}

void func_809C4040(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees >= 30) {
                    Rupees_ChangeBy(-30);
                    this->unk23E_arr[1] = 0;
                    this->unk_258 = 1;
                    this->unk23E_arr[0] = this->unk23E_arr[1];
                    play->bombchuBowlingStatus = 10;
                    Flags_SetSwitch(play, 0x38);
                    if (!this->unk232 && (this->unk23C == 0)) {
                        this->actor.textId = 0x19;
                        Message_ContinueTextbox(play, this->actor.textId);
                        this->waitMessageState = TEXT_STATE_EVENT;
                        this->actionFunc = func_809C41FC;
                    } else {
                        this->actor.textId = 0x1B;
                        Message_ContinueTextbox(play, this->actor.textId);
                        this->waitMessageState = TEXT_STATE_EVENT;
                        OnePointCutscene_Init(play, 8010, -99, NULL, CAM_ID_MAIN);
                        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                        this->actionFunc = func_809C4318;
                    }
                } else {
                    this->unk23C = 0;
                    this->actor.textId = 0x85;
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->waitMessageState = TEXT_STATE_EVENT;
                    this->actionFunc = func_809C41FC;
                }
                break;
            case 1:
                this->unk23C = 0;
                this->actor.textId = 0x2D;
                Message_ContinueTextbox(play, this->actor.textId);
                this->waitMessageState = TEXT_STATE_EVENT;
                this->actionFunc = func_809C41FC;
                break;
        }
    }
}

void func_809C41FC(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        if (((this->actor.textId == 0x2D) || (this->actor.textId == 0x85)) && Flags_GetSwitch(play, 0x38)) {
            Flags_UnsetSwitch(play, 0x38);
        }
        if (this->unk_258 == 1) {
            this->actor.textId = 0x1B;
            Message_ContinueTextbox(play, this->actor.textId);
            this->waitMessageState = TEXT_STATE_EVENT;
            OnePointCutscene_Init(play, 8010, -99, NULL, CAM_ID_MAIN);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            this->actionFunc = func_809C4318;
        } else {
            if (this->unk244 == 2) {
                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
            }
            this->actionFunc = func_809C3D40;
        }
    }
}

void func_809C4318(EnBomBowlMan* this, PlayState* play) {
    Vec3f effAccel = D_809C4A48;
    Vec3f effVel = D_809C4A54;
    Vec3f effPos;

    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        effPos.x = 148.0f;
        effPos.y = 40.0f;
        effPos.z = 300.0f;
        EffectSsBomb2_SpawnLayered(play, &effPos, &effVel, &effAccel, 50, 15);
        Actor_PlaySfx(&this->actor, NA_SE_IT_GOODS_APPEAR);
        this->unk22A = 10;
        this->actionFunc = func_809C441C;
    }
}

void func_809C441C(EnBomBowlMan* this, PlayState* play) {
    s16 reward;
    s32 pad;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk22A == 0) {
        switch (this->unk242) {
            case 0:
                reward = EXITEM_BOMB_BAG_BOWLING;
                if (GET_ITEMGETINF(ITEMGETINF_11)) {
                    reward = EXITEM_PURPLE_RUPEE_BOWLING;
                }
                break;
            case 1:
                reward = EXITEM_PURPLE_RUPEE_BOWLING;
                break;
            case 2:
                reward = EXITEM_BOMBCHUS_BOWLING;
                break;
            case 3:
                reward = EXITEM_HEART_PIECE_BOWLING;
                if (GET_ITEMGETINF(ITEMGETINF_12)) {
                    reward = EXITEM_PURPLE_RUPEE_BOWLING;
                }
                break;
            case 4:
                reward = EXITEM_BOMBS_BOWLING;
                break;
        }
        this->reward = reward;
        if (BREG(7) != 0) {
            this->reward = BREG(7) - 1;
        }
        this->unk260 = (EnExItem*)Actor_SpawnAsChild(
            &play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, D_809C4A60[this->reward].x + 148.0f,
            D_809C4A60[this->reward].y + 40.0f, D_809C4A60[this->reward].z + 300.0f, 0, D_809C4A9C[this->reward], 0,
            this->reward + EXITEM_BOMB_BAG_COUNTER);
        if (!this->unk232) {
            this->unk25C = (EnBomBowlPit*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_BOM_BOWL_PIT,
                                                             0.0f, 90.0f, -860.0f, 0, 0, 0, 0);
            if (this->unk25C != NULL) {
                this->unk25C->reward = this->reward;
            }
        } else {
            this->unk25C->reward = this->reward;
        }
        this->unk25C->unk15C = true;
        this->unk_258 = 2;
        this->actor.textId = 0x405A;
        Message_ContinueTextbox(play, this->actor.textId);
        this->waitMessageState = TEXT_STATE_EVENT;
        this->unk242 += 1;
        if (this->unk242 >= 5) {
            this->unk242 = 0;
        }
        this->actionFunc = func_809C4664;
    }
}

void func_809C4664(EnBomBowlMan* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
        this->unk232 = true;
        if (BREG(2) != 0) {
            BREG(2) = 0;
        }
        PRINTF(VT_FGCOL(YELLOW) "☆ わー ☆ %d\n" VT_RST, play->bombchuBowlingStatus);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actionFunc = func_809C3D40;
    }
}

void EnBomBowlMan_Update(Actor* thisx, PlayState* play) {
    EnBomBowlMan* this = (EnBomBowlMan*)thisx;

    this->unk_22C++;
    this->actor.focus.pos.y = 60.0f;
    Actor_SetFocus(&this->actor, 60.0f);
    switch (this->eyesState) {
        case 0:
            this->eyeTexIndex = 2;
            break;
        case 1:
            if (this->eyeTexIndex > 0) {
                this->eyeTexIndex--;
            } else {
                this->eyesTimer = 30;
                this->eyesState = 2;
            }
            break;
        case 2:
            if (this->eyesTimer == 0) {
                if (this->eyeTexIndex > 0) {
                    this->eyeTexIndex--;
                }
            }
            break;
        default:
            if (this->eyesTimer == 0) {
                this->eyeTexIndex += 1;
                if (this->eyeTexIndex >= 3) {
                    this->eyeTexIndex = 0;
                    this->eyesTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
                }
            }
            Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
            break;
    }
    if (this->unk22A == 0) {

    } else {
        this->unk22A--;
    }
    if (this->eyesTimer != 0) {
        this->eyesTimer--;
    }
    this->actionFunc(this, play);
}

s32 EnBomBowlMan_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnBomBowlMan* this = thisx;

    if (limbIndex == BOWLING_GIRL_LIMB_HEAD) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }
    return 0;
}

void EnBomBowlMan_Draw(Actor* thisx, PlayState* play) {
    EnBomBowlMan* this = (EnBomBowlMan*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_bom_bowl_man.c", 907);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnBomBowlMan_OverrideLimbDraw, NULL, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_bom_bowl_man.c", 923);
}
