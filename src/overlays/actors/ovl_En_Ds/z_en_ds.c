/*
 * File: z_en_ds.c
 * Overlay: ovl_En_Ds
 * Description: Potion Shop Granny
 */

#include "z_en_ds.h"
#include "assets/objects/object_ds/object_ds.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnDs_Init(Actor* thisx, PlayState* play);
void EnDs_Destroy(Actor* thisx, PlayState* play);
void EnDs_Update(Actor* thisx, PlayState* play);
void EnDs_Draw(Actor* thisx, PlayState* play);

void EnDs_Wait(EnDs* this, PlayState* play);

ActorProfile En_Ds_Profile = {
    /**/ ACTOR_EN_DS,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_DS,
    /**/ sizeof(EnDs),
    /**/ EnDs_Init,
    /**/ EnDs_Destroy,
    /**/ EnDs_Update,
    /**/ EnDs_Draw,
};

void EnDs_Init(Actor* thisx, PlayState* play) {
    EnDs* this = (EnDs*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gPotionShopLadySkel, &gPotionShopLadyAnim, this->jointTable,
                       this->morphTable, 6);
    Animation_PlayOnce(&this->skelAnime, &gPotionShopLadyAnim);

    this->actor.colChkInfo.mass = MASS_IMMOVABLE;

    Actor_SetScale(&this->actor, 0.013f);

    this->actionFunc = EnDs_Wait;
    this->actor.attentionRangeType = ATTENTION_RANGE_1;
    this->unk_1E8 = 0;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk_1E4 = 0.0f;
}

void EnDs_Destroy(Actor* thisx, PlayState* play) {
}

void EnDs_Talk(EnDs* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnDs_Wait;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    this->unk_1E8 |= 1;
}

void EnDs_TalkNoEmptyBottle(EnDs* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnDs_Wait;
    }
    this->unk_1E8 |= 1;
}

void EnDs_TalkAfterGiveOddPotion(EnDs* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnDs_Talk;
    } else {
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalk(&this->actor, play, 1000.0f);
    }
}

void EnDs_DisplayOddPotionText(EnDs* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.textId = 0x504F;
        this->actionFunc = EnDs_TalkAfterGiveOddPotion;
        this->actor.flags &= ~ACTOR_FLAG_TALK;
        SET_ITEMGETINF(ITEMGETINF_30);
    }
}

void EnDs_GiveOddPotion(EnDs* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnDs_DisplayOddPotionText;
        gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_ODD_POTION, 10000.0f, 50.0f);
    }
}

void EnDs_TalkAfterBrewOddPotion(EnDs* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnDs_GiveOddPotion;
        Actor_OfferGetItem(&this->actor, play, GI_ODD_POTION, 10000.0f, 50.0f);
    }
}

void EnDs_BrewOddPotion3(EnDs* this, PlayState* play) {
    if (this->brewTimer > 0) {
        this->brewTimer--;
    } else {
        this->actionFunc = EnDs_TalkAfterBrewOddPotion;
        Message_ContinueTextbox(play, 0x504D);
    }

    Math_StepToF(&this->unk_1E4, 0, 0.03f);
    Environment_AdjustLights(play, this->unk_1E4 * (2.0f - this->unk_1E4), 0.0f, 0.1f, 1.0f);
}

void EnDs_BrewOddPotion2(EnDs* this, PlayState* play) {
    if (this->brewTimer > 0) {
        this->brewTimer--;
    } else {
        this->actionFunc = EnDs_BrewOddPotion3;
        this->brewTimer = 60;
        Flags_UnsetSwitch(play, 0x3F);
    }
}

void EnDs_BrewOddPotion1(EnDs* this, PlayState* play) {
    if (this->brewTimer > 0) {
        this->brewTimer--;
    } else {
        this->actionFunc = EnDs_BrewOddPotion2;
        this->brewTimer = 20;
    }

    Math_StepToF(&this->unk_1E4, 1.0f, 0.01f);
    Environment_AdjustLights(play, this->unk_1E4 * (2.0f - this->unk_1E4), 0.0f, 0.1f, 1.0f);
}

void EnDs_OfferOddPotion(EnDs* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // yes
                this->actionFunc = EnDs_BrewOddPotion1;
                this->brewTimer = 60;
                Flags_SetSwitch(play, 0x3F);
                play->msgCtx.msgMode = MSGMODE_PAUSED;
                player->exchangeItemId = EXCH_ITEM_NONE;
                break;
            case 1: // no
                Message_ContinueTextbox(play, 0x504C);
                this->actionFunc = EnDs_Talk;
        }
    }
}

s32 EnDs_CheckRupeesAndBottle(void) {
    if (gSaveContext.save.info.playerData.rupees < 100) {
        return 0;
    } else if (Inventory_HasEmptyBottle() == 0) {
        return 1;
    } else {
        return 2;
    }
}

void EnDs_GiveBluePotion(EnDs* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnDs_Talk;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_POTION_BLUE, 10000.0f, 50.0f);
    }
}

void EnDs_OfferBluePotion(EnDs* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // yes
                switch (EnDs_CheckRupeesAndBottle()) {
                    case 0: // have less than 100 rupees
                        Message_ContinueTextbox(play, 0x500E);
                        break;
                    case 1: // have 100 rupees but no empty bottle
                        Message_ContinueTextbox(play, 0x96);
                        this->actionFunc = EnDs_TalkNoEmptyBottle;
                        return;
                    case 2: // have 100 rupees and empty bottle
                        Rupees_ChangeBy(-100);
                        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
                        Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_POTION_BLUE, 10000.0f, 50.0f);
                        this->actionFunc = EnDs_GiveBluePotion;
                        return;
                }
                break;
            case 1: // no
                Message_ContinueTextbox(play, 0x500D);
        }
        this->actionFunc = EnDs_Talk;
    }
}

void EnDs_Wait(EnDs* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 yawDiff;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        if (Actor_GetPlayerExchangeItemId(play) == EXCH_ITEM_ODD_MUSHROOM) {
            Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            player->actor.textId = 0x504A;
            this->actionFunc = EnDs_OfferOddPotion;
        } else if (GET_ITEMGETINF(ITEMGETINF_30)) {
            player->actor.textId = 0x500C;
            this->actionFunc = EnDs_OfferBluePotion;
        } else {
            s16 pad;

            if (INV_CONTENT(ITEM_ODD_MUSHROOM) == ITEM_ODD_MUSHROOM) {
                player->actor.textId = 0x5049;
            } else {
                player->actor.textId = 0x5048;
            }
            this->actionFunc = EnDs_Talk;
        }
    } else {
        yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        this->actor.textId = 0x5048;

        if ((ABS(yawDiff) < 0x2151) && (this->actor.xzDistToPlayer < 200.0f)) {
            Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 100.0f, EXCH_ITEM_ODD_MUSHROOM);
            this->unk_1E8 |= 1;
        }
    }
}

void EnDs_Update(Actor* thisx, PlayState* play) {
    EnDs* this = (EnDs*)thisx;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->skelAnime.curFrame = 0.0f;
    }

    this->actionFunc(this, play);

    if (this->unk_1E8 & 1) {
        Actor_TrackPlayer(play, &this->actor, &this->unk_1D8, &this->unk_1DE, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk_1D8.x, 0, 6, 0x1838, 100);
        Math_SmoothStepToS(&this->unk_1D8.y, 0, 6, 0x1838, 100);
        Math_SmoothStepToS(&this->unk_1DE.x, 0, 6, 0x1838, 100);
        Math_SmoothStepToS(&this->unk_1DE.y, 0, 6, 0x1838, 100);
    }
}

s32 EnDs_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDs* this = (EnDs*)thisx;

    if (limbIndex == 5) {
        rot->x += this->unk_1D8.y;
        rot->z += this->unk_1D8.x;
    }
    return false;
}

void EnDs_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f sMultVec = { 1100.0f, 500.0f, 0.0f };
    EnDs* this = (EnDs*)thisx;

    if (limbIndex == 5) {
        Matrix_MultVec3f(&sMultVec, &this->actor.focus.pos);
    }
}

void EnDs_Draw(Actor* thisx, PlayState* play) {
    EnDs* this = (EnDs*)thisx;

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnDs_OverrideLimbDraw, EnDs_PostLimbDraw, this);
}
