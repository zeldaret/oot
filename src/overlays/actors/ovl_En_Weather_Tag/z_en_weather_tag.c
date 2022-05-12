/*
 * File: z_en_weather_tag.c
 * Overlay: ovl_En_Weather_Tag
 * Description: Proximity Activated Weather Effects
 */

#include "z_en_weather_tag.h"
#include "vt.h"

#define FLAGS ACTOR_FLAG_4

void EnWeatherTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Update(Actor* thisx, GlobalContext* globalCtx);

void EnWeatherTag_DisabledCloudyHyruleMarket(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledCloudyHyruleMarket(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledCloudyLonLonRanch(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledCloudyLonLonRanch(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledCloudySnow(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledCloudySnow(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledRainLakeHylia(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledRainLakeHylia(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledCloudyDeathMountain(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledCloudyDeathMountain(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledCloudyRainThunderKakariko(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledCloudyRainThunderKakariko(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_SetSandstormIntensity(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_DisabledRainThunder(EnWeatherTag* this, GlobalContext* globalCtx);
void EnWeatherTag_EnabledRainThunder(EnWeatherTag* this, GlobalContext* globalCtx);

#define WEATHER_TAG_RANGE100(x) ((x >> 8) * 100.0f)

const ActorInit En_Weather_Tag_InitVars = {
    ACTOR_EN_WEATHER_TAG,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWeatherTag),
    (ActorFunc)EnWeatherTag_Init,
    (ActorFunc)EnWeatherTag_Destroy,
    (ActorFunc)EnWeatherTag_Update,
    NULL,
};

void EnWeatherTag_SetupAction(EnWeatherTag* this, EnWeatherTagActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnWeatherTag_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnWeatherTag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWeatherTag* this = (EnWeatherTag*)thisx;

    this->actor.flags &= ~ACTOR_FLAG_0;

    switch (this->actor.params & 0xF) {
        case EN_WEATHER_TAG_TYPE_CLOUDY_MARKET:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ (;o;) About ☆☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ （;o;) くらいよー ☆☆☆☆☆ \n" VT_RST);
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyHyruleMarket);
            break;
        case EN_WEATHER_TAG_TYPE_CLOUDY_LON_LON_RANCH:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Cloudy (._.) Ah Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n" VT_RST);
            if (Flags_GetEventChkInf(EVENTCHKINF_18)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyLonLonRanch);
            break;
        case EN_WEATHER_TAG_TYPE_SNOW_ZORAS_DOMAIN:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Yukigafuru You won't come (._.) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ゆきがふるー あなたはこないー (._.) ☆☆☆☆☆ \n" VT_RST);

            if (GET_EVENTCHKINF(EVENTCHKINF_4A)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudySnow);
            break;
        case EN_WEATHER_TAG_TYPE_RAIN_LAKE_HYLIA:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Wow wa wa na wa saa ki ha (^o^) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n" VT_RST);

            if (GET_EVENTCHKINF(EVENTCHKINF_4A)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledRainLakeHylia);
            break;
        case EN_WEATHER_TAG_TYPE_CLOUDY_DEATH_MOUNTAIN:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Cloudy (._.) Ah Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n" VT_RST);
            if (GET_EVENTCHKINF(EVENTCHKINF_49)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyDeathMountain);
            break;
        case EN_WEATHER_TAG_TYPE_THUNDERSTORM_KAKARIKO:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Cloudy Rain Thunder (;O;) Uo Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり雨雷 (;O;) うおお 憂鬱 ☆☆☆☆☆ \n" VT_RST);

            if (!GET_EVENTCHKINF(EVENTCHKINF_48) || !GET_EVENTCHKINF(EVENTCHKINF_49) ||
                !GET_EVENTCHKINF(EVENTCHKINF_4A) || CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyRainThunderKakariko);
            break;
        case EN_WEATHER_TAG_TYPE_SANDSTORM_INTENSITY:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ The desert becomes thicker ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 砂漠が濃くなります ☆☆☆☆☆ \n" VT_RST);
            EnWeatherTag_SetupAction(this, EnWeatherTag_SetSandstormIntensity);
            break;
        case EN_WEATHER_TAG_TYPE_THUNDERSTORM_GRAVEYARD:
            osSyncPrintf("\n\n");
            // "☆☆☆☆☆ Wow wa wa na wa saa ki ha (^o^) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n" VT_RST);

            EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledRainThunder);
            break;
    }
}

u8 WeatherTag_CheckEnableWeatherEffect(EnWeatherTag* this, GlobalContext* globalCtx, u8 skyboxConfig,
                                       u8 changeSkyboxNextConfig, u8 lightConfig, u8 changeLightNextConfig,
                                       u16 changeDuration, u8 weatherMode) {
    s32 pad;
    u8 ret = false;
    Player* player = GET_PLAYER(globalCtx);

    if (Actor_WorldDistXZToActor(&player->actor, &this->actor) < WEATHER_TAG_RANGE100(this->actor.params)) {
        if ((globalCtx->envCtx.lightMode != LIGHT_MODE_TIME) || !gSkyboxIsChanging ||
            (globalCtx->skyboxId != SKYBOX_NORMAL_SKY &&
             globalCtx->envCtx.lightConfig == globalCtx->envCtx.changeLightNextConfig)) {
            gInterruptSongOfStorms = true;
            if (globalCtx->envCtx.stormRequest == STORM_REQUEST_NONE &&
                ((globalCtx->envCtx.lightMode != LIGHT_MODE_TIME) ||
                 (globalCtx->envCtx.lightConfig != 1 && !globalCtx->envCtx.changeLightEnabled))) {
                gInterruptSongOfStorms = false;
                if (gWeatherMode != weatherMode) {
                    gWeatherMode = weatherMode;
                    if (globalCtx->envCtx.stormRequest == STORM_REQUEST_NONE) {
                        globalCtx->envCtx.changeSkyboxState = CHANGE_SKYBOX_REQUESTED;
                        globalCtx->envCtx.skyboxConfig = skyboxConfig;
                        globalCtx->envCtx.changeSkyboxNextConfig = changeSkyboxNextConfig;
                        globalCtx->envCtx.changeSkyboxTimer = changeDuration;
                        globalCtx->envCtx.changeLightEnabled = true;
                        globalCtx->envCtx.lightConfig = lightConfig;
                        globalCtx->envCtx.changeLightNextConfig = changeLightNextConfig;
                        gLightConfigAfterUnderwater = changeLightNextConfig;
                        globalCtx->envCtx.changeDuration = changeDuration;
                        globalCtx->envCtx.changeLightTimer = globalCtx->envCtx.changeDuration;
                    }
                }
                ret = true;
            }
        } else {
            if (gTimeSpeed != 0) {
                gSaveContext.dayTime += 20;
            }
        }
    }

    return ret;
}

u8 WeatherTag_CheckRestoreWeather(EnWeatherTag* this, GlobalContext* globalCtx, u8 skyboxConfig,
                                  u8 changeSkyboxNextConfig, u8 lightConfig, u8 changeLightNextConfig,
                                  u16 changeDuration) {
    s32 pad;
    u8 ret = false;
    Player* player = GET_PLAYER(globalCtx);

    if ((WEATHER_TAG_RANGE100(this->actor.params) + 100.0f) < Actor_WorldDistXZToActor(&player->actor, &this->actor)) {
        if ((globalCtx->envCtx.lightMode != LIGHT_MODE_TIME) || !gSkyboxIsChanging ||
            (globalCtx->skyboxId != SKYBOX_NORMAL_SKY &&
             globalCtx->envCtx.lightConfig == globalCtx->envCtx.changeLightNextConfig)) {
            gInterruptSongOfStorms = true;
            if ((globalCtx->envCtx.stormRequest == STORM_REQUEST_NONE) &&
                ((globalCtx->envCtx.lightMode != LIGHT_MODE_TIME) ||
                 (globalCtx->envCtx.lightConfig != 1 && !globalCtx->envCtx.changeLightEnabled))) {
                gInterruptSongOfStorms = false;
                gWeatherMode = WEATHER_MODE_CLEAR;
                globalCtx->envCtx.changeSkyboxState = CHANGE_SKYBOX_REQUESTED;
                globalCtx->envCtx.skyboxConfig = skyboxConfig;
                globalCtx->envCtx.changeSkyboxNextConfig = changeSkyboxNextConfig;
                globalCtx->envCtx.changeSkyboxTimer = changeDuration;
                globalCtx->envCtx.changeLightEnabled = true;
                globalCtx->envCtx.lightConfig = lightConfig;
                globalCtx->envCtx.changeLightNextConfig = changeLightNextConfig;
                gLightConfigAfterUnderwater = changeLightNextConfig;
                globalCtx->envCtx.changeDuration = changeDuration;
                globalCtx->envCtx.changeLightTimer = globalCtx->envCtx.changeDuration;

                ret = true;
            }
        } else if (gTimeSpeed != 0) {
            gSaveContext.dayTime += 20;
        }
    }
    return ret;
}

void EnWeatherTag_DisabledCloudyHyruleMarket(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 3, 60, WEATHER_MODE_CLOUDY_CONFIG3)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledCloudyHyruleMarket);
    }
}

void EnWeatherTag_EnabledCloudyHyruleMarket(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 3, 0, 60)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyHyruleMarket);
    }
}

void EnWeatherTag_DisabledCloudyLonLonRanch(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 2, 100, WEATHER_MODE_CLOUDY_CONFIG2)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledCloudyLonLonRanch);
    }
}

void EnWeatherTag_EnabledCloudyLonLonRanch(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 2, 0, 100)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyLonLonRanch);
    }
}

void EnWeatherTag_DisabledCloudyDeathMountain(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 2, 60, WEATHER_MODE_CLOUDY_CONFIG2)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledCloudyDeathMountain);
    }
}

void EnWeatherTag_EnabledCloudyDeathMountain(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 2, 0, 60)) {
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyLonLonRanch);
    }
}

void EnWeatherTag_DisabledCloudySnow(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 2, 60, WEATHER_MODE_SNOW)) {
        globalCtx->envCtx.precipitation[PRECIP_SNOW_MAX] = 64;
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledCloudySnow);
    }
}

void EnWeatherTag_EnabledCloudySnow(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 2, 0, 60)) {
        globalCtx->envCtx.precipitation[PRECIP_SNOW_MAX] = 0;
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudySnow);
    }
}

void EnWeatherTag_DisabledRainLakeHylia(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 2, 100, WEATHER_MODE_RAIN)) {
        Environment_PlayStormNatureAmbience(globalCtx);
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 25;
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledRainLakeHylia);
    }
}

void EnWeatherTag_EnabledRainLakeHylia(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 2, 0, 100)) {
        Environment_StopStormNatureAmbience(globalCtx);
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledRainLakeHylia);
    }
}

void EnWeatherTag_DisabledCloudyRainThunderKakariko(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckEnableWeatherEffect(this, globalCtx, 0, 1, 0, 4, 100, WEATHER_MODE_HEAVY_RAIN)) {
        Environment_PlayStormNatureAmbience(globalCtx);
        globalCtx->envCtx.lightningState = LIGHTNING_ON;
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 30;
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledCloudyRainThunderKakariko);
    }
}

void EnWeatherTag_EnabledCloudyRainThunderKakariko(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (WeatherTag_CheckRestoreWeather(this, globalCtx, 1, 0, 4, 0, 100)) {
        Environment_StopStormNatureAmbience(globalCtx);
        globalCtx->envCtx.lightningState = LIGHTNING_LAST;
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledCloudyRainThunderKakariko);
    }
}

void EnWeatherTag_SetSandstormIntensity(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Actor_WorldDistXZToActor(&player->actor, &this->actor) < WEATHER_TAG_RANGE100(this->actor.params)) {
        Math_SmoothStepToS(&globalCtx->envCtx.adjFogNear, -0x50, 1, 2, 1);
        Math_SmoothStepToS(&globalCtx->envCtx.adjFogFar, -0x7D0, 1, 50, 1);
    } else {
        Math_SmoothStepToS(&globalCtx->envCtx.adjFogNear, 0, 1, 1, 1);
        Math_SmoothStepToS(&globalCtx->envCtx.adjFogFar, 0, 1, 25, 1);
    }
}

void EnWeatherTag_DisabledRainThunder(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Actor_WorldDistXZToActor(&player->actor, &this->actor) < WEATHER_TAG_RANGE100(this->actor.params)) {
        Environment_PlayStormNatureAmbience(globalCtx);
        globalCtx->envCtx.lightningState = LIGHTNING_ON;
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 25;
        EnWeatherTag_SetupAction(this, EnWeatherTag_EnabledRainThunder);
    }
}

void EnWeatherTag_EnabledRainThunder(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((WEATHER_TAG_RANGE100(this->actor.params) + 10.0f) < Actor_WorldDistXZToActor(&player->actor, &this->actor)) {
        Environment_StopStormNatureAmbience(globalCtx);
        globalCtx->envCtx.lightningState = LIGHTNING_LAST;
        globalCtx->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
        globalCtx->envCtx.precipitation[PRECIP_RAIN_CUR] = 10;
        EnWeatherTag_SetupAction(this, EnWeatherTag_DisabledRainThunder);
    }
}

void EnWeatherTag_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWeatherTag* this = (EnWeatherTag*)thisx;

    this->actionFunc(this, globalCtx);
    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 255, 255, 4, globalCtx->state.gfxCtx);
    }
}
