/*
 * File: z_en_niw_lady.c
 * Overlay: ovl_En_Niw_Lady
 * Description: Lady in Kakariko Village who owns the Cuccos
 */

#include "z_en_niw_lady.h"
#include "overlays/actors/ovl_En_Niw/z_en_niw.h"

#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "rand.h"
#include "regs.h"
#include "segmented_address.h"
#include "sfx.h"
#include "terminal.h"
#include "translation.h"
#include "versions.h"
#include "z_lib.h"
#include "face_reaction.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_ane/object_ane.h"
#include "assets/objects/object_os_anime/object_os_anime.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnNiwLady_Init(Actor* thisx, PlayState* play);
void EnNiwLady_Destroy(Actor* thisx, PlayState* play);
void EnNiwLady_Update(Actor* thisx, PlayState* play);

void EnNiwLady_WaitForObject(EnNiwLady* this, PlayState* play);
void EnNiwLady_Draw(Actor* thisx, PlayState* play2);
void EnNiwLady_SetupKakarikoChild(EnNiwLady* this, PlayState* play);
void EnNiwLady_SetupInImpasHouse(EnNiwLady* this, PlayState* play);
void EnNiwLady_SetupKakarikoAdultIdle(EnNiwLady* this, PlayState* play);
void EnNiwLady_KakarikoAdultIdle(EnNiwLady* this, PlayState* play);
void EnNiwLady_HandlePocketEggChoice(EnNiwLady* this, PlayState* play);
void EnNiwLady_HandleCojiroChoice(EnNiwLady* this, PlayState* play);
void EnNiwLady_GiveItem(EnNiwLady* this, PlayState* play);
void EnNiwLady_ChoseNo(EnNiwLady* this, PlayState* play);
void EnNiwLady_AfterGivingItem(EnNiwLady* this, PlayState* play);
void EnNiwLady_KakarikoChildIdle(EnNiwLady* this, PlayState* play);
void EnNiwLady_TalkAfterMinigame(EnNiwLady* this, PlayState* play);
void EnNiwLady_InImpasHouse(EnNiwLady* this, PlayState* play);

typedef enum EnNiwLadyMinigameState {
    /* 0 */ ENNIWLADY_MINIGAME_IN_PROGRESS,
    /* 1 */ ENNIWLADY_MINIGAME_COMPLETED,
    /* 2 */ ENNIWLADY_MINIGAME_CUCCOS_REMOVED, // after completion
} EnNiwLadyMinigameState;

ActorProfile En_Niw_Lady_Profile = {
    /**/ ACTOR_EN_NIW_LADY,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_ANE,
    /**/ sizeof(EnNiwLady),
    /**/ EnNiwLady_Init,
    /**/ EnNiwLady_Destroy,
    /**/ EnNiwLady_Update,
    /**/ NULL,
};

static s16 sMissingCuccoTextIds[] = {
    0x5036, 0x5070, 0x5072, 0x5037, 0x5038, 0x5039, 0x503A, 0x503B, 0x503D, 0x503C,
};

static s16 sCuccoInPenFlags[] = {
    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_FRONT_GATE),
    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_MOUNTAIN_GATE),
    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_GRAVEYARD),
    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_WINDMILL),
    INFTABLE_MASK(INFTABLE_CUCCO_IN_BOX),
    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_SKULLTULA_HOUSE),
    INFTABLE_MASK(INFTABLE_CUCCO_BEHIND_POTION_SHOP),
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 10, 10, 0, { 0, 0, 0 } },
};

void EnNiwLady_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnNiwLady* this = (EnNiwLady*)thisx;

    this->aneObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_ANE);
    this->osAnimeObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_OS_ANIME);
    if ((this->osAnimeObjectSlot < 0) || (this->aneObjectSlot < 0)) {
        Actor_Kill(thisx);
        return;
    }
    this->isInImpasHouse = false;
    if (play->sceneId == SCENE_IMPAS_HOUSE) {
        this->isInImpasHouse = true;
    }
    if (this->isInImpasHouse && IS_DAY) {
        Actor_Kill(thisx);
        return;
    }
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n", "☆☆☆☆☆ Neechan ugh ☆☆☆☆☆ %d\n") VT_RST,
           this->isInImpasHouse);
    PRINTF("\n\n");
    this->actionFunc = EnNiwLady_WaitForObject;
    thisx->cullingVolumeDistance = 600.0f;
}

void EnNiwLady_Destroy(Actor* thisx, PlayState* play) {
    EnNiwLady* this = (EnNiwLady*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnNiwLady_ChoseAnimation(EnNiwLady* this, PlayState* play, s32 nextAnimation) {
    f32 frames;

    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        nextAnimation = 8;
    }
    if (nextAnimation != this->currentAnimation) {
        this->isSwaying = false;
        this->isWorryingAboutCuccos = true;
        this->currentAnimation = nextAnimation;
        switch (nextAnimation) {
            case 10:
                this->isSwaying = true;
                FALLTHROUGH;
            case 9:
                frames = Animation_GetLastFrame(&gCuccoLadyIdleAnim);
                Animation_Change(&this->skelAnime, &gCuccoLadyIdleAnim, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                break;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
            case 21:
            case 22:
            case 24:
            case 29:
                frames = Animation_GetLastFrame(&gCuccoLadyHandsTogetherAnim);
                Animation_Change(&this->skelAnime, &gCuccoLadyHandsTogetherAnim, 1.0f, 0.0f, frames, ANIMMODE_LOOP,
                                 -10.0f);
                break;
            case 7:
            case 20:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
                frames = Animation_GetLastFrame(&gCuccoLadyArmsOutAnim);
                Animation_Change(&this->skelAnime, &gCuccoLadyArmsOutAnim, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                break;
            case 100:
                frames = Animation_GetLastFrame(&gCuccoLadyWorriedAnim);
                Animation_Change(&this->skelAnime, &gCuccoLadyWorriedAnim, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                this->isWorryingAboutCuccos = false;
                break;
        }
        return;
    }
}

void EnNiwLady_WaitForObject(EnNiwLady* this, PlayState* play) {
    f32 frames;
    s32 pad;

    if (Object_IsLoaded(&play->objectCtx, this->aneObjectSlot) &&
        Object_IsLoaded(&play->objectCtx, this->osAnimeObjectSlot)) {
        gSegments[6] = OS_K0_TO_PHYSICAL(play->objectCtx.slots[this->aneObjectSlot].segment);
        SkelAnime_InitFlex(play, &this->skelAnime, &gCuccoLadySkel, NULL, this->jointTable, this->morphTable, 16);
        gSegments[6] = OS_K0_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
        this->isLoaded = true;
        this->actor.gravity = -3.0f;
        Actor_SetScale(&this->actor, 0.01f);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        this->unk_272 = 0;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
        this->actor.draw = EnNiwLady_Draw;
        switch (this->isInImpasHouse) {
            case false:
                if (!GET_ITEMGETINF(ITEMGETINF_CUCCO_MINIGAME_BOTTLE) && !LINK_IS_ADULT) {
                    frames = Animation_GetLastFrame(&gCuccoLadyWorriedAnim);
                    Animation_Change(&this->skelAnime, &gCuccoLadyWorriedAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP,
                                     0.0f);
                } else {
                    frames = Animation_GetLastFrame(&gCuccoLadyIdleAnim);
                    Animation_Change(&this->skelAnime, &gCuccoLadyIdleAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP,
                                     0.0f);
                }
                if (LINK_IS_ADULT) {
                    this->actionFunc = EnNiwLady_SetupKakarikoAdultIdle;
                } else {
                    this->actionFunc = EnNiwLady_SetupKakarikoChild;
                }
                return;
            case true:
                frames = Animation_GetLastFrame(&gCuccoLadyIdleAnim);
                Animation_Change(&this->skelAnime, &gCuccoLadyIdleAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, 0.0f);
                this->actionFunc = EnNiwLady_SetupInImpasHouse;
                return;
        }
    }
}

void EnNiwLady_SetupKakarikoChild(EnNiwLady* this, PlayState* play) {
    this->actor.textId = sMissingCuccoTextIds[0];
    this->endTextState = TEXT_STATE_DONE;
    this->actionFunc = EnNiwLady_KakarikoChildIdle;
}

void EnNiwLady_KakarikoChildIdle(EnNiwLady* this, PlayState* play) {
    EnNiw* currentCucco;
    s32 pad[2];
    s32 tempCuccoTextIndex;

    this->cuccosInPen = 0;
    currentCucco = (EnNiw*)play->actorCtx.actorLists[ACTORCAT_PROP].head;
    while (currentCucco != NULL) {
        if (currentCucco->actor.id == ACTOR_EN_NIW) {
            if ((fabsf(currentCucco->actor.world.pos.x - 330.0f) < 90.0f) &&
                (fabsf(currentCucco->actor.world.pos.z - 1610.0f) < 190.0f)) {
                if (this->minigameState == ENNIWLADY_MINIGAME_IN_PROGRESS) {
                    gSaveContext.save.info.infTable[INFTABLE_INDEX_KAKARIKO_CUCCOS] |=
                        sCuccoInPenFlags[currentCucco->kakarikoIndex];
                    if (BREG(1) != 0) {
                        PRINTF(VT_FGCOL(GREEN) T("☆ 鶏柵内ＧＥＴ！☆ %x\n", "☆ GET inside the chicken fence! ☆ %x\n")
                                   VT_RST,
                               sCuccoInPenFlags[currentCucco->kakarikoIndex]);
                    }
                }
                this->cuccosInPen++;
            } else if (this->minigameState == ENNIWLADY_MINIGAME_IN_PROGRESS) {
                gSaveContext.save.info.infTable[INFTABLE_INDEX_KAKARIKO_CUCCOS] &=
                    ~sCuccoInPenFlags[currentCucco->kakarikoIndex];
            }
        }
        currentCucco = (EnNiw*)currentCucco->actor.next;
    }
    if (DEBUG_FEATURES && BREG(7) != 0) {
        this->cuccosInPen = BREG(7) - 1;
    }
    tempCuccoTextIndex = this->cuccosInPen;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->nextAnimation = 101;
    }
    if (this->cuccosInPen >= 7) {
        // After speaking to the lady with all 7 Cuccos in the pen
        tempCuccoTextIndex = 8;
        if ((this->minigameState < ENNIWLADY_MINIGAME_CUCCOS_REMOVED) &&
            (this->minigameState == ENNIWLADY_MINIGAME_IN_PROGRESS)) {
            // Put all 7 Cuccos in pen, but didn't speak to lady yet
            tempCuccoTextIndex = 7;
        }
    }
    if ((this->minigameState != ENNIWLADY_MINIGAME_IN_PROGRESS) && (tempCuccoTextIndex < 7)) {
        // After finishing minigame, then removing one or more Cuccos from the pen
        tempCuccoTextIndex = 9;
    }
    this->actor.textId = sMissingCuccoTextIds[tempCuccoTextIndex];
    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY);
        this->endTextState = TEXT_STATE_DONE;
    }
    if ((this->minigameState != ENNIWLADY_MINIGAME_IN_PROGRESS) && (tempCuccoTextIndex != 9)) {
        // Minigame is finished and all 7 Cuccos still in the pen
        tempCuccoTextIndex = 10;
        this->nextAnimation = 11;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        PRINTF("\n\n");
        PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ ねぇちゃん選択\t ☆☆☆☆ %d\n", "☆☆☆☆☆ Select your sister\t ☆☆☆☆ %d\n") VT_RST,
               tempCuccoTextIndex);
        PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ ねぇちゃんハート     ☆☆☆☆ %d\n", "☆☆☆☆☆ Neechan Heart     ☆☆☆☆ %d\n") VT_RST,
               this->minigameState);
        PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ ねぇちゃん保存       ☆☆☆☆ %d\n", "☆☆☆☆☆ Save my sister       ☆☆☆☆ %d\n")
                   VT_RST,
               this->mostCuccosInPen);
        PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ ねぇちゃん今\t ☆☆☆☆ %d\n", "☆☆☆☆☆ Neechan now\t ☆☆☆☆ %d\n") VT_RST,
               this->cuccosInPen);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n", "☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n")
                   VT_RST,
               this->actor.textId);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ this->message_end_code   ☆☆ %d\n", "☆☆☆☆☆ this->message_end_code   ☆☆ %d\n")
                   VT_RST,
               this->endTextState);
        PRINTF("\n\n");
        if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) == 0) {
#if OOT_VERSION >= NTSC_1_1
            if (this->actor.textId == 0x503C) {
                Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
                this->minigameState = ENNIWLADY_MINIGAME_CUCCOS_REMOVED;
                this->endTextState = TEXT_STATE_EVENT;
                this->actionFunc = EnNiwLady_TalkAfterMinigame;
                return;
            }
#endif
            this->nextAnimation = tempCuccoTextIndex + 1;
            if (tempCuccoTextIndex == 7) {
                Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                this->minigameState = ENNIWLADY_MINIGAME_COMPLETED;
                this->endTextState = TEXT_STATE_EVENT;
                this->mostCuccosInPen = this->cuccosInPen;
                PRINTF(VT_FGCOL(CYAN) T("☆☆☆☆☆ 柵内BIT変更前 ☆☆ %x\n", "☆☆☆☆☆ Before changing the fence BIT ☆☆ %x\n")
                           VT_RST,
                       gSaveContext.save.info.infTable[INFTABLE_INDEX_KAKARIKO_CUCCOS]);
                gSaveContext.save.info.infTable[INFTABLE_INDEX_KAKARIKO_CUCCOS] &= (u16) ~(
                    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_FRONT_GATE) | INFTABLE_MASK(INFTABLE_CUCCO_NEAR_MOUNTAIN_GATE) |
                    INFTABLE_MASK(INFTABLE_CUCCO_NEAR_GRAVEYARD) | INFTABLE_MASK(INFTABLE_CUCCO_NEAR_WINDMILL) |
                    INFTABLE_MASK(INFTABLE_CUCCO_IN_BOX) | INFTABLE_MASK(INFTABLE_CUCCO_NEAR_SKULLTULA_HOUSE) |
                    INFTABLE_MASK(INFTABLE_CUCCO_BEHIND_POTION_SHOP));
                PRINTF(VT_FGCOL(CYAN) T("☆☆☆☆☆ 柵内BIT変更後 ☆☆ %x\n",
                                        "☆☆☆☆☆ After changing the BIT inside the fence ☆☆ %x\n") VT_RST,
                       gSaveContext.save.info.infTable[INFTABLE_INDEX_KAKARIKO_CUCCOS]);
                PRINTF("\n\n");
                this->actionFunc = EnNiwLady_TalkAfterMinigame;
                return;
            }
            if (this->mostCuccosInPen != this->cuccosInPen) {
                if (this->cuccosInPen < this->mostCuccosInPen) {
                    Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
#if OOT_VERSION < NTSC_1_1
                    if (tempCuccoTextIndex == 9) {
                        this->minigameState = ENNIWLADY_MINIGAME_CUCCOS_REMOVED;
                        this->endTextState = TEXT_STATE_EVENT;
                        this->actionFunc = EnNiwLady_TalkAfterMinigame;
                    }
#endif
                } else if (tempCuccoTextIndex + 1 < 9) {
                    Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }
            if (this->mostCuccosInPen < this->cuccosInPen) {
                this->mostCuccosInPen = this->cuccosInPen;
                return;
            }
        }
    } else {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
}

void EnNiwLady_TalkAfterMinigame(EnNiwLady* this, PlayState* play) {
    if (this->endTextState == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ ハート ☆☆☆☆☆ %d\n", "☆☆☆☆☆ heart ☆☆☆☆☆ %d\n") VT_RST, this->minigameState);
        PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ 爆弾   ☆☆☆☆☆ %d\n", "☆☆☆☆☆ bomb   ☆☆☆☆☆ %d\n") VT_RST, this->unk_272);
        PRINTF("\n\n");
        this->nextAnimation = 11;
        if (!GET_ITEMGETINF(ITEMGETINF_CUCCO_MINIGAME_BOTTLE)) {
            this->actor.parent = NULL;
            this->getItemId = GI_BOTTLE_EMPTY;
            Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_EMPTY, 100.0f, 50.0f);
            this->actionFunc = EnNiwLady_GiveItem;
            return;
        }
        if (this->minigameState == ENNIWLADY_MINIGAME_COMPLETED) {
            this->getItemId = GI_RUPEE_PURPLE;
            Actor_OfferGetItem(&this->actor, play, GI_RUPEE_PURPLE, 100.0f, 50.0f);
            this->actionFunc = EnNiwLady_GiveItem;
        }
        this->actionFunc = EnNiwLady_KakarikoChildIdle;
    }
}

static s16 sAdultTextIds[] = { 0x503E, 0x503F, 0x5047, 0x5040, 0x5042, 0x5043, 0x5044, 0x00CF, 0x5045, 0x5042, 0x5027 };

void EnNiwLady_SetupKakarikoAdultIdle(EnNiwLady* this, PlayState* play) {
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ アダルトメッセージチェック ☆☆☆☆☆ \n", "☆☆☆☆☆ Adult message check ☆☆☆☆☆ \n") VT_RST);
    this->endTextState = TEXT_STATE_DONE;
    this->isHoldingPocketCucco = false;
    if (!GET_ITEMGETINF(ITEMGETINF_POCKET_EGG)) {
        if (this->hasSpokenAboutPocketCucco) {
            this->adultTextIndex = 1;
        } else {
            this->adultTextIndex = 0;
        }
        this->isHoldingPocketCucco = true;
        this->endTextState = TEXT_STATE_CHOICE;
    } else {
        this->adultTextIndex = 2;
        if (!GET_ITEMGETINF(ITEMGETINF_COJIRO)) {
            this->adultTextIndex = 3;
            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
                this->adultTextIndex = 9;
                if (this->hasSpokenAboutCojiro) {
                    this->adultTextIndex = 10;
                }
            } else {
                this->adultTextIndex = 4;
            }
        }
    }
    this->actor.textId = sAdultTextIds[this->adultTextIndex];
    this->actionFunc = EnNiwLady_KakarikoAdultIdle;
}

void EnNiwLady_KakarikoAdultIdle(EnNiwLady* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->nextAnimation = 11;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        s8 playerExchangeItemId = Actor_GetPlayerExchangeItemId(play);

        if ((playerExchangeItemId == EXCH_ITEM_POCKET_CUCCO) && GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
            Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
            player->actor.textId = sAdultTextIds[5];
            this->nextAnimation = this->adultTextIndex + 21;
            this->endTextState = TEXT_STATE_CHOICE;
            this->actionFunc = EnNiwLady_HandleCojiroChoice;
        } else if (playerExchangeItemId != EXCH_ITEM_NONE) {
            player->actor.textId = sAdultTextIds[7];
            this->nextAnimation = this->adultTextIndex + 21;
        } else {
            this->hasSpokenAboutPocketCucco = true;
            this->nextAnimation = this->adultTextIndex + 21;
            this->actionFunc = !this->isHoldingPocketCucco ? EnNiwLady_SetupKakarikoAdultIdle : EnNiwLady_HandlePocketEggChoice;
        }
        return;
    }

    Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 50.0f, EXCH_ITEM_POCKET_CUCCO);
}

void EnNiwLady_HandlePocketEggChoice(EnNiwLady* this, PlayState* play) {
    if ((this->endTextState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                Message_CloseTextbox(play);
                this->actor.parent = NULL;
                Actor_OfferGetItem(&this->actor, play, GI_POCKET_EGG, 200.0f, 100.0f);
                this->actionFunc = EnNiwLady_GiveItem;
                break;
            case 1:
                this->actor.textId = sAdultTextIds[3];
                this->nextAnimation = this->adultTextIndex + 21;
                Message_ContinueTextbox(play, this->actor.textId);
                this->endTextState = TEXT_STATE_EVENT;
                this->actionFunc = EnNiwLady_ChoseNo;
                break;
        }
    }
}

void EnNiwLady_ChoseNo(EnNiwLady* this, PlayState* play) {
    this->nextAnimation = 11;
    if ((this->endTextState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnNiwLady_SetupKakarikoAdultIdle;
    }
}

void EnNiwLady_HandleCojiroChoice(EnNiwLady* this, PlayState* play) {
    if ((this->endTextState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                Message_CloseTextbox(play);
                this->actor.parent = NULL;
                Actor_OfferGetItem(&this->actor, play, GI_COJIRO, 200.0f, 100.0f);
                this->actionFunc = EnNiwLady_GiveItem;
                break;
            case 1:
                Message_CloseTextbox(play);
                this->hasSpokenAboutCojiro = true;
                this->actor.textId = sAdultTextIds[8];
                this->nextAnimation = this->adultTextIndex + 21;
                Message_ContinueTextbox(play, this->actor.textId);
                this->endTextState = TEXT_STATE_EVENT;
                this->actionFunc = EnNiwLady_ChoseNo;
                break;
        }
    }
}

void EnNiwLady_GiveItem(EnNiwLady* this, PlayState* play) {
    s32 getItemId;

    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnNiwLady_AfterGivingItem;
    } else {
        getItemId = this->getItemId;
        if (LINK_IS_ADULT) {
            getItemId = !GET_ITEMGETINF(ITEMGETINF_POCKET_EGG) ? GI_POCKET_EGG : GI_COJIRO;
        }
        Actor_OfferGetItem(&this->actor, play, getItemId, 200.0f, 100.0f);
    }
}

void EnNiwLady_AfterGivingItem(EnNiwLady* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) != TEXT_STATE_DONE) || !Message_ShouldAdvance(play)) {
        return;
    }
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n", "☆☆☆☆☆ Normal termination ☆☆☆☆☆ \n") VT_RST);
    if (LINK_IS_ADULT) {
        if (!GET_ITEMGETINF(ITEMGETINF_POCKET_EGG)) {
            SET_ITEMGETINF(ITEMGETINF_POCKET_EGG);
        } else {
            SET_ITEMGETINF(ITEMGETINF_COJIRO);
        }
        this->actionFunc = EnNiwLady_SetupKakarikoAdultIdle;
    } else {
        SET_ITEMGETINF(ITEMGETINF_CUCCO_MINIGAME_BOTTLE);
        this->endTextState = TEXT_STATE_DONE;
        this->actionFunc = EnNiwLady_KakarikoChildIdle;
    }
}

void EnNiwLady_SetupInImpasHouse(EnNiwLady* this, PlayState* play) {
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 通常メッセージチェック ☆☆☆☆☆ \n", "☆☆☆☆☆ Normal message check ☆☆☆☆☆ \n") VT_RST);
    this->endTextState = TEXT_STATE_DONE;
    this->actionFunc = EnNiwLady_InImpasHouse;
}

void EnNiwLady_InImpasHouse(EnNiwLady* this, PlayState* play) {
    this->actor.textId = 0x503D;
    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY);
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->nextAnimation = 8;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        // Don't know why this is set to true here, as this talk is not about the Pocket Cucco
        this->hasSpokenAboutPocketCucco = true;
        this->nextAnimation = this->adultTextIndex + 9;
        this->actionFunc = EnNiwLady_SetupInImpasHouse;
    } else {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
}

void EnNiwLady_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnNiwLady* this = (EnNiwLady*)thisx;
    Player* player = GET_PLAYER(play);

    Actor_SetFocus(thisx, 60.0f);
    this->interactInfo.trackPos = player->actor.world.pos;
    if (!LINK_IS_ADULT) {
        this->interactInfo.trackPos.y = player->actor.world.pos.y - 10.0f;
    }
    Npc_TrackPoint(thisx, &this->interactInfo, 2, NPC_TRACKING_FULL_BODY);
    this->headRot = this->interactInfo.headRot;
    this->torsoRot = this->interactInfo.torsoRot;
    if (!this->isWorryingAboutCuccos) {
        Math_SmoothStepToS(&this->headRot.y, 0, 5, 3000, 0);
    }
    gSegments[6] = OS_K0_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
    if (this->osAnimeObjectSlot >= 0) {
        if (this->isLoaded) {
            if (this->nextAnimation != 0) {
                this->nextAnimation--;
                EnNiwLady_ChoseAnimation(this, play, this->nextAnimation);
                this->nextAnimation = 0;
            }
            SkelAnime_Update(&this->skelAnime);
        }
        this->aneObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_ANE);
        if (this->aneObjectSlot < 0) {
            return;
        }

        this->actionFunc(this, play);

        if (this->unusedTimer2 != 0) {
            this->unusedTimer2--;
        }
        if (this->unusedRandomTimer != 0) {
            this->unusedRandomTimer--;
        }
        this->unusedTimer++;
        if (this->unusedRandomTimer == 0) {
            this->faceState++;
            if (this->faceState >= 3) {
                this->faceState = 0;
                this->unusedRandomTimer = ((s16)Rand_ZeroFloat(60.0f) + 0x14);
            }
        }
        Actor_UpdateBgCheckInfo(play, thisx, 20.0f, 20.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        Collider_UpdateCylinder(thisx, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

Gfx* EnNiwLady_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* dList;

    dList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(dList);
    return dList;
}

s32 EnNiwLady_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnNiwLady* this = (EnNiwLady*)thisx;
    s32 pad;

    if (limbIndex == 15) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.x;
    }
    if (limbIndex == 8) {
        rot->x += this->torsoRot.y;
    }
    if (this->isSwaying) {
        if ((limbIndex == 8) || (limbIndex == 10) || (limbIndex == 13)) {
            // clang-format off
            rot->y += Math_SinS((play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Y))) * FIDGET_AMPLITUDE;
            rot->z += Math_CosS((play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Z))) * FIDGET_AMPLITUDE;
            // clang-format on
        }
    }
    return false;
}

void EnNiwLady_Draw(Actor* thisx, PlayState* play2) {
    static void* sEyeTextures[] = { gCuccoLadyEyeOpenTex, gCuccoLadyEyeHalfTex, gCuccoLadyEyeClosedTex };
    EnNiwLady* this = (EnNiwLady*)thisx;
    PlayState* play = (PlayState*)play2;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_niw_lady.c", 1347);
    if (this->isLoaded) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->faceState]));
        gSPSegment(POLY_OPA_DISP++, 0x0C, EnNiwLady_EmptyDList(play->state.gfxCtx));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnNiwLady_OverrideLimbDraw, NULL, this);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_niw_lady.c", 1370);
}
