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

const ActorInit En_In_InitVars = {
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

u16 func_80A78FB0(PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_14)) {
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

u16 func_80A79010(PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 temp_v0 = Text_GetFaceReaction(play, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_18)) {
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

u16 func_80A79168(PlayState* play, Actor* thisx) {
    u16 temp_v0 = Text_GetFaceReaction(play, 25);

    if (temp_v0 != 0) {
        return temp_v0;
    }
    if (!LINK_IS_ADULT) {
        return func_80A78FB0(play);
    } else {
        return func_80A79010(play);
    }
}

s16 func_80A791CC(PlayState* play, Actor* thisx) {
    s32 ret = 0;

    switch (thisx->textId) {
        case 0x2045:
            SET_INFTABLE(INFTABLE_97);
            break;
        case 0x203E:
            ret = 2;
            break;
        case 0x203F:
            SET_EVENTCHKINF(EVENTCHKINF_11);
            SET_INFTABLE(INFTABLE_94);
            break;
    }
    return ret;
}

s16 func_80A7924C(PlayState* play, Actor* thisx) {
    EnIn* this = (EnIn*)thisx;
    s32 sp18 = 1;

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
                sp18 = 2;
            } else {
                this->actor.textId = 0x201F;
                Message_ContinueTextbox(play, this->actor.textId);
            }
            break;
        case 0x2038:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                sp18 = 2;
            } else {
                this->actor.textId = 0x2039;
                Message_ContinueTextbox(play, this->actor.textId);
                SET_INFTABLE(INFTABLE_A2);
            }
            break;
        case 0x205B:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.rupees >= 50) {
                sp18 = 2;
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

    return sp18;
}

s16 func_80A7949C(PlayState* play, Actor* thisx) {
    s32 phi_v1 = 1;

    if (thisx->textId == 0x2035) {
        Rupees_ChangeBy(-10);
        thisx->textId = 0x205C;
        Message_ContinueTextbox(play, thisx->textId);
    } else {
        phi_v1 = 2;
    }
    return phi_v1;
}

s16 func_80A79500(PlayState* play, Actor* thisx) {
    s16 sp1E = 1;

    osSyncPrintf("message_check->(%d[%x])\n", Message_GetState(&play->msgCtx), thisx->textId);
    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
            break;
        case TEXT_STATE_CLOSING:
            sp1E = func_80A791CC(play, thisx);
            break;
        case TEXT_STATE_DONE_FADING:
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                sp1E = func_80A7924C(play, thisx);
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                sp1E = func_80A7949C(play, thisx);
            }
            break;
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return sp1E;
}

void func_80A795C8(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 arg3;

    if (this->skelAnime.animation == &object_in_Anim_0003B4 || this->skelAnime.animation == &object_in_Anim_001BE0 ||
        this->skelAnime.animation == &object_in_Anim_013D60) {
        arg3 = 1;
    } else {
        arg3 = 0;
    }
    if (this->actionFunc == func_80A7A568) {
        arg3 = 4;
    }
    if (this->actionFunc == func_80A7B024) {
        this->unk_308.unk_18 = play->view.eye;
        this->unk_308.unk_14 = 60.0f;
    } else {
        this->unk_308.unk_18 = player->actor.world.pos;
        this->unk_308.unk_14 = 16.0f;
    }
    func_80034A14(&this->actor, &this->unk_308, 1, arg3);
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
    if (play->sceneNum == SCENE_SPOT20 && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 1 &&
        !GET_EVENTCHKINF(EVENTCHKINF_14)) {
        return 1;
    }
    if (play->sceneNum == SCENE_MALON_STABLE && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 3 &&
        GET_EVENTCHKINF(EVENTCHKINF_14)) {
        return 1;
    }
    if (play->sceneNum == SCENE_MALON_STABLE && LINK_IS_CHILD && IS_NIGHT) {
        if ((this->actor.shape.rot.z == 2) && !GET_EVENTCHKINF(EVENTCHKINF_14)) {
            return 1;
        }
        if ((this->actor.shape.rot.z == 4) && GET_EVENTCHKINF(EVENTCHKINF_14)) {
            return 1;
        }
    }
    if (play->sceneNum == SCENE_SPOT20 && LINK_IS_ADULT && IS_DAY) {
        if ((this->actor.shape.rot.z == 5) && !GET_EVENTCHKINF(EVENTCHKINF_18)) {
            return 2;
        }
        if ((this->actor.shape.rot.z == 7) && GET_EVENTCHKINF(EVENTCHKINF_18)) {
            return 4;
        }
    }
    if (play->sceneNum == SCENE_SOUKO && LINK_IS_ADULT && IS_NIGHT) {
        if (this->actor.shape.rot.z == 6 && !GET_EVENTCHKINF(EVENTCHKINF_18)) {
            return 3;
        }
        if (this->actor.shape.rot.z == 8 && GET_EVENTCHKINF(EVENTCHKINF_18)) {
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
    s16 entrances[] = { ENTR_SPOT20_8, ENTR_SPOT20_6, ENTR_SPOT20_0 };

    play->nextEntranceIndex = entrances[index];
    if (index == 2) {
        gSaveContext.nextCutsceneIndex = 0xFFF0;
    }
    play->transitionType = transitionType;
    play->transitionTrigger = TRANS_TRIGGER_START;
    func_8002DF54(play, &this->actor, 8);
    Interface_ChangeAlpha(1);
    if (index == 0) {
        AREG(6) = 0;
    }
    gSaveContext.timer1State = 0;
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
    Play_CameraSetAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &subCamEye);
    this->unk_308.unk_08 = zeroVec;
    this->unk_308.unk_0E = zeroVec;
    Message_StartTextbox(play, 0x2025, NULL);
    this->unk_308.unk_00 = 1;
    player->actor.world.pos = this->actor.world.pos;
    player->actor.world.pos.x += 100.0f * Math_SinS(this->actor.shape.rot.y);
    player->actor.world.pos.z += 100.0f * Math_CosS(this->actor.shape.rot.y);
    if (player->rideActor != NULL) {
        player->rideActor->world.pos = player->actor.world.pos;
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    this->actor.flags &= ~ACTOR_FLAG_0;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
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
        this->unk_308.unk_00 = 0;
        this->actionFunc = func_80A7A4BC;

        switch (func_80A79830(this, play)) {
            case 1:
                EnIn_ChangeAnim(this, ENIN_ANIM_9);
                this->actionFunc = func_80A7A4BC;
                break;
            case 3:
                EnIn_ChangeAnim(this, ENIN_ANIM_7);
                this->actionFunc = func_80A7A4BC;
                if (!GET_EVENTCHKINF(EVENTCHKINF_18)) {
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
                        func_80088B34(0x3C);
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
            Audio_PlaySoundRandom(&this->actor.projectedPos, NA_SE_VO_IN_LASH_0,
                                  NA_SE_VO_IN_LASH_1 - NA_SE_VO_IN_LASH_0 + 1);
        }
    }
    if (this->skelAnime.animation == &object_in_Anim_018C38 && this->skelAnime.curFrame == 20.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_CRY_0);
    }
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        this->animationIdx %= 8;
        this->unk_1E8 = this->animationIdx;
        if (this->animationIdx == 3 || this->animationIdx == 4) {
            Audio_PlaySoundGeneral(NA_SE_IT_LASH, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                   &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            if (Rand_ZeroOne() < 0.3f) {
                Audio_PlaySoundGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->actor.projectedPos, 4,
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
    if (this->unk_308.unk_00 == 2) {
        func_80A79BAC(this, play, 1, TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_1);
        SET_EVENTINF_HORSES_0F(1);
        CLEAR_INFTABLE(INFTABLE_A2);
        Environment_ForcePlaySequence(NA_BGM_HORSE);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7A568(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 phi_a2;
    s32 transitionType;

    if (!GET_EVENTCHKINF(EVENTCHKINF_1B) && (player->stateFlags1 & PLAYER_STATE1_23)) {
        SET_INFTABLE(INFTABLE_AB);
    }
    if (gSaveContext.timer1State == 10) {
        Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        func_80A79C78(this, play);
        this->actionFunc = func_80A7B024;
        gSaveContext.timer1State = 0;
    } else if (this->unk_308.unk_00 == 2) {
        if (play->msgCtx.choiceIndex == 0) {
            if (gSaveContext.rupees < 50) {
                play->msgCtx.stateTimer = 4;
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->unk_308.unk_00 = 0;
                return;
            }
            SET_EVENTINF_HORSES_HORSETYPE(((EnHorse*)GET_PLAYER(play)->rideActor)->type);
            SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_2);
            phi_a2 = 2;
            transitionType = TRANS_TYPE_FADE_BLACK;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
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
        this->unk_308.unk_00 = 0;
    }
}

void func_80A7A770(EnIn* this, PlayState* play) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= ACTOR_FLAG_16;
    } else if (this->unk_308.unk_00 == 2) {
        Rupees_ChangeBy(-50);
        this->actor.flags &= ~ACTOR_FLAG_16;
        EnIn_ChangeAnim(this, ENIN_ANIM_3);
        this->actionFunc = func_80A7A848;
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_7);
        this->unk_308.unk_00 = 0;
        gSaveContext.eventInf[EVENTINF_HORSES_INDEX] =
            (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & 0xFFFF) | EVENTINF_HORSES_05_MASK;
        if (!GET_EVENTINF(EVENTINF_HORSES_06)) {
            play->msgCtx.stateTimer = 4;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
    }
}

void func_80A7A848(EnIn* this, PlayState* play) {
    if (this->unk_308.unk_00 == 2) {
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
        this->unk_308.unk_00 = 0;
        CLEAR_EVENTINF(EVENTINF_HORSES_05);
        CLEAR_EVENTINF(EVENTINF_HORSES_06);
    }
}

void func_80A7A940(EnIn* this, PlayState* play) {
    if (this->unk_308.unk_00 == 0) {
        this->actor.flags |= ACTOR_FLAG_16;
        return;
    }
    if (this->unk_1EC != 0) {
        this->unk_1EC--;
        if (this->unk_1EC == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
        }
    }
    if (this->unk_308.unk_00 == 2) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        func_80A79BAC(this, play, 2, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_HORSES_STATE(EVENTINF_HORSES_STATE_2);
        SET_EVENTINF_HORSES_0F(1);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->unk_308.unk_00 = 0;
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

    Play_CameraSetAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.textId = 0x203B;
    Message_StartTextbox(play, this->actor.textId, NULL);
    this->unk_308.unk_00 = 1;
    this->unk_1FC = 0;
    play->csCtx.frames = 0;
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
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
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_IN_LOST);
            }
        }
    }
    if (this->unk_308.unk_00 != 0) {
        if (this->unk_308.unk_00 == 2) {
            if (this->actor.textId == 0x203B) {
                this->actor.textId = 0x203C;
                Message_StartTextbox(play, this->actor.textId, NULL);
                this->unk_308.unk_00 = 1;
                EnIn_ChangeAnim(this, ENIN_ANIM_3);
            } else {
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->unk_308.unk_00 = 0;
            }
        }
    } else {
        if (play->csCtx.frames++ >= 50) {
            this->actionFunc = func_80A7AE84;
            return;
        }
        if (play->csCtx.frames == 44) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_RONRON_DOOR_CLOSE);
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
        Play_CameraSetAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    }
}

void func_80A7AE84(EnIn* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
    func_8002DF54(play, &this->actor, 7);
    Interface_ChangeAlpha(0x32);
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
        play->nextEntranceIndex = ENTR_SPOT00_15;
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
        this->actionFunc = func_80A7B018;
    } else if (this->unk_308.unk_00 == 2) {
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->unk_308.unk_00 = 0;
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
    if (this->unk_308.unk_00 == 2) {
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
        this->unk_308.unk_00 = 0;
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
        if (gSaveContext.timer2Value < 6 && gSaveContext.timer2State != 0 && this->unk_308.unk_00 == 0) {
            if (Actor_ProcessTalkRequest(&this->actor, play)) {}
        } else {
            func_800343CC(play, &this->actor, &this->unk_308.unk_00,
                          ((this->actor.targetMode == 6) ? 80.0f : 320.0f) + this->collider.dim.radius, func_80A79168,
                          func_80A79500);
            if (this->unk_308.unk_00 != 0) {
                this->unk_1FA = this->unk_1F8;
                this->unk_1F8 = Message_GetState(&play->msgCtx);
            }
        }
        func_80A795C8(this, play);
    }
}

s32 EnIn_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIn* this = (EnIn*)thisx;
    Vec3s sp2C;

    if (this->actor.params > 0 && limbIndex != INGO_HEAD_LIMB) {
        if (sAdultEraDLs[limbIndex] != NULL) {
            *dList = sAdultEraDLs[limbIndex];
        }
    }
    if (limbIndex == INGO_HEAD_LIMB) {
        Matrix_Translate(1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        sp2C = this->unk_308.unk_08;
        Matrix_RotateZ(BINANG_TO_RAD_ALT(sp2C.x), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(sp2C.y), MTXMODE_APPLY);
        Matrix_Translate(-1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == INGO_CHEST_LIMB) {
        sp2C = this->unk_308.unk_0E;
        Matrix_RotateX(BINANG_TO_RAD_ALT(sp2C.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD_ALT(sp2C.y), MTXMODE_APPLY);
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
