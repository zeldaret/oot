/*
 * File: z_en_okarina_effect.c
 * Overlay: ovl_En_Okarina_Effect
 * Description: Manages the storm created when playing Song of Storms
 */

#include "z_en_okarina_effect.h"
#include "terminal.h"
#include "versions.h"

#include "z64frame_advance.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void EnOkarinaEffect_Init(Actor* thisx, PlayState* play);
void EnOkarinaEffect_Destroy(Actor* thisx, PlayState* play);
void EnOkarinaEffect_Update(Actor* thisx, PlayState* play);

void EnOkarinaEffect_TriggerStorm(EnOkarinaEffect* this, PlayState* play);
void EnOkarinaEffect_ManageStorm(EnOkarinaEffect* this, PlayState* play);

ActorProfile En_Okarina_Effect_Profile = {
    /**/ ACTOR_EN_OKARINA_EFFECT,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnOkarinaEffect),
    /**/ EnOkarinaEffect_Init,
    /**/ EnOkarinaEffect_Destroy,
    /**/ EnOkarinaEffect_Update,
    /**/ NULL,
};

void EnOkarinaEffect_SetupAction(EnOkarinaEffect* this, EnOkarinaEffectActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnOkarinaEffect_Destroy(Actor* thisx, PlayState* play) {
    EnOkarinaEffect* this = (EnOkarinaEffect*)thisx;

    play->envCtx.precipitation[PRECIP_SOS_MAX] = 0;
#if OOT_VERSION < PAL_1_0
    if ((gWeatherMode == WEATHER_MODE_CLEAR) && (play->envCtx.stormRequest == STORM_REQUEST_START))
#else
    if ((gWeatherMode != WEATHER_MODE_RAIN) && (gWeatherMode != WEATHER_MODE_HEAVY_RAIN) &&
        (play->envCtx.stormRequest == STORM_REQUEST_START))
#endif
    {
        play->envCtx.stormRequest = STORM_REQUEST_STOP;
        Environment_StopStormNatureAmbience(play);
    }
    play->envCtx.lightningState = LIGHTNING_LAST;
}

void EnOkarinaEffect_Init(Actor* thisx, PlayState* play) {
    EnOkarinaEffect* this = (EnOkarinaEffect*)thisx;

    PRINTF("\n\n");
    // "Ocarina Storm Effect"
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ オカリナあらし効果ビカビカビカ〜 ☆☆☆☆☆ \n" VT_RST);
    PRINTF("\n\n");
    if (play->envCtx.precipitation[PRECIP_RAIN_CUR] != 0) {
        Actor_Kill(&this->actor);
    }
    EnOkarinaEffect_SetupAction(this, EnOkarinaEffect_TriggerStorm);
}

void EnOkarinaEffect_TriggerStorm(EnOkarinaEffect* this, PlayState* play) {
    this->timer = 400; // 20 seconds
    play->envCtx.precipitation[PRECIP_SOS_MAX] = 20;
    play->envCtx.stormRequest = STORM_REQUEST_START;
    if ((gWeatherMode != WEATHER_MODE_CLEAR) || play->envCtx.skyboxConfig != 0) {
        play->envCtx.stormState = STORM_STATE_ON;
    }
    play->envCtx.lightningState = LIGHTNING_ON;
    Environment_PlayStormNatureAmbience(play);
    EnOkarinaEffect_SetupAction(this, EnOkarinaEffect_ManageStorm);
}

void EnOkarinaEffect_ManageStorm(EnOkarinaEffect* this, PlayState* play) {
    CutsceneFlags_Unset(play, 5);

    if (((play->pauseCtx.state == PAUSE_STATE_OFF) && (play->gameOverCtx.state == GAMEOVER_INACTIVE) &&
         (play->msgCtx.msgLength == 0) && (!FrameAdvance_IsEnabled(play)) &&
         ((play->transitionMode == TRANS_MODE_OFF) || (gSaveContext.gameMode != GAMEMODE_NORMAL))) ||
        (this->timer >= 250)) {
        if ((play->envCtx.lightMode != LIGHT_MODE_TIME) || play->envCtx.lightConfig != 1) {
            this->timer--;
        }
        PRINTF("\nthis->timer=[%d]", this->timer);
        if (this->timer == 308) {
            PRINTF("\n\n\n豆よ のびろ 指定\n\n\n"); // "Let's grow some beans"
            CutsceneFlags_Set(play, 5);
        }
    }

    if (gInterruptSongOfStorms) {
        this->timer = 0;
    }

    if (this->timer == 0) {
        play->envCtx.precipitation[PRECIP_SOS_MAX] = 0;
        if (play->csCtx.state == CS_STATE_IDLE) {
            Environment_StopStormNatureAmbience(play);
        } else if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) == NA_BGM_NATURE_AMBIENCE) {
            Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_1, 0);
            Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 0);
        }
        PRINTF("\n\n\nE_wether_flg=[%d]", gWeatherMode);
        PRINTF("\nrain_evt_trg=[%d]\n\n", play->envCtx.stormRequest);
        if (gWeatherMode == WEATHER_MODE_CLEAR && (play->envCtx.stormRequest == STORM_REQUEST_START)) {
            play->envCtx.stormRequest = STORM_REQUEST_STOP;
        } else {
            play->envCtx.stormRequest = STORM_REQUEST_NONE;
            play->envCtx.stormState = STORM_STATE_OFF;
        }
        play->envCtx.lightningState = LIGHTNING_LAST;
        Actor_Kill(&this->actor);
    }
}

void EnOkarinaEffect_Update(Actor* thisx, PlayState* play) {
    EnOkarinaEffect* this = (EnOkarinaEffect*)thisx;

    this->actionFunc(this, play);

    if (DEBUG_FEATURES && BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0xFF, 0xFF, 4, play->state.gfxCtx);
    }
}
