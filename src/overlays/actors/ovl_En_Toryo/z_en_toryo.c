/*
 * File: z_en_tory.c
 * Overlay: ovl_En_Toryo
 * Description: Boss Carpenter
 */

#include "z_en_toryo.h"
#include "assets/objects/object_toryo/object_toryo.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnToryo_Init(Actor* thisx, PlayState* play);
void EnToryo_Destroy(Actor* thisx, PlayState* play);
void EnToryo_Update(Actor* thisx, PlayState* play);
void EnToryo_Draw(Actor* thisx, PlayState* play);

void EnToryo_Idle(EnToryo* this, PlayState* play);
s32 EnToryo_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnToryo_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

ActorProfile En_Toryo_Profile = {
    /**/ ACTOR_EN_TORYO,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_TORYO,
    /**/ sizeof(EnToryo),
    /**/ EnToryo_Init,
    /**/ EnToryo_Destroy,
    /**/ EnToryo_Update,
    /**/ EnToryo_Draw,
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
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 18, 63, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x0),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(0, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(0, 0x0),
    /* Master sword  */ DMG_ENTRY(0, 0x0),
    /* Giant's Knife */ DMG_ENTRY(0, 0x0),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(0, 0x0),
    /* Giant spin    */ DMG_ENTRY(0, 0x0),
    /* Master spin   */ DMG_ENTRY(0, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(0, 0x0),
    /* Giant jump    */ DMG_ENTRY(0, 0x0),
    /* Master jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static AnimationSpeedInfo sEnToryoAnimation = { &object_toryo_Anim_000E50, 1.0f, 0, 0 };

static Vec3f sMultVec = { 800.0f, 1000.0f, 0.0f };

void EnToryo_Init(Actor* thisx, PlayState* play) {
    EnToryo* this = (EnToryo*)thisx;
    s32 pad;

    switch (play->sceneId) {
        case SCENE_GERUDO_VALLEY:
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                this->stateFlags |= 1;
            }
            break;
        case SCENE_KAKARIKO_VILLAGE:
            if ((LINK_AGE_IN_YEARS == YEARS_CHILD) && IS_DAY) {
                this->stateFlags |= 2;
            }
            break;
        case SCENE_KAKARIKO_CENTER_GUEST_HOUSE:
            if ((LINK_AGE_IN_YEARS == YEARS_CHILD) && IS_NIGHT) {
                this->stateFlags |= 4;
            }
            break;
    }

    if ((this->stateFlags & 7) == 0) {
        Actor_Kill(&this->actor);
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 42.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &object_toryo_Skel_007150, NULL, this->jointTable, this->morphTable, 17);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    Animation_Change(&this->skelAnime, sEnToryoAnimation.animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sEnToryoAnimation.animation), sEnToryoAnimation.mode,
                     sEnToryoAnimation.morphFrames);
    this->stateFlags |= 8;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actionFunc = EnToryo_Idle;
}

void EnToryo_Destroy(Actor* thisx, PlayState* play) {
    EnToryo* this = (EnToryo*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 EnToryo_TalkRespond(EnToryo* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    s32 ret = 1;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_CLOSING:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_EVENT:
            ret = 1;
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                if (play->msgCtx.choiceIndex == 0) {
                    Message_CloseTextbox(play);
                    this->actor.parent = NULL;
                    player->exchangeItemId = EXCH_ITEM_NONE;
                    play->msgCtx.msgMode = MSGMODE_PAUSED;
                    this->actor.textId = 0x601B;
                    ret = 3;
                } else {
                    this->actor.textId = 0x606F;
                    ret = 2;
                }
            }
            break;
        case TEXT_STATE_DONE:
            switch (this->actor.textId) {
                case 0x5028:
                    ret = 1;
                    if (Message_ShouldAdvance(play)) {
                        SET_INFTABLE(INFTABLE_172);
                        ret = 0;
                    }
                    break;
                case 0x601B:
                    ret = 1;
                    if (Message_ShouldAdvance(play)) {
                        ret = 4;
                    }
                    break;
                case 0x606F:
                    ret = 1;
                    if (Message_ShouldAdvance(play)) {
                        SET_INFTABLE(INFTABLE_171);
                        ret = 0;
                    }
                    break;
                case 0x606A:
                    ret = 1;
                    if (Message_ShouldAdvance(play)) {
                        SET_INFTABLE(INFTABLE_170);
                        ret = 0;
                    }
                    break;
                case 0x606B:
                case 0x606C:
                case 0x606D:
                case 0x606E:
                default:
                    ret = 1;
                    if (Message_ShouldAdvance(play)) {
                        ret = 0;
                    }
                    break;
            }
            break;
    }
    return ret;
}

s32 EnToryo_DoneTalking(EnToryo* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    s32 ret = 5;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_CLOSING:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
            ret = 5;
            break;
        case TEXT_STATE_DONE:
            if (Message_ShouldAdvance(play)) {
                ret = 0;
            }
            break;
    }
    return ret;
}

u32 EnToryo_ReactToExchangeItem(EnToryo* this, PlayState* play) {
    u32 ret;

    if (this->exchangeItemId != EXCH_ITEM_NONE) {
        if (this->exchangeItemId == EXCH_ITEM_POACHERS_SAW) {
            Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
            if (GET_INFTABLE(INFTABLE_171)) {
                ret = 0x606E;
            } else {
                ret = 0x606D;
            }
        } else {
            ret = 0x200F;
        }
    }
    //! @bug return value may be uninitialized
    return ret;
}

s32 EnToryo_GetTextId(EnToryo* this, PlayState* play) {
    s32 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_CARPENTER_BOSS);
    s32 ret = textId;

    if (textId == 0) {
        if (this->stateFlags & 1) {
            if (GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED()) {
                ret = 0x606C;
            } else if (GET_INFTABLE(INFTABLE_170)) {
                ret = 0x606B;
            } else {
                ret = 0x606A;
            }
        } else if (this->stateFlags & 2) {
            if (GET_INFTABLE(INFTABLE_172)) {
                ret = 0x5029;
            } else {
                ret = 0x5028;
            }
        } else {
            ret = textId;
            if (this->stateFlags & 4) {
                ret = 0x506C;
            }
        }
    }
    return ret;
}

void EnToryo_HandleTalking(EnToryo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 posX;
    s16 posY;

    if (this->messageState == 3) {
        Actor_TalkOfferAccepted(&this->actor, play);
        Message_ContinueTextbox(play, this->actor.textId);
        this->messageState = 1;
    }

    if (this->messageState == 1) {
        this->messageState = EnToryo_TalkRespond(this, play);
    }

    if (this->messageState == 5) {
        this->messageState = EnToryo_DoneTalking(this, play);
        return;
    }

    if (this->messageState == 2) {
        Message_ContinueTextbox(play, this->actor.textId);
        this->messageState = 1;
    }

    if (this->messageState == 4) {
        if (Actor_HasParent(&this->actor, play)) {
            this->actor.parent = NULL;
            this->messageState = 5;
        } else {
            Actor_OfferGetItem(&this->actor, play, GI_BROKEN_GORONS_SWORD, 100.0f, 10.0f);
        }
        return;
    }

    if (this->messageState == 0) {
        if (Actor_TalkOfferAccepted(&this->actor, play)) {
            this->exchangeItemId = Actor_GetPlayerExchangeItemId(play);
            if (this->exchangeItemId != EXCH_ITEM_NONE) {
                player->actor.textId = EnToryo_ReactToExchangeItem(this, play);
                this->actor.textId = player->actor.textId;
            }
            this->messageState = 1;
            return;
        }

        Actor_GetScreenPos(play, &this->actor, &posX, &posY);
        if ((posX >= 0) && (posX <= SCREEN_WIDTH) && (posY >= 0) && (posY <= SCREEN_HEIGHT)) {
            this->actor.textId = EnToryo_GetTextId(this, play);
            Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 100.0f, EXCH_ITEM_POACHERS_SAW);
        }
    }
}

void EnToryo_Idle(EnToryo* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    EnToryo_HandleTalking(this, play);
    if (this->messageState != 0) {
        this->stateFlags |= 0x10;
    } else {
        this->stateFlags &= ~0x10;
    }
}

void EnToryo_Update(Actor* thisx, PlayState* play) {
    EnToryo* this = (EnToryo*)thisx;
    ColliderCylinder* collider = &this->collider;
    Player* player = GET_PLAYER(play);
    f32 rot;

    Collider_UpdateCylinder(thisx, collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, (Collider*)collider);

    this->actionFunc(this, play);

    if (this->stateFlags & 8) {
        this->interactInfo.trackPos.x = player->actor.focus.pos.x;
        this->interactInfo.trackPos.y = player->actor.focus.pos.y;
        this->interactInfo.trackPos.z = player->actor.focus.pos.z;

        if (this->stateFlags & 0x10) {
            Npc_TrackPoint(thisx, &this->interactInfo, 0, NPC_TRACKING_FULL_BODY);
            return;
        }

        rot = thisx->yawTowardsPlayer - thisx->shape.rot.y;
        if ((rot < DEG_TO_BINANG2(80.0f)) && (rot > DEG_TO_BINANG2(-80.0f))) {
            Npc_TrackPoint(thisx, &this->interactInfo, 0, NPC_TRACKING_HEAD_AND_TORSO);
        } else {
            Npc_TrackPoint(thisx, &this->interactInfo, 0, NPC_TRACKING_NONE);
        }
    }
}

void EnToryo_Draw(Actor* thisx, PlayState* play) {
    EnToryo* this = (EnToryo*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnToryo_OverrideLimbDraw, EnToryo_PostLimbDraw, this);
}

s32 EnToryo_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnToryo* this = (EnToryo*)thisx;

    if (this->stateFlags & 8) {
        switch (limbIndex) {
            case 8:
                rot->x += this->interactInfo.torsoRot.y;
                rot->y -= this->interactInfo.torsoRot.x;
                break;
            case 15:
                rot->x += this->interactInfo.headRot.y;
                rot->z += this->interactInfo.headRot.x;
                break;
        }
    }
    return 0;
}

void EnToryo_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnToryo* this = (EnToryo*)thisx;

    switch (limbIndex) {
        case 15:
            Matrix_MultVec3f(&sMultVec, &this->actor.focus.pos);
            break;
    }
}
