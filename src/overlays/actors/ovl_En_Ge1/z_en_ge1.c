#include "z_en_ge1.h"

#include "libu64/debug.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "face_reaction.h"
#include "horse.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_ge1/object_ge1.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnGe1_Init(Actor* thisx, PlayState* play);
void EnGe1_Destroy(Actor* thisx, PlayState* play);
void EnGe1_Update(Actor* thisx, PlayState* play);
void EnGe1_Draw(Actor* thisx, PlayState* play);

s32 func_80A30DCC(void);
void func_80A30F48(EnGe1* this, PlayState* play);
void func_80A31094(EnGe1* this, PlayState* play);
void func_80A310C4(EnGe1* this, PlayState* play);
void func_80A3118C(EnGe1* this, PlayState* play);
void func_80A31514(EnGe1* this, PlayState* play);
void func_80A317C0(EnGe1* this, PlayState* play);
void func_80A31880(EnGe1* this, PlayState* play);
void func_80A31E2C(EnGe1* this, PlayState* play);
void func_80A31FE0(EnGe1* this, PlayState* play);
void func_80A323B0(EnGe1* this);
void func_80A323EC(EnGe1* this);

ActorProfile En_Ge1_Profile = {
    /**/ ACTOR_EN_GE1,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GE1,
    /**/ sizeof(EnGe1),
    /**/ EnGe1_Init,
    /**/ EnGe1_Destroy,
    /**/ EnGe1_Update,
    /**/ EnGe1_Draw,
};

static ColliderCylinderInit D_80A32770 = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000702, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 40, 0, { 0, 0, 0 } },
};

static Gfx* D_80A3279C[3] = { object_ge1_009198_DL, object_ge1_009430_DL, object_ge1_009690_DL };
static Vec3f D_80A327A8 = { 600.0f, 700.0f, 0.0f };
static s32 D_80A327B4[3] = { 0x06000708, 0x06000F08, 0x06001708 };

void EnGe1_Init(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->unk198, &object_ge1_000330_Skel, &object_ge1_000228_Anim, this->unk1DC,
                       this->unk23C, 16);
    Animation_PlayOnce(&this->unk198, &object_ge1_000228_Anim);
    Collider_InitCylinder(play, &this->unk14C);
    Collider_SetCylinder(play, &this->unk14C, &this->actor, &D_80A32770);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->unk2B0 = &object_ge1_000228_Anim;
    this->unk2B8 = func_80A323B0;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    Actor_SetScale(&this->actor, 0.01f);
    if (play->sceneId == SCENE_GERUDO_VALLEY) {
        this->actor.cullingVolumeDistance = 1000.0f;
    } else {
        this->actor.cullingVolumeDistance = 1200.0f;
    }
    switch (PARAMS_GET_U(this->actor.params, 0, 8)) {
        case 0x0:
            this->unk2AE = 2;
            this->unk2B4 = func_80A31880;
            break;

        case 0x1:
            this->unk2AE = 1;
            if (func_80A30DCC() != 0) {
                this->unk2B4 = func_80A317C0;
            } else {
                this->unk2B4 = func_80A30F48;
            }
            break;

        case 0x4:
            this->unk2AE = 1;
            if (func_80A30DCC() != 0) {
                this->unk2B4 = func_80A31094;
            } else {
                this->unk2B4 = func_80A310C4;
            }
            break;

        case 0x5:
            if (LINK_IS_ADULT) {
                PRINTF("\x1b[36m谷底 ゲルド 撤退 \n\x1b[m");
                Actor_Kill(&this->actor);
                return;
            }
            this->unk2AE = 0;
            this->unk2B4 = func_80A3118C;
            break;

        case 0x45:
            if (INV_CONTENT(ITEM_BOW) == ITEM_NONE) {
                Actor_Kill(&this->actor);
                return;
            }
            this->actor.attentionRangeType = ATTENTION_RANGE_3;
            this->unk2AE = 0;
            PRINTF("\x1b[36mやぶさめ ゲルド EVENT_INF(0) = %x\n\x1b[m", gSaveContext.eventInf[0]);
            if (GET_EVENTINF(EVENTINF_HORSES_08)) {
                this->unk2B4 = func_80A31E2C;
            } else if (func_80A30DCC() != 0) {
                this->unk2B4 = func_80A31FE0;
            } else {
                this->unk2B4 = func_80A30F48;
            }
            break;

        case 0x46:
            this->unk2AE = 1;
            if (func_80A30DCC() != 0) {
                this->unk2B4 = func_80A31514;
            } else {
                this->unk2B4 = func_80A30F48;
            }
            break;
    }
    this->unk2AC = 0;
}

void EnGe1_Destroy(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;

    Collider_DestroyCylinder(play, &this->unk14C);
}

s32 func_80A30C70(EnGe1* this, PlayState* play, u16 arg2, f32 arg3, EnGe1ActionFunc arg4) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk2B4 = arg4;
        this->unk2B8 = func_80A323EC;
        this->unk2AC &= ~4;
        this->unk2B0 = &object_ge1_000228_Anim;
        Animation_Change(&this->unk198, &object_ge1_000228_Anim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_ge1_000228_Anim), ANIMMODE_ONCE, -8.0f);
        return 1;
    } else {
        this->actor.textId = arg2;
        if (this->actor.xzDistToPlayer < arg3) {
            Actor_OfferTalk(&this->actor, play, arg3);
        }
        return 0;
    }
}

void func_80A30D48(EnGe1* this) {
    Animation_Change(&this->unk198, &object_ge1_000228_Anim, -1.0f, Animation_GetLastFrame(&object_ge1_000228_Anim),
                     0.0f, ANIMMODE_ONCE, 8.0f);
    this->unk2B0 = &object_ge1_000228_Anim;
    this->unk2B8 = func_80A323B0;
}

s32 func_80A30DCC(void) {
    if (!(GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_0_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_1_RESCUED) &&
          GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_2_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_3_RESCUED))) {
        return 0;
    } else {
        return 1;
    }
}

void func_80A30E08(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if (this->unk2AF > 0) {
        this->unk2AF--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void func_80A30EE8(EnGe1* this, PlayState* play) {
    this->unk2AF = 0x1E;
    this->unk2B4 = func_80A30E08;
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_95);
    Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
    Message_StartTextbox(play, 0x6000U, &this->actor);
}

void func_80A30F48(EnGe1* this, PlayState* play) {
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(temp_v0) < 0x4301) && (this->actor.xzDistToPlayer < 100.0f)) {
        func_80A30EE8(this, play);
    }
    if (this->unk14C.base.acFlags & 2) {
        func_80A30EE8(this, play);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk14C.base);
}

void func_80A31000(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        switch (this->actor.textId) {
            case 0x6001:
                this->unk2B4 = func_80A31094;
                break;

            case 0x6019:
            case 0x601A:
                this->unk2B4 = func_80A3118C;
                break;

            case 0x6018:
                this->unk2B4 = func_80A317C0;
                break;

            default:
                this->unk2B4 = func_80A3118C;
                break;
        }
    }
}

void func_80A31094(EnGe1* this, PlayState* play) {
    func_80A30C70(this, play, 0x6001U, 100.0f, func_80A31000);
}

void func_80A310C4(EnGe1* this, PlayState* play) {
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((this->actor.xzDistToPlayer < 50.0f) || ((ABS(temp_v0) < 0x4301) && (this->actor.xzDistToPlayer < 400.0f))) {
        func_80A30EE8(this, play);
    }
    if (this->unk14C.base.acFlags & 2) {
        func_80A30EE8(this, play);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk14C.base);
}

void func_80A3118C(EnGe1* this, PlayState* play) {
    u16 textId;

    textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);
    if (textId == 0) {
        textId = 0x6019;
    }
    func_80A30C70(this, play, textId, 100.0f, func_80A31000);
}

void func_80A311E0(EnGe1* this, PlayState* play) {
    if (this->unk2AF > 0) {
        this->unk2AF--;
    } else {
        func_80A30D48(this);
        this->unk2B4 = func_80A31094;
    }
    this->unk2AC |= 8;
}

void func_80A31234(EnGe1* this, PlayState* play) {
    if (this->unk2AC & 4) {
        this->unk2B4 = func_80A311E0;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->unk2AF = 0x32;
        Message_CloseTextbox(play);
    } else if ((this->unk198.curFrame == 15.0f) || (this->unk198.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, 0x184DU);
    }
}

void func_80A312E4(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->unk2B4 = func_80A31234;
        Animation_Change(&this->unk198, &object_ge1_00A048_Anim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_ge1_00A048_Anim), ANIMMODE_ONCE, -3.0f);
        this->unk2B0 = &object_ge1_00A048_Anim;
        this->unk2B8 = func_80A323EC;
        this->unk2AC &= 0xFFFB;
    }
}

void func_80A313A0(EnGe1* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->unk2B4 = func_80A31514;
        func_80A30D48(this);
    }
}

void func_80A313E0(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 10) {
                    Message_ContinueTextbox(play, 0x6016U);
                    this->unk2B4 = func_80A313A0;
                } else {
                    Rupees_ChangeBy(-10);
                    Message_ContinueTextbox(play, 0x6015U);
                    this->unk2B4 = func_80A312E4;
                }
                break;

            case 1:
                this->unk2B4 = func_80A31514;
                func_80A30D48(this);
                break;
        }
    }
}

void func_80A314D0(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->unk2B4 = func_80A31514;
        func_80A30D48(this);
    }
}

void func_80A31514(EnGe1* this, PlayState* play) {
    if (gBitFlags[0x16] & gSaveContext.save.info.inventory.questItems) {
        func_80A30C70(this, play, 0x6014U, 100.0f, func_80A313E0);
    } else {
        func_80A30C70(this, play, 0x6013U, 100.0f, func_80A314D0);
    }
}

void func_80A3157C(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->unk2B4 = func_80A317C0;
        func_80A30D48(this);
    }
}

void func_80A315F0(EnGe1* this, PlayState* play) {
    if (this->unk2AF > 0) {
        this->unk2AF--;
    } else {
        func_80A30D48(this);
        this->unk2B4 = func_80A317C0;
    }
    this->unk2AC |= 8;
}

void func_80A31644(EnGe1* this, PlayState* play) {
    if (this->unk2AC & 4) {
        this->unk2B4 = func_80A315F0;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->unk2AF = 0x32;
        Message_CloseTextbox(play);
    } else if ((this->unk198.curFrame == 15.0f) || (this->unk198.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void func_80A316F4(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->unk2B4 = func_80A31644;
        Animation_Change(&this->unk198, &object_ge1_00A048_Anim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_ge1_00A048_Anim), ANIMMODE_ONCE, -3.0f);
        this->unk2B0 = &object_ge1_00A048_Anim;
        this->unk2B8 = func_80A323EC;
        this->unk2AC &= ~4;
    }
}

void func_80A317C0(EnGe1* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6))) {
        func_80A30C70(this, play, 0x6018U, 100.0f, func_80A3157C);
    } else {
        func_80A30C70(this, play, 0x6017U, 100.0f, func_80A316F4);
    }
}

void func_80A3183C(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->unk2B4 = func_80A31880;
        func_80A30D48(this);
    }
}

void func_80A31880(EnGe1* this, PlayState* play) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);

    if (textId == 0) {
        textId = 0x6069;
    }
    if (func_80A30C70(this, play, textId, 100.0f, func_80A3183C) != 0) {
        this->unk2B8 = func_80A323B0;
        this->unk2B0 = &object_ge1_00A498_Anim;
        Animation_Change(&this->unk198, &object_ge1_00A498_Anim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_ge1_00A498_Anim), ANIMMODE_ONCE, -8.0f);
    }
}

void func_80A31934(EnGe1* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->unk2B4 = func_80A31FE0;
        func_80A30D48(this);
    }
}

void func_80A3196C(EnGe1* this, PlayState* play) {
    s32 var_a2;

    if (Actor_HasParent(&this->actor, play) != 0) {
        this->unk2B4 = func_80A31934;
        if (this->unk2AC & 2) {
            SET_ITEMGETINF(ITEMGETINF_0F);
            return;
        } else {
            SET_INFTABLE(INFTABLE_190);
        }
        return;
    }
    if (this->unk2AC & 2) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            case 1:
                var_a2 = 0x30;
                break;
            case 2:
                var_a2 = 0x31;
                break;
        }
    } else {
        var_a2 = 0x3E;
    }
    //! @bug var_a2 may be used uninitialized
    Actor_OfferGetItem(&this->actor, play, var_a2, 10000.0f, 50.0f);
}

void func_80A31A5C(EnGe1* this, PlayState* play) {
    s32 var_a2;

    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->unk2B4 = func_80A3196C;
    }
    if (this->unk2AC & 2) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            case 1:
                var_a2 = 0x30;
                break;
            case 2:
                var_a2 = 0x31;
                break;
        }
    } else {
        var_a2 = 0x3E;
    }
    //! @bug var_a2 may be used uninitialized
    Actor_OfferGetItem(&this->actor, play, var_a2, 10000.0f, 50.0f);
}

void func_80A31B20(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk2B4 = func_80A31A5C;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    } else {
        Actor_OfferTalk(&this->actor, play, 200.0f);
    }
}

void func_80A31B7C(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->unk2B4 = func_80A31FE0;
        func_80A30D48(this);
    }
}

void func_80A31BDC(EnGe1* this, PlayState* play) {
}

void func_80A31BE8(EnGe1* this, PlayState* play) {
    Player* player;
    Actor* temp_v0_2;

    player = GET_PLAYER(play);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 20) {
                    Message_ContinueTextbox(play, 0x85);
                    this->unk2B4 = func_80A31B7C;
                } else {
                    Rupees_ChangeBy(-20);
                    play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_0;
                    gSaveContext.nextCutsceneIndex = CS_INDEX_0;
                    play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    SET_EVENTINF(EVENTINF_HORSES_08);
                    SET_EVENTCHKINF(EVENTCHKINF_68);
                    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
                        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
                    } else {
                        temp_v0_2 = Actor_FindNearby(play, &player->actor, ACTOR_EN_HORSE, 1U, 1200.0f);
                        player->actor.freezeTimer = 0x4B0;
                        if (temp_v0_2 != NULL) {
                            temp_v0_2->freezeTimer = 0x4B0;
                        }
                    }
                    this->unk2B4 = func_80A31BDC;
                }
                break;

            case 1:
                this->unk2B4 = func_80A31FE0;
                Message_CloseTextbox(play);
                break;
        }
    }
}

void func_80A31D88(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x6041);
        this->unk2B4 = func_80A31BE8;
    }
}

void func_80A31DE4(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk2B4 = func_80A31D88;
        return;
    }
    Actor_OfferTalk(&this->actor, play, 300.0f);
}

void func_80A31E2C(EnGe1* this, PlayState* play) {
    CLEAR_EVENTINF(EVENTINF_HORSES_08);
#if DEBUG_FEATURES
    LogUtils_LogThreadId("../z_en_ge1.c", 0x456);
    PRINTF("z_common_data.yabusame_total = %d\n", gSaveContext.minigameScore);
    if (1) {}
    if (1) {}
    if (1) {}
    LogUtils_LogThreadId("../z_en_ge1.c", 0x457);
    // With the current `SaveContext` struct definition, the expression in the debug string is an out-of-bounds read,
    // see the other occurrence of this for more details.
    PRINTF("z_common_data.memory.information.room_inf[127][ 0 ] = %d\n", gSaveContext.save.info.highScores[0]);
#endif
    this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    if (gSaveContext.save.info.highScores[0] < gSaveContext.minigameScore) {
        gSaveContext.save.info.highScores[0] = gSaveContext.minigameScore;
    }
    if (gSaveContext.minigameScore < 1000) {
        this->actor.textId = 0x6045;
        this->unk2B4 = func_80A31DE4;
    } else if (!GET_INFTABLE(INFTABLE_190)) {
        this->actor.textId = 0x6046;
        this->unk2B4 = func_80A31B20;
        this->unk2AC &= ~2;
    } else if (gSaveContext.minigameScore < 1500) {
        this->actor.textId = 0x6047;
        this->unk2B4 = func_80A31DE4;
    } else if (GET_ITEMGETINF(ITEMGETINF_0F)) {
        this->actor.textId = 0x6047;
        this->unk2B4 = func_80A31DE4;
    } else {
        this->actor.textId = 0x6044;
        this->unk2B4 = func_80A31B20;
        this->unk2AC |= 2;
    }
}

void func_80A31F9C(EnGe1* this, PlayState* play) {
    this->unk2AC |= 1;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->unk2B4 = func_80A31FE0;
        func_80A30D48(this);
    }
}

void func_80A31FE0(EnGe1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 var_a2;

    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
        func_80A30C70(this, play, 0x603FU, 100.0f, func_80A31F9C);
    } else {
        if (GET_EVENTCHKINF(EVENTCHKINF_68)) {
            if (GET_INFTABLE(INFTABLE_190)) {
                var_a2 = 0x6042;
            } else {
                var_a2 = 0x6043;
            }
        } else {
            var_a2 = 0x6040;
        }
        func_80A30C70(this, play, var_a2, 200.0f, func_80A31D88);
    }
}

void func_80A32078(EnGe1* this, PlayState* play) {
    s32 pad;
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (ABS(temp_v0) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->unk29C, &this->unk2A2, this->actor.focus.pos);
    } else {
        if (temp_v0 < 0) {
            Math_SmoothStepToS(&this->unk29C.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothStepToS(&this->unk29C.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xC, 0x3E8, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A32190(EnGe1* this, PlayState* play) {
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(temp_v0) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->unk29C, &this->unk2A2, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk29C.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk29C.y, 0, 6, 0x1838, 0x64);
    }
}

void EnGe1_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->unk14C);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk14C.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->unk2B8(this);
    this->unk2B4(this, play);
    if (this->unk2AC & 1) {
        func_80A32078(this, play);
        this->unk2AC &= ~1;
    } else {
        func_80A32190(this, play);
    }
    this->unk2A2.x = this->unk2A2.y = this->unk2A2.z = 0;
    if (DECR(this->unk2AA) == 0) {
        this->unk2AA = Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk2A8 = this->unk2AA;
    if (this->unk2A8 >= 3) {
        this->unk2A8 = 0;
    }
}

void func_80A323B0(EnGe1* this) {
    if (SkelAnime_Update(&this->unk198) != 0) {
        Animation_PlayOnce(&this->unk198, this->unk2B0);
    }
}

void func_80A323EC(EnGe1* this) {
    if (!(this->unk2AC & 4)) {
        if (SkelAnime_Update(&this->unk198) != 0) {
            this->unk2AC |= 4;
        }
        this->unk2AC |= 8;
    }
}

s32 EnGe1_OverrideLimbDraw(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx) {
    EnGe1* this = thisx;
    s32 pad;

    if (arg1 == 15) {
        arg4->x += this->unk29C.y;
        arg4->z += this->unk29C.x;
    }
    if (this->unk2AC & 8) {
        this->unk2AC &= ~8;
        return 0;
    }
    if ((arg1 == 8) || (arg1 == 10) || (arg1 == 13)) {
        arg4->y +=
            (Math_SinS((s16)(play->state.frames * ((arg1 * FIDGET_FREQ_LIMB) + FIDGET_FREQ_Y))) * FIDGET_AMPLITUDE);
        arg4->z +=
            (Math_CosS((s16)(play->state.frames * ((arg1 * FIDGET_FREQ_LIMB) + FIDGET_FREQ_Z))) * FIDGET_AMPLITUDE);
    }
    return 0;
}

void EnGe1_PostLimbDraw(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnGe1* this = thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1419);
    if (arg1 == 15) {
        gSPDisplayList(POLY_OPA_DISP++, D_80A3279C[this->unk2AE]);
        Matrix_MultVec3f(&D_80A327A8, &this->actor.focus.pos);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1427);
}

void EnGe1_Draw(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1442);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80A327B4[this->unk2A8]));
    SkelAnime_DrawFlexOpa(play, this->unk198.skeleton, this->unk198.jointTable, this->unk198.dListCount,
                          EnGe1_OverrideLimbDraw, EnGe1_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1459);
}
