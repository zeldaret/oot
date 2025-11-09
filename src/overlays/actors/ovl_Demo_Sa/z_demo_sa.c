/*
 * File: z_demo_sa.c
 * Overlay: Demo_Sa
 * Description: Saria (Cutscene)
 */

#include "z_demo_sa.h"
#include "overlays/actors/ovl_En_Sa/z_en_sa.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "regs.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sequence.h"
#include "terminal.h"
#include "translation.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_sa/object_sa.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void DemoSa_Init(Actor* thisx, PlayState* play);
void DemoSa_Destroy(Actor* thisx, PlayState* play);
void DemoSa_Update(Actor* thisx, PlayState* play);
void DemoSa_Draw(Actor* thisx, PlayState* play);

void DemoSa_Action_SetupForestMedallionCutscene(DemoSa* this, PlayState* play);
void DemoSa_Action_AwaitBlueWarp(DemoSa* this, PlayState* play);
void DemoSa_Action_RiseThroughBlueWarp(DemoSa* this, PlayState* play);
void DemoSa_Action_SageOfForestDialog(DemoSa* this, PlayState* play);
void DemoSa_Action_RaiseArmsForMedallion(DemoSa* this, PlayState* play);
void DemoSa_Action_AwaitMedallion(DemoSa* this, PlayState* play);
void DemoSa_Action_EndMedallionCutscene(DemoSa* this, PlayState* play);
void DemoSa_Action_ForestTrialInvisible(DemoSa* this, PlayState* play);
void DemoSa_Action_ForestTrialFade(DemoSa* this, PlayState* play);
void DemoSa_Action_AwaitLightBall(DemoSa* this, PlayState* play);
void DemoSa_Action_Unknown(DemoSa* this, PlayState* play);
void DemoSa_Action_CreditsInvisible(DemoSa* this, PlayState* play);
void DemoSa_Action_CreditsFadeIn(DemoSa* this, PlayState* play);
void DemoSa_Action_CreditsFacingForward(DemoSa* this, PlayState* play);
void DemoSa_Action_CreditsLookDownAtDarunia(DemoSa* this, PlayState* play);
void DemoSa_Action_CreditsLookBackUp(DemoSa* this, PlayState* play);
void DemoSa_Action_BridgeInvisible(DemoSa* this, PlayState* play);
void DemoSa_Action_AppearOnBridge(DemoSa* this, PlayState* play);
void DemoSa_Action_SadToSeeLinkLeaving(DemoSa* this, PlayState* play);
void DemoSa_Action_ClutchingOcarina(DemoSa* this, PlayState* play);
void DemoSa_Action_GivingOcarina(DemoSa* this, PlayState* play);

void DemoSa_DrawNothing(DemoSa* this, PlayState* play);
void DemoSa_DrawOpa(DemoSa* this, PlayState* play);
void DemoSa_DrawXlu(DemoSa* this, PlayState* play);

static void* sEyeTextures[] = {
    gSariaEyeOpenTex, gSariaEyeHalfTex, gSariaEyeClosedTex, gSariaEyeSuprisedTex, gSariaEyeSadTex,
};

static void* sMouthTextures[] = {
    gSariaMouthClosed2Tex,     gSariaMouthSuprisedTex, gSariaMouthClosedTex,
    gSariaMouthSmilingOpenTex, gSariaMouthFrowningTex,
};

#if DEBUG_FEATURES
static u32 D_80990108 = 0;
#endif

#include "z_demo_sa_cutscene_data.inc.c"

static DemoSaActionFunc sActionFuncs[] = {
    DemoSa_Action_SetupForestMedallionCutscene,
    DemoSa_Action_AwaitBlueWarp,
    DemoSa_Action_RiseThroughBlueWarp,
    DemoSa_Action_SageOfForestDialog,
    DemoSa_Action_RaiseArmsForMedallion,
    DemoSa_Action_AwaitMedallion,
    DemoSa_Action_EndMedallionCutscene,
    DemoSa_Action_ForestTrialInvisible,
    DemoSa_Action_ForestTrialFade,
    DemoSa_Action_AwaitLightBall,
    DemoSa_Action_Unknown,
    DemoSa_Action_CreditsInvisible,
    DemoSa_Action_CreditsFadeIn,
    DemoSa_Action_CreditsFacingForward,
    DemoSa_Action_CreditsLookDownAtDarunia,
    DemoSa_Action_CreditsLookBackUp,
    DemoSa_Action_BridgeInvisible,
    DemoSa_Action_AppearOnBridge,
    DemoSa_Action_SadToSeeLinkLeaving,
    DemoSa_Action_ClutchingOcarina,
    DemoSa_Action_GivingOcarina,
};

static DemoSaDrawFunc sDrawFuncs[] = {
    DemoSa_DrawNothing,
    DemoSa_DrawOpa,
    DemoSa_DrawXlu,
};

ActorProfile Demo_Sa_Profile = {
    /**/ ACTOR_DEMO_SA,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_SA,
    /**/ sizeof(DemoSa),
    /**/ DemoSa_Init,
    /**/ DemoSa_Destroy,
    /**/ DemoSa_Update,
    /**/ DemoSa_Draw,
};

void DemoSa_Destroy(Actor* thisx, PlayState* play) {
    DemoSa* this = (DemoSa*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
}

void DemoSa_Blink(DemoSa* this) {
    s32 pad[2];
    s16* eyeIndex = &this->eyeIndex;
    s16* blinkTimer = &this->blinkTimer;

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(0x3C, 0x3C);
    }

    *eyeIndex = *blinkTimer;
    if (*eyeIndex >= SARIA_EYE_SURPRISED) {
        *eyeIndex = SARIA_EYE_OPEN;
    }
}

void DemoSa_SetEyes(DemoSa* this, s16 eyeIndex) {
    this->eyeIndex = eyeIndex;
}

void DemoSa_SetMouth(DemoSa* this, s16 mouthIndex) {
    this->mouthIndex = mouthIndex;
}

#if DEBUG_FEATURES
void func_8098E530(DemoSa* this) {
    this->action = DEMOSA_ACTION_FOREST_TRIAL_INVISIBLE;
    this->drawConfig = DEMOSA_DRAW_NOTHING;
    this->alpha = 0;
    this->isLightBall = false;
    this->actor.shape.shadowAlpha = 0;
    this->fadeTimer = 0.0f;
}

void func_8098E554(DemoSa* this, PlayState* play) {
    u32* something = &D_80990108;

    if (play->csCtx.state == CS_STATE_IDLE) {
        if (*something != 0) {
            if (this->actor.params == 2) {
                func_8098E530(this);
            }
            *something = 0;
        }
    } else if (*something == 0) {
        *something = 1;
    }
}
#endif

void DemoSa_UpdateBgCheckInfo(DemoSa* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

s32 DemoSa_UpdateSkelAnime(DemoSa* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorCue* DemoSa_GetCue(PlayState* play, s32 cueChannel) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[cueChannel];

        return cue;
    }

    return NULL;
}

s32 DemoSa_CheckForCue(DemoSa* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = DemoSa_GetCue(play, cueChannel);

    if ((cue != NULL) && (cue->id == cueId)) {
        return true;
    }

    return false;
}

s32 DemoSa_CheckForNoCue(DemoSa* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = DemoSa_GetCue(play, cueChannel);

    if ((cue != NULL) && (cue->id != cueId)) {
        return true;
    }

    return false;
}

void DemoSa_SetStartPosRotFromCue(DemoSa* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = DemoSa_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;

        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

void DemoSa_AnimationChange(DemoSa* this, AnimationHeader* animHeaderSeg, u8 mode, f32 morphFrames, s32 playReversed) {
    s32 pad[2];
    f32 frameCount = Animation_GetLastFrame(animHeaderSeg);
    f32 playbackSpeed;
    f32 startFrame;
    f32 endFrame;

    if (!playReversed) {
        startFrame = 0.0f;
        endFrame = frameCount;
        playbackSpeed = 1.0f;
    } else {
        endFrame = 0.0f;
        startFrame = frameCount;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animHeaderSeg, playbackSpeed, startFrame, endFrame, mode, morphFrames);
}

void DemoSa_InitChamberOfSages(DemoSa* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gSariaSkel, &gSariaWaitArmsToSideAnim, NULL, NULL, 0);
    this->actor.shape.yOffset = -10000.0f;
    DemoSa_SetEyes(this, SARIA_EYE_HALF);
    DemoSa_SetMouth(this, SARIA_MOUTH_CLOSED2);
}

void DemoSa_CsForestMedallion_SpawnDoorWarp(DemoSa* this, PlayState* play) {
    Vec3f* world = &this->actor.world.pos;
    f32 posX = world->x;
    f32 posY = world->y;
    f32 posZ = world->z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, WARP_SAGES);
}

void DemoSa_CsForestMedallion_SpawnMedallion(DemoSa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 posX = player->actor.world.pos.x;
    f32 posY = player->actor.world.pos.y + 80.0f;
    f32 posZ = player->actor.world.pos.z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0, 0xB);
    Item_Give(play, ITEM_MEDALLION_FOREST);
}

void DemoSa_CsForestMedallion_Rise(DemoSa* this, PlayState* play) {
    this->actor.shape.yOffset += (250.0f / 3.0f);
}

void DemoSa_CsForestMedallion_CheckCutscene(DemoSa* this, PlayState* play) {
    s32 pad[2];
    Player* player;

    if ((gSaveContext.chamberCutsceneNum == CHAMBER_CS_FOREST) && !IS_CUTSCENE_LAYER) {
        player = GET_PLAYER(play);
        this->action = DEMOSA_ACTION_AWAIT_BLUE_WARP;
        play->csCtx.script = gForestMedallionCs;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(play, ITEM_MEDALLION_FOREST);
        player->actor.world.rot.y = player->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
    }
}

void DemoSa_CsForestMedallion_CheckBlueWarp(DemoSa* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[4];
        if ((cue != NULL) && (cue->id == 2)) {
            this->action = DEMOSA_ACTION_RISE_THROUGH_BLUE_WARP;
            this->drawConfig = DEMOSA_DRAW_OPA;
            DemoSa_CsForestMedallion_SpawnDoorWarp(this, play);
        }
    }
}

void DemoSa_CsForestMedallion_EndRise(DemoSa* this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->action = DEMOSA_ACTION_SAGE_OF_FOREST_DIALOG;
        this->actor.shape.yOffset = 0.0f;
    }
}

void DemoSa_CsForestMedallion_CheckStartRaisingArms(DemoSa* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[4];
        if ((cue != NULL) && (cue->id == 3)) {
            Animation_Change(&this->skelAnime, &gSariaGiveForestMedallionAnim, 1.0f, 0.0f,
                             Animation_GetLastFrame(&gSariaGiveForestMedallionAnim), ANIMMODE_ONCE, -4.0f);
            this->action = DEMOSA_ACTION_RAISE_ARMS_FOR_MEDALLION;
        }
    }
}

void DemoSa_CsForestMedallion_HoldArmsUp(DemoSa* this, s32 doneRaising) {
    if (doneRaising) {
        Animation_Change(&this->skelAnime, &gSariaGiveForestMedallionStandAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gSariaGiveForestMedallionStandAnim), ANIMMODE_LOOP, 0.0f);
        this->action = DEMOSA_ACTION_AWAIT_FOREST_MEDALLION;
    }
}

void DemoSa_CsForestMedallion_CheckMedallionShouldSpawn(DemoSa* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[6];

        if ((cue != NULL) && (cue->id == 2)) {
            this->action = DEMOSA_ACTION_FINISH_FOREST_MEDALLION_CS;
            DemoSa_CsForestMedallion_SpawnMedallion(this, play);
        }
    }
}

void DemoSa_Action_SetupForestMedallionCutscene(DemoSa* this, PlayState* play) {
    DemoSa_CsForestMedallion_CheckCutscene(this, play);
}

void DemoSa_Action_AwaitBlueWarp(DemoSa* this, PlayState* play) {
    DemoSa_CsForestMedallion_CheckBlueWarp(this, play);
}

void DemoSa_Action_RiseThroughBlueWarp(DemoSa* this, PlayState* play) {
    DemoSa_CsForestMedallion_Rise(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsForestMedallion_EndRise(this);
}

void DemoSa_Action_SageOfForestDialog(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsForestMedallion_CheckStartRaisingArms(this, play);
}

void DemoSa_Action_RaiseArmsForMedallion(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_CsForestMedallion_HoldArmsUp(this, DemoSa_UpdateSkelAnime(this));
}

void DemoSa_Action_AwaitMedallion(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsForestMedallion_CheckMedallionShouldSpawn(this, play);
}

void DemoSa_Action_EndMedallionCutscene(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
}

void DemoSa_InitBarrier(DemoSa* this, PlayState* play) {
    s32 pad[2];
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gSariaSealGanonAnim);

    SkelAnime_InitFlex(play, skelAnime, &gSariaSkel, NULL, NULL, NULL, 0);
    Animation_Change(skelAnime, &gSariaSealGanonAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = DEMOSA_ACTION_FOREST_TRIAL_INVISIBLE;
    this->actor.shape.shadowAlpha = 0;
    DemoSa_SetEyes(this, SARIA_EYE_CLOSED);
    DemoSa_SetMouth(this, SARIA_MOUTH_CLOSED);
}

void DemoSa_Ganon_LowerEyes(DemoSa* this) {
    f32 curFrame = this->skelAnime.curFrame;

    if ((this->skelAnime.mode == 2) && (curFrame >= 32.0f)) {
        DemoSa_SetEyes(this, SARIA_EYE_HALF);
        DemoSa_SetMouth(this, SARIA_MOUTH_CLOSED2);
    }
}

void DemoSa_Sfx_WhiteOut(void) {
    Sfx_PlaySfxCentered2(NA_SE_SY_WHITE_OUT_T);
}

void DemoSa_SpawnLightBall(DemoSa* this, PlayState* play) {
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_6K, this->actor.world.pos.x,
                       (kREG(23) + 25.0f) + this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 4);
}

void DemoSa_Ganon_CheckFadeIn(DemoSa* this, PlayState* play) {
    if (DemoSa_CheckForCue(this, play, 4, 4)) {
        this->action = DEMOSA_ACTION_FOREST_TRIAL_FADE;
        this->drawConfig = DEMOSA_DRAW_XLU;
        this->alpha = 0;
        this->actor.shape.shadowAlpha = 0;
        this->fadeTimer = 0.0f;
        DemoSa_Sfx_WhiteOut();
    }
}

void DemoSa_Ganon_Fade(DemoSa* this, PlayState* play) {
    s32 alpha = 255;
    f32* fadeTimer = &this->fadeTimer;

    if (DemoSa_CheckForCue(this, play, 4, 4)) {
        *fadeTimer += 1.0f;
        if ((kREG(5) + 10.0f) <= *fadeTimer) {
            this->action = DEMOSA_ACTION_AWAIT_SPAWN_LIGHT_BALL;
            this->drawConfig = DEMOSA_DRAW_OPA;
            *fadeTimer = kREG(5) + 10.0f;
            this->alpha = alpha;
            this->actor.shape.shadowAlpha = alpha;
            return;
        }
    } else {
        *fadeTimer -= 1.0f;
        if (*fadeTimer <= 0.0f) {
            this->action = DEMOSA_ACTION_FOREST_TRIAL_INVISIBLE;
            this->drawConfig = DEMOSA_DRAW_NOTHING;
            *fadeTimer = 0.0f;
            this->alpha = 0;
            this->actor.shape.shadowAlpha = 0;
            return;
        }
    }
    this->actor.shape.shadowAlpha = this->alpha = (*fadeTimer / (kREG(5) + 10.0f)) * 255.0f;
}

void DemoSa_Ganon_CheckFadeOut(DemoSa* this, PlayState* play) {
    if (DemoSa_CheckForNoCue(this, play, 4, 4)) {
        this->action = DEMOSA_ACTION_FOREST_TRIAL_FADE;
        this->drawConfig = DEMOSA_DRAW_XLU;
        this->fadeTimer = kREG(5) + 10.0f;
        this->alpha = 255;
        if (!this->isLightBall) {
            DemoSa_SpawnLightBall(this, play);
            this->isLightBall = true;
        }
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void DemoSa_Action_ForestTrialInvisible(DemoSa* this, PlayState* play) {
    DemoSa_Ganon_CheckFadeIn(this, play);
#if DEBUG_FEATURES
    func_8098E554(this, play);
#endif
}

void DemoSa_Action_ForestTrialFade(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
    DemoSa_Ganon_Fade(this, play);
#if DEBUG_FEATURES
    func_8098E554(this, play);
#endif
}

void DemoSa_Action_AwaitLightBall(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Ganon_LowerEyes(this);
    DemoSa_Ganon_CheckFadeOut(this, play);
#if DEBUG_FEATURES
    func_8098E554(this, play);
#endif
}

void DemoSa_DrawXlu(DemoSa* this, PlayState* play) {
    s32 pad[2];
    s16 eyeIndex = this->eyeIndex;
    void* eyeTexture = sEyeTextures[eyeIndex];
    s16 mouthIndex = this->mouthIndex;
    s32 pad2;
    void* mouthTexture = sMouthTextures[mouthIndex];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_sa_inKenjyanomaDemo02.c", 296);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(mouthTexture));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
    gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);

    POLY_XLU_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL,
                                       NULL, NULL, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_sa_inKenjyanomaDemo02.c", 325);
}

void DemoSa_InitUnknown(DemoSa* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gSariaSkel, &gSariaWaitArmsToSideAnim, NULL, NULL, 0);
    this->action = DEMOSA_ACTION_UNKNOWN;
    this->drawConfig = DEMOSA_DRAW_OPA;
}

void DemoSa_Action_Unknown(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
}

void DemoSa_InitCredits(DemoSa* this, PlayState* play) {
    SkelAnime_InitFlex(play, &this->skelAnime, &gSariaSkel, &gSariaSitting3Anim, NULL, NULL, 0);
    this->action = DEMOSA_ACTION_CREDITS_INVISIBLE;
    this->drawConfig = DEMOSA_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void DemoSa_Credits_FadeIn(DemoSa* this) {
    s32 alpha = 255;
    f32* fadeTimer = &this->fadeTimer;
    f32 fadeDuration;

    *fadeTimer += 1.0f;
    fadeDuration = kREG(17) + 10.0f;

    if (fadeDuration <= *fadeTimer) {
        this->actor.shape.shadowAlpha = this->alpha = alpha;
    } else {
        this->actor.shape.shadowAlpha = this->alpha = (*fadeTimer / fadeDuration) * 255.0f;
    }
}

void DemoSa_Credits_InitPosition(DemoSa* this, PlayState* play) {
    DemoSa_SetStartPosRotFromCue(this, play, 4);
    this->action = DEMOSA_ACTION_CREDITS_FADE_IN;
    this->drawConfig = DEMOSA_DRAW_XLU;
}

void DemoSa_Credits_CheckVisibility(DemoSa* this) {
    if (this->fadeTimer >= kREG(17) + 10.0f) {
        this->action = DEMOSA_ACTION_CREDITS_FACING_FORWARD;
        this->drawConfig = DEMOSA_DRAW_OPA;
    }
}

void DemoSa_Credits_LookDown(DemoSa* this) {
    DemoSa_AnimationChange(this, &gSariaSitting1Anim, 2, -8.0f, 0);
    this->action = DEMOSA_ACTION_CREDITS_LOOK_DOWN;
}

void DemoSa_Credits_LookUp(DemoSa* this) {
    DemoSa_AnimationChange(this, &gSariaSitting2Anim, 2, 0.0f, 0);
    this->action = DEMOSA_ACTION_CREDITS_LOOK_UP;
}

void DemoSa_Credits_LookForward(DemoSa* this, s32 isHeadUp) {
    if (isHeadUp) {
        DemoSa_AnimationChange(this, &gSariaSitting3Anim, 0, 0.0f, 0);
        this->action = DEMOSA_ACTION_CREDITS_FACING_FORWARD;
    }
}

void DemoSa_Credits_NextAction(DemoSa* this, PlayState* play) {
    s32 currentCueId;
    s32 nextCueId;
    CsCmdActorCue* cue = DemoSa_GetCue(play, 4);

    if (cue != NULL) {
        nextCueId = cue->id;
        currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 7:
                    DemoSa_Credits_InitPosition(this, play);
                    break;
                case 8:
                    DemoSa_Credits_LookDown(this);
                    break;
                case 9:
                    DemoSa_Credits_LookUp(this);
                    break;
                default:
                    PRINTF(T("Demo_Sa_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n",
                             "Demo_Sa_inEnding_Check_DemoMode: There is no such action!!!!!!!!\n"));
            }
            this->cueId = nextCueId;
        }
    }
}

void DemoSa_Action_CreditsInvisible(DemoSa* this, PlayState* play) {
    DemoSa_Credits_NextAction(this, play);
}

void DemoSa_Action_CreditsFadeIn(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
    DemoSa_Credits_FadeIn(this);
    DemoSa_Credits_CheckVisibility(this);
}

void DemoSa_Action_CreditsFacingForward(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
    DemoSa_Credits_NextAction(this, play);
}

void DemoSa_Action_CreditsLookDownAtDarunia(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
    DemoSa_Credits_NextAction(this, play);
}

void DemoSa_Action_CreditsLookBackUp(DemoSa* this, PlayState* play) {
    s32 doneAnimation;

    DemoSa_UpdateBgCheckInfo(this, play);
    doneAnimation = DemoSa_UpdateSkelAnime(this);
    DemoSa_Blink(this);
    DemoSa_Credits_LookForward(this, doneAnimation);
}

void DemoSa_InitBridge(DemoSa* this, PlayState* play) {
    Vec3f* thisPos = &this->actor.world.pos;

    SkelAnime_InitFlex(play, &this->skelAnime, &gSariaSkel, &gSariaWaitOnBridgeAnim, NULL, NULL, 0);
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, thisPos->x, thisPos->y, thisPos->z, 0, 0, 0,
                       FAIRY_KOKIRI);
    this->action = DEMOSA_ACTION_BRIDGE_INVISIBLE;
    this->drawConfig = DEMOSA_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
    DemoSa_SetEyes(this, SARIA_EYE_SAD);
    DemoSa_SetMouth(this, SARIA_MOUTH_CLOSED);
}

void DemoSa_CsBridge_Fade(DemoSa* this) {
    s32 alpha = 255;
    f32* fadeTimer = &this->fadeTimer;
    f32 fadeDuration;

    *fadeTimer += 1.0f;
    fadeDuration = kREG(17) + 10.0f;

    if (fadeDuration <= *fadeTimer) {
        this->actor.shape.shadowAlpha = this->alpha = alpha;
    } else {
        this->actor.shape.shadowAlpha = this->alpha = (*fadeTimer / fadeDuration) * 255.0f;
    }
}

void DemoSa_CsBridge_StillHidden(DemoSa* this) {
    this->action = DEMOSA_ACTION_BRIDGE_INVISIBLE;
    this->drawConfig = DEMOSA_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void DemoSa_CsBridge_LookAtLink(DemoSa* this, PlayState* play) {
    if (this->cueId == 4) {
        DemoSa_SetStartPosRotFromCue(this, play, 1);
        this->action = DEMOSA_ACTION_BRIDGE_FADE_IN;
        this->drawConfig = DEMOSA_DRAW_XLU;
        this->isHoldingOcarina = false;
        this->actor.shape.shadowAlpha = 0;
    } else {
        DemoSa_AnimationChange(this, &gSariaWaitOnBridgeAnim, 0, 0.0f, 0);
        this->action = DEMOSA_ACTION_BRIDGE_LOOKING_SAD;
        this->drawConfig = DEMOSA_DRAW_OPA;
        this->isHoldingOcarina = false;
        this->actor.shape.shadowAlpha = 0xFF;
    }
    DemoSa_SetEyes(this, SARIA_EYE_SAD);
}

void DemoSa_CsBridge_CheckFadeFinished(DemoSa* this) {
    if (this->fadeTimer >= kREG(17) + 10.0f) {
        this->action = DEMOSA_ACTION_BRIDGE_LOOKING_SAD;
        this->drawConfig = DEMOSA_DRAW_OPA;
        this->isHoldingOcarina = false;
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void DemoSa_CsBridge_ClutchOcarina(DemoSa* this) {
    DemoSa_AnimationChange(this, &gSariaHoldOcarinaAnim, 0, 0.0f, 0);
    this->action = DEMOSA_ACTION_BRIDGE_CLUTCH_OCARINA;
    this->drawConfig = DEMOSA_DRAW_OPA;
    this->isHoldingOcarina = true;
    this->actor.shape.shadowAlpha = 0xFF;
    DemoSa_SetEyes(this, SARIA_EYE_CLOSED);
}

void DemoSa_CsBridge_GiveOcarina(DemoSa* this) {
    DemoSa_AnimationChange(this, &gSariaGiveLinkOcarinaAnim, 2, -8.0f, 0);
    this->action = DEMOSA_ACTION_BRIDGE_GIVE_OCARINA;
    this->drawConfig = DEMOSA_DRAW_OPA;
    this->isHoldingOcarina = true;
    this->actor.shape.shadowAlpha = 0xFF;
}

void DemoSa_CsBridge_HoldOutOcarina(DemoSa* this, s32 animFinished) {
    if (animFinished) {
        DemoSa_AnimationChange(this, &gSariaHoldOutOcarinaAnim, 0, 0, 0);
    }
}

void DemoSa_CsBridge_CheckNextAction(DemoSa* this, PlayState* play) {
    s32 currentCueId;
    s32 nextCueId;
    CsCmdActorCue* cue = DemoSa_GetCue(play, 1);

    if (cue != NULL) {
        nextCueId = cue->id;
        currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 4:
                    DemoSa_CsBridge_StillHidden(this);
                    break;
                case 12:
                    DemoSa_CsBridge_LookAtLink(this, play);
                    break;
                case 13:
                    DemoSa_CsBridge_ClutchOcarina(this);
                    break;
                case 14:
                    DemoSa_CsBridge_GiveOcarina(this);
                    break;
                default:
                    PRINTF(T("Demo_Sa_inPresent_Check_DemoMode:そんな動作は無い!!!!!!!!\n",
                             "Demo_Sa_inPresent_Check_DemoMode: There is no such action!!!!!!!!\n"));
            }
            this->cueId = nextCueId;
        }
    }
}

void DemoSa_Action_BridgeInvisible(DemoSa* this, PlayState* play) {
    DemoSa_CsBridge_CheckNextAction(this, play);
}

void DemoSa_Action_AppearOnBridge(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsBridge_Fade(this);
    DemoSa_CsBridge_CheckFadeFinished(this);
}

void DemoSa_Action_SadToSeeLinkLeaving(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsBridge_CheckNextAction(this, play);
}

void DemoSa_Action_ClutchingOcarina(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_UpdateSkelAnime(this);
    DemoSa_CsBridge_CheckNextAction(this, play);
}

void DemoSa_Action_GivingOcarina(DemoSa* this, PlayState* play) {
    DemoSa_UpdateBgCheckInfo(this, play);
    DemoSa_CsBridge_HoldOutOcarina(this, DemoSa_UpdateSkelAnime(this));
    DemoSa_CsBridge_CheckNextAction(this, play);
}

void DemoSa_Update(Actor* thisx, PlayState* play) {
    DemoSa* this = (DemoSa*)thisx;

    if (this->action < 0 || this->action >= 21 || sActionFuncs[this->action] == NULL) {
        PRINTF(VT_FGCOL(RED) T("メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n",
                               "The main mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!\n") VT_RST);
        return;
    }
    sActionFuncs[this->action](this, play);
}

void DemoSa_Init(Actor* thisx, PlayState* play) {
    DemoSa* this = (DemoSa*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);

    switch (this->actor.params) {
        case 2:
            DemoSa_InitBarrier(this, play);
            break;
        case 3:
            DemoSa_InitUnknown(this, play);
            break;
        case 4:
            DemoSa_InitCredits(this, play);
            break;
        case 5:
            DemoSa_InitBridge(this, play);
            break;
        default:
            DemoSa_InitChamberOfSages(this, play);
    }
}

s32 DemoSa_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    DemoSa* this = (DemoSa*)thisx;

    if ((limbIndex == 15) && (this->isHoldingOcarina)) {
        *dList = gSariaRightHandAndOcarinaDL;
    }
    return false;
}

void DemoSa_DrawNothing(DemoSa* this, PlayState* play) {
}

void DemoSa_DrawOpa(DemoSa* this, PlayState* play) {
    s32 pad[2];
    s16 eyeIndex = this->eyeIndex;
    void* eyeTex = sEyeTextures[eyeIndex];
    s32 pad2;
    s16 mouthIndex = this->mouthIndex;
    void* mouthTex = sMouthTextures[mouthIndex];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_sa.c", 602);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTex));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTex));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(mouthTex));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          DemoSa_OverrideLimbDraw, NULL, &this->actor);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_sa.c", 626);
}

void DemoSa_Draw(Actor* thisx, PlayState* play) {
    DemoSa* this = (DemoSa*)thisx;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        PRINTF(VT_FGCOL(RED) T("描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n",
                               "The drawing mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!\n") VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, play);
}
