#include "z_en_niw_lady.h"
#include "assets/objects/object_ane/object_ane.h"
#include "assets/objects/object_os_anime/object_os_anime.h"
#include "overlays/actors/ovl_En_Niw/z_en_niw.h"
#include "terminal.h"
#include "versions.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnNiwLady_Init(Actor* thisx, PlayState* play);
void EnNiwLady_Destroy(Actor* thisx, PlayState* play);
void EnNiwLady_Update(Actor* thisx, PlayState* play);

void func_80AB9F24(EnNiwLady* this, PlayState* play);
void EnNiwLady_Draw(Actor* thisx, PlayState* play2);
void func_80ABA21C(EnNiwLady* this, PlayState* play);
void func_80ABAD38(EnNiwLady* this, PlayState* play);
void func_80ABA778(EnNiwLady* this, PlayState* play);
void func_80ABA878(EnNiwLady* this, PlayState* play);
void func_80ABA9B8(EnNiwLady* this, PlayState* play);
void func_80ABAB08(EnNiwLady* this, PlayState* play);
void func_80ABAC00(EnNiwLady* this, PlayState* play);
void func_80ABAA9C(EnNiwLady* this, PlayState* play);
void func_80ABAC84(EnNiwLady* this, PlayState* play);
void func_80ABA244(EnNiwLady* this, PlayState* play);
void func_80ABA654(EnNiwLady* this, PlayState* play);
void func_80ABAD7C(EnNiwLady* this, PlayState* play);

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

static s16 D_80ABB3B4[] = {
    INFTABLE_MASK(INFTABLE_199), INFTABLE_MASK(INFTABLE_19A), INFTABLE_MASK(INFTABLE_19B), INFTABLE_MASK(INFTABLE_19C),
    INFTABLE_MASK(INFTABLE_19D), INFTABLE_MASK(INFTABLE_19E), INFTABLE_MASK(INFTABLE_19F),
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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
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
    this->unk_278 = 0;
    if (play->sceneId == SCENE_IMPAS_HOUSE) {
        this->unk_278 = 1;
    }
    if ((this->unk_278 != 0) && IS_DAY) {
        Actor_Kill(thisx);
        return;
    }
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n" VT_RST, this->unk_278);
    PRINTF("\n\n");
    this->actionFunc = func_80AB9F24;
    thisx->cullingVolumeDistance = 600.0f;
}

void EnNiwLady_Destroy(Actor* thisx, PlayState* play) {
    EnNiwLady* this = (EnNiwLady*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnNiwLady_ChoseAnimation(EnNiwLady* this, PlayState* play, s32 arg2) {
    f32 frames;

    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        arg2 = 8;
    }
    if (arg2 != this->unk_270) {
        this->unk_275 = 0;
        this->unk_276 = 1;
        this->unk_270 = arg2;
        switch (arg2) {
            case 10:
                this->unk_275 = 1;
                FALLTHROUGH;
            case 9:
                frames = Animation_GetLastFrame(&gObjOsAnim_07D0);
                Animation_Change(&this->skelAnime, &gObjOsAnim_07D0, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
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
                frames = Animation_GetLastFrame(&gObjOsAnim_9F94);
                Animation_Change(&this->skelAnime, &gObjOsAnim_9F94, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                break;
            case 7:
            case 20:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
                frames = Animation_GetLastFrame(&gObjOsAnim_0718);
                Animation_Change(&this->skelAnime, &gObjOsAnim_0718, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                break;
            case 100:
                frames = Animation_GetLastFrame(&gObjOsAnim_A630);
                Animation_Change(&this->skelAnime, &gObjOsAnim_A630, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -10.0f);
                this->unk_276 = 0;
                break;
        }
        return;
    }
}

void func_80AB9F24(EnNiwLady* this, PlayState* play) {
    f32 frames;
    s32 pad;

    if (Object_IsLoaded(&play->objectCtx, this->aneObjectSlot) &&
        Object_IsLoaded(&play->objectCtx, this->osAnimeObjectSlot)) {
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->aneObjectSlot].segment);
        SkelAnime_InitFlex(play, &this->skelAnime, &gCuccoLadySkel, NULL, this->jointTable, this->morphTable, 16);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
        this->unk_27E = 1;
        this->actor.gravity = -3.0f;
        Actor_SetScale(&this->actor, 0.01f);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        this->unk_272 = 0;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
        this->actor.draw = EnNiwLady_Draw;
        switch (this->unk_278) {
            case 0:
                if (!GET_ITEMGETINF(ITEMGETINF_0C) && !LINK_IS_ADULT) {
                    frames = Animation_GetLastFrame(&gObjOsAnim_A630);
                    Animation_Change(&this->skelAnime, &gObjOsAnim_A630, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, 0.0f);
                } else {
                    frames = Animation_GetLastFrame(&gObjOsAnim_07D0);
                    Animation_Change(&this->skelAnime, &gObjOsAnim_07D0, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, 0.0f);
                }
                if (LINK_IS_ADULT) {
                    this->actionFunc = func_80ABA778;
                } else {
                    this->actionFunc = func_80ABA21C;
                }
                return;
            case 1:
                frames = Animation_GetLastFrame(&gObjOsAnim_07D0);
                Animation_Change(&this->skelAnime, &gObjOsAnim_07D0, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, 0.0f);
                this->actionFunc = func_80ABAD38;
                return;
        }
    }
}

void func_80ABA21C(EnNiwLady* this, PlayState* play) {
    this->actor.textId = sMissingCuccoTextIds[0];
    this->unk_262 = TEXT_STATE_DONE;
    this->actionFunc = func_80ABA244;
}

void func_80ABA244(EnNiwLady* this, PlayState* play) {
    EnNiw* currentCucco;
    s32 pad[2];
    s32 phi_s1;

    this->cuccosInPen = 0;
    currentCucco = (EnNiw*)play->actorCtx.actorLists[ACTORCAT_PROP].head;
    while (currentCucco != NULL) {
        if (currentCucco->actor.id == ACTOR_EN_NIW) {
            if ((fabsf(currentCucco->actor.world.pos.x - 330.0f) < 90.0f) &&
                (fabsf(currentCucco->actor.world.pos.z - 1610.0f) < 190.0f)) {
                if (this->unk_26C == 0) {
                    gSaveContext.save.info.infTable[INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F] |=
                        D_80ABB3B4[currentCucco->unk_2AA];
                    if (BREG(1) != 0) {
                        // "GET inside the chicken fence!"
                        PRINTF(VT_FGCOL(GREEN) "☆ 鶏柵内ＧＥＴ！☆ %x\n" VT_RST, D_80ABB3B4[currentCucco->unk_2AA]);
                    }
                }
                this->cuccosInPen++;
            } else if (this->unk_26C == 0) {
                gSaveContext.save.info.infTable[INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F] &=
                    ~D_80ABB3B4[currentCucco->unk_2AA];
            }
        }
        currentCucco = (EnNiw*)currentCucco->actor.next;
    }
    if (DEBUG_FEATURES && BREG(7) != 0) {
        this->cuccosInPen = BREG(7) - 1;
    }
    phi_s1 = this->cuccosInPen;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->unk_26E = 101;
    }
    if (this->cuccosInPen >= 7) {
        phi_s1 = 8;
        if ((this->unk_26C < 2) && (this->unk_26C == 0)) {
            phi_s1 = 7;
        }
    }
    if ((this->unk_26C != 0) && (phi_s1 < 7)) {
        phi_s1 = 9;
    }
    this->actor.textId = sMissingCuccoTextIds[phi_s1];
    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY);
        this->unk_262 = TEXT_STATE_DONE;
    }
    if ((this->unk_26C != 0) && (phi_s1 != 9)) {
        phi_s1 = 10;
        this->unk_26E = 11;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        PRINTF("\n\n");
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん選択\t ☆☆☆☆ %d\n" VT_RST, phi_s1);
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃんハート     ☆☆☆☆ %d\n" VT_RST, this->unk_26C);
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん保存       ☆☆☆☆ %d\n" VT_RST, this->unk_26A);
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ ねぇちゃん今\t ☆☆☆☆ %d\n" VT_RST, this->cuccosInPen);
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n" VT_RST, this->actor.textId);
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ this->message_end_code   ☆☆ %d\n" VT_RST, this->unk_262);
        PRINTF("\n\n");
        if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) == 0) {
#if OOT_VERSION >= NTSC_1_1
            if (this->actor.textId == 0x503C) {
                Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
                this->unk_26C = 2;
                this->unk_262 = TEXT_STATE_EVENT;
                this->actionFunc = func_80ABA654;
                return;
            }
#endif
            this->unk_26E = phi_s1 + 1;
            if (phi_s1 == 7) {
                Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                this->unk_26C = 1;
                this->unk_262 = TEXT_STATE_EVENT;
                this->unk_26A = this->cuccosInPen;
                PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ 柵内BIT変更前 ☆☆ %x\n" VT_RST,
                       gSaveContext.save.info.infTable[INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F]);
                gSaveContext.save.info.infTable[INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F] &=
                    (u16) ~(INFTABLE_MASK(INFTABLE_199) | INFTABLE_MASK(INFTABLE_19A) | INFTABLE_MASK(INFTABLE_19B) |
                            INFTABLE_MASK(INFTABLE_19C) | INFTABLE_MASK(INFTABLE_19D) | INFTABLE_MASK(INFTABLE_19E) |
                            INFTABLE_MASK(INFTABLE_19F));
                PRINTF(VT_FGCOL(CYAN) "☆☆☆☆☆ 柵内BIT変更後 ☆☆ %x\n" VT_RST,
                       gSaveContext.save.info.infTable[INFTABLE_INDEX_199_19A_19B_19C_19D_19E_19F]);
                PRINTF("\n\n");
                this->actionFunc = func_80ABA654;
                return;
            }
            if (this->unk_26A != this->cuccosInPen) {
                if (this->cuccosInPen < this->unk_26A) {
                    Sfx_PlaySfxCentered(NA_SE_SY_ERROR);
#if OOT_VERSION < NTSC_1_1
                    if (phi_s1 == 9) {
                        this->unk_26C = 2;
                        this->unk_262 = TEXT_STATE_EVENT;
                        this->actionFunc = func_80ABA654;
                    }
#endif
                } else if (phi_s1 + 1 < 9) {
                    Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }
            if (this->unk_26A < this->cuccosInPen) {
                this->unk_26A = this->cuccosInPen;
                return;
            }
        }
    } else {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
}

void func_80ABA654(EnNiwLady* this, PlayState* play) {
    if (this->unk_262 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ ハート ☆☆☆☆☆ %d\n" VT_RST, this->unk_26C);
        PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 爆弾   ☆☆☆☆☆ %d\n" VT_RST, this->unk_272);
        PRINTF("\n\n");
        this->unk_26E = 0xB;
        if (!GET_ITEMGETINF(ITEMGETINF_0C)) {
            this->actor.parent = NULL;
            this->getItemId = GI_BOTTLE_EMPTY;
            Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_EMPTY, 100.0f, 50.0f);
            this->actionFunc = func_80ABAC00;
            return;
        }
        if (this->unk_26C == 1) {
            this->getItemId = GI_RUPEE_PURPLE;
            Actor_OfferGetItem(&this->actor, play, GI_RUPEE_PURPLE, 100.0f, 50.0f);
            this->actionFunc = func_80ABAC00;
        }
        this->actionFunc = func_80ABA244;
    }
}

static s16 sTradeItemTextIds[] = { 0x503E, 0x503F, 0x5047, 0x5040, 0x5042, 0x5043,
                                   0x5044, 0x00CF, 0x5045, 0x5042, 0x5027 };

void func_80ABA778(EnNiwLady* this, PlayState* play) {
    // "☆☆☆☆☆ Adult message check ☆☆☆☆☆"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ アダルトメッセージチェック ☆☆☆☆☆ \n" VT_RST);
    this->unk_262 = TEXT_STATE_DONE;
    this->unk_273 = 0;
    if (!GET_ITEMGETINF(ITEMGETINF_2C)) {
        if (this->unk_274 != 0) {
            this->unk_27A = 1;
        } else {
            this->unk_27A = 0;
        }
        this->unk_273 = 1;
        this->unk_262 = TEXT_STATE_CHOICE;
    } else {
        this->unk_27A = 2;
        if (!GET_ITEMGETINF(ITEMGETINF_2E)) {
            this->unk_27A = 3;
            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
                this->unk_27A = 9;
                if (this->unk_277 != 0) {
                    this->unk_27A = 10;
                }
            } else {
                this->unk_27A = 4;
            }
        }
    }
    this->actor.textId = sTradeItemTextIds[this->unk_27A];
    this->actionFunc = func_80ABA878;
}

void func_80ABA878(EnNiwLady* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->unk_26E = 11;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        s8 playerExchangeItemId = Actor_GetPlayerExchangeItemId(play);

        if ((playerExchangeItemId == EXCH_ITEM_POCKET_CUCCO) && GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
            Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
            player->actor.textId = sTradeItemTextIds[5];
            this->unk_26E = this->unk_27A + 21;
            this->unk_262 = TEXT_STATE_CHOICE;
            this->actionFunc = func_80ABAB08;
        } else if (playerExchangeItemId != EXCH_ITEM_NONE) {
            player->actor.textId = sTradeItemTextIds[7];
            this->unk_26E = this->unk_27A + 21;
        } else {
            this->unk_274 = 1;
            this->unk_26E = this->unk_27A + 21;
            this->actionFunc = !this->unk_273 ? func_80ABA778 : func_80ABA9B8;
        }
        return;
    }

    Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 50.0f, EXCH_ITEM_POCKET_CUCCO);
}

void func_80ABA9B8(EnNiwLady* this, PlayState* play) {
    if ((this->unk_262 == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                Message_CloseTextbox(play);
                this->actor.parent = NULL;
                Actor_OfferGetItem(&this->actor, play, GI_POCKET_EGG, 200.0f, 100.0f);
                this->actionFunc = func_80ABAC00;
                break;
            case 1:
                this->actor.textId = sTradeItemTextIds[3];
                this->unk_26E = this->unk_27A + 21;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_262 = TEXT_STATE_EVENT;
                this->actionFunc = func_80ABAA9C;
                break;
        }
    }
}

void func_80ABAA9C(EnNiwLady* this, PlayState* play) {
    this->unk_26E = 11;
    if ((this->unk_262 == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = func_80ABA778;
    }
}

void func_80ABAB08(EnNiwLady* this, PlayState* play) {
    if ((this->unk_262 == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                Message_CloseTextbox(play);
                this->actor.parent = NULL;
                Actor_OfferGetItem(&this->actor, play, GI_COJIRO, 200.0f, 100.0f);
                this->actionFunc = func_80ABAC00;
                break;
            case 1:
                Message_CloseTextbox(play);
                this->unk_277 = 1;
                this->actor.textId = sTradeItemTextIds[8];
                this->unk_26E = this->unk_27A + 21;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_262 = TEXT_STATE_EVENT;
                this->actionFunc = func_80ABAA9C;
                break;
        }
    }
}

void func_80ABAC00(EnNiwLady* this, PlayState* play) {
    s32 getItemId;

    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = func_80ABAC84;
    } else {
        getItemId = this->getItemId;
        if (LINK_IS_ADULT) {
            getItemId = !GET_ITEMGETINF(ITEMGETINF_2C) ? GI_POCKET_EGG : GI_COJIRO;
        }
        Actor_OfferGetItem(&this->actor, play, getItemId, 200.0f, 100.0f);
    }
}

void func_80ABAC84(EnNiwLady* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) != TEXT_STATE_DONE) || !Message_ShouldAdvance(play)) {
        return;
    }
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
    if (LINK_IS_ADULT) {
        if (!GET_ITEMGETINF(ITEMGETINF_2C)) {
            SET_ITEMGETINF(ITEMGETINF_2C);
        } else {
            SET_ITEMGETINF(ITEMGETINF_2E);
        }
        this->actionFunc = func_80ABA778;
    } else {
        SET_ITEMGETINF(ITEMGETINF_0C);
        this->unk_262 = TEXT_STATE_DONE;
        this->actionFunc = func_80ABA244;
    }
}

void func_80ABAD38(EnNiwLady* this, PlayState* play) {
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 通常メッセージチェック ☆☆☆☆☆ \n" VT_RST);
    this->unk_262 = TEXT_STATE_DONE;
    this->actionFunc = func_80ABAD7C;
}

void func_80ABAD7C(EnNiwLady* this, PlayState* play) {
    this->actor.textId = 0x503D;
    if (MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_CUCCO_LADY);
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) || (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE)) {
        this->unk_26E = 8;
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk_274 = 1;
        this->unk_26E = this->unk_27A + 9;
        this->actionFunc = func_80ABAD38;
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
    if (this->unk_276 == 0) {
        Math_SmoothStepToS(&this->headRot.y, 0, 5, 3000, 0);
    }
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
    if (this->osAnimeObjectSlot >= 0) {
        if (this->unk_27E != 0) {
            if (this->unk_26E != 0) {
                this->unk_26E--;
                EnNiwLady_ChoseAnimation(this, play, this->unk_26E);
                this->unk_26E = 0;
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
    if (this->unk_275 != 0) {
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
    if (this->unk_27E != 0) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->faceState]));
        gSPSegment(POLY_OPA_DISP++, 0x0C, EnNiwLady_EmptyDList(play->state.gfxCtx));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnNiwLady_OverrideLimbDraw, NULL, this);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_niw_lady.c", 1370);
}
