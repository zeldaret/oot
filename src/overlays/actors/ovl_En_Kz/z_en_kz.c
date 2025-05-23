/*
 * File: z_en_kz.c
 * Overlay: ovl_En_Kz
 * Description: King Zora
 */

#include "z_en_kz.h"
#include "versions.h"
#include "assets/objects/object_kz/object_kz.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnKz_Init(Actor* thisx, PlayState* play);
void EnKz_Destroy(Actor* thisx, PlayState* play);
void EnKz_Update(Actor* thisx, PlayState* play);
void EnKz_Draw(Actor* thisx, PlayState* play);

void EnKz_PreMweepWait(EnKz* this, PlayState* play);
void EnKz_SetupMweep(EnKz* this, PlayState* play);
void EnKz_Mweep(EnKz* this, PlayState* play);
void EnKz_StopMweep(EnKz* this, PlayState* play);
void EnKz_Wait(EnKz* this, PlayState* play);
void EnKz_SetupGetItem(EnKz* this, PlayState* play);
void EnKz_StartTimer(EnKz* this, PlayState* play);

ActorProfile En_Kz_Profile = {
    /**/ ACTOR_EN_KZ,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_KZ,
    /**/ sizeof(EnKz),
    /**/ EnKz_Init,
    /**/ EnKz_Destroy,
    /**/ EnKz_Update,
    /**/ EnKz_Draw,
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
    { 80, 120, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnKzAnimation {
    /* 0 */ ENKZ_ANIM_0,
    /* 1 */ ENKZ_ANIM_1,
    /* 2 */ ENKZ_ANIM_2
} EnKzAnimation;

static AnimationInfo sAnimationInfo[] = {
    { &gKzIdleAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKzIdleAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -10.0f },
    { &gKzMweepAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -10.0f },
};

u16 EnKz_GetTextIdChild(PlayState* play, EnKz* this) {
    Player* player = GET_PLAYER(play);

    if (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
        return 0x402B;
    } else if (GET_EVENTCHKINF(EVENTCHKINF_GAVE_LETTER_TO_KING_ZORA)) {
        return 0x401C;
    } else {
        player->exchangeItemId = EXCH_ITEM_BOTTLE_RUTOS_LETTER;
        return 0x401A;
    }
}

u16 EnKz_GetTextIdAdult(PlayState* play, EnKz* this) {
    Player* player = GET_PLAYER(play);

    if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_EYEBALL_FROG) {
        if (!GET_INFTABLE(INFTABLE_139)) {
            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_ZORA)) {
                return 0x401F;
            } else {
                return 0x4012;
            }
        } else {
            return CHECK_QUEST_ITEM(QUEST_SONG_SERENADE) ? 0x4045 : 0x401A;
        }
    } else {
        player->exchangeItemId = EXCH_ITEM_PRESCRIPTION;
        return 0x4012;
    }
}

u16 EnKz_GetTextId(PlayState* play, Actor* thisx) {
    EnKz* this = (EnKz*)thisx;
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_KING_ZORA);

    if (textId != 0) {
        return textId;
    }

    if (LINK_IS_ADULT) {
        return EnKz_GetTextIdAdult(play, this);
    } else {
        return EnKz_GetTextIdChild(play, this);
    }
}

s16 EnKz_UpdateTalkState(PlayState* play, Actor* thisx) {
    EnKz* this = (EnKz*)thisx;
    s16 talkState = NPC_TALK_STATE_TALKING;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
            break;
#if OOT_VERSION < PAL_1_0
        case TEXT_STATE_CLOSING:
            talkState = NPC_TALK_STATE_IDLE;
            switch (this->actor.textId) {
                case 0x4012:
                    SET_INFTABLE(INFTABLE_139);
                    FALLTHROUGH;
                case 0x401B:
                    talkState = NPC_TALK_STATE_ACTION;
                    break;
                case 0x401F:
                    SET_INFTABLE(INFTABLE_139);
                    break;
            }
            break;
#else
        case TEXT_STATE_CLOSING:
            break;
        case TEXT_STATE_DONE:
            talkState = NPC_TALK_STATE_IDLE;
            switch (this->actor.textId) {
                case 0x4012:
                    SET_INFTABLE(INFTABLE_139);
                    talkState = NPC_TALK_STATE_ACTION;
                    break;
                case 0x401B:
                    talkState = !Message_ShouldAdvance(play) ? NPC_TALK_STATE_TALKING : NPC_TALK_STATE_ACTION;
                    break;
                case 0x401F:
                    SET_INFTABLE(INFTABLE_139);
                    break;
            }
            break;
#endif
        case TEXT_STATE_DONE_FADING:
            if (this->actor.textId != 0x4014) {
                if (this->actor.textId == 0x401B && !this->sfxPlayed) {
                    Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    this->sfxPlayed = true;
                }
            } else if (!this->sfxPlayed) {
                Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->sfxPlayed = true;
            }
            break;
        case TEXT_STATE_CHOICE:
            if (!Message_ShouldAdvance(play)) {
                break;
            }
            if (this->actor.textId == 0x4014) {
                if (play->msgCtx.choiceIndex == 0) {
#if OOT_VERSION >= PAL_1_0
                    EnKz_SetupGetItem(this, play);
#endif
                    talkState = NPC_TALK_STATE_ACTION;
                } else {
                    this->actor.textId = 0x4016;
                    Message_ContinueTextbox(play, this->actor.textId);
                }
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                talkState = NPC_TALK_STATE_ACTION;
            }
            break;
#if OOT_VERSION < PAL_1_0
        case TEXT_STATE_DONE:
            if (Message_ShouldAdvance(play)) {
                talkState = NPC_TALK_STATE_ITEM_GIVEN;
            }
            break;
#endif
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return talkState;
}

void EnKz_UpdateEyes(EnKz* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeIdx++;
        if (this->eyeIdx >= 3) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeIdx = 0;
        }
    }
}

/**
 * Custom version of Npc_UpdateTalking.
 *
 * @see Npc_UpdateTalking
 */
s32 EnKz_UpdateTalking(PlayState* play, Actor* thisx, s16* talkState, f32 interactRange, NpcGetTextIdFunc getTextId,
                       NpcUpdateTalkStateFunc updateTalkState) {
    Player* player = GET_PLAYER(play);
    s16 x;
    s16 y;
    f32 xzDistToPlayer;
    f32 yaw;

    if (Actor_TalkOfferAccepted(thisx, play)) {
        *talkState = NPC_TALK_STATE_TALKING;
        return true;
    }

#if OOT_VERSION >= PAL_1_0
    if (*talkState != NPC_TALK_STATE_IDLE) {
        *talkState = updateTalkState(play, thisx);
        return false;
    }

    yaw = Math_Vec3f_Yaw(&thisx->home.pos, &player->actor.world.pos);
    yaw -= thisx->shape.rot.y;
    if ((fabsf(yaw) > 1638.0f) || (thisx->xzDistToPlayer < 265.0f)) {
        thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        return false;
    }

    thisx->flags |= ACTOR_FLAG_ATTENTION_ENABLED;
#endif

    Actor_GetScreenPos(play, thisx, &x, &y);
    if (!((x >= -30) && (x < 361) && (y >= -10) && (y < 241))) {
        return false;
    }

#if OOT_VERSION < PAL_1_0
    if (*talkState != NPC_TALK_STATE_IDLE) {
        *talkState = updateTalkState(play, thisx);
        return false;
    }
#endif

    xzDistToPlayer = thisx->xzDistToPlayer;
    thisx->xzDistToPlayer = Math_Vec3f_DistXZ(&thisx->home.pos, &player->actor.world.pos);
    if (Actor_OfferTalk(thisx, play, interactRange) == 0) {
        thisx->xzDistToPlayer = xzDistToPlayer;
        return false;
    }
    thisx->xzDistToPlayer = xzDistToPlayer;
    thisx->textId = getTextId(play, thisx);

    return false;
}

void func_80A9CB18(EnKz* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 yaw;

#if OOT_VERSION < PAL_1_0
    yaw = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos);
    yaw -= this->actor.shape.rot.y;
    if (fabsf(yaw) > 1820.0f) {
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        return;
    }
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
#endif

    if (EnKz_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, 340.0f, EnKz_GetTextId,
                           EnKz_UpdateTalkState)) {
        if ((this->actor.textId == 0x401A) && !GET_EVENTCHKINF(EVENTCHKINF_GAVE_LETTER_TO_KING_ZORA)) {
            if (Actor_GetPlayerExchangeItemId(play) == EXCH_ITEM_BOTTLE_RUTOS_LETTER) {
                this->actor.textId = 0x401B;
                this->sfxPlayed = false;
            } else {
                this->actor.textId = 0x401A;
            }
            player->actor.textId = this->actor.textId;
            return;
        }

        if (LINK_IS_ADULT) {
            if ((INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_PRESCRIPTION) &&
                (Actor_GetPlayerExchangeItemId(play) == EXCH_ITEM_PRESCRIPTION)) {
                this->actor.textId = 0x4014;
                this->sfxPlayed = false;
                player->actor.textId = this->actor.textId;
#if OOT_VERSION >= PAL_1_0
                this->isTrading = true;
#endif
                return;
            }

#if OOT_VERSION >= PAL_1_0
            this->isTrading = false;
#endif
            if (GET_INFTABLE(INFTABLE_139)) {
                this->actor.textId = CHECK_QUEST_ITEM(QUEST_SONG_SERENADE) ? 0x4045 : 0x401A;
                player->actor.textId = this->actor.textId;
            } else {
                this->actor.textId = CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_ZORA) ? 0x401F : 0x4012;
                player->actor.textId = this->actor.textId;
            }
        }
    }
}

s32 EnKz_FollowPath(EnKz* this, PlayState* play) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;

    if (PARAMS_GET_NOSHIFT(this->actor.params, 8, 8) == 0xFF00) {
        return 0;
    }

    path = &play->pathList[PARAMS_GET_S(this->actor.params, 8, 8)];
    pointPos = SEGMENTED_TO_VIRTUAL(path->points);
    pointPos += this->waypoint;

    pathDiffX = pointPos->x - this->actor.world.pos.x;
    pathDiffZ = pointPos->z - this->actor.world.pos.z;
    Math_SmoothStepToS(&this->actor.world.rot.y, RAD_TO_BINANG(Math_FAtan2F(pathDiffX, pathDiffZ)), 0xA, 0x3E8, 1);

    if ((SQ(pathDiffX) + SQ(pathDiffZ)) < 10.0f) {
        this->waypoint++;
        if (this->waypoint >= path->count) {
            this->waypoint = 0;
        }
        return 1;
    }
    return 0;
}

s32 EnKz_SetMovedPos(EnKz* this, PlayState* play) {
    Path* path;
    Vec3s* lastPointPos;

    if (PARAMS_GET_NOSHIFT(this->actor.params, 8, 8) == 0xFF00) {
        return 0;
    }

    path = &play->pathList[PARAMS_GET_S(this->actor.params, 8, 8)];
    lastPointPos = SEGMENTED_TO_VIRTUAL(path->points);
    lastPointPos += path->count - 1;

    this->actor.world.pos.x = lastPointPos->x;
    this->actor.world.pos.y = lastPointPos->y;
    this->actor.world.pos.z = lastPointPos->z;

    return 1;
}

void EnKz_Init(Actor* thisx, PlayState* play) {
    EnKz* this = (EnKz*)thisx;
    s32 pad;

    SkelAnime_InitFlex(play, &this->skelanime, &gKzSkel, NULL, this->jointTable, this->morphTable, 12);
    ActorShape_Init(&this->actor.shape, 0.0, NULL, 0.0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    Actor_SetScale(&this->actor, 0.01);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    Animation_ChangeByInfo(&this->skelanime, sAnimationInfo, ENKZ_ANIM_0);

    if (GET_EVENTCHKINF(EVENTCHKINF_GAVE_LETTER_TO_KING_ZORA)) {
        EnKz_SetMovedPos(this, play);
    }

    if (LINK_IS_ADULT) {
        if (!GET_INFTABLE(INFTABLE_138)) {
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BG_ICE_SHELTER, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0x04FF);
        }
        this->actionFunc = EnKz_Wait;
    } else {
        this->actionFunc = EnKz_PreMweepWait;
    }
}

void EnKz_Destroy(Actor* thisx, PlayState* play) {
    EnKz* this = (EnKz*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnKz_PreMweepWait(EnKz* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        Animation_ChangeByInfo(&this->skelanime, sAnimationInfo, ENKZ_ANIM_2);
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnKz_SetupMweep;
    } else {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 12);
    }
}

void EnKz_SetupMweep(EnKz* this, PlayState* play) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f }; // unused
    Vec3f subCamAt;
    Vec3f subCamEye;

    this->subCamId = Play_CreateSubCamera(play);
    this->returnToCamId = play->activeCamId;
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    subCamAt = this->actor.world.pos;
    subCamEye = this->actor.home.pos;
    subCamAt.y += 60.0f;
    subCamEye.y += -100.0f;
    subCamEye.z += 260.0f;
    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_8);
    this->actor.speed = 0.1f;
    this->actionFunc = EnKz_Mweep;
}

void EnKz_Mweep(EnKz* this, PlayState* play) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f }; // unused
    Vec3f subCamAt;
    Vec3f subCamEye;

    subCamAt = this->actor.world.pos;
    subCamEye = this->actor.home.pos;
    subCamAt.y += 60.0f;
    subCamEye.y += -100.0f;
    subCamEye.z += 260.0f;
    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    if ((EnKz_FollowPath(this, play) == 1) && (this->waypoint == 0)) {
        Animation_ChangeByInfo(&this->skelanime, sAnimationInfo, ENKZ_ANIM_1);
        Inventory_ReplaceItem(play, ITEM_BOTTLE_RUTOS_LETTER, ITEM_BOTTLE_EMPTY);
        EnKz_SetMovedPos(this, play);
        SET_EVENTCHKINF(EVENTCHKINF_GAVE_LETTER_TO_KING_ZORA);
        this->actor.speed = 0.0;
        this->actionFunc = EnKz_StopMweep;
    }
    if (this->skelanime.curFrame == 13.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_VO_KZ_MOVE);
    }
}

void EnKz_StopMweep(EnKz* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
    this->actionFunc = EnKz_Wait;
}

void EnKz_Wait(EnKz* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
#if OOT_VERSION < PAL_1_0
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
#endif
        this->actionFunc = EnKz_SetupGetItem;
        EnKz_SetupGetItem(this, play);
    } else {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 12);
    }
}

void EnKz_SetupGetItem(EnKz* this, PlayState* play) {
    s32 getItemId;
    f32 xzRange;
    f32 yRange;

    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
        this->actionFunc = EnKz_StartTimer;
    } else {
#if OOT_VERSION < PAL_1_0
        getItemId = Actor_GetPlayerExchangeItemId(play) == EXCH_ITEM_PRESCRIPTION ? GI_EYEBALL_FROG : GI_TUNIC_ZORA;
#else
        getItemId = this->isTrading == true ? GI_EYEBALL_FROG : GI_TUNIC_ZORA;
#endif
        yRange = fabsf(this->actor.yDistToPlayer) + 1.0f;
        xzRange = this->actor.xzDistToPlayer + 1.0f;
        Actor_OfferGetItem(&this->actor, play, getItemId, xzRange, yRange);
    }
}

void EnKz_StartTimer(EnKz* this, PlayState* play) {
#if OOT_VERSION < PAL_1_0
    if (this->interactInfo.talkState == NPC_TALK_STATE_ITEM_GIVEN)
#else
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play))
#endif
    {
        if (INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_EYEBALL_FROG) {
            Interface_SetSubTimer(180);
            CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);
        }
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnKz_Wait;
    }
}

void EnKz_Update(Actor* thisx, PlayState* play) {
    EnKz* this = (EnKz*)thisx;
    s32 pad;

    if (LINK_IS_ADULT && !GET_INFTABLE(INFTABLE_138)) {
        SET_INFTABLE(INFTABLE_138);
    }
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelanime);
    EnKz_UpdateEyes(this);
    Actor_MoveXZGravity(&this->actor);
#if OOT_VERSION < PAL_1_0
    func_80A9CB18(this, play);
#else
    if (this->actionFunc != EnKz_StartTimer) {
        func_80A9CB18(this, play);
    }
#endif
    this->actionFunc(this, play);
}

s32 EnKz_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnKz* this = (EnKz*)thisx;

    if (limbIndex == 8 || limbIndex == 9 || limbIndex == 10) {
        rot->y += Math_SinS(this->fidgetTableY[limbIndex]) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS(this->fidgetTableZ[limbIndex]) * FIDGET_AMPLITUDE;
    }
    if (limbIndex) {}
    return false;
}

void EnKz_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnKz* this = (EnKz*)thisx;
    Vec3f mult = { 2600.0f, 0.0f, 0.0f };

    if (limbIndex == 11) {
        Matrix_MultVec3f(&mult, &this->actor.focus.pos);
    }
}

void EnKz_Draw(Actor* thisx, PlayState* play) {
    static void* sEyeSegments[] = {
        gKzEyeOpenTex,
        gKzEyeHalfTex,
        gKzEyeClosedTex,
    };
    EnKz* this = (EnKz*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_kz.c", 1259);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeSegments[this->eyeIdx]));
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelanime.skeleton, this->skelanime.jointTable, this->skelanime.dListCount,
                          EnKz_OverrideLimbDraw, EnKz_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_kz.c", 1281);
}
