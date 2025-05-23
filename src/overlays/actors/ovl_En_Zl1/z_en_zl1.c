/*
 * File: z_en_zl1.c
 * Overlay: ovl_En_Zl1
 * Description: Child Princess Zelda (at window)
 */

#include "z_en_zl1.h"
#include "assets/objects/object_zl1/object_zl1.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnZl1_Init(Actor* thisx, PlayState* play);
void EnZl1_Destroy(Actor* thisx, PlayState* play);
void EnZl1_Update(Actor* thisx, PlayState* play);
void EnZl1_Draw(Actor* thisx, PlayState* play);

void func_80B4AE18(EnZl1* this);
void func_80B4AF18(EnZl1* this, PlayState* play);
void func_80B4B010(EnZl1* this, PlayState* play);
void func_80B4B240(EnZl1* this, PlayState* play);
void func_80B4B8B4(EnZl1* this, PlayState* play);
void func_80B4BBC4(EnZl1* this, PlayState* play);
void func_80B4BC78(EnZl1* this, PlayState* play);
void func_80B4BF2C(EnZl1* this, PlayState* play);

extern CutsceneData gTriforceCreationStartCs[];

#include "z_en_zl1_camera_data.inc.c"

ActorProfile En_Zl1_Profile = {
    /**/ ACTOR_EN_ZL1,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_ZL1,
    /**/ sizeof(EnZl1),
    /**/ EnZl1_Init,
    /**/ EnZl1_Destroy,
    /**/ EnZl1_Update,
    /**/ EnZl1_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 20, 46, 0, { 0, 0, 0 } },
};

static void* D_80B4E61C[] = {
    gChildZelda1EyeOpenLookingUpRightTex,
    gChildZelda1EyeHalf2Tex,
    gChildZelda1EyeClosedTex,
    gChildZelda1EyeHalf2Tex,
};
static void* D_80B4E62C[] = { gChildZelda1MouthNeutralTex };

void func_80B4AB40(void) {
}

void func_80B4AB48(void) {
}

void EnZl1_Init(Actor* thisx, PlayState* play) {
    f32 frameCount;
    EnZl1* this = (EnZl1*)thisx;

    frameCount = Animation_GetLastFrame(&gChildZelda1Anim_12118);
    SkelAnime_InitFlex(play, &this->skelAnime, &gChildZelda1Skel, NULL, NULL, NULL, 0);
    Animation_Change(&this->skelAnime, &gChildZelda1Anim_12118, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    Actor_SetScale(&this->actor, 0.01f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 24.0f);
    this->actor.attentionRangeType = ATTENTION_RANGE_0;

    if (IS_CUTSCENE_LAYER) {
        frameCount = Animation_GetLastFrame(&gChildZelda1Anim_00438);
        Animation_Change(&this->skelAnime, &gChildZelda1Anim_00438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->unk_1E6 = 0;
        this->actionFunc = func_80B4BC78;
    } else if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
               Flags_GetEventChkInf(EVENTCHKINF_37)) {
        Actor_Kill(&this->actor);
    } else if ((Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25)) ||
               (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_37))) {
        frameCount = Animation_GetLastFrame(&gChildZelda1Anim_00438);
        Animation_Change(&this->skelAnime, &gChildZelda1Anim_00438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->actor.textId = 0x703D;
        this->actionFunc = func_80B4AF18;
    } else if (Flags_GetEventChkInf(EVENTCHKINF_40)) {
        frameCount = Animation_GetLastFrame(&gChildZelda1Anim_00438);
        Animation_Change(&this->skelAnime, &gChildZelda1Anim_00438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->actor.textId = 0x703C;
        this->actionFunc = func_80B4AF18;
    } else {
        this->actor.textId = 0xFFFF;
        this->actionFunc = func_80B4B010;
    }
}

void EnZl1_Destroy(Actor* thisx, PlayState* play) {
    EnZl1* this = (EnZl1*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void func_80B4AE18(EnZl1* this) {
    if ((this->skelAnime.animation == &gChildZelda1Anim_10B38) && (this->skelAnime.curFrame < 26.0f)) {
        this->unk_1F4 = gChildZelda1EyeOpenLookingRightTex;
        this->unk_1F8 = gChildZelda1EyeOpenLookingLeftTex;
        this->unk_1FC = 2;
    } else {
        if (DECR(this->unk_1FC) == 0) {
            this->unk_1FC = Rand_S16Offset(0x1E, 0xA);
        }
        this->unk_1FE = (this->unk_1FC < 4) ? this->unk_1FC : 0;

        this->unk_1F4 = D_80B4E61C[this->unk_1FE];
        this->unk_1F8 = D_80B4E61C[this->unk_1FE];
        this->unk_1EC = D_80B4E62C[this->unk_1F2];
    }
}

void func_80B4AF18(EnZl1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;

    Actor_TrackPlayer(play, &this->actor, &this->unk_200, &this->unk_206, this->actor.focus.pos);

    if (this->unk_1E6 != 0) {
        if (Actor_TextboxIsClosing(&this->actor, play)) {
            this->unk_1E6 = 0;
        }
    } else if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk_1E6 = 1;
    } else if (this->actor.world.pos.y <= player->actor.world.pos.y) {
        Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void func_80B4B010(EnZl1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad2;
    s32 pad3;
    s32 pad;
    Vec3f subCamAt = { -460.0f, 118.0f, 0.0f };
    Vec3f subCamEye = { -406.0f, 110.0f, 0.0f };
    Vec3f playerPos = { -398.0f, 84.0f, 0.0f };
    s16 rotDiff;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        Animation_Change(&this->skelAnime, &gChildZelda1Anim_10B38, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gChildZelda1Anim_10B38), ANIMMODE_ONCE_INTERP, -10.0f);
        this->subCamId = Play_CreateSubCamera(play);
        Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
        Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
        Play_InitCameraDataUsingPlayer(play, this->subCamId, player, CAM_SET_FREE0);
        play->envCtx.screenFillColor[0] = 255;
        play->envCtx.screenFillColor[1] = 255;
        play->envCtx.screenFillColor[2] = 255;
        play->envCtx.screenFillColor[3] = 24;
        play->envCtx.fillScreen = true;
        Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
        Play_SetCameraFov(play, this->subCamId, 30.0f);
        Letterbox_SetSizeTarget(32);
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
        player->actor.world.pos = playerPos;
        player->actor.speed = 0.0f;
        this->unk_1E2 = 0;
        this->actionFunc = func_80B4B240;
        Audio_PlayFanfare(NA_BGM_APPEAR);
    } else {
        if (1) {} // necessary to match
        rotDiff = ABS(this->actor.yawTowardsPlayer - this->actor.shape.rot.y);
        if ((rotDiff < 0x238E) && !(player->actor.world.pos.y < this->actor.world.pos.y)) {
            Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
        }
    }
}

void func_80B4B240(EnZl1* this, PlayState* play) {
    Vec3f subCamAt = { -427.0f, 108.0, 26.0 };
    Vec3f subCamEye = { -340.0f, 108.0f, 98.0f };
    s32 pad;
    Vec3f sp58 = { -434.0f, 84.0f, 0.0f };
    u8 sp54[] = { 0x00, 0x00, 0x02 };
    s32 pad2;
    Player* player = GET_PLAYER(play);
    AnimationHeader* animHeaderSeg;
    MessageContext* msgCtx = &play->msgCtx;
    f32 frameCount;
    s32 sp3C = 0;

    switch (this->unk_1E2) {
        case 0:
            switch ((s16)this->skelAnime.curFrame) {
                case 14:
                    this->unk_1E4 = 0;
                    break;
                case 15:
                    if (DECR(this->unk_1E4) != 0) {
                        this->skelAnime.curFrame = 15.0f;
                    }
                    break;
                case 64:
                    animHeaderSeg = &gChildZelda1Anim_11348;
                    sp3C = 1;
                    this->actor.textId = 0x702E;
                    Message_StartTextbox(play, this->actor.textId, NULL);
                    this->unk_1E2++;
                    break;
            }
            break;
        case 1:
            if ((Message_GetState(msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
                play->envCtx.fillScreen = false;
                Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
                Play_SetCameraFov(play, this->subCamId, 25.0f);
                player->actor.world.pos = sp58;
                this->actor.textId = 0x702F;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 2:
            if ((Message_GetState(msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &gChildZelda1Anim_13F10;
                    sp3C = 2;
                    this->unk_1E2++;
                } else {
                    animHeaderSeg = &gChildZelda1Anim_116E4;
                    sp3C = 2;
                    this->unk_1E2 = 6;
                }
            }
            break;
        case 3:
            frameCount = Animation_GetLastFrame(&gChildZelda1Anim_13F10);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &gChildZelda1Anim_143A8;
                sp3C = 1;
                this->actor.textId = 0x7032;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 4:
            if ((Message_GetState(msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &gChildZelda1Anim_132D8;
                    sp3C = 2;
                    this->unk_1E2 = 9;
                } else {
                    this->actor.textId = 0x7034;
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->unk_1E2++;
                }
            }
            break;
        case 5:
            if ((Message_GetState(msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
                this->actor.textId = 0x7033;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_1E2--;
            }
            break;
        case 6:
            frameCount = Animation_GetLastFrame(&gChildZelda1Anim_116E4);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &gChildZelda1Anim_12B88;
                sp3C = 1;
                this->actor.textId = 0x7031;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 7:
            if ((Message_GetState(msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
                this->actor.textId = 0x7030;
                Message_ContinueTextbox(play, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 8:
            if ((Message_GetState(msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &gChildZelda1Anim_138E0;
                    sp3C = 2;
                    this->unk_1E2 = 3;
                } else {
                    this->actor.textId = 0x7031;
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->unk_1E2--;
                }
            }
            break;
        case 9:
            frameCount = Animation_GetLastFrame(&gChildZelda1Anim_132D8);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &gChildZelda1Anim_00438;
                sp3C = 1;
                play->csCtx.script = gTriforceCreationStartCs;
                gSaveContext.cutsceneTrigger = 1;
                this->actionFunc = func_80B4B8B4;
                this->unk_1E2++;
            }
            break;
    }
    if (sp3C != 0) {
        frameCount = Animation_GetLastFrame(animHeaderSeg);
        Animation_Change(&this->skelAnime, animHeaderSeg, 1.0f, 0.0f, frameCount, sp54[sp3C], -10.0f);
    }
    Actor_TrackPlayer(play, &this->actor, &this->unk_200, &this->unk_206, this->actor.focus.pos);
}

void func_80B4B7F4(CsCmdActorCue* cue, Vec3f* dest) {
    dest->x = cue->startPos.x;
    dest->y = cue->startPos.y;
    dest->z = cue->startPos.z;
}

void func_80B4B834(CsCmdActorCue* cue, Vec3f* dest) {
    dest->x = cue->endPos.x;
    dest->y = cue->endPos.y;
    dest->z = cue->endPos.z;
}

void func_80B4B874(EnZl1* this, PlayState* play) {
    this->skelAnime.movementFlags |= ANIM_FLAG_UPDATE_XZ;
    AnimTaskQueue_AddActorMovement(play, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B4B8B4(EnZl1* this, PlayState* play) {
    AnimationHeader* spB0[] = {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        &gChildZelda1Anim_12B04,
        &gChildZelda1Anim_12118,
        &gChildZelda1Anim_10B38,
    };
    u8 spA4[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
    };
    Vec3f subCamAt = { -421.0f, 143.0f, -5.0f };
    Vec3f subCamEye = { -512.0f, 105.0f, -4.0f };
    s32 pad2;
    f32 cueDuration;
    CsCmdActorCue* cue;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    s32 pad;
    f32 frameCount;
    Vec3f sp48;

    SkelAnime_Update(&this->skelAnime);
    func_80B4B874(this, play);
    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actionFunc = func_80B4BBC4;
        return;
    }

    cue = play->csCtx.actorCues[0];

    if (cue != NULL) {
        func_80B4B7F4(cue, &sp74);
        func_80B4B834(cue, &sp68);

        if (this->unk_1E6 == 0) {
            sp48 = sp74;
            this->actor.home.pos = sp48;
            this->actor.world.pos = sp48;
        }

        if (this->unk_1E6 != cue->id) {
            frameCount = Animation_GetLastFrame(spB0[cue->id]);
            Animation_Change(&this->skelAnime, spB0[cue->id], 1.0f, 0.0f, frameCount, spA4[cue->id], -10.0f);
            this->unk_1E6 = cue->id;
        }

        this->actor.velocity = velocity;

        if (play->csCtx.curFrame < cue->endFrame) {
            cueDuration = cue->endFrame - cue->startFrame;

            this->actor.velocity.x = (sp68.x - sp74.x) / cueDuration;
            this->actor.velocity.y = (sp68.y - sp74.y) / cueDuration;
            this->actor.velocity.y += this->actor.gravity;

            if (this->actor.velocity.y < this->actor.minVelocityY) {
                this->actor.velocity.y = this->actor.minVelocityY;
            }
            this->actor.velocity.z = (sp68.z - sp74.z) / cueDuration;
        }

        Actor_TrackPlayer(play, &this->actor, &this->unk_200, &this->unk_206, this->actor.focus.pos);
        Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
        Play_SetCameraFov(play, this->subCamId, 70.0f);
    }
}

void func_80B4BBC4(EnZl1* this, PlayState* play) {
    s32 pad;
    f32 frameCount = Animation_GetLastFrame(&gChildZelda1Anim_00438);
    Player* player = GET_PLAYER(play);

    Animation_Change(&this->skelAnime, &gChildZelda1Anim_00438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
    Player_PlaySfx(player, NA_SE_VO_LI_SURPRISE_KID);
    this->actor.textId = 0x7039;
    Message_StartTextbox(play, this->actor.textId, NULL);
    this->unk_1E2 = 0;
    this->actionFunc = func_80B4BF2C;
}

void func_80B4BC78(EnZl1* this, PlayState* play) {
    AnimationHeader* sp90[] = {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        &gChildZelda1Anim_12B04,
        &gChildZelda1Anim_12118,
        &gChildZelda1Anim_10B38,
    };
    u8 sp84[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
    };
    s32 pad2;
    f32 cueDuration;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    CsCmdActorCue* cue;
    s32 pad;
    f32 frameCount;

    if (SkelAnime_Update(&this->skelAnime) && (this->skelAnime.animation == &gChildZelda1Anim_10B38)) {
        frameCount = Animation_GetLastFrame(&gChildZelda1Anim_11348);
        Animation_Change(&this->skelAnime, &gChildZelda1Anim_11348, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -10.0f);
    }

    func_80B4B874(this, play);

    cue = play->csCtx.actorCues[0];

    if (cue != NULL) {
        func_80B4B7F4(cue, &sp70);
        func_80B4B834(cue, &sp64);

        if (this->unk_1E6 == 0) {
            this->actor.world.pos = this->actor.home.pos = sp70;
        }

        if (this->unk_1E6 != cue->id) {
            frameCount = Animation_GetLastFrame(sp90[cue->id]);
            Animation_Change(&this->skelAnime, sp90[cue->id], 1.0f, 0.0f, frameCount, sp84[cue->id], -10.0f);
            this->unk_1E6 = cue->id;
        }

        this->actor.velocity = velocity;

        if (play->csCtx.curFrame < cue->endFrame) {
            cueDuration = cue->endFrame - cue->startFrame;

            this->actor.velocity.x = (sp64.x - sp70.x) / cueDuration;
            this->actor.velocity.y = (sp64.y - sp70.y) / cueDuration;
            this->actor.velocity.y += this->actor.gravity;

            if (this->actor.velocity.y < this->actor.minVelocityY) {
                this->actor.velocity.y = this->actor.minVelocityY;
            }

            this->actor.velocity.z = (sp64.z - sp70.z) / cueDuration;
        }
    }
}

void func_80B4BF2C(EnZl1* this, PlayState* play) {
    s32 pad;
    MessageContext* msgCtx = &play->msgCtx;
    Player* player = GET_PLAYER(play);

    switch (this->unk_1E2) {
        case 0:
            if ((Message_GetState(msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                if (msgCtx->choiceIndex == 0) {
                    this->actor.textId = 0x703B;
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->unk_1E2++;
                } else {
                    this->actor.textId = 0x703A;
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->unk_1E2 = 0;
                }
            }
            break;
        case 1:
            if ((Message_GetState(msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
                this->actor.textId = 0xFFFF;
                play->talkWithPlayer(play, &this->actor);
                Actor_OfferGetItem(&this->actor, play, GI_ZELDAS_LETTER, 120.0f, 10.0f);
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                play->msgCtx.stateTimer = 4;
                this->unk_1E2++;
            } else {
                break;
            }
        case 2:
            if (Actor_HasParent(&this->actor, play)) {
                Play_CopyCamera(play, CAM_ID_MAIN, this->subCamId);
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_ACTIVE);
                Play_ClearCamera(play, this->subCamId);
                this->actor.parent = NULL;
                this->unk_1E2++;
            } else {
                Actor_OfferGetItem(&this->actor, play, GI_ZELDAS_LETTER, 120.0f, 10.0f);
            }
            break;
        case 3:
            if ((Message_GetState(msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
                this->actor.textId = 0x703C;
                Message_ContinueTextbox(play, this->actor.textId);
                Flags_SetEventChkInf(EVENTCHKINF_40);
                this->unk_1E2 = 6;
            }
            break;
        case 4:
            if (player->actor.world.pos.y < this->actor.world.pos.y) {
                break;
            } else {
                if (Actor_TalkOfferAccepted(&this->actor, play)) {
                    this->unk_1E2++;
                } else {
                    Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
                }
            }
            break;
        case 5:
            if (Actor_TextboxIsClosing(&this->actor, play)) {
                this->unk_1E2--;
            }
            break;
        case 6:
            if (Actor_TextboxIsClosing(&this->actor, play)) {
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                this->actor.flags &= ~ACTOR_FLAG_TALK;
                this->unk_1E2 = 4;
            }
            break;
    }
    Actor_TrackPlayer(play, &this->actor, &this->unk_200, &this->unk_206, this->actor.focus.pos);
}

void EnZl1_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnZl1* this = (EnZl1*)thisx;

    if ((this->actionFunc != func_80B4B8B4) && (this->actionFunc != func_80B4BC78)) {
        SkelAnime_Update(&this->skelAnime);
    }
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->actionFunc(this, play);
    if (this->actionFunc != func_80B4B8B4) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.x, this->actor.world.rot.x, 0xA, 0x3E8, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 0xA, 0x3E8, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->actor.world.rot.z, 0xA, 0x3E8, 1);
    func_80B4AE18(this);
}

s32 EnZl1_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnZl1* this = (EnZl1*)thisx;

    if ((limbIndex == 4) || (limbIndex == 3) || (limbIndex == 6) || (limbIndex == 5)) {
        *dList = NULL;
    }

    if (limbIndex != 10) {
        if (limbIndex == 17) {
            rot->x += this->unk_200.y;
            rot->y += this->unk_200.z;
            rot->z += this->unk_200.x;
        }
    } else {
        rot->x += this->unk_206.y;
        rot->y += this->unk_206.x;
        rot->z += this->unk_206.z;
    }
    return 0;
}

void EnZl1_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f vec = { 0.0f, 0.0f, 0.0f };
    EnZl1* this = (EnZl1*)thisx;

    if (limbIndex == 17) {
        Matrix_MultVec3f(&vec, &this->actor.focus.pos);
    }
}

void EnZl1_Draw(Actor* thisx, PlayState* play) {
    EnZl1* this = (EnZl1*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_girlB.c", 2011);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(this->unk_1F4));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(this->unk_1F8));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(this->unk_1EC));

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnZl1_OverrideLimbDraw, EnZl1_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_girlB.c", 2046);
}
