#include "z_en_in.h"
#include "overlays/actors/ovl_En_Horse/z_en_horse.h"
#include "assets/objects/object_in/object_in.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3 | ACTOR_FLAG_4)

void EnIn_Init(Actor* thisx, PlayState* play);
void EnIn_Destroy(Actor* thisx, PlayState* play);
void EnIn_Update(Actor* thisx, PlayState* play);
void EnIn_Draw(Actor* thisx, PlayState* play);

void func_80A79FB0(EnIn* this, PlayState* play);
void func_80A7A304(EnIn* this, PlayState* play);
void func_80A7A4C8(EnIn* this, PlayState* play);
void func_80A7A568(EnIn* this, PlayState* play);
void func_80A7A848(EnIn* this, PlayState* play);
void func_80A7ABD4(EnIn* this, PlayState* play);
void func_80A7AEF0(EnIn* this, PlayState* play);
void func_80A7B018(EnIn* this, PlayState* play);
void func_80A7B024(EnIn* this, PlayState* play);
void func_80A7AE84(EnIn* this, PlayState* play);
void func_80A7A770(EnIn* this, PlayState* play);
void func_80A7A940(EnIn* this, PlayState* play);
void func_80A7AA40(EnIn* this, PlayState* play);
void func_80A7A4BC(EnIn* this, PlayState* play);

ActorInit En_In_InitVars = {
    ACTOR_EN_IN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_IN,
    sizeof(EnIn),
    (ActorFunc)EnIn_Init,
    (ActorFunc)EnIn_Destroy,
    (ActorFunc)EnIn_Update,
    (ActorFunc)EnIn_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0, 0, 0, 0, MASS_IMMOVABLE,
};

typedef enum {
    /* 0 */ ENIN_ANIM_0,
    /* 1 */ ENIN_ANIM_1,
    /* 2 */ ENIN_ANIM_2,
    /* 3 */ ENIN_ANIM_3,
    /* 4 */ ENIN_ANIM_4,
    /* 5 */ ENIN_ANIM_5,
    /* 6 */ ENIN_ANIM_6,
    /* 7 */ ENIN_ANIM_7,
    /* 8 */ ENIN_ANIM_8,
    /* 9 */ ENIN_ANIM_9
} EnInAnimation;

static AnimationFrameCountInfo sAnimationInfo[] = {
    { &object_in_Anim_001CC0, 1.0f, ANIMMODE_LOOP, 0.0f }, { &object_in_Anim_001CC0, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &object_in_Anim_013C6C, 1.0f, ANIMMODE_LOOP, 0.0f }, { &object_in_Anim_013C6C, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &object_in_Anim_000CB0, 1.0f, ANIMMODE_LOOP, 0.0f }, { &object_in_Anim_0003B4, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &object_in_Anim_001BE0, 1.0f, ANIMMODE_LOOP, 0.0f }, { &object_in_Anim_013D60, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &object_in_Anim_01431C, 1.0f, ANIMMODE_LOOP, 0.0f }, { &object_in_Anim_014CA8, 1.0f, ANIMMODE_LOOP, 0.0f },
};

static AnimationHeader* D_80A7B918[] = {
    &object_in_Anim_0151C8, &object_in_Anim_015DF0, &object_in_Anim_016B3C, &object_in_Anim_015814,
    &object_in_Anim_01646C, &object_in_Anim_0175D0, &object_in_Anim_017B58, &object_in_Anim_018C38,
};

static Gfx* sAdultEraDLs[] = {
    NULL,
    NULL,
    gIngoAdultEraLeftThighDL,
    gIngoAdultEraLeftLegDL,
    gIngoAdultEraLeftFootDL,
    gIngoAdultEraRightThighDL,
    gIngoAdultEraRightLegDL,
    gIngoAdultEraRightFootDL,
    gIngoAdultEraTorsoDL,
    gIngoAdultEraChestDL,
    gIngoAdultEraLeftShoulderDL,
    gIngoAdultEraLeftArmDL,
    gIngoAdultEraLeftHandDL,
    gIngoAdultEraRightShoulderDL,
    gIngoAdultEraRightArmDL,
    gIngoAdultEraRightHandDL,
    gIngoAdultEraHeadDL,
    gIngoAdultEraLeftEyebrowDL,
    gIngoAdultEraRightEyebrowDL,
    gIngoAdultEraMustacheDL,
};

u16 EnIn_GetTextIdChild(PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        if (GET_INFTABLE(INFTABLE_97)) {
            return 0x2046;
        } else {
            return 0x2045;
        }
    }
    if (GET_INFTABLE(INFTABLE_94)) {
        return 0x2040;
    } else {
        return 0x203F;
    }
}

u16 EnIn_GetTextIdAdult(PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 faceReaction = Text_GetFaceReaction(play, 25);

    if (faceReaction != 0) {
        return faceReaction;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        if (IS_DAY) {
            return 0x205F;
        } else {
            return 0x2057;
        }
    }
    if (IS_NIGHT) {
        return 0x204E;
    }
    switch (GET_EVENTINF_HORSES_STATE()) {
        case EVENTINF_HORSES_STATE_1:
            if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
                return 0x2036;
            } else if (GET_EVENTCHKINF(EVENTCHKINF_1B)) {
                if (GET_INFTABLE(INFTABLE_A2)) {
                    return 0x2036;
                } else {
                    return 0x2038;
                }
            } else {
                return 0x2037;
            }
        case EVENTINF_HORSES_STATE_3:
            if (GET_EVENTINF(EVENTINF_HORSES_06) || GET_EVENTINF(EVENTINF_HORSES_05)) {
                return 0x203E;
            } else {
                return 0x203D;
            }
        case EVENTINF_HORSES_STATE_4:
            return 0x203A;
        case EVENTINF_HORSES_STATE_5:
        case EVENTINF_HORSES_STATE_6:
            return 0x203C;
        case EVENTINF_HORSES_STATE_7:
            return 0x205B;
        case EVENTINF_HORSES_STATE_2:
        default:
            if (GET_INFTABLE(INFTABLE_9A)) {
                return 0x2031;
            } else {
                return 0x2030;
            }
    }
}

u16 EnIn_GetTextId(PlayState* play, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(play, 25);

    if (faceReaction != 0) {
        return faceReaction;
    }
    if (!LINK_IS_ADULT) {
        return EnIn_GetTextIdChild(play);
    } else {
        return EnIn_GetTextIdAdult(play);
    }
}

s16 EnIn_UpdateTalkStateOnClosing(PlayState* play, Actor* thisx) {
    s32 talkState = NPC_TALK_STATE_IDLE;

    switch (thisx->textId) {
        case 0x2045:
            SET_INFTABLE(INFTABLE_97);
            break;
        case 0x203E:
            talkState = NPC_TALK_STATE_ACTION;
            break;
        case 0x203F:
            SET_EVENTCHKINF(EVENTCHKINF_11);
            SET_INFTABLE(INFTABLE_94);
            break;
    }
    return talkState;
}

s16 EnIn_UpdateTalkStateOnChoice(PlayState* play, Actor* thisx) {
    EnIn* this = (EnIn*)thisx;
    s32 talkState = NPC_TALK_STATE_TALKING;

    switch (this->actor.textId) {
        case 0x2030:
        case 0x2031:
            if (play->msgCtx.choiceIndex == 1) {
                this->actor.textId = 0x2032;
            } else if (gSaveContext.rupees < 10) {
                this->actor.textId = 0x2033;
            } else {
                this->actor.textId = 0x2034;
            }
            Message_ContinueTextbox(play, this->actor.textId);
            SET_INFTABLE(INFTABLE_9A);
            break;
        case 0x2034:
            if (play->msgCtx.choiceIndex == 1) {
                Rupees_ChangeBy(-10);
                this->actor.textId = 0x205C;
            } else {
                this->actor.textId = 0x2035;
            }
            Message_ContinueTextbox(play, this->actor.textId);
            break;
        case 0x2036:
        case 0x2037:
            if (play->msgCtx.choiceIndex == 1) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                this->actor.textId = 0x201F;
                Message_ContinueTextbox(play, this->actor.textId);
            }
            break;
        case 0x2038:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                this->actor.textId = 0x2039;
                Message_ContinueTextbox(play, this->actor.textId);
                SET_INFTABLE(INFTABLE_A2);
            }
            break;
        case 0x205B:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                Message_ContinueTextbox(play, this->actor.textId = 0x2039);
                SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_0);
                CLEAR_EVENTINF(EVENTINF_HORSES_05);
                CLEAR_EVENTINF(EVENTINF_HORSES_06);
                this->actionFunc = func_80A7A4C8;
            }
            break;
    }
    if (!gSaveContext.rupees) {}

    return talkState;
}

s16 EnIn_UpdateTalkStateOnEvent(PlayState* play, Actor* thisx) {
    s32 talkState = NPC_TALK_STATE_TALKING;

    if (thisx->textId == 0x2035) {
        Rupees_ChangeBy(-10);
        thisx->textId = 0x205C;
        Message_ContinueTextbox(play, thisx->textId);
    } else {
        talkState = NPC_TALK_STATE_ACTION;
    }
    return talkState;
}

s16 EnIn_UpdateTalkState(PlayState* play, Actor* thisx) {
    s16 talkState = NPC_TALK_STATE_TALKING;

    osSyncPrintf("message_check->(%d[%x])\n", Message_GetState(&play->msgCtx), thisx->textId);
    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
            break;
        case TEXT_STATE_CLOSING:
            talkState = EnIn_UpdateTalkStateOnClosing(play, thisx);
            break;
        case TEXT_STATE_DONE_FADING:
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                talkState = EnIn_UpdateTalkStateOnChoice(play, thisx);
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                talkState = EnIn_UpdateTalkStateOnEvent(play, thisx);
            }
            break;
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return talkState;
}

void func_80A795C8(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 trackingMode;

    if (this->skelAnime.animation == &object_in_Anim_0003B4 || this->skelAnime.animation == &object_in_Anim_001BE0 ||
        this->skelAnime.animation == &object_in_Anim_013D60) {
        trackingMode = NPC_TRACKING_NONE;
    } else {
        trackingMode = NPC_TRACKING_PLAYER_AUTO_TURN;
    }
    if (this->actionFunc == func_80A7A568) {
        trackingMode = NPC_TRACKING_FULL_BODY;
    }
    if (this->actionFunc == func_80A7B024) {
        this->interactInfo.trackPos = play->view.eye;
        this->interactInfo.yOffset = 60.0f;
    } else {
        this->interactInfo.trackPos = player->actor.world.pos;
        this->interactInfo.yOffset = 16.0f;
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 1, trackingMode);
}

void func_80A79690(SkelAnime* skelAnime, EnIn* this, PlayState* play) {
    if (skelAnime->baseTransl.y < skelAnime->jointTable[0].y) {
        skelAnime->moveFlags |= 3;
        AnimationContext_SetMoveActor(play, &this->actor, skelAnime, 1.0f);
    }
}

void EnIn_ChangeAnim(EnIn* this, s32 index) {
    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo[index].animation), sAnimationInfo[index].mode,
                     sAnimationInfo[index].morphFrames);
}

s32 func_80A7975C(EnIn* this, PlayState* play) {
    if (this->actor.params != 1 || this->actor.shape.rot.z != 1 || !LINK_IS_ADULT) {
        return 0;
    }
    this->animationIdx = 1;
    this->collider.base.ocFlags1 &= ~OC1_ON;
    Animation_Change(&this->skelAnime, D_80A7B918[this->animationIdx], 1.0f, 0.0f,
                     Animation_GetLastFrame(D_80A7B918[this->animationIdx]), 2, 0.0f);
    this->actionFunc = func_80A7A304;
    return 1;
}

s32 func_80A79830(EnIn* this, PlayState* play) {
    if (play->sceneId == SCENE_LON_LON_RANCH && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 1 &&
        !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return 1;
    }
    if (play->sceneId == SCENE_STABLE && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 3 &&
        GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return 1;
    }
    if (play->sceneId == SCENE_STABLE && LINK_IS_CHILD && IS_NIGHT) {
        if ((this->actor.shape.rot.z == 2) && !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
            return 1;
        }
        if ((this->actor.shape.rot.z == 4) && GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
            return 1;
        }
    }
    if (play->sceneId == SCENE_LON_LON_RANCH && LINK_IS_ADULT && IS_DAY) {
        if ((this->actor.shape.rot.z == 5) && !GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return 2;
        }
        if ((this->actor.shape.rot.z == 7) && GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return 4;
        }
    }
    if (play->sceneId == SCENE_LON_LON_BUILDINGS && LINK_IS_ADULT && IS_NIGHT) {
        if (this->actor.shape.rot.z == 6 && !GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return 3;
        }
        if (this->actor.shape.rot.z == 8 && GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return 3;
        }
    }
    return 0;
}

void EnIn_UpdateEyes(EnIn* this) {
    if (this->eyeIndex != 3) {
        if (DECR(this->blinkTimer) == 0) {
            this->eyeIndex++;
            if (this->eyeIndex >= 3) {
                this->blinkTimer = Rand_S16Offset(30, 30);
                this->eyeIndex = 0;
            }
        }
    }
}

void func_80A79AB4(EnIn* this, PlayState* play) {
    s32 i;
    u32 f = 0;

    if (this->skelAnime.animation != &object_in_Anim_014CA8) {
        f = play->gameplayFrames;
    }
    for (i = 0; i < ARRAY_COUNT(this->unk_330); i++) {
        this->unk_330[i].y = (2068 + 50 * i) * f;
        this->unk_330[i].z = (2368 + 50 * i) * f;
    }
}

void func_80A79BAC(EnIn* this, PlayState* play, s32 index, u32 transitionType) {
    s16 entrances[] = { ENTR_LON_LON_RANCH_8, ENTR_LON_LON_RANCH_6, ENTR_LON_LON_RANCH_0 };

    play->nextEntranceIndex = entrances[index];
    if (index == 2) {
        gSaveContext.nextCutsceneIndex = 0xFFF0;
    }
    play->transitionType = transitionType;
    play->transitionTrigger = TRANS_TRIGGER_START;
    func_8002DF54(play, &this->actor, PLAYER_CSMODE_8);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    if (index == 0) {
        AREG(6) = 0;
    }
    gSaveContext.timerState = TIMER_STATE_OFF;
}

void func_80A79C78(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f subCamAt;
    Vec3f subCamEye;
    Vec3s zeroVec = { 0, 0, 0 };

    this->subCamId = Play_CreateSubCamera(play);
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    subCamAt.x = this->actor.world.pos.x;
    subCamAt.y = this->actor.world.pos.y + 60.0f;
    subCamAt.z = this->actor.world.pos.z;
    subCamEye.x = subCamAt.x;
    subCamEye.y = subCamAt.y - 22.0f;
    subCamEye.z = subCamAt.z + 40.0f;
    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &subCamEye);
    this->interactInfo.headRot = zeroVec;
    this->interactInfo.torsoRot = zeroVec;
    Message_StartTextbox(play, 0x2025, NULL);
    this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
    player->actor.world.pos = this->actor.world.pos;
    player->actor.world.pos.x += 100.0f * Math_SinS(this->actor.shape.rot.y);
    player->actor.world.pos.z += 100.0f * Math_CosS(this->actor.shape.rot.y);
    if (player->rideActor != NULL) {
        player->rideActor->world.pos = player->actor.world.pos;
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    this->actor.flags &= ~ACTOR_FLAG_0;
    Letterbox_SetSizeTarget(32);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
}

static s32 D_80A7B998 = 0;

void EnIn_Init(Actor* thisx, PlayState* play) {
    EnIn* this = (EnIn*)thisx;
    RespawnData* respawn = &gSaveContext.respawn[RESPAWN_MODE_DOWN];
    Vec3f respawnPos;

    this->ingoObjBankIndex = Object_GetIndex(&play->objectCtx, OBJECT_IN);
    if (this->ingoObjBankIndex < 0 && this->actor.params > 0) {
        this->actionFunc = NULL;
        Actor_Kill(&this->actor);
        return;
    }
    respawnPos = respawn->pos;
    // hardcoded coords for lon lon entrance
    if (D_80A7B998 == 0 && respawnPos.x == 1107.0f && respawnPos.y == 0.0f && respawnPos.z == -3740.0f) {
        gSaveContext.eventInf[EVENTINF_HORSES_INDEX] = 0;
        D_80A7B998 = 1;
    }
    this->actionFunc = func_80A79FB0;
}

void EnIn_Destroy(Actor* thisx, PlayState* play) {
    EnIn* this = (EnIn*)thisx;

    if (this->actionFunc != NULL && this->actionFunc != func_80A79FB0) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

void func_80A79FB0(EnIn* this, PlayState* play) {
    s32 sp3C = 0;

    if (Object_IsLoaded(&play->objectCtx, this->ingoObjBankIndex) || this->actor.params <= 0) {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
        SkelAnime_InitFlex(play, &this->skelAnime, &gIngoSkel, NULL, this->jointTable, this->morphTable, 20);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        if (func_80A7975C(this, play)) {
            SET_EVENTINF_HORSES_0F(0);
            return;
        }
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.targetMode = 6;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = func_80A7A4BC;

        switch (func_80A79830(this, play)) {
            case 1:
                EnIn_ChangeAnim(this, ENIN_ANIM_9);
                this->actionFunc = func_80A7A4BC;
                break;
            case 3:
                EnIn_ChangeAnim(this, ENIN_ANIM_7);
                this->actionFunc = func_80A7A4BC;
                if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                    this->actor.params = 5;
                }
                break;
            case 4:
                EnIn_ChangeAnim(this, ENIN_ANIM_8);
                this->eyeIndex = 3;
                this->actionFunc = func_80A7A4BC;
                break;
            case 0:
                Actor_Kill(&this->actor);
                break;
            default:
                switch (GET_EVENTINF_HORSES_STATE()) {
                    case EVENTINF_HORSES_STATE_0:
                    case EVENTINF_HORSES_STATE_2:
                    case EVENTINF_HORSES_STATE_3:
                    case EVENTINF_HORSES_STATE_4:
                    case EVENTINF_HORSES_STATE_7:
                        if (this->actor.params == 2) {
                            sp3C = 1;
                        }
                        break;
                    case EVENTINF_HORSES_STATE_1:
                        if (this->actor.params == 3) {
                            sp3C = 1;
                        }
                        break;
                    case EVENTINF_HORSES_STATE_5:
                    case EVENTINF_HORSES_STATE_6:
                        if (this->actor.params == 4) {
                            sp3C = 1;
                        }
                        break;
                }
                if (sp3C != 1) {
                    Actor_Kill(&this->actor);
                    return;
                }
                switch (GET_EVENTINF_HORSES_STATE()) {
                    case EVENTINF_HORSES_STATE_0:
                    case EVENTINF_HORSES_STATE_2:
                        EnIn_ChangeAnim(this, ENIN_ANIM_2);
                        this->actionFunc = func_80A7A4C8;
                        gSaveContext.eventInf[EVENTINF_HORSES_INDEX] = 0;
                        break;
                    case EVENTINF_HORSES_STATE_1:
                        this->actor.targetMode = 3;
                        EnIn_ChangeAnim(this, ENIN_ANIM_2);
                        this->actionFunc = func_80A7A568;
                        Interface_SetTimer(60);
                        break;
                    case EVENTINF_HORSES_STATE_3:
                        EnIn_ChangeAnim(this, ENIN_ANIM_4);
                        this->actionFunc = func_80A7A770;
                        break;
                    case EVENTINF_HORSES_STATE_4:
                        EnIn_ChangeAnim(this, ENIN_ANIM_6);
                        this->unk_1EC = 8;
                        this->actionFunc = func_80A7A940;
                        break;
                    case EVENTINF_HORSES_STATE_5:
                    case EVENTINF_HORSES_STATE_6:
                        this->actor.targetMode = 3;
                        EnIn_ChangeAnim(this, ENIN_ANIM_6);
                        this->unk_1EC = 8;
                        this->actionFunc = func_80A7AA40;
                        break;
                    case EVENTINF_HORSES_STATE_7:
                        EnIn_ChangeAnim(this, ENIN_ANIM_2);
                        this->actionFunc = func_80A7A848;
                        break;
                }
        }
    }
}

void func_80A7A304(EnIn* this, PlayState* play) {
    if (this->skelAnime.animation == &object_in_Anim_015814 || this->skelAnime.animation == &object_in_Anim_01646C) {
        if (this->skelAnime.curFrame == 8.0f) {
            Audio_PlaySfxRandom(&this->actor.projectedPos, NA_SE_VO_IN_LASH_0,
                                NA_SE_VO_IN_LASH_1 - NA_SE_VO_IN_LASH_0 + 1);
        }
    }
    if (this->skelAnime.animation == &object_in_Anim_018C38 && this->skelAnime.curFrame == 20.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_VO_IN_CRY_0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        this->animationIdx %= 8;
        this->unk_1E8 = this->animationIdx;
        if (this->animationIdx == 3 || this->animationIdx == 4) {
            Audio_PlaySfxGeneral(NA_SE_IT_LASH, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            if (Rand_ZeroOne() < 0.3f) {
                Audio_PlaySfxGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        }
        Animation_Change(&this->skelAnime, D_80A7B918[this->animationIdx], 1.0f, 0.0f,
                         Animation_GetLastFrame(D_80A7B918[this->animationIdx]), 2, -10.0f);
    }
}

void func_80A7A4BC(EnIn* this, PlayState* play) {
}

void func_80A7A4C8(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        func_80A79BAC(this, play, 1, TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_1);
        SET_EVENTINF_HORSES_0F(1);
        CLEAR_INFTABLE(INFTABLE_A2);
        Environment_ForcePlaySequence(NA_BGM_HORSE);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void func_80A7A568(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 phi_a2;
    s32 transitionType;

    if (!GET_EVENTCHKINF(EVENTCHKINF_1B) && (player->stateFlags1 & PLAYER_STATE1_23)) {
        SET_INFTABLE(INFTABLE_AB);
    }
    if (gSaveContext.timerState == TIMER_STATE_STOP) {
        Audio_PlaySfxGeneral(NA_SE_SY_FOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        func_80A79C78(this, play);
        this->actionFunc = func_80A7B024;
        gSaveContext.timerState = TIMER_STATE_OFF;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if (play->msgCtx.choiceIndex == 0) {
            if (gSaveContext.rupees < 50) {
                play->msgCtx.stateTimer = 4;
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
                return;
            }
            SET_EVENTINF_HORSES_HORSETYPE(((EnHorse*)GET_PLAYER(play)->rideActor)->type);
            SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_2);
            phi_a2 = 2;
            transitionType = TRANS_TYPE_FADE_BLACK;
        } else {
            Audio_PlaySfxGeneral(NA_SE_SY_FOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            if (!GET_EVENTCHKINF(EVENTCHKINF_1B)) {
                if (GET_INFTABLE(INFTABLE_AB)) {
                    SET_EVENTCHKINF(EVENTCHKINF_1B);
                    SET_INFTABLE(INFTABLE_AB);
                }
            }
            SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_0);
            phi_a2 = 0;
            transitionType = TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST);
        }
        func_80A79BAC(this, play, phi_a2, transitionType);
        play->msgCtx.stateTimer = 0;
        SET_EVENTINF_HORSES_0F(1);
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void func_80A7A770(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.flags |= ACTOR_FLAG_16;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        Rupees_ChangeBy(-50);
        this->actor.flags &= ~ACTOR_FLAG_16;
        EnIn_ChangeAnim(this, ENIN_ANIM_3);
        this->actionFunc = func_80A7A848;
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_7);
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        gSaveContext.eventInf[EVENTINF_HORSES_INDEX] =
            (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & 0xFFFF) | EVENTINF_HORSES_05_MASK;
        if (!GET_EVENTINF(EVENTINF_HORSES_06)) {
            play->msgCtx.stateTimer = 4;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
    }
}

void func_80A7A848(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if ((play->msgCtx.choiceIndex == 0 && gSaveContext.rupees < 50) || play->msgCtx.choiceIndex == 1) {
            SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_0);
            this->actionFunc = func_80A7A4C8;
        } else {
            func_80A79BAC(this, play, 2, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
            SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_2);
            SET_EVENTINF_HORSES_0F(1);
            play->msgCtx.stateTimer = 0;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        CLEAR_EVENTINF(EVENTINF_HORSES_05);
        CLEAR_EVENTINF(EVENTINF_HORSES_06);
    }
}

void func_80A7A940(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.flags |= ACTOR_FLAG_16;
        return;
    }
    if (this->unk_1EC != 0) {
        this->unk_1EC--;
        if (this->unk_1EC == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_IN_LOST);
        }
    }
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        func_80A79BAC(this, play, 2, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_2);
        SET_EVENTINF_HORSES_0F(1);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        gSaveContext.eventInf[EVENTINF_HORSES_INDEX] =
            (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & 0xFFFF) | EVENTINF_HORSES_06_MASK;
    }
}

void func_80A7AA40(EnIn* this, PlayState* play) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f subCamAt;
    Vec3f subCamEye;

    this->subCamId = Play_CreateSubCamera(play);
    this->returnToCamId = play->activeCamId;
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);

    this->subCamAtOffset.x = 0.0f;
    this->subCamAtOffset.y = 50.0f;
    this->subCamAtOffset.z = 0.0f;
    this->subCamEyeOffset.x = 0.0f;
    this->subCamEyeOffset.y = 50.0f;
    this->subCamEyeOffset.z = 50.0f;

    subCamAt = this->actor.world.pos;
    subCamEye = this->actor.world.pos;

    subCamAt.x += this->subCamAtOffset.x;
    subCamAt.y += this->subCamAtOffset.y;
    subCamAt.z += this->subCamAtOffset.z;

    subCamEye.x += this->subCamEyeOffset.x;
    subCamEye.y += this->subCamEyeOffset.y;
    subCamEye.z += this->subCamEyeOffset.z;

    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.textId = 0x203B;
    Message_StartTextbox(play, this->actor.textId, NULL);
    this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
    this->unk_1FC = 0;
    play->csCtx.frames = 0;
    Letterbox_SetSizeTarget(32);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
    this->actionFunc = func_80A7ABD4;
}

void func_80A7ABD4(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f subCamAt;
    Vec3f subCamEye;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->actor.textId == 0x203B) {
        if (this->unk_1EC != 0) {
            this->unk_1EC--;
            if (this->unk_1EC == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_VO_IN_LOST);
            }
        }
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
            if (this->actor.textId == 0x203B) {
                this->actor.textId = 0x203C;
                Message_StartTextbox(play, this->actor.textId, NULL);
                this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
                EnIn_ChangeAnim(this, ENIN_ANIM_3);
            } else {
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
            }
        }
    } else {
        if (play->csCtx.frames++ >= 50) {
            this->actionFunc = func_80A7AE84;
            return;
        }
        if (play->csCtx.frames == 44) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_RONRON_DOOR_CLOSE);
        }
        Math_SmoothStepToF(&this->subCamAtOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.y, 50.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.z, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.y, 150.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.z, 300.0f, 0.06f, 10000.0f, 0.0f);

        subCamAt = this->actor.world.pos;
        subCamEye = this->actor.world.pos;

        subCamAt.x += this->subCamAtOffset.x;
        subCamAt.y += this->subCamAtOffset.y;
        subCamAt.z += this->subCamAtOffset.z;
        subCamEye.x += this->subCamEyeOffset.x;
        subCamEye.y += this->subCamEyeOffset.y;
        subCamEye.z += this->subCamEyeOffset.z;
        Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    }
}

void func_80A7AE84(EnIn* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
    func_8002DF54(play, &this->actor, PLAYER_CSMODE_7);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
    this->actionFunc = func_80A7AEF0;
}

void func_80A7AEF0(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 yaw;
    Vec3f pos = this->actor.world.pos;

    pos.x += 90.0f * Math_SinS(this->actor.shape.rot.y);
    pos.z += 90.0f * Math_CosS(this->actor.shape.rot.y);
    yaw = Math_Vec3f_Yaw(&pos, &player->actor.world.pos);
    if (ABS(yaw) > 0x4000) {
        play->nextEntranceIndex = ENTR_HYRULE_FIELD_15;
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
        this->actionFunc = func_80A7B018;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void func_80A7B018(EnIn* this, PlayState* play) {
}

void func_80A7B024(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if (1) {}
        if (!GET_EVENTCHKINF(EVENTCHKINF_1B) && GET_INFTABLE(INFTABLE_AB)) {
            SET_EVENTCHKINF(EVENTCHKINF_1B);
            SET_INFTABLE(INFTABLE_AB);
        }
        func_80A79BAC(this, play, 0, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_0);
        SET_EVENTINF_HORSES_0F(1);
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void EnIn_Update(Actor* thisx, PlayState* play) {
    ColliderCylinder* collider;
    EnIn* this = (EnIn*)thisx;

    if (this->actionFunc == func_80A79FB0) {
        this->actionFunc(this, play);
        return;
    }
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &collider->base);
    if (this->actionFunc != func_80A7A304) {
        SkelAnime_Update(&this->skelAnime);
        if (this->skelAnime.animation == &object_in_Anim_001BE0 &&
            GET_EVENTINF_HORSES_STATE() != EVENTINF_HORSES_STATE_6) {
            func_80A79690(&this->skelAnime, this, play);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    }
    EnIn_UpdateEyes(this);
    this->actionFunc(this, play);
    if (this->actionFunc != func_80A7A304) {
        func_80A79AB4(this, play);
        if ((gSaveContext.subTimerSeconds < 6) && (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) &&
            this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
            if (Actor_ProcessTalkRequest(&this->actor, play)) {}
        } else {
            Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState,
                              ((this->actor.targetMode == 6) ? 80.0f : 320.0f) + this->collider.dim.radius,
                              EnIn_GetTextId, EnIn_UpdateTalkState);
            if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
                this->unk_1FA = this->unk_1F8;
                this->unk_1F8 = Message_GetState(&play->msgCtx);
            }
        }
        func_80A795C8(this, play);
    }
}

s32 EnIn_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIn* this = (EnIn*)thisx;
    Vec3s limbRot;

    if (this->actor.params > 0 && limbIndex != INGO_HEAD_LIMB) {
        if (sAdultEraDLs[limbIndex] != NULL) {
            *dList = sAdultEraDLs[limbIndex];
        }
    }
    if (limbIndex == INGO_HEAD_LIMB) {
        Matrix_Translate(1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_Translate(-1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == INGO_CHEST_LIMB) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
    }
    if (limbIndex == INGO_CHEST_LIMB || limbIndex == INGO_LEFT_SHOULDER_LIMB || limbIndex == INGO_RIGHT_SHOULDER_LIMB) {
        rot->y += Math_SinS(this->unk_330[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->unk_330[limbIndex].z) * 200.0f;
    }
    return 0;
}

void EnIn_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnIn* this = (EnIn*)thisx;
    Vec3f D_80A7B9A8 = { 1600.0, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_in.c", 2335);

    if (limbIndex == INGO_HEAD_LIMB) {
        Matrix_MultVec3f(&D_80A7B9A8, &this->actor.focus.pos);
        this->actor.focus.rot = this->actor.world.rot;
    }
    if (limbIndex == INGO_LEFT_HAND_LIMB && this->skelAnime.animation == &object_in_Anim_014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, gIngoChildEraBasketDL);
    }
    if (limbIndex == INGO_RIGHT_HAND_LIMB && this->skelAnime.animation == &object_in_Anim_014CA8) {
        gSPDisplayList(POLY_OPA_DISP++, gIngoChildEraPitchForkDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_in.c", 2365);
}

void EnIn_Draw(Actor* thisx, PlayState* play) {
    static void* eyeTextures[] = { gIngoEyeOpenTex, gIngoEyeHalfTex, gIngoEyeClosedTex, gIngoEyeClosed2Tex };

    EnIn* this = (EnIn*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_in.c", 2384);
    if (this->actionFunc != func_80A79FB0) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(gIngoHeadGradient2Tex));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnIn_OverrideLimbDraw, EnIn_PostLimbDraw, &this->actor);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_in.c", 2416);
}
