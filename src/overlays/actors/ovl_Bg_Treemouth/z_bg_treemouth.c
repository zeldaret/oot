/*
 * File: z_bg_treemouth.c
 * Overlay: ovl_Bg_Treemouth
 * Description: Great Deku Tree's Mouth
 */

#include "z_bg_treemouth.h"
#include "versions.h"
#include "assets/objects/object_spot04_objects/object_spot04_objects.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgTreemouth_Init(Actor* thisx, PlayState* play);
void BgTreemouth_Destroy(Actor* thisx, PlayState* play);
void BgTreemouth_Update(Actor* thisx, PlayState* play);
void BgTreemouth_Draw(Actor* thisx, PlayState* play);

void func_808BC65C(BgTreemouth* this, PlayState* play);
void func_808BC6F8(BgTreemouth* this, PlayState* play);
void func_808BC80C(BgTreemouth* this, PlayState* play);
void func_808BC864(BgTreemouth* this, PlayState* play);
void BgTreemouth_DoNothing(BgTreemouth* this, PlayState* play);
void func_808BC8B8(BgTreemouth* this, PlayState* play);
void func_808BC9EC(BgTreemouth* this, PlayState* play);
void func_808BCAF0(BgTreemouth* this, PlayState* play);

extern CutsceneData gDekuTreeMeetingCs[];
extern CutsceneData gDekuTreeChoiceCs[];
extern CutsceneData gDekuTreeMouthOpeningCs[];
extern CutsceneData gDekuTreeAskAgainCs[];

ActorProfile Bg_Treemouth_Profile = {
    /**/ ACTOR_BG_TREEMOUTH,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT04_OBJECTS,
    /**/ sizeof(BgTreemouth),
    /**/ BgTreemouth_Init,
    /**/ BgTreemouth_Destroy,
    /**/ BgTreemouth_Update,
    /**/ BgTreemouth_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_5, ICHAIN_CONTINUE),
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 8000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 300, ICHAIN_STOP),
};

// unused
static f32 D_808BD9C4[] = {
    -2746.0f, 545.0f, 4694.0f, -2654.0f, 146.0f, 4534.0f,
};

void BgTreemouth_SetupAction(BgTreemouth* this, BgTreemouthActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgTreemouth_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgTreemouth* this = (BgTreemouth*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gDekuTreeMouthCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Actor_SetFocus(thisx, 50.0f);

    if (!IS_CUTSCENE_LAYER && !LINK_IS_ADULT) {
        BgTreemouth_SetupAction(this, func_808BC8B8);
    } else if (LINK_IS_ADULT || (gSaveContext.sceneLayer == 7)) {
        this->unk_168 = 0.0f;
        BgTreemouth_SetupAction(this, BgTreemouth_DoNothing);
    } else {
        this->unk_168 = 1.0f;
        BgTreemouth_SetupAction(this, func_808BC6F8);
    }

    thisx->textId = 0x905;
}

void BgTreemouth_Destroy(Actor* thisx, PlayState* play) {
    BgTreemouth* this = (BgTreemouth*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808BC65C(BgTreemouth* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[0];
        if (cue != NULL) {
            if (cue->id == 2) {
                BgTreemouth_SetupAction(this, func_808BC80C);
            } else if (cue->id == 3) {
                Audio_PlaySfxGeneral(NA_SE_EV_WOODDOOR_OPEN, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                BgTreemouth_SetupAction(this, func_808BC6F8);
            }
        }
    }
}

void func_808BC6F8(BgTreemouth* this, PlayState* play) {
    Vec3f sp34;

    if (this->unk_168 < 1.0f) {
        this->unk_168 += 0.01f;
    } else {
        this->unk_168 = 1.0f;
    }

    if ((gSaveContext.sceneLayer == 6) && (play->csCtx.curFrame > 700) && (play->state.frames % 8 == 0)) {
        sp34.x = (Rand_ZeroOne() * 1158.0f) + 3407.0f;
        sp34.y = 970.0f;
        sp34.z = (Rand_ZeroOne() * 2026.0f) + -2163.0f;
        EffectSsHahen_SpawnBurst(play, &sp34, 0.8f, 0, 50, 30, 1, HAHEN_OBJECT_DEFAULT, 10, NULL);
    }
}

void func_808BC80C(BgTreemouth* this, PlayState* play) {
    this->unk_168 += 0.05f;
    if (this->unk_168 >= 0.8f) {
        BgTreemouth_SetupAction(this, func_808BC864);
    }
}

void func_808BC864(BgTreemouth* this, PlayState* play) {
    this->unk_168 -= 0.03f;
    if (this->unk_168 <= 0.0f) {
        BgTreemouth_SetupAction(this, func_808BC65C);
    }
}

void func_808BC8B8(BgTreemouth* this, PlayState* play) {
    if (!Flags_GetEventChkInf(EVENTCHKINF_05) || LINK_IS_ADULT) {
        if (!LINK_IS_ADULT) {
            if (Flags_GetEventChkInf(EVENTCHKINF_0C)) {
                if (Actor_IsFacingAndNearPlayer(&this->dyna.actor, 1658.0f, 0x7530)) {
                    this->dyna.actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
                    if (this->dyna.actor.isLockedOn) {
                        this->dyna.actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                        play->csCtx.script = gDekuTreeChoiceCs;
                        gSaveContext.cutsceneTrigger = 1;
                        BgTreemouth_SetupAction(this, func_808BC9EC);
                    }
                }
            } else if (Actor_IsFacingAndNearPlayer(&this->dyna.actor, 1658.0f, 0x4E20)) {
                Flags_SetEventChkInf(EVENTCHKINF_0C);
                play->csCtx.script = gDekuTreeMeetingCs;
                gSaveContext.cutsceneTrigger = 1;
                BgTreemouth_SetupAction(this, func_808BC9EC);
            }
        }
    } else {
        this->unk_168 = 1.0f;
    }
}

void func_808BC9EC(BgTreemouth* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (play->csCtx.state == CS_STATE_STOP) {
        if (Actor_IsFacingAndNearPlayer(&this->dyna.actor, 350.0f, 0x7530)) {
            player->actor.world.pos.x = 3827.0f;
            player->actor.world.pos.y = -161.0f;
            player->actor.world.pos.z = -1142.0f;
        }

        play->csCtx.curFrame = 0;

        play->csCtx.camEyeSplinePointsAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
        gCamAtSplinePointsAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
        gCamEyePointAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
        gCamAtPointAppliedFrame = CS_CAM_DATA_NOT_APPLIED;

        play->csCtx.camAtReady = false;
        play->csCtx.camEyeReady = false;

        play->csCtx.state = CS_STATE_RUN;

        if (play->msgCtx.choiceIndex == 0) {
            play->csCtx.script = gDekuTreeMouthOpeningCs;
            Flags_SetEventChkInf(EVENTCHKINF_05);
            BgTreemouth_SetupAction(this, func_808BCAF0);
        } else {
            play->csCtx.script = gDekuTreeAskAgainCs;
            play->csCtx.curFrame = 0;
            BgTreemouth_SetupAction(this, func_808BC8B8);
        }
    }
}

void func_808BCAF0(BgTreemouth* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[0];
        if (cue != NULL) {
            if (cue->id == 2) {
                BgTreemouth_SetupAction(this, func_808BC80C);
            } else if (cue->id == 3) {
                Audio_PlaySfxGeneral(NA_SE_EV_WOODDOOR_OPEN, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                BgTreemouth_SetupAction(this, func_808BC6F8);
            }
        }
    }
}

void BgTreemouth_DoNothing(BgTreemouth* this, PlayState* play) {
}

void BgTreemouth_Update(Actor* thisx, PlayState* play) {
    BgTreemouth* this = (BgTreemouth*)thisx;
    f32 unk_168;

    this->actionFunc(this, play);
    unk_168 = this->unk_168;
    thisx->world.pos.x = (unk_168 * -160.0f) + 4029.0f;
    thisx->world.pos.y = (unk_168 * -399.0f) + 136.0f;
    thisx->world.pos.z = (unk_168 * 92.0f) + -1255.0f;
}

void BgTreemouth_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    u16 alpha = 500;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_treemouth.c", 893);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

#if OOT_VERSION < PAL_1_0
    if (!IS_CUTSCENE_LAYER)
#else
    if (!IS_CUTSCENE_LAYER || LINK_IS_ADULT)
#endif
    {
        if (GET_EVENTCHKINF(EVENTCHKINF_07)) {
            alpha = 2150;
        }
    } else { // needed to match
    }

    if (gSaveContext.sceneLayer == 6) {
        alpha = (play->roomCtx.drawParams[0] + 0x1F4);
    }

    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, alpha * 0.1f);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_treemouth.c", 932);
    gSPDisplayList(POLY_OPA_DISP++, gDekuTreeMouthDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_treemouth.c", 937);
}
