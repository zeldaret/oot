/*
 * File: z_en_ru2.c
 * Overlay: En_Ru2
 * Description: Adult Ruto
 */

#include "z_en_ru2.h"
#include "assets/objects/object_ru2/object_ru2.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

void EnRu2_Init(Actor* thisx, PlayState* play);
void EnRu2_Destroy(Actor* thisx, PlayState* play);
void EnRu2_Update(Actor* thisx, PlayState* play);
void EnRu2_Draw(Actor* thisx, PlayState* play);

void EnRu2_Action00(EnRu2* this, PlayState* play);
void EnRu2_Action01(EnRu2* this, PlayState* play);
void EnRu2_Action02(EnRu2* this, PlayState* play);
void EnRu2_Action03(EnRu2* this, PlayState* play);
void EnRu2_Action04(EnRu2* this, PlayState* play);
void EnRu2_Action05(EnRu2* this, PlayState* play);
void EnRu2_Action06(EnRu2* this, PlayState* play);
void EnRu2_Action07(EnRu2* this, PlayState* play);
void EnRu2_Action08(EnRu2* this, PlayState* play);
void EnRu2_Action09(EnRu2* this, PlayState* play);
void EnRu2_Action10(EnRu2* this, PlayState* play);
void EnRu2_Action11(EnRu2* this, PlayState* play);
void EnRu2_Action12(EnRu2* this, PlayState* play);
void EnRu2_Action13(EnRu2* this, PlayState* play);
void EnRu2_Action14(EnRu2* this, PlayState* play);
void EnRu2_Action15(EnRu2* this, PlayState* play);
void EnRu2_Action16(EnRu2* this, PlayState* play);
void EnRu2_Action17(EnRu2* this, PlayState* play);
void EnRu2_Action18(EnRu2* this, PlayState* play);
void EnRu2_Action19(EnRu2* this, PlayState* play);

void EnRu2_DrawNothing(EnRu2* this, PlayState* play);
void EnRu2_DrawSkelAnimeOpa(EnRu2* this, PlayState* play);
void EnRu2_DrawSkelAnimeFlex(EnRu2* this, PlayState* play);

void EnRu2_SetupWaterMedallionCutscene(EnRu2* this, PlayState* play);

typedef enum {
    /* 00 */ ENRU2_SETUP_WATER_MEDALLION_CS,
    /* 01 */ ENRU2_AWAIT_BLUE_WARP,
    /* 02 */ ENRU2_RISE_UP_THROUGH_BLUE_WARP,
    /* 03 */ ENRU2_SAGE_OF_WATER_DIALOG,
    /* 04 */ ENRU2_RAISE_ARMS,
    /* 05 */ ENRU2_AWAIT_SPAWN_WATER_MEDALLION,
    /* 06 */ ENRU2_FINISH_WATER_MEDALLION_CS,
    /* 07 */ ENRU2_CROSSING_ARMS_INVISIBLE,
    /* 08 */ ENRU2_CROSSING_ARMS_FADE,
    /* 09 */ ENRU2_AWAIT_SPAWN_LIGHT_BALL,
    /* 10 */ ENRU2_CREDITS_INVISIBLE,
    /* 11 */ ENRU2_CREDITS_FADE_IN,
    /* 12 */ ENRU2_CREDITS_VISIBLE,
    /* 13 */ ENRU2_CREDITS_TURN_HEAD_DOWN_LEFT,
    /* 14 */ ENRU2_WATER_TEMPLE_ENCOUNTER_RANGE_CHECK,
    /* 15 */ ENRU2_WATER_TEMPLE_ENCOUNTER_UNCONDITIONAL, // unused
    /* 16 */ ENRU2_WATER_TEMPLE_ENCOUNTER_BEGIN,
    /* 17 */ ENRU2_WATER_TEMPLE_ENCOUNTER_DIALOG,
    /* 18 */ ENRU2_WATER_TEMPLE_ENCOUNTER_END,
    /* 19 */ ENRU2_WATER_TEMPLE_SWIMMING_UP,
} EnRu2Action;

typedef enum {
    /* 00 */ ENRU2_DRAW_NOTHING,
    /* 01 */ ENRU2_DRAW_SKELETON_OPA,
    /* 02 */ ENRU2_DRAW_SKELETON_FLEXIBLE,
} EnRu2DrawConfig;

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000080, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 30, 100, 0, { 0 } },
};

static void* sEyeTextures[] = {
    gAdultRutoEyeOpenTex,
    gAdultRutoEyeHalfTex,
    gAdultRutoEyeClosedTex,
};

#if OOT_DEBUG
static UNK_TYPE D_80AF4118 = 0;
#endif

#include "z_en_ru2_cutscene_data.inc.c"

static EnRu2ActionFunc sActionFuncs[] = {
    EnRu2_Action00, EnRu2_Action01, EnRu2_Action02, EnRu2_Action03, EnRu2_Action04, EnRu2_Action05, EnRu2_Action06,
    EnRu2_Action07, EnRu2_Action08, EnRu2_Action09, EnRu2_Action10, EnRu2_Action11, EnRu2_Action12, EnRu2_Action13,
    EnRu2_Action14, EnRu2_Action15, EnRu2_Action16, EnRu2_Action17, EnRu2_Action18, EnRu2_Action19,
};

static EnRu2DrawFunc sDrawFuncs[] = {
    EnRu2_DrawNothing,
    EnRu2_DrawSkelAnimeOpa,
    EnRu2_DrawSkelAnimeFlex,
};

ActorProfile En_Ru2_Profile = {
    /**/ ACTOR_EN_RU2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_RU2,
    /**/ sizeof(EnRu2),
    /**/ EnRu2_Init,
    /**/ EnRu2_Destroy,
    /**/ EnRu2_Update,
    /**/ EnRu2_Draw,
};

void EnRu2_InitCollider(Actor* thisx, PlayState* play) {
    EnRu2* this = (EnRu2*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinderType1(play, &this->collider, &this->actor, &sCylinderInit);
}

void EnRu2_UpdateCollider(EnRu2* this, PlayState* play) {
    s32 pad[5];

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnRu2_Destroy(Actor* thisx, PlayState* play) {
    EnRu2* this = (EnRu2*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnRu2_UpdateEyeTextures(EnRu2* this) {
    s32 pad[3];
    s16* eyeTextureFrame = &this->eyeTextureFrame;
    s16* eyeTextureIndex = &this->eyeTextureIndex;

    if (DECR(*eyeTextureFrame) == 0) {
        *eyeTextureFrame = Rand_S16Offset(0x3C, 0x3C);
    }

    *eyeTextureIndex = *eyeTextureFrame;
    if (*eyeTextureIndex >= 3) {
        *eyeTextureIndex = 0;
    }
}

s32 EnRu2_GetParamsHighByte(EnRu2* this) {
    s32 params_shift = PARAMS_GET_U(this->actor.params, 8, 8);

    return params_shift;
}

s32 EnRu2_GetParamsLowByte(EnRu2* this) {
    s32 params = PARAMS_GET_U(this->actor.params, 0, 8);

    return params;
}

#if OOT_DEBUG
void func_80AF26AC(EnRu2* this) {
    this->action = ENRU2_CROSSING_ARMS_INVISIBLE;
    this->drawConfig = ENRU2_DRAW_NOTHING;
    this->alpha = 0;
    this->isLightBall = 0;
    this->actor.shape.shadowAlpha = 0;
    this->fadeTimer = 0.0f;
}

void func_80AF26D0(EnRu2* this, PlayState* play) {
    s32 one; // Needed to match

    if (play->csCtx.state == CS_STATE_IDLE) {
        if (D_80AF4118 != 0) {
            if (this->actor.params == 2) {
                func_80AF26AC(this);
            }
            D_80AF4118 = 0;
            return;
        }
    } else {
        one = 1;
        if (D_80AF4118 == 0) {
            D_80AF4118 = one;
        }
    }
}
#endif

void EnRu2_UpdateBgCheckInfo(EnRu2* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_2);
}

s32 EnRu2_UpdateSkelAnime(EnRu2* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorCue* EnRu2_GetCue(PlayState* play, s32 cueChannel) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[cueChannel];

        return cue;
    }

    return NULL;
}

s32 EnRu2_CheckCueIs(EnRu2* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = EnRu2_GetCue(play, cueChannel);

    if ((cue != NULL) && (cue->id == cueId)) {
        return true;
    }
    return false;
}

s32 EnRu2_CheckCueIsNot(EnRu2* this, PlayState* play, u16 cueId, s32 cueChannel) {
    CsCmdActorCue* cue = EnRu2_GetCue(play, cueChannel);

    if ((cue != NULL) && (cue->id != cueId)) {
        return true;
    }
    return false;
}

/* Checks cutscene data and, if applicable, configures Ruto's position accordingly. */
void EnRu2_InitPositionFromCue(EnRu2* this, PlayState* play, u32 cueChannel) {
    CsCmdActorCue* cue = EnRu2_GetCue(play, cueChannel);
    Actor* thisx = &this->actor;

    if (cue != NULL) {
        thisx->world.pos.x = cue->startPos.x;
        thisx->world.pos.y = cue->startPos.y;
        thisx->world.pos.z = cue->startPos.z;

        thisx->world.rot.y = thisx->shape.rot.y = cue->rot.y;
    }
}

/* Changes the animation for Ruto's actor. The direction argument decides whether to play the animation
   forwards (if 0) or backwards (otherwise). */
void EnRu2_AnimationChange(EnRu2* this, AnimationHeader* animation, u8 arg2, f32 morphFrames, s32 arg4) {
    f32 frameCount = Animation_GetLastFrame(animation);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, morphFrames);
}

/* Gradually increases Ruto's Y-coordinate as she rises up through the blue warp in the Chamber of Sages.*/
void EnRu2_Rise(EnRu2* this, PlayState* play) {
    this->actor.shape.yOffset += 250.0f / 3.0f;
}

/* Sets up Ruto's actor in the Chamber of Sages. Note: this gets called every time the Chamber of Sages
   is loaded, regardless of story progress (or which Temple you just finished). */
void EnRu2_InitChamberOfSages(EnRu2* this, PlayState* play) {
    EnRu2_AnimationChange(this, &gAdultRutoIdleAnim, 0, 0.0f, 0);
    this->actor.shape.yOffset = -10000.0f;
}

/* Spawns the blue warp for Ruto to rise up through in the Chamber of Sages. */
void EnRu2_SpawnBlueWarp(EnRu2* this, PlayState* play) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->world.pos.x;
    f32 posY = thisx->world.pos.y;
    f32 posZ = thisx->world.pos.z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, WARP_SAGES);
}

/* Spawns the Water Medallion. */
void EnRu2_SpawnWaterMedallion(EnRu2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 posX = player->actor.world.pos.x;
    f32 posY = player->actor.world.pos.y + 50.0f;
    f32 posZ = player->actor.world.pos.z;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0, 10);
    // Give Link the Water Medallion for a second time, LOL (see below)
    Item_Give(play, ITEM_MEDALLION_WATER);
}

/* Occurs in the Chamber of Sages (regardless of which medallion you've earned). Sets up the cutscene data for
   Ruto to give Link the Water Medallion, but this only happens if she should do so. Otherwise, this function
   does nothing except loop endlessly until Link leaves the Chamber of Sages. */
void EnRu2_SetupWaterMedallionCutscene(EnRu2* this, PlayState* play) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if ((gSaveContext.chamberCutsceneNum == CHAMBER_CS_WATER) && !IS_CUTSCENE_LAYER) {
        player = GET_PLAYER(play);
        this->action = ENRU2_AWAIT_BLUE_WARP;
        play->csCtx.script = D_80AF411C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(play, ITEM_MEDALLION_WATER);
        temp = this->actor.world.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.world.rot.y = temp;
    }
}

/* Checks to see if the blue warp should be spawned for Ruto to rise up through. */
void EnRu2_CheckBlueWarp(EnRu2* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;
    CsCmdActorCue* cue;

    if (csCtx->state != CS_STATE_IDLE) {
        cue = csCtx->actorCues[3];

        if ((cue != NULL) && (cue->id == 2)) {
            this->action = ENRU2_RISE_UP_THROUGH_BLUE_WARP;
            this->drawConfig = ENRU2_DRAW_SKELETON_OPA;
            EnRu2_SpawnBlueWarp(this, play);
        }
    }
}

/* Halts Ruto's rise up through the blue warp in the Chamber of Sages once finished. */
void EnRu2_EndRise(EnRu2* this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->action = ENRU2_SAGE_OF_WATER_DIALOG;
        this->actor.shape.yOffset = 0.0f;
    }
}

/* Sets up the animation for Ruto to raise her arms to give Link the Water Medallion. */
void EnRu2_RaiseArms(EnRu2* this, PlayState* play) {
    AnimationHeader* animation = &gAdultRutoRaisingArmsUpAnim;
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[3];

        if ((cue != NULL) && (cue->id == 3)) {
            Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_ONCE,
                             0.0f);
            this->action = ENRU2_RAISE_ARMS;
        }
    }
}

/* At the end of Ruto's arms-raising animation, cues the next action: spawning the
   Water Medallion. */
void EnRu2_HoldArmsUp(EnRu2* this, s32 shouldHold) {
    if (shouldHold != 0) {
        this->action = ENRU2_AWAIT_SPAWN_WATER_MEDALLION;
    }
}

/* Checks to see if the Water Medallion should spawn. */
void EnRu2_CheckWaterMedallion(EnRu2* this, PlayState* play) {
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[6];

        if ((cue != NULL) && (cue->id == 2)) {
            this->action = ENRU2_FINISH_WATER_MEDALLION_CS;
            EnRu2_SpawnWaterMedallion(this, play);
        }
    }
}

void EnRu2_Action00(EnRu2* this, PlayState* play) {
    EnRu2_SetupWaterMedallionCutscene(this, play);
}

void EnRu2_Action01(EnRu2* this, PlayState* play) {
    EnRu2_CheckBlueWarp(this, play);
}

void EnRu2_Action02(EnRu2* this, PlayState* play) {
    EnRu2_Rise(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_EndRise(this);
}

void EnRu2_Action03(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_RaiseArms(this, play);
}

void EnRu2_Action04(EnRu2* this, PlayState* play) {
    s32 shouldHold;

    EnRu2_UpdateBgCheckInfo(this, play);
    shouldHold = EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_HoldArmsUp(this, shouldHold);
}

void EnRu2_Action05(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_CheckWaterMedallion(this, play);
}

void EnRu2_Action06(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
}

/* Sets up Ruto in her arms-crossing pose. Used in the Water Trial in Ganon's Castle and in the
   Chamber of Sages during the "Sealing Ganon" cutscene. */
void EnRu2_InitCrossingArms(EnRu2* this, PlayState* play) {
    EnRu2_AnimationChange(this, &gAdultRutoCrossingArmsAnim, 2, 0.0f, 0);
    this->action = ENRU2_CROSSING_ARMS_INVISIBLE;
    this->actor.shape.shadowAlpha = 0;
}

void EnRu2_PlayWhiteOutSound(void) {
    Sfx_PlaySfxCentered2(NA_SE_SY_WHITE_OUT_T);
}

/* Spawns the ball of light that replaces Ruto's actor in the Water Trial. */
void EnRu2_SpawnLightBall(EnRu2* this, PlayState* play) {
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_6K, this->actor.world.pos.x,
                       kREG(19) + 24.0f + this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 8);
}

/* Checks to see if it's time for Ruto to fade in while crossing her arms. */
void EnRu2_CheckFadeIn(EnRu2* this, PlayState* play) {
    if (EnRu2_CheckCueIs(this, play, 4, 3)) {
        this->action = ENRU2_CROSSING_ARMS_FADE;
        this->drawConfig = ENRU2_DRAW_SKELETON_FLEXIBLE;
        this->alpha = 0;
        this->actor.shape.shadowAlpha = 0;
        this->fadeTimer = 0.0f;
        EnRu2_PlayWhiteOutSound();
    }
}

/* Fades Ruto's actor in or out. Both happen during the Water Trial. */
void EnRu2_Fade(EnRu2* this, PlayState* play) {
    f32* fadeTimer = &this->fadeTimer;
    s32 alpha;

    if (EnRu2_CheckCueIs(this, play, 4, 3)) {
        *fadeTimer += 1.0f;
        if (*fadeTimer >= kREG(5) + 10.0f) {
            this->action = ENRU2_AWAIT_SPAWN_LIGHT_BALL;
            this->drawConfig = ENRU2_DRAW_SKELETON_OPA;
            *fadeTimer = kREG(5) + 10.0f;
            this->alpha = 255;
            this->actor.shape.shadowAlpha = 0xFF;
            return;
        }
    } else {
        *fadeTimer -= 1.0f;
        if (*fadeTimer <= 0.0f) {
            this->action = ENRU2_CROSSING_ARMS_INVISIBLE;
            this->drawConfig = ENRU2_DRAW_NOTHING;
            *fadeTimer = 0.0f;
            this->alpha = 0;
            this->actor.shape.shadowAlpha = 0;
            return;
        }
    }
    alpha = (*fadeTimer / (kREG(5) + 10.0f)) * 255.0f;
    this->alpha = alpha;
    this->actor.shape.shadowAlpha = alpha;
}

/* Checks to see if it's time for Ruto to fade out while her arms are crossed. */
void EnRu2_CheckFadeOut(EnRu2* this, PlayState* play) {
    if (EnRu2_CheckCueIsNot(this, play, 4, 3)) {
        this->action = ENRU2_CROSSING_ARMS_FADE;
        this->drawConfig = ENRU2_DRAW_SKELETON_FLEXIBLE;
        this->fadeTimer = kREG(5) + 10.0f;
        this->alpha = 255;
        if (this->isLightBall == 0) {
            EnRu2_SpawnLightBall(this, play);
            this->isLightBall = 1;
        }
        this->actor.shape.shadowAlpha = 0xFF;
    }
}

void EnRu2_Action07(EnRu2* this, PlayState* play) {
    EnRu2_CheckFadeIn(this, play);
#if OOT_DEBUG
    func_80AF26D0(this, play);
#endif
}

void EnRu2_Action08(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_Fade(this, play);
#if OOT_DEBUG
    func_80AF26D0(this, play);
#endif
}

void EnRu2_Action09(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_CheckFadeOut(this, play);
#if OOT_DEBUG
    func_80AF26D0(this, play);
#endif
}

void EnRu2_DrawSkelAnimeFlex(EnRu2* this, PlayState* play) {
    s32 pad[2];
    s16 temp = this->eyeTextureIndex;
    void* tex = sEyeTextures[temp];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 264);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(tex));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(tex));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
    gSPSegment(POLY_XLU_DISP++, 0x0C, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL,
                                       NULL, NULL, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 291);
}

/* Sets up Ruto's hands-on-hips pose during the credits sequence. */
void EnRu2_InitCredits(EnRu2* this, PlayState* play) {
    EnRu2_AnimationChange(this, &gAdultRutoIdleHandsOnHipsAnim, 0, 0.0f, 0);
    this->action = ENRU2_CREDITS_INVISIBLE;
    this->drawConfig = ENRU2_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

/* Fades in Ruto's actor during the credits sequence. */
void EnRu2_FadeInCredits(EnRu2* this) {
    f32* fadeTimer = &this->fadeTimer;
    f32 temp_f0;
    s32 temp_f18;

    *fadeTimer += 1.0f;

    temp_f0 = kREG(17) + 10.0f;
    if (temp_f0 <= *fadeTimer) {
        this->alpha = 255;
        this->actor.shape.shadowAlpha = 0xFF;
    } else {
        temp_f18 = (*fadeTimer / temp_f0) * 255.0f;
        this->alpha = temp_f18;
        this->actor.shape.shadowAlpha = temp_f18;
    }
}

void EnRu2_InitCreditsPosition(EnRu2* this, PlayState* play) {
    EnRu2_InitPositionFromCue(this, play, 3);
    this->action = ENRU2_CREDITS_FADE_IN;
    this->drawConfig = ENRU2_DRAW_SKELETON_FLEXIBLE;
}

/* Checks if Ruto's actor is fully faded in during the credits sequence, and if so, proceeds to action 12. */
void EnRu2_CheckVisibleInCredits(EnRu2* this) {
    if (this->fadeTimer >= kREG(17) + 10.0f) {
        this->action = ENRU2_CREDITS_VISIBLE;
        this->drawConfig = ENRU2_DRAW_SKELETON_OPA;
    }
}

/* Starts Ruto's animation to look down towards Nabooru during the credits sequence. */
void EnRu2_TurnHeadDownLeft(EnRu2* this) {
    EnRu2_AnimationChange(this, &gAdultRutoHeadTurnDownLeftAnim, 2, 0.0f, 0);
    this->action = ENRU2_CREDITS_TURN_HEAD_DOWN_LEFT;
}

/* Holds Ruto's pose looking down towards Nabooru during the credits sequence. */
void EnRu2_LookingDownLeft(EnRu2* this, s32 lookingDownLeft) {
    if (lookingDownLeft != 0) {
        EnRu2_AnimationChange(this, &gAdultRutoLookingDownLeftAnim, 0, 0.0f, 0);
    }
}

/* Advances Ruto's actions in two different places. */
void EnRu2_NextCreditsAction(EnRu2* this, PlayState* play) {
    CsCmdActorCue* cue = EnRu2_GetCue(play, 3);
    s32 nextCueId;
    s32 currentCueId;

    if (cue != NULL) {
        nextCueId = cue->id;
        currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 7:
                    EnRu2_InitCreditsPosition(this, play);
                    break;
                case 8:
                    EnRu2_TurnHeadDownLeft(this);
                    break;
                default:
                    // "There is no such action!"
                    PRINTF("En_Ru2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->cueId = nextCueId;
        }
    }
}

void EnRu2_Action10(EnRu2* this, PlayState* play) {
    EnRu2_NextCreditsAction(this, play);
}

void EnRu2_Action11(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_FadeInCredits(this);
    EnRu2_CheckVisibleInCredits(this);
}

void EnRu2_Action12(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_NextCreditsAction(this, play);
}

void EnRu2_Action13(EnRu2* this, PlayState* play) {
    s32 lookingDownLeft;

    EnRu2_UpdateBgCheckInfo(this, play);
    lookingDownLeft = EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    EnRu2_LookingDownLeft(this, lookingDownLeft);
}

/* Sets the switch indicating that Link met Ruto in the Water Temple. */
void EnRu2_MarkEncounterOccurred(EnRu2* this, PlayState* play) {
    Flags_SetSwitch(play, EnRu2_GetParamsHighByte(this));
}

/* Returns whether Link met Ruto in the Water Temple. */
s32 EnRu2_EncounterOccurred(EnRu2* this, PlayState* play) {
    return Flags_GetSwitch(play, EnRu2_GetParamsHighByte(this));
}

/* Initializes Ruto's actor in the Water Temple, or destroys it if the encounter already happened. */
void EnRu2_InitWaterTempleEncounter(EnRu2* this, PlayState* play) {
    if (EnRu2_EncounterOccurred(this, play)) {
        Actor_Kill(&this->actor);
    } else {
        EnRu2_AnimationChange(this, &gAdultRutoIdleAnim, 0, 0.0f, 0);
        this->action = ENRU2_WATER_TEMPLE_ENCOUNTER_RANGE_CHECK;
        this->drawConfig = ENRU2_DRAW_SKELETON_OPA;
    }
}

void EnRu2_PlayFanfare(void) {
    Audio_PlayFanfare(NA_BGM_APPEAR);
}

/* Accelerates Ruto's actor upwards as she swims. */
void EnRu2_AccelerateUp(EnRu2* this) {
    f32 funcFloat;

    this->swimmingUpFrame++;
    funcFloat = Environment_LerpWeightAccelDecel((kREG(2) + 0x96) & 0xFFFF, 0, this->swimmingUpFrame, 8, 0);
    this->actor.world.pos.y = this->actor.home.pos.y + (300.0f * funcFloat);
}

s32 EnRu2_IsPlayerInRange(EnRu2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 thisPosX = this->actor.world.pos.x;
    f32 playerPosX = player->actor.world.pos.x;

    if (playerPosX - thisPosX >= -202.0f) {
        return 1;
    }
    return 0;
}

/* Checks if Link is close enough to Ruto and conditionally triggers the encounter cutscene in the Water Temple. */
void EnRu2_TriggerEncounterInRange(EnRu2* this, PlayState* play) {
    if (EnRu2_IsPlayerInRange(this, play) && !Play_InCsMode(play)) {
        this->action = ENRU2_WATER_TEMPLE_ENCOUNTER_BEGIN;
        OnePointCutscene_Init(play, 3130, -99, &this->actor, CAM_ID_MAIN);
    }
}

/* Triggers the encounter cutscene in the Water Temple, unconditionally. Appears to be unused. */
void EnRu2_TriggerEncounter(EnRu2* this, PlayState* play) {
    this->action = ENRU2_WATER_TEMPLE_ENCOUNTER_BEGIN;
    OnePointCutscene_Init(play, 3130, -99, &this->actor, CAM_ID_MAIN);
}

/* Handles the starting moments of Ruto's encounter with Link at the Water Temple. Responds to a running timer to
   initiate, on cue, both the fanfare and Ruto's dialogue. */
void EnRu2_BeginEncounter(EnRu2* this, PlayState* play) {
    f32* encounterTimer = &this->encounterTimer;

    *encounterTimer += 1.0f;
    if (*encounterTimer == kREG(6) + 40.0f) {
        EnRu2_PlayFanfare();
    } else if (*encounterTimer > kREG(4) + 50.0f) {
        this->actor.textId = 0x403E;
        Message_StartTextbox(play, this->actor.textId, NULL);
        this->action = ENRU2_WATER_TEMPLE_ENCOUNTER_DIALOG;
    }
}

void EnRu2_DialogCameraHandler(EnRu2* this, PlayState* play) {
    s32 pad;
    MessageContext* msgCtx;
    s32 pad2;
    u8 dialogState;
    Player* player;
    s32 pad3;

    msgCtx = &play->msgCtx;
    dialogState = Message_GetState(msgCtx);

    if (dialogState == TEXT_STATE_DONE_FADING) {
        if (this->lastDialogState != TEXT_STATE_DONE_FADING) {
            // "I'm Komatsu!" (cinema scene dev)
            PRINTF("おれが小松だ！ \n");
            this->messageIndex++;
            if (this->messageIndex % 6 == 3) {
                player = GET_PLAYER(play);
                // "uorya-!" (screeming sound)
                PRINTF("うおりゃー！ \n");
                Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
                player->actor.world.pos.x = 820.0f;
                player->actor.world.pos.y = 0.0f;
                player->actor.world.pos.z = 180.0f;
            }
        }
    }

    this->lastDialogState = dialogState;
    if (Message_GetState(msgCtx) == TEXT_STATE_CLOSING) {
        this->action = ENRU2_WATER_TEMPLE_ENCOUNTER_END;
        Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
    }
}

void EnRu2_StartSwimmingUp(EnRu2* this, PlayState* play) {
    this->encounterTimer += 1.0f;
    if (this->encounterTimer > kREG(5) + 100.0f) {
        EnRu2_AnimationChange(this, &gAdultRutoSwimmingUpAnim, 0, -12.0f, 0);
        this->action = ENRU2_WATER_TEMPLE_SWIMMING_UP;
        EnRu2_MarkEncounterOccurred(this, play);
    }
}

void EnRu2_EndSwimmingUp(EnRu2* this, PlayState* play) {
    if (this->swimmingUpFrame > ((((u16)(kREG(3) + 0x28)) + ((u16)(kREG(2) + 0x96))) & 0xFFFF)) {
        Actor_Kill(&this->actor);
    }
}

void EnRu2_Action14(EnRu2* this, PlayState* play) {
    EnRu2_TriggerEncounterInRange(this, play);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_UpdateCollider(this, play);
}

void EnRu2_Action15(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateCollider(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_TriggerEncounter(this, play);
}

void EnRu2_Action16(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_BeginEncounter(this, play);
}

void EnRu2_Action17(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_DialogCameraHandler(this, play);
}

void EnRu2_Action18(EnRu2* this, PlayState* play) {
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_StartSwimmingUp(this, play);
}

void EnRu2_Action19(EnRu2* this, PlayState* play) {
    EnRu2_AccelerateUp(this);
    EnRu2_UpdateBgCheckInfo(this, play);
    EnRu2_UpdateSkelAnime(this);
    EnRu2_UpdateEyeTextures(this);
    Actor_SetFocus(&this->actor, 50.0f);
    EnRu2_EndSwimmingUp(this, play);
}

void EnRu2_Update(Actor* thisx, PlayState* play) {
    EnRu2* this = (EnRu2*)thisx;

    if ((this->action < 0) || (this->action >= ARRAY_COUNT(sActionFuncs)) || (sActionFuncs[this->action] == NULL)) {
        // "Main Mode is improper!"
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, play);
}

void EnRu2_Init(Actor* thisx, PlayState* play) {
    EnRu2* this = (EnRu2*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    EnRu2_InitCollider(thisx, play);
    SkelAnime_InitFlex(play, &this->skelAnime, &gAdultRutoSkel, NULL, this->jointTable, this->morphTable, 23);

    switch (EnRu2_GetParamsLowByte(this)) {
        case 2:
            EnRu2_InitCrossingArms(this, play);
            break;
        case 3:
            EnRu2_InitCredits(this, play);
            break;
        case 4:
            EnRu2_InitWaterTempleEncounter(this, play);
            break;
        default:
            EnRu2_InitChamberOfSages(this, play);
            break;
    }

    this->messageIndex = 0;
    this->lastDialogState = TEXT_STATE_DONE_FADING;
}

void EnRu2_DrawNothing(EnRu2* this, PlayState* play) {
}

void EnRu2_DrawSkelAnimeOpa(EnRu2* this, PlayState* play) {
    s32 pad[2];
    s16 temp = this->eyeTextureIndex;
    void* tex = sEyeTextures[temp];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ru2.c", 642);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(tex));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(tex));
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ru2.c", 663);
}

void EnRu2_Draw(Actor* thisx, PlayState* play) {
    EnRu2* this = (EnRu2*)thisx;

    if ((this->drawConfig < 0) || (this->drawConfig >= ARRAY_COUNT(sDrawFuncs)) ||
        (sDrawFuncs[this->drawConfig] == NULL)) {
        // "Draw Mode is improper!"
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, play);
}
