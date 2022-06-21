#include "global.h"
#include "ultra64.h"
#include "vt.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/gameplay_field_keep/gameplay_field_keep.h"

typedef enum {
    /* 0x00 */ LIGHTNING_BOLT_START,
    /* 0x01 */ LIGHTNING_BOLT_WAIT,
    /* 0x02 */ LIGHTNING_BOLT_DRAW,
    /* 0xFF */ LIGHTNING_BOLT_INACTIVE = 0xFF
} LightningBoltState;

typedef struct {
    /* 0x00 */ s32 mantissa;
    /* 0x04 */ s32 exponent;
} ZBufValConversionEntry; // size = 0x8

ZBufValConversionEntry sZBufValConversionTable[1 << 3] = {
    { 6, 0x00000 }, { 5, 0x20000 }, { 4, 0x30000 }, { 3, 0x38000 },
    { 2, 0x3C000 }, { 1, 0x3E000 }, { 0, 0x3F000 }, { 0, 0x3F800 },
};

u8 gWeatherMode = WEATHER_MODE_CLEAR; // "E_wether_flg"

u8 gLightConfigAfterUnderwater = 0;

u8 gInterruptSongOfStorms = false;

// Indicates whether the skybox is changing to a different index of the same config (based on time)
u8 gSkyboxIsChanging = false;

// how many units of time that pass every update
u16 gTimeSpeed = 0;

u16 sSunScreenDepth = GPACK_ZDZ(G_MAXFBZ, 0);

typedef struct {
    /* 0x00 */ u16 startTime;
    /* 0x02 */ u16 endTime;
    /* 0x04 */ u8 lightSetting;
    /* 0x05 */ u8 nextLightSetting;
} TimeBasedLightEntry; // size = 0x6

TimeBasedLightEntry sTimeBasedLightConfigs[][7] = {
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, 3, 3 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(6, 0), 3, 0 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, 0, 1 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), 1, 1 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, 1, 2 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(19, 0) + 1, 2, 3 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, 3, 3 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, 7, 7 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(6, 0), 7, 4 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, 4, 5 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), 5, 5 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, 5, 6 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(19, 0) + 1, 6, 7 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, 7, 7 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, 11, 11 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(6, 0), 11, 8 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, 8, 9 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), 9, 9 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, 9, 10 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(19, 0) + 1, 10, 11 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, 11, 11 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, 15, 15 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(6, 0), 15, 12 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, 12, 13 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), 13, 13 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, 13, 14 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(19, 0) + 1, 14, 15 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, 15, 15 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, 23, 23 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(6, 0), 23, 20 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, 20, 21 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), 21, 21 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, 21, 22 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(19, 0) + 1, 22, 23 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, 23, 23 },
    },
};

TimeBasedSkyboxEntry gTimeBasedSkyboxConfigs[][9] = {
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, false, 3, 3 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(5, 0) + 1, true, 3, 0 },
        { CLOCK_TIME(5, 0) + 1, CLOCK_TIME(6, 0), false, 0, 0 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, true, 0, 1 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), false, 1, 1 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, true, 1, 2 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(18, 0) + 1, false, 2, 2 },
        { CLOCK_TIME(18, 0) + 1, CLOCK_TIME(19, 0) + 1, true, 2, 3 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, false, 3, 3 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(4, 0) + 1, false, 7, 7 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(5, 0) + 1, true, 7, 4 },
        { CLOCK_TIME(5, 0) + 1, CLOCK_TIME(6, 0), false, 4, 4 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(8, 0) + 1, true, 4, 5 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), false, 5, 5 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, true, 5, 6 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(18, 0) + 1, false, 6, 6 },
        { CLOCK_TIME(18, 0) + 1, CLOCK_TIME(19, 0) + 1, true, 6, 7 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, false, 7, 7 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(2, 0) + 1, false, 3, 3 },
        { CLOCK_TIME(2, 0) + 1, CLOCK_TIME(4, 0) + 1, true, 3, 0 },
        { CLOCK_TIME(4, 0) + 1, CLOCK_TIME(8, 0) + 1, false, 0, 0 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(10, 0), true, 0, 1 },
        { CLOCK_TIME(10, 0), CLOCK_TIME(14, 0) + 1, false, 1, 1 },
        { CLOCK_TIME(14, 0) + 1, CLOCK_TIME(16, 0), true, 1, 2 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(20, 0) + 1, false, 2, 2 },
        { CLOCK_TIME(20, 0) + 1, CLOCK_TIME(22, 0), true, 2, 3 },
        { CLOCK_TIME(22, 0), CLOCK_TIME(24, 0) - 1, false, 3, 3 },
    },
    {
        { CLOCK_TIME(0, 0), CLOCK_TIME(5, 0) + 1, false, 11, 11 },
        { CLOCK_TIME(5, 0) + 1, CLOCK_TIME(6, 0), true, 11, 8 },
        { CLOCK_TIME(6, 0), CLOCK_TIME(7, 0), false, 8, 8 },
        { CLOCK_TIME(7, 0), CLOCK_TIME(8, 0) + 1, true, 8, 9 },
        { CLOCK_TIME(8, 0) + 1, CLOCK_TIME(16, 0), false, 9, 9 },
        { CLOCK_TIME(16, 0), CLOCK_TIME(17, 0) + 1, true, 9, 10 },
        { CLOCK_TIME(17, 0) + 1, CLOCK_TIME(18, 0) + 1, false, 10, 10 },
        { CLOCK_TIME(18, 0) + 1, CLOCK_TIME(19, 0) + 1, true, 10, 11 },
        { CLOCK_TIME(19, 0) + 1, CLOCK_TIME(24, 0) - 1, false, 11, 11 },
    },
};

SkyboxFile gNormalSkyFiles[] = {
    {
        ROM_FILE(vr_fine0_static),
        ROM_FILE(vr_fine0_pal_static),
    },
    {
        ROM_FILE(vr_fine1_static),
        ROM_FILE(vr_fine1_pal_static),
    },
    {
        ROM_FILE(vr_fine2_static),
        ROM_FILE(vr_fine2_pal_static),
    },
    {
        ROM_FILE(vr_fine3_static),
        ROM_FILE(vr_fine3_pal_static),
    },
    {
        ROM_FILE(vr_cloud0_static),
        ROM_FILE(vr_cloud0_pal_static),
    },
    {
        ROM_FILE(vr_cloud1_static),
        ROM_FILE(vr_cloud1_pal_static),
    },
    {
        ROM_FILE(vr_cloud2_static),
        ROM_FILE(vr_cloud2_pal_static),
    },
    {
        ROM_FILE(vr_cloud3_static),
        ROM_FILE(vr_cloud3_pal_static),
    },
    {
        ROM_FILE(vr_holy0_static),
        ROM_FILE(vr_holy0_pal_static),
    },
};

u8 sSandstormColorIndex = 0;
u8 sNextSandstormColorIndex = 0;
f32 sSandstormLerpScale = 0.0f;

u8 gCustomLensFlareOn;
Vec3f gCustomLensFlarePos;
s16 gLensFlareUnused;
s16 gLensFlareScale;
f32 gLensFlareColorIntensity;
s16 gLensFlareGlareStrength;

typedef struct {
    /* 0x00 */ u8 state;
    /* 0x04 */ Vec3f offset;
    /* 0x10 */ Vec3f pos;
    /* 0x1C */ s8 pitch;
    /* 0x1D */ s8 roll;
    /* 0x1E */ u8 textureIndex;
    /* 0x1F */ u8 delayTimer;
} LightningBolt; // size = 0x20

LightningBolt sLightningBolts[3];

LightningStrike gLightningStrike;

s16 sLightningFlashAlpha;

s16 sSunDepthTestX;
s16 sSunDepthTestY;

LightNode* sNGameOverLightNode;
LightInfo sNGameOverLightInfo;
LightNode* sSGameOverLightNode;
LightInfo sSGameOverLightInfo;
u8 sGameOverLightsIntensity;
u16 sSandstormScroll;

#define ZBUFVAL_EXPONENT(v) (((v) >> 15) & 7)
#define ZBUFVAL_MANTISSA(v) (((v) >> 4) & 0x7FF)

/**
 * Convert an 18-bits Z buffer value to a fixed point 15.3 value
 *
 * zBufferVal is 18 bits:
 *   3: Exponent of z value
 *  11: Mantissa of z value
 *   4: dz value (unused)
 */
s32 Environment_ZBufValToFixedPoint(s32 zBufferVal) {
    // base[exp] + mantissa << shift[exp]
    s32 ret = (ZBUFVAL_MANTISSA(zBufferVal) << sZBufValConversionTable[ZBUFVAL_EXPONENT(zBufferVal)].mantissa) +
              sZBufValConversionTable[ZBUFVAL_EXPONENT(zBufferVal)].exponent;

    return ret;
}

u16 Environment_GetPixelDepth(s32 x, s32 y) {
    s32 pixelDepth = gZBuffer[y][x];

    return pixelDepth;
}

void Environment_GraphCallback(GraphicsContext* gfxCtx, void* param) {
    PlayState* play = (PlayState*)param;

    sSunScreenDepth = Environment_GetPixelDepth(sSunDepthTestX, sSunDepthTestY);
    Lights_GlowCheck(play);
}

void Environment_Init(PlayState* play2, EnvironmentContext* envCtx, s32 unused) {
    u8 i;
    PlayState* play = play2;

    gSaveContext.sunsSongState = SUNSSONG_INACTIVE;

    if (((void)0, gSaveContext.dayTime) > CLOCK_TIME(18, 0) || ((void)0, gSaveContext.dayTime) < CLOCK_TIME(6, 30)) {
        ((void)0, gSaveContext.nightFlag = 1);
    } else {
        ((void)0, gSaveContext.nightFlag = 0);
    }

    play->state.gfxCtx->callback = Environment_GraphCallback;
    play->state.gfxCtx->callbackParam = play;

    Lights_DirectionalSetInfo(&envCtx->dirLight1, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(play, &play->lightCtx, &envCtx->dirLight1);

    Lights_DirectionalSetInfo(&envCtx->dirLight2, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(play, &play->lightCtx, &envCtx->dirLight2);

    envCtx->skybox1Index = 99;
    envCtx->skybox2Index = 99;

    envCtx->changeSkyboxState = CHANGE_SKYBOX_INACTIVE;
    envCtx->changeSkyboxTimer = 0;
    envCtx->changeLightEnabled = false;
    envCtx->changeLightTimer = 0;

    envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
    envCtx->lightConfig = 0;
    envCtx->changeLightNextConfig = 0;

    envCtx->glareAlpha = 0.0f;
    envCtx->lensFlareAlphaScale = 0.0f;

    envCtx->lightSetting = 0;
    envCtx->prevLightSetting = 0;
    envCtx->lightBlend = 1.0f;
    envCtx->lightBlendOverride = LIGHT_BLEND_OVERRIDE_NONE;

    envCtx->stormRequest = STORM_REQUEST_NONE;
    envCtx->stormState = STORM_STATE_OFF;
    envCtx->lightningState = LIGHTNING_OFF;
    envCtx->timeSeqState = TIMESEQ_DAY_BGM;
    envCtx->fillScreen = false;

    envCtx->screenFillColor[0] = 0;
    envCtx->screenFillColor[1] = 0;
    envCtx->screenFillColor[2] = 0;
    envCtx->screenFillColor[3] = 0;

    envCtx->customSkyboxFilter = false;

    envCtx->skyboxFilterColor[0] = 0;
    envCtx->skyboxFilterColor[1] = 0;
    envCtx->skyboxFilterColor[2] = 0;
    envCtx->skyboxFilterColor[3] = 0;

    envCtx->sandstormState = SANDSTORM_OFF;
    envCtx->sandstormPrimA = 0;
    envCtx->sandstormEnvA = 0;

    gLightningStrike.state = LIGHTNING_STRIKE_WAIT;
    gLightningStrike.flashRed = 0;
    gLightningStrike.flashGreen = 0;
    gLightningStrike.flashBlue = 0;

    sLightningFlashAlpha = 0;

    gSaveContext.cutsceneTransitionControl = 0;

    envCtx->adjAmbientColor[0] = envCtx->adjAmbientColor[1] = envCtx->adjAmbientColor[2] = envCtx->adjLight1Color[0] =
        envCtx->adjLight1Color[1] = envCtx->adjLight1Color[2] = envCtx->adjFogColor[0] = envCtx->adjFogColor[1] =
            envCtx->adjFogColor[2] = envCtx->adjFogNear = envCtx->adjFogFar = 0;

    envCtx->sunPos.x = -(Math_SinS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    envCtx->sunPos.y = +(Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    envCtx->sunPos.z = +(Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 20.0f) * 25.0f;

    envCtx->windDirection.x = 80;
    envCtx->windDirection.y = 80;
    envCtx->windDirection.z = 80;

    envCtx->lightBlendEnabled = false;
    envCtx->lightSettingOverride = LIGHT_SETTING_OVERRIDE_NONE;
    envCtx->lightBlendRateOverride = LIGHT_BLENDRATE_OVERRIDE_NONE;

    R_ENV_TIME_SPEED_OLD = gTimeSpeed = envCtx->sceneTimeSpeed = 0;
    R_ENV_DISABLE_DBG = true;

    if (CREG(3) != 0) {
        gSaveContext.chamberCutsceneNum = CREG(3) - 1;
    }

    play->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
    play->envCtx.precipitation[PRECIP_RAIN_CUR] = 0;
    play->envCtx.precipitation[PRECIP_SNOW_CUR] = 0;
    play->envCtx.precipitation[PRECIP_SNOW_MAX] = 0;
    play->envCtx.precipitation[PRECIP_SOS_MAX] = 0;

    if (gSaveContext.retainWeatherMode) {
        if (((void)0, gSaveContext.sceneSetupIndex) < 4) {
            switch (gWeatherMode) {
                case WEATHER_MODE_CLOUDY_CONFIG3:
                    envCtx->skyboxConfig = 1;
                    envCtx->changeSkyboxNextConfig = 1;
                    envCtx->lightConfig = 3;
                    envCtx->changeLightNextConfig = 3;
                    play->envCtx.precipitation[PRECIP_SNOW_MAX] = 0;
                    play->envCtx.precipitation[PRECIP_SNOW_CUR] = 0;
                    break;

                case WEATHER_MODE_CLOUDY_CONFIG2:
                case WEATHER_MODE_SNOW:
                case WEATHER_MODE_RAIN:
                    envCtx->skyboxConfig = 1;
                    envCtx->changeSkyboxNextConfig = 1;
                    envCtx->lightConfig = 2;
                    envCtx->changeLightNextConfig = 2;
                    play->envCtx.precipitation[PRECIP_SNOW_MAX] = 0;
                    play->envCtx.precipitation[PRECIP_SNOW_CUR] = 0;
                    break;

                case WEATHER_MODE_HEAVY_RAIN:
                    envCtx->skyboxConfig = 1;
                    envCtx->changeSkyboxNextConfig = 1;
                    envCtx->lightConfig = 4;
                    envCtx->changeLightNextConfig = 4;
                    play->envCtx.precipitation[PRECIP_SNOW_MAX] = 0;
                    play->envCtx.precipitation[PRECIP_SNOW_CUR] = 0;
                    break;

                default:
                    break;
            }

            if (play->skyboxId == SKYBOX_NORMAL_SKY) {
                if (gWeatherMode == WEATHER_MODE_SNOW) {
                    play->envCtx.precipitation[PRECIP_SNOW_CUR] = play->envCtx.precipitation[PRECIP_SNOW_MAX] = 64;
                } else if (gWeatherMode == WEATHER_MODE_RAIN) {
                    play->envCtx.precipitation[PRECIP_RAIN_MAX] = 20;
                    play->envCtx.precipitation[PRECIP_RAIN_CUR] = 20;
                } else if (gWeatherMode == WEATHER_MODE_HEAVY_RAIN) {
                    play->envCtx.precipitation[PRECIP_RAIN_MAX] = 30;
                    play->envCtx.precipitation[PRECIP_RAIN_CUR] = 30;
                }
            }
        }
    } else {
        gWeatherMode = WEATHER_MODE_CLEAR;
    }

    gInterruptSongOfStorms = false;
    gLightConfigAfterUnderwater = 0;
    gSkyboxIsChanging = false;
    gSaveContext.retainWeatherMode = false;

    R_ENV_LIGHT1_DIR(0) = 80;
    R_ENV_LIGHT1_DIR(1) = 80;
    R_ENV_LIGHT1_DIR(2) = 80;

    R_ENV_LIGHT2_DIR(0) = -80;
    R_ENV_LIGHT2_DIR(1) = -80;
    R_ENV_LIGHT2_DIR(2) = -80;

    cREG(9) = 10;
    cREG(10) = 0;
    cREG(11) = 0;
    cREG(12) = 0;
    cREG(13) = 0;
    cREG(14) = 0;
    D_8015FCC8 = 1;

    for (i = 0; i < ARRAY_COUNT(sLightningBolts); i++) {
        sLightningBolts[i].state = LIGHTNING_BOLT_INACTIVE;
    }

    play->roomCtx.unk_74[0] = 0;
    play->roomCtx.unk_74[1] = 0;

    for (i = 0; i < ARRAY_COUNT(play->csCtx.npcActions); i++) {
        play->csCtx.npcActions[i] = 0;
    }

    if (Object_GetIndex(&play->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP) < 0 && !play->envCtx.sunMoonDisabled) {
        play->envCtx.sunMoonDisabled = true;
        // "Sun setting other than field keep! So forced release!"
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n\nフィールド常駐以外、太陽設定！よって強制解除！\n" VT_RST);
    }

    gCustomLensFlareOn = false;
    func_800AA15C();
}

u8 Environment_SmoothStepToU8(u8* pvalue, u8 target, u8 scale, u8 step, u8 minStep) {
    s16 stepSize = 0;
    s16 diff = target - *pvalue;

    if (target != *pvalue) {
        stepSize = diff / scale;
        if ((stepSize >= (s16)minStep) || ((s16)-minStep >= stepSize)) {
            if ((s16)step < stepSize) {
                stepSize = step;
            }
            if ((s16)-step > stepSize) {
                stepSize = -step;
            }
            *pvalue += (u8)stepSize;
        } else {
            if (stepSize < (s16)minStep) {
                stepSize = minStep;
                *pvalue += (u8)stepSize;
                if (target < *pvalue) {
                    *pvalue = target;
                }
            }
            if ((s16)-minStep < stepSize) {
                stepSize = -minStep;
                *pvalue += (u8)stepSize;
                if (*pvalue < target) {
                    *pvalue = target;
                }
            }
        }
    }
    return diff;
}

u8 Environment_SmoothStepToS8(s8* pvalue, s8 target, u8 scale, u8 step, u8 minStep) {
    s16 stepSize = 0;
    s16 diff = target - *pvalue;

    if (target != *pvalue) {
        stepSize = diff / scale;
        if ((stepSize >= (s16)minStep) || ((s16)-minStep >= stepSize)) {
            if ((s16)step < stepSize) {
                stepSize = step;
            }
            if ((s16)-step > stepSize) {
                stepSize = -step;
            }
            *pvalue += (s8)stepSize;
        } else {
            if (stepSize < (s16)minStep) {
                stepSize = minStep;
                *pvalue += (s8)stepSize;
                if (target < *pvalue) {
                    *pvalue = target;
                }
            }
            if ((s16)-minStep < stepSize) {
                stepSize = -minStep;
                *pvalue += (s8)stepSize;
                if (*pvalue < target) {
                    *pvalue = target;
                }
            }
        }
    }
    return diff;
}

f32 Environment_LerpWeight(u16 max, u16 min, u16 val) {
    f32 diff = max - min;
    f32 ret;

    if (diff != 0.0f) {
        ret = 1.0f - (max - val) / diff;

        if (!(ret >= 1.0f)) {
            return ret;
        }
    }

    return 1.0f;
}

f32 Environment_LerpWeightAccelDecel(u16 endFrame, u16 startFrame, u16 curFrame, u16 accelDuration, u16 decelDuration) {
    f32 endFrameF;
    f32 startFrameF;
    f32 curFrameF;
    f32 accelDurationF;
    f32 decelDurationF;
    f32 totalFrames;
    f32 temp;
    f32 framesElapsed;
    f32 ret;

    if (curFrame <= startFrame) {
        return 0.0f;
    }

    if (curFrame >= endFrame) {
        return 1.0f;
    }

    endFrameF = (s32)endFrame;
    startFrameF = (s32)startFrame;
    curFrameF = (s32)curFrame;
    totalFrames = endFrameF - startFrameF;
    framesElapsed = curFrameF - startFrameF;
    accelDurationF = (s32)accelDuration;
    decelDurationF = (s32)decelDuration;

    if ((startFrameF >= endFrameF) || (accelDurationF + decelDurationF > totalFrames)) {
        // "The frame relation between end_frame and start_frame is wrong!!!"
        osSyncPrintf(VT_COL(RED, WHITE) "\nend_frameとstart_frameのフレーム関係がおかしい!!!" VT_RST);
        osSyncPrintf(VT_COL(RED, WHITE) "\nby get_parcent_forAccelBrake!!!!!!!!!" VT_RST);

        return 0.0f;
    }

    temp = 1.0f / ((totalFrames * 2.0f) - accelDurationF - decelDurationF);

    if (accelDurationF != 0.0f) {
        if (framesElapsed <= accelDurationF) {
            return temp * framesElapsed * framesElapsed / accelDurationF;
        }
        ret = temp * accelDurationF;
    } else {
        ret = 0.0f;
    }

    if (framesElapsed <= totalFrames - decelDurationF) {
        ret += 2.0f * temp * (framesElapsed - accelDurationF);
        return ret;
    }

    ret += 2.0f * temp * (totalFrames - accelDurationF - decelDurationF);

    if (decelDurationF != 0.0f) {
        ret += temp * decelDurationF;
        if (framesElapsed < totalFrames) {
            ret -= temp * (totalFrames - framesElapsed) * (totalFrames - framesElapsed) / decelDurationF;
        }
    }

    return ret;
}

void Environment_UpdateStorm(EnvironmentContext* envCtx, u8 unused) {
    if (envCtx->stormRequest != STORM_REQUEST_NONE) {
        switch (envCtx->stormState) {
            case STORM_STATE_OFF:
                if ((envCtx->stormRequest == STORM_REQUEST_START) && !gSkyboxIsChanging) {
                    envCtx->changeSkyboxState = CHANGE_SKYBOX_REQUESTED;
                    envCtx->skyboxConfig = 0;
                    envCtx->changeSkyboxNextConfig = 1;
                    envCtx->changeSkyboxTimer = 100;
                    envCtx->changeLightEnabled = true;
                    envCtx->lightConfig = 0;
                    envCtx->changeLightNextConfig = 2;
                    gLightConfigAfterUnderwater = 2;
                    envCtx->changeLightTimer = envCtx->changeDuration = 100;
                    envCtx->stormState++;
                }
                break;

            case STORM_STATE_ON:
                if (!gSkyboxIsChanging && (envCtx->stormRequest == STORM_REQUEST_STOP)) {
                    gWeatherMode = WEATHER_MODE_CLEAR;
                    envCtx->changeSkyboxState = CHANGE_SKYBOX_REQUESTED;
                    envCtx->skyboxConfig = 1;
                    envCtx->changeSkyboxNextConfig = 0;
                    envCtx->changeSkyboxTimer = 100;
                    envCtx->changeLightEnabled = true;
                    envCtx->lightConfig = 2;
                    envCtx->changeLightNextConfig = 0;
                    gLightConfigAfterUnderwater = 0;
                    envCtx->changeLightTimer = envCtx->changeDuration = 100;
                    envCtx->precipitation[PRECIP_RAIN_MAX] = 0;
                    envCtx->stormRequest = STORM_REQUEST_NONE;
                    envCtx->stormState = STORM_STATE_OFF;
                }
                break;
        }
    }
}

void Environment_UpdateSkybox(u8 skyboxId, EnvironmentContext* envCtx, SkyboxContext* skyboxCtx) {
    u32 size;
    u8 i;
    u8 newSkybox1Index = 0xFF;
    u8 newSkybox2Index = 0xFF;
    u8 skyboxBlend = 0;

    if (skyboxId == SKYBOX_CUTSCENE_MAP) {
        envCtx->skyboxConfig = 3;

        for (i = 0; i < ARRAY_COUNT(gTimeBasedSkyboxConfigs[envCtx->skyboxConfig]); i++) {
            if (gSaveContext.skyboxTime >= gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].startTime &&
                (gSaveContext.skyboxTime < gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime ||
                 gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime == 0xFFFF)) {
                if (gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].changeSkybox) {
                    envCtx->skyboxBlend =
                        Environment_LerpWeight(gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime,
                                               gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].startTime,
                                               ((void)0, gSaveContext.skyboxTime)) *
                        255;
                } else {
                    envCtx->skyboxBlend = 0;
                }
                break;
            }
        }
    } else if (skyboxId == SKYBOX_NORMAL_SKY && !envCtx->skyboxDisabled) {
        for (i = 0; i < ARRAY_COUNT(gTimeBasedSkyboxConfigs[envCtx->skyboxConfig]); i++) {
            if (gSaveContext.skyboxTime >= gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].startTime &&
                (gSaveContext.skyboxTime < gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime ||
                 gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime == 0xFFFF)) {
                newSkybox1Index = gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].skybox1Index;
                newSkybox2Index = gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].skybox2Index;
                gSkyboxIsChanging = gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].changeSkybox;

                if (gSkyboxIsChanging) {
                    skyboxBlend = Environment_LerpWeight(gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime,
                                                         gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].startTime,
                                                         ((void)0, gSaveContext.skyboxTime)) *
                                  255;
                } else {
                    skyboxBlend = Environment_LerpWeight(gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].endTime,
                                                         gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].startTime,
                                                         ((void)0, gSaveContext.skyboxTime)) *
                                  255;

                    skyboxBlend = (skyboxBlend < 128) ? 255 : 0;

                    if ((envCtx->changeSkyboxState != CHANGE_SKYBOX_INACTIVE) &&
                        (envCtx->changeSkyboxState < CHANGE_SKYBOX_ACTIVE)) {
                        envCtx->changeSkyboxState++;
                        skyboxBlend = 0;
                    }
                }
                break;
            }
        }

        Environment_UpdateStorm(envCtx, skyboxBlend);

        if (envCtx->changeSkyboxState >= CHANGE_SKYBOX_ACTIVE) {
            newSkybox1Index = gTimeBasedSkyboxConfigs[envCtx->skyboxConfig][i].skybox1Index;
            newSkybox2Index = gTimeBasedSkyboxConfigs[envCtx->changeSkyboxNextConfig][i].skybox2Index;

            skyboxBlend = ((f32)envCtx->changeDuration - envCtx->changeSkyboxTimer) / (f32)envCtx->changeDuration * 255;
            envCtx->changeSkyboxTimer--;

            if (envCtx->changeSkyboxTimer <= 0) {
                envCtx->changeSkyboxState = CHANGE_SKYBOX_INACTIVE;
                envCtx->skyboxConfig = envCtx->changeSkyboxNextConfig;
            }
        }

        if (newSkybox1Index == 0xFF) {
            // "Environment VR data acquisition failed! Report to Sasaki!"
            osSyncPrintf(VT_COL(RED, WHITE) "\n環境ＶＲデータ取得失敗！ ささきまでご報告を！" VT_RST);
        }

        if ((envCtx->skybox1Index != newSkybox1Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_TEXTURE1_START;
            size = gNormalSkyFiles[newSkybox1Index].file.vromEnd - gNormalSkyFiles[newSkybox1Index].file.vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, skyboxCtx->staticSegments[0],
                                gNormalSkyFiles[newSkybox1Index].file.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                "../z_kankyo.c", 1264);
            envCtx->skybox1Index = newSkybox1Index;
        }

        if ((envCtx->skybox2Index != newSkybox2Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_TEXTURE2_START;
            size = gNormalSkyFiles[newSkybox2Index].file.vromEnd - gNormalSkyFiles[newSkybox2Index].file.vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, skyboxCtx->staticSegments[1],
                                gNormalSkyFiles[newSkybox2Index].file.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                "../z_kankyo.c", 1281);
            envCtx->skybox2Index = newSkybox2Index;
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_TEXTURE1_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_TLUT1_START;

            if ((newSkybox1Index & 1) ^ ((newSkybox1Index & 4) >> 2)) {
                size = gNormalSkyFiles[newSkybox1Index].palette.vromEnd -
                       gNormalSkyFiles[newSkybox1Index].palette.vromStart;

                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, skyboxCtx->palettes,
                                    gNormalSkyFiles[newSkybox1Index].palette.vromStart, size, 0, &envCtx->loadQueue,
                                    NULL, "../z_kankyo.c", 1307);
            } else {
                size = gNormalSkyFiles[newSkybox1Index].palette.vromEnd -
                       gNormalSkyFiles[newSkybox1Index].palette.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u8*)skyboxCtx->palettes + size,
                                    gNormalSkyFiles[newSkybox1Index].palette.vromStart, size, 0, &envCtx->loadQueue,
                                    NULL, "../z_kankyo.c", 1320);
            }
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_TEXTURE2_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_TLUT2_START;

            if ((newSkybox2Index & 1) ^ ((newSkybox2Index & 4) >> 2)) {
                size = gNormalSkyFiles[newSkybox2Index].palette.vromEnd -
                       gNormalSkyFiles[newSkybox2Index].palette.vromStart;

                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, skyboxCtx->palettes,
                                    gNormalSkyFiles[newSkybox2Index].palette.vromStart, size, 0, &envCtx->loadQueue,
                                    NULL, "../z_kankyo.c", 1342);
            } else {
                size = gNormalSkyFiles[newSkybox2Index].palette.vromEnd -
                       gNormalSkyFiles[newSkybox2Index].palette.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u8*)skyboxCtx->palettes + size,
                                    gNormalSkyFiles[newSkybox2Index].palette.vromStart, size, 0, &envCtx->loadQueue,
                                    NULL, "../z_kankyo.c", 1355);
            }
        }

        if ((envCtx->skyboxDmaState == SKYBOX_DMA_TEXTURE1_START) ||
            (envCtx->skyboxDmaState == SKYBOX_DMA_TEXTURE2_START)) {
            if (osRecvMesg(&envCtx->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
                envCtx->skyboxDmaState++;
            }
        } else if (envCtx->skyboxDmaState >= SKYBOX_DMA_TEXTURE1_DONE) {
            if (osRecvMesg(&envCtx->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
                envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
            }
        }

        envCtx->skyboxBlend = skyboxBlend;
    }
}

void Environment_EnableUnderwaterLights(PlayState* play, s32 waterLightsIndex) {
    if (waterLightsIndex == 0x1F) {
        waterLightsIndex = 0;
        // "Underwater color is not set in the water poly data!"
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n水ポリゴンデータに水中カラーが設定されておりません!" VT_RST);
    }

    if (play->envCtx.lightMode == LIGHT_MODE_TIME) {
        gLightConfigAfterUnderwater = play->envCtx.changeLightNextConfig;

        if (play->envCtx.lightConfig != waterLightsIndex) {
            play->envCtx.lightConfig = waterLightsIndex;
            play->envCtx.changeLightNextConfig = waterLightsIndex;
        }
    } else {
        play->envCtx.lightBlendEnabled = false; // instantly switch to water lights
        play->envCtx.lightSettingOverride = waterLightsIndex;
    }
}

void Environment_DisableUnderwaterLights(PlayState* play) {
    if (play->envCtx.lightMode == LIGHT_MODE_TIME) {
        play->envCtx.lightConfig = gLightConfigAfterUnderwater;
        play->envCtx.changeLightNextConfig = gLightConfigAfterUnderwater;
    } else {
        play->envCtx.lightBlendEnabled = false; // instantly switch to previous lights
        play->envCtx.lightSettingOverride = LIGHT_SETTING_OVERRIDE_NONE;
        play->envCtx.lightBlend = 1.0f;
    }
}

void Environment_PrintDebugInfo(PlayState* play, Gfx** gfx) {
    GfxPrint printer;
    s32 pad[2];

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *gfx);

    GfxPrint_SetPos(&printer, 22, 7);
    GfxPrint_SetColor(&printer, 155, 155, 255, 64);
    GfxPrint_Printf(&printer, "T%03d ", ((void)0, gSaveContext.totalDays));
    GfxPrint_Printf(&printer, "E%03d", ((void)0, gSaveContext.bgsDayCount));

    GfxPrint_SetColor(&printer, 255, 255, 55, 64);
    GfxPrint_SetPos(&printer, 22, 8);
    GfxPrint_Printf(&printer, "%s", "ZELDATIME ");

    GfxPrint_SetColor(&printer, 255, 255, 255, 64);
    GfxPrint_Printf(&printer, "%02d", (u8)(24 * 60 / (f32)0x10000 * ((void)0, gSaveContext.dayTime) / 60.0f));

    if ((gSaveContext.dayTime & 0x1F) >= 0x10 || gTimeSpeed >= 6) {
        GfxPrint_Printf(&printer, "%s", ":");
    } else {
        GfxPrint_Printf(&printer, "%s", " ");
    }

    GfxPrint_Printf(&printer, "%02d", (s16)(24 * 60 / (f32)0x10000 * ((void)0, gSaveContext.dayTime)) % 60);

    GfxPrint_SetColor(&printer, 255, 255, 55, 64);
    GfxPrint_SetPos(&printer, 22, 9);
    GfxPrint_Printf(&printer, "%s", "VRBOXTIME ");

    GfxPrint_SetColor(&printer, 255, 255, 255, 64);
    GfxPrint_Printf(&printer, "%02d", (u8)(24 * 60 / (f32)0x10000 * ((void)0, gSaveContext.skyboxTime) / 60.0f));

    if ((((void)0, gSaveContext.skyboxTime) & 0x1F) >= 0x10 || gTimeSpeed >= 6) {
        GfxPrint_Printf(&printer, "%s", ":");
    } else {
        GfxPrint_Printf(&printer, "%s", " ");
    }

    GfxPrint_Printf(&printer, "%02d", (s16)(24 * 60 / (f32)0x10000 * ((void)0, gSaveContext.skyboxTime)) % 60);

    GfxPrint_SetColor(&printer, 55, 255, 255, 64);
    GfxPrint_SetPos(&printer, 22, 6);

    if (!IS_DAY) {
        GfxPrint_Printf(&printer, "%s", "YORU"); // "night"
    } else {
        GfxPrint_Printf(&printer, "%s", "HIRU"); // "day"
    }

    *gfx = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

void Environment_PlayTimeBasedSequence(PlayState* play);
void Environment_UpdateRain(PlayState* play);

void Environment_Update(PlayState* play, EnvironmentContext* envCtx, LightContext* lightCtx, PauseContext* pauseCtx,
                        MessageContext* msgCtx, GameOverContext* gameOverCtx, GraphicsContext* gfxCtx) {
    f32 sp8C;
    f32 sp88 = 0.0f;
    u16 i;
    u16 j;
    u16 time;
    EnvLightSettings* lightSettingsList = play->envCtx.lightSettingsList;
    s32 adjustment;

    if ((((void)0, gSaveContext.gameMode) != 0) && (((void)0, gSaveContext.gameMode) != 3)) {
        func_800AA16C();
    }

    if (pauseCtx->state == 0) {
        if ((play->pauseCtx.state == 0) && (play->pauseCtx.debugState == 0)) {
            if (play->skyboxId == SKYBOX_NORMAL_SKY) {
                play->skyboxCtx.rot.y -= 0.001f;
            } else if (play->skyboxId == SKYBOX_CUTSCENE_MAP) {
                play->skyboxCtx.rot.y -= 0.005f;
            }
        }

        Environment_UpdateRain(play);
        Environment_PlayTimeBasedSequence(play);

        if (((void)0, gSaveContext.nextDayTime) >= 0xFF00 && ((void)0, gSaveContext.nextDayTime) != NEXT_TIME_NONE) {
            gSaveContext.nextDayTime -= 0x10;
            osSyncPrintf("\nnext_zelda_time=[%x]", ((void)0, gSaveContext.nextDayTime));

            // nextDayTime is used as both a time of day value and a timer to delay sfx when changing days.
            // When Sun's Song is played, nextDayTime is set to 0x8001 or 0 for day and night respectively.
            // These values will actually get used as a time of day value.
            // After this, nextDayTime is assigned magic values of 0xFFFE or 0xFFFD for day and night respectively.
            // From here, 0x10 is decremented from nextDayTime until it reaches either 0xFF0E or 0xFF0D, effectively
            // delaying the chicken crow or dog howl sfx by 15 frames when loading the new area.

            if (((void)0, gSaveContext.nextDayTime) == (NEXT_TIME_DAY_SET - (15 * 0x10))) {
                func_80078884(NA_SE_EV_CHICKEN_CRY_M);
                gSaveContext.nextDayTime = NEXT_TIME_NONE;
            } else if (((void)0, gSaveContext.nextDayTime) == (NEXT_TIME_NIGHT_SET - (15 * 0x10))) {
                func_800788CC(NA_SE_EV_DOG_CRY_EVENING);
                gSaveContext.nextDayTime = NEXT_TIME_NONE;
            }
        }

        if ((pauseCtx->state == 0) && (gameOverCtx->state == GAMEOVER_INACTIVE)) {
            if (((msgCtx->msgLength == 0) && (msgCtx->msgMode == 0)) || (((void)0, gSaveContext.gameMode) == 3)) {
                if ((envCtx->changeSkyboxTimer == 0) && !FrameAdvance_IsEnabled(play) &&
                    (play->transitionMode == TRANS_MODE_OFF || ((void)0, gSaveContext.gameMode) != 0)) {

                    if (IS_DAY || gTimeSpeed >= 400) {
                        gSaveContext.dayTime += gTimeSpeed;
                    } else {
                        gSaveContext.dayTime += gTimeSpeed * 2; // time moves twice as fast at night
                    }
                }
            }
        }

        //! @bug `gTimeSpeed` is unsigned, it can't be negative
        if (((((void)0, gSaveContext.sceneSetupIndex) >= 5 || gTimeSpeed != 0) &&
             ((void)0, gSaveContext.dayTime) > gSaveContext.skyboxTime) ||
            (((void)0, gSaveContext.dayTime) < CLOCK_TIME(1, 0) || gTimeSpeed < 0)) {

            gSaveContext.skyboxTime = ((void)0, gSaveContext.dayTime);
        }

        time = gSaveContext.dayTime;

        if (time > CLOCK_TIME(18, 0) || time < CLOCK_TIME(6, 30)) {
            gSaveContext.nightFlag = 1;
        } else {
            gSaveContext.nightFlag = 0;
        }

        if (SREG(0) != 0 || CREG(2) != 0) {
            Gfx* displayList;
            Gfx* prevDisplayList;

            OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 1682);

            prevDisplayList = POLY_OPA_DISP;
            displayList = Graph_GfxPlusOne(POLY_OPA_DISP);
            gSPDisplayList(OVERLAY_DISP++, displayList);
            Environment_PrintDebugInfo(play, &displayList);
            gSPEndDisplayList(displayList++);
            Graph_BranchDlist(prevDisplayList, displayList);
            POLY_OPA_DISP = displayList;
            if (1) {}
            CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 1690);
        }

        if ((envCtx->lightSettingOverride != LIGHT_SETTING_OVERRIDE_NONE) &&
            (envCtx->lightBlendOverride != LIGHT_BLEND_OVERRIDE_FULL_CONTROL) &&
            (envCtx->lightSetting != envCtx->lightSettingOverride) && (envCtx->lightBlend >= 1.0f) &&
            (envCtx->lightSettingOverride <= LIGHT_SETTING_MAX)) {

            envCtx->prevLightSetting = envCtx->lightSetting;
            envCtx->lightSetting = envCtx->lightSettingOverride;
            envCtx->lightBlend = 0.0f;
        }

        if (envCtx->lightSettingOverride != LIGHT_SETTING_OVERRIDE_FULL_CONTROL) {
            if ((envCtx->lightMode == LIGHT_MODE_TIME) &&
                (envCtx->lightSettingOverride == LIGHT_SETTING_OVERRIDE_NONE)) {
                for (i = 0; i < ARRAY_COUNT(sTimeBasedLightConfigs[envCtx->lightConfig]); i++) {
                    if ((gSaveContext.skyboxTime >= sTimeBasedLightConfigs[envCtx->lightConfig][i].startTime) &&
                        ((gSaveContext.skyboxTime < sTimeBasedLightConfigs[envCtx->lightConfig][i].endTime) ||
                         sTimeBasedLightConfigs[envCtx->lightConfig][i].endTime == 0xFFFF)) {
                        u8 blend8[2];
                        s16 blend16[2];

                        sp8C = Environment_LerpWeight(sTimeBasedLightConfigs[envCtx->lightConfig][i].endTime,
                                                      sTimeBasedLightConfigs[envCtx->lightConfig][i].startTime,
                                                      ((void)0, gSaveContext.skyboxTime));

                        sSandstormColorIndex = sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting & 3;
                        sNextSandstormColorIndex = sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting & 3;
                        sSandstormLerpScale = sp8C;

                        if (envCtx->changeLightEnabled) {
                            sp88 = ((f32)envCtx->changeDuration - envCtx->changeLightTimer) / envCtx->changeDuration;
                            envCtx->changeLightTimer--;

                            if (envCtx->changeLightTimer <= 0) {
                                envCtx->changeLightEnabled = false;
                                envCtx->lightConfig = envCtx->changeLightNextConfig;
                            }
                        }

                        for (j = 0; j < 3; j++) {
                            // blend ambient color
                            blend8[0] =
                                LERP(lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting]
                                         .ambientColor[j],
                                     lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting]
                                         .ambientColor[j],
                                     sp8C);
                            blend8[1] = LERP(
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                    .ambientColor[j],
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i]
                                                      .nextLightSetting]
                                    .ambientColor[j],
                                sp8C);
                            *(envCtx->lightSettings.ambientColor + j) = LERP(blend8[0], blend8[1], sp88);
                        }

                        // set light1 direction for the sun
                        envCtx->lightSettings.light1Dir[0] =
                            -(Math_SinS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f);
                        envCtx->lightSettings.light1Dir[1] =
                            Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f;
                        envCtx->lightSettings.light1Dir[2] =
                            Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 20.0f;

                        // set light2 direction for the moon
                        envCtx->lightSettings.light2Dir[0] = -envCtx->lightSettings.light1Dir[0];
                        envCtx->lightSettings.light2Dir[1] = -envCtx->lightSettings.light1Dir[1];
                        envCtx->lightSettings.light2Dir[2] = -envCtx->lightSettings.light1Dir[2];

                        for (j = 0; j < 3; j++) {
                            // blend light1Color
                            blend8[0] =
                                LERP(lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting]
                                         .light1Color[j],
                                     lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting]
                                         .light1Color[j],
                                     sp8C);
                            blend8[1] = LERP(
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                    .light1Color[j],
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i]
                                                      .nextLightSetting]
                                    .light1Color[j],
                                sp8C);
                            *(envCtx->lightSettings.light1Color + j) = LERP(blend8[0], blend8[1], sp88);

                            // blend light2Color
                            blend8[0] =
                                LERP(lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting]
                                         .light2Color[j],
                                     lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting]
                                         .light2Color[j],
                                     sp8C);
                            blend8[1] = LERP(
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                    .light2Color[j],
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i]
                                                      .nextLightSetting]
                                    .light2Color[j],
                                sp8C);
                            *(envCtx->lightSettings.light2Color + j) = LERP(blend8[0], blend8[1], sp88);
                        }

                        // blend fogColor
                        for (j = 0; j < 3; j++) {
                            blend8[0] =
                                LERP(lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting]
                                         .fogColor[j],
                                     lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting]
                                         .fogColor[j],
                                     sp8C);
                            blend8[1] = LERP(
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                    .fogColor[j],
                                lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i]
                                                      .nextLightSetting]
                                    .fogColor[j],
                                sp8C);
                            *(envCtx->lightSettings.fogColor + j) = LERP(blend8[0], blend8[1], sp88);
                        }

                        blend16[0] = LERP16(
                            (lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting].fogNear &
                             0x3FF),
                            (lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting]
                                 .fogNear &
                             0x3FF),
                            sp8C);
                        blend16[1] = LERP16(
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                    .fogNear &
                                0x3FF,
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].nextLightSetting]
                                    .fogNear &
                                0x3FF,
                            sp8C);

                        envCtx->lightSettings.fogNear = LERP16(blend16[0], blend16[1], sp88);

                        blend16[0] = LERP16(
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].lightSetting].fogFar,
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->lightConfig][i].nextLightSetting].fogFar,
                            sp8C);
                        blend16[1] = LERP16(
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].lightSetting]
                                .fogFar,
                            lightSettingsList[sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].nextLightSetting]
                                .fogFar,
                            sp8C);

                        envCtx->lightSettings.fogFar = LERP16(blend16[0], blend16[1], sp88);

                        if (sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].nextLightSetting >=
                            envCtx->numLightSettings) {
                            // "The color palette setting seems to be wrong!"
                            osSyncPrintf(VT_COL(RED, WHITE) "\nカラーパレットの設定がおかしいようです！" VT_RST);

                            // "Palette setting = [] Last palette number = []"
                            osSyncPrintf(VT_COL(RED, WHITE) "\n設定パレット＝[%d] 最後パレット番号＝[%d]\n" VT_RST,
                                         sTimeBasedLightConfigs[envCtx->changeLightNextConfig][i].nextLightSetting,
                                         envCtx->numLightSettings - 1);
                        }
                        break;
                    }
                }
            } else {
                if (!envCtx->lightBlendEnabled) {
                    for (i = 0; i < 3; i++) {
                        envCtx->lightSettings.ambientColor[i] = lightSettingsList[envCtx->lightSetting].ambientColor[i];
                        envCtx->lightSettings.light1Dir[i] = lightSettingsList[envCtx->lightSetting].light1Dir[i];
                        envCtx->lightSettings.light1Color[i] = lightSettingsList[envCtx->lightSetting].light1Color[i];
                        envCtx->lightSettings.light2Dir[i] = lightSettingsList[envCtx->lightSetting].light2Dir[i];
                        envCtx->lightSettings.light2Color[i] = lightSettingsList[envCtx->lightSetting].light2Color[i];
                        envCtx->lightSettings.fogColor[i] = lightSettingsList[envCtx->lightSetting].fogColor[i];
                    }

                    envCtx->lightSettings.fogNear = lightSettingsList[envCtx->lightSetting].fogNear & 0x3FF;
                    envCtx->lightSettings.fogFar = lightSettingsList[envCtx->lightSetting].fogFar;
                    envCtx->lightBlend = 1.0f;
                } else {
                    u8 blendRate = (lightSettingsList[envCtx->lightSetting].fogNear >> 0xA) * 4;

                    if (blendRate == 0) {
                        blendRate++;
                    }

                    if (envCtx->lightBlendRateOverride != LIGHT_BLENDRATE_OVERRIDE_NONE) {
                        blendRate = envCtx->lightBlendRateOverride;
                    }

                    if (envCtx->lightBlendOverride == LIGHT_BLEND_OVERRIDE_NONE) {
                        envCtx->lightBlend += blendRate / 255.0f;
                    }

                    if (envCtx->lightBlend > 1.0f) {
                        envCtx->lightBlend = 1.0f;
                    }

                    for (i = 0; i < 3; i++) {
                        envCtx->lightSettings.ambientColor[i] =
                            LERP(lightSettingsList[envCtx->prevLightSetting].ambientColor[i],
                                 lightSettingsList[envCtx->lightSetting].ambientColor[i], envCtx->lightBlend);
                        envCtx->lightSettings.light1Dir[i] =
                            LERP16(lightSettingsList[envCtx->prevLightSetting].light1Dir[i],
                                   lightSettingsList[envCtx->lightSetting].light1Dir[i], envCtx->lightBlend);
                        envCtx->lightSettings.light1Color[i] =
                            LERP(lightSettingsList[envCtx->prevLightSetting].light1Color[i],
                                 lightSettingsList[envCtx->lightSetting].light1Color[i], envCtx->lightBlend);
                        envCtx->lightSettings.light2Dir[i] =
                            LERP16(lightSettingsList[envCtx->prevLightSetting].light2Dir[i],
                                   lightSettingsList[envCtx->lightSetting].light2Dir[i], envCtx->lightBlend);
                        envCtx->lightSettings.light2Color[i] =
                            LERP(lightSettingsList[envCtx->prevLightSetting].light2Color[i],
                                 lightSettingsList[envCtx->lightSetting].light2Color[i], envCtx->lightBlend);
                        envCtx->lightSettings.fogColor[i] =
                            LERP(lightSettingsList[envCtx->prevLightSetting].fogColor[i],
                                 lightSettingsList[envCtx->lightSetting].fogColor[i], envCtx->lightBlend);
                    }
                    envCtx->lightSettings.fogNear =
                        LERP16(lightSettingsList[envCtx->prevLightSetting].fogNear & 0x3FF,
                               lightSettingsList[envCtx->lightSetting].fogNear & 0x3FF, envCtx->lightBlend);
                    envCtx->lightSettings.fogFar =
                        LERP16(lightSettingsList[envCtx->prevLightSetting].fogFar,
                               lightSettingsList[envCtx->lightSetting].fogFar, envCtx->lightBlend);
                }

                if (envCtx->lightSetting >= envCtx->numLightSettings) {
                    // "The color palette seems to be wrong!"
                    osSyncPrintf("\n" VT_FGCOL(RED) "カラーパレットがおかしいようです！");

                    // "Palette setting = [] Last palette number = []"
                    osSyncPrintf("\n" VT_FGCOL(YELLOW) "設定パレット＝[%d] パレット数＝[%d]\n" VT_RST,
                                 envCtx->lightSetting, envCtx->numLightSettings);
                }
            }
        }

        envCtx->lightBlendEnabled = true;

        // Apply lighting adjustments
        for (i = 0; i < 3; i++) {
            if ((s16)(envCtx->lightSettings.ambientColor[i] + envCtx->adjAmbientColor[i]) > 255) {
                lightCtx->ambientColor[i] = 255;
            } else if ((s16)(envCtx->lightSettings.ambientColor[i] + envCtx->adjAmbientColor[i]) < 0) {
                lightCtx->ambientColor[i] = 0;
            } else {
                lightCtx->ambientColor[i] = (s16)(envCtx->lightSettings.ambientColor[i] + envCtx->adjAmbientColor[i]);
            }

            if ((s16)(envCtx->lightSettings.light1Color[i] + envCtx->adjLight1Color[i]) > 255) {
                envCtx->dirLight1.params.dir.color[i] = 255;
            } else if ((s16)(envCtx->lightSettings.light1Color[i] + envCtx->adjLight1Color[i]) < 0) {
                envCtx->dirLight1.params.dir.color[i] = 0;
            } else {
                envCtx->dirLight1.params.dir.color[i] =
                    (s16)(envCtx->lightSettings.light1Color[i] + envCtx->adjLight1Color[i]);
            }

            if ((s16)(envCtx->lightSettings.light2Color[i] + envCtx->adjLight1Color[i]) > 255) {
                envCtx->dirLight2.params.dir.color[i] = 255;
            } else if ((s16)(envCtx->lightSettings.light2Color[i] + envCtx->adjLight1Color[i]) < 0) {
                envCtx->dirLight2.params.dir.color[i] = 0;
            } else {
                envCtx->dirLight2.params.dir.color[i] =
                    (s16)(envCtx->lightSettings.light2Color[i] + envCtx->adjLight1Color[i]);
            }

            if ((s16)(envCtx->lightSettings.fogColor[i] + envCtx->adjFogColor[i]) > 255) {
                lightCtx->fogColor[i] = 255;
            } else if ((s16)(envCtx->lightSettings.fogColor[i] + envCtx->adjFogColor[i]) < 0) {
                lightCtx->fogColor[i] = 0;
            } else {
                lightCtx->fogColor[i] = (s16)(envCtx->lightSettings.fogColor[i] + envCtx->adjFogColor[i]);
            }
        }

        // Set both directional light directions
        envCtx->dirLight1.params.dir.x = envCtx->lightSettings.light1Dir[0];
        envCtx->dirLight1.params.dir.y = envCtx->lightSettings.light1Dir[1];
        envCtx->dirLight1.params.dir.z = envCtx->lightSettings.light1Dir[2];

        envCtx->dirLight2.params.dir.x = envCtx->lightSettings.light2Dir[0];
        envCtx->dirLight2.params.dir.y = envCtx->lightSettings.light2Dir[1];
        envCtx->dirLight2.params.dir.z = envCtx->lightSettings.light2Dir[2];

        // Adjust fog near and far if necessary
        adjustment = envCtx->lightSettings.fogNear + envCtx->adjFogNear;

        if (adjustment <= 996) {
            lightCtx->fogNear = adjustment;
        } else {
            lightCtx->fogNear = 996;
        }

        adjustment = envCtx->lightSettings.fogFar + envCtx->adjFogFar;

        if (adjustment <= 12800) {
            lightCtx->fogFar = adjustment;
        } else {
            lightCtx->fogFar = 12800;
        }

        // When environment debug is enabled, various environment related variables can be configured via the reg editor
        if (R_ENV_DISABLE_DBG) {
            R_ENV_AMBIENT_COLOR(0) = lightCtx->ambientColor[0];
            R_ENV_AMBIENT_COLOR(1) = lightCtx->ambientColor[1];
            R_ENV_AMBIENT_COLOR(2) = lightCtx->ambientColor[2];

            R_ENV_LIGHT1_COLOR(0) = envCtx->dirLight1.params.dir.color[0];
            R_ENV_LIGHT1_COLOR(1) = envCtx->dirLight1.params.dir.color[1];
            R_ENV_LIGHT1_COLOR(2) = envCtx->dirLight1.params.dir.color[2];

            R_ENV_LIGHT2_COLOR(0) = envCtx->dirLight2.params.dir.color[0];
            R_ENV_LIGHT2_COLOR(1) = envCtx->dirLight2.params.dir.color[1];
            R_ENV_LIGHT2_COLOR(2) = envCtx->dirLight2.params.dir.color[2];

            R_ENV_FOG_COLOR(0) = lightCtx->fogColor[0];
            R_ENV_FOG_COLOR(1) = lightCtx->fogColor[1];
            R_ENV_FOG_COLOR(2) = lightCtx->fogColor[2];

            R_ENV_FOG_FAR = lightCtx->fogFar;
            R_ENV_FOG_NEAR = lightCtx->fogNear;

            R_ENV_LIGHT1_DIR(0) = envCtx->dirLight1.params.dir.x;
            R_ENV_LIGHT1_DIR(1) = envCtx->dirLight1.params.dir.y;
            R_ENV_LIGHT1_DIR(2) = envCtx->dirLight1.params.dir.z;

            R_ENV_LIGHT2_DIR(0) = envCtx->dirLight2.params.dir.x;
            R_ENV_LIGHT2_DIR(1) = envCtx->dirLight2.params.dir.y;
            R_ENV_LIGHT2_DIR(2) = envCtx->dirLight2.params.dir.z;

            R_ENV_WIND_DIR(0) = envCtx->windDirection.x;
            R_ENV_WIND_DIR(1) = envCtx->windDirection.y;
            R_ENV_WIND_DIR(2) = envCtx->windDirection.z;
            R_ENV_WIND_SPEED = envCtx->windSpeed;
        } else {
            lightCtx->ambientColor[0] = R_ENV_AMBIENT_COLOR(0);
            lightCtx->ambientColor[1] = R_ENV_AMBIENT_COLOR(1);
            lightCtx->ambientColor[2] = R_ENV_AMBIENT_COLOR(2);

            envCtx->dirLight1.params.dir.color[0] = R_ENV_LIGHT1_COLOR(0);
            envCtx->dirLight1.params.dir.color[1] = R_ENV_LIGHT1_COLOR(1);
            envCtx->dirLight1.params.dir.color[2] = R_ENV_LIGHT1_COLOR(2);

            envCtx->dirLight2.params.dir.color[0] = R_ENV_LIGHT2_COLOR(0);
            envCtx->dirLight2.params.dir.color[1] = R_ENV_LIGHT2_COLOR(1);
            envCtx->dirLight2.params.dir.color[2] = R_ENV_LIGHT2_COLOR(2);
            lightCtx->fogColor[0] = R_ENV_FOG_COLOR(0);
            lightCtx->fogColor[1] = R_ENV_FOG_COLOR(1);
            lightCtx->fogColor[2] = R_ENV_FOG_COLOR(2);
            lightCtx->fogNear = R_ENV_FOG_NEAR;
            lightCtx->fogFar = R_ENV_FOG_FAR;

            if (cREG(14)) {
                R_ENV_LIGHT1_DIR(0) = Math_CosS(cREG(10)) * Math_CosS(cREG(11)) * 120.0f;
                envCtx->dirLight1.params.dir.x = R_ENV_LIGHT1_DIR(0);
                R_ENV_LIGHT1_DIR(1) = Math_SinS(cREG(10)) * Math_CosS(cREG(11)) * 120.0f;
                envCtx->dirLight1.params.dir.y = R_ENV_LIGHT1_DIR(1);
                R_ENV_LIGHT1_DIR(2) = Math_SinS(cREG(11)) * 120.0f;
                envCtx->dirLight1.params.dir.z = R_ENV_LIGHT1_DIR(2);

                R_ENV_LIGHT2_DIR(0) = Math_CosS(cREG(12)) * Math_CosS(cREG(13)) * 120.0f;
                envCtx->dirLight2.params.dir.x = R_ENV_LIGHT2_DIR(0);
                R_ENV_LIGHT2_DIR(1) = Math_SinS(cREG(12)) * Math_CosS(cREG(13)) * 120.0f;
                envCtx->dirLight2.params.dir.y = R_ENV_LIGHT2_DIR(1);
                R_ENV_LIGHT2_DIR(2) = Math_SinS(cREG(13)) * 120.0f;
                envCtx->dirLight2.params.dir.z = R_ENV_LIGHT2_DIR(2);
            } else {
                envCtx->dirLight1.params.dir.x = R_ENV_LIGHT1_DIR(0);
                envCtx->dirLight1.params.dir.y = R_ENV_LIGHT1_DIR(1);
                envCtx->dirLight1.params.dir.z = R_ENV_LIGHT1_DIR(2);

                envCtx->dirLight2.params.dir.x = R_ENV_LIGHT2_DIR(0);
                envCtx->dirLight2.params.dir.y = R_ENV_LIGHT2_DIR(1);
                envCtx->dirLight2.params.dir.z = R_ENV_LIGHT2_DIR(2);
            }

            envCtx->windDirection.x = R_ENV_WIND_DIR(0);
            envCtx->windDirection.y = R_ENV_WIND_DIR(1);
            envCtx->windDirection.z = R_ENV_WIND_DIR(2);
            envCtx->windSpeed = R_ENV_WIND_SPEED;
        }

        if ((envCtx->dirLight1.params.dir.x == 0) && (envCtx->dirLight1.params.dir.y == 0) &&
            (envCtx->dirLight1.params.dir.z == 0)) {
            envCtx->dirLight1.params.dir.x = 1;
        }

        if ((envCtx->dirLight2.params.dir.x == 0) && (envCtx->dirLight2.params.dir.y == 0) &&
            (envCtx->dirLight2.params.dir.z == 0)) {
            envCtx->dirLight2.params.dir.x = 1;
        }
    }
}

void Environment_DrawSunAndMoon(PlayState* play) {
    f32 alpha;
    f32 color;
    f32 y;
    f32 scale;
    f32 temp;

    OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 2266);

    if (play->csCtx.state != 0) {
        Math_SmoothStepToF(&play->envCtx.sunPos.x,
                           -(Math_SinS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f, 1.0f,
                           0.8f, 0.8f);
        Math_SmoothStepToF(&play->envCtx.sunPos.y,
                           (Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f, 1.0f,
                           0.8f, 0.8f);
        //! @bug This should be z.
        Math_SmoothStepToF(&play->envCtx.sunPos.y,
                           (Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 20.0f) * 25.0f, 1.0f, 0.8f,
                           0.8f);
    } else {
        play->envCtx.sunPos.x = -(Math_SinS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
        play->envCtx.sunPos.y = +(Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
        play->envCtx.sunPos.z = +(Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 20.0f) * 25.0f;
    }

    if (gSaveContext.entranceIndex != ENTR_SPOT00_0 || ((void)0, gSaveContext.sceneSetupIndex) != 5) {
        Matrix_Translate(play->view.eye.x + play->envCtx.sunPos.x, play->view.eye.y + play->envCtx.sunPos.y,
                         play->view.eye.z + play->envCtx.sunPos.z, MTXMODE_NEW);

        y = play->envCtx.sunPos.y / 25.0f;
        temp = y / 80.0f;

        alpha = temp * 255.0f;
        if (alpha < 0.0f) {
            alpha = 0.0f;
        }
        if (alpha > 255.0f) {
            alpha = 255.0f;
        }

        alpha = 255.0f - alpha;

        color = temp;
        if (color < 0.0f) {
            color = 0.0f;
        }

        if (color > 1.0f) {
            color = 1.0f;
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, (u8)(color * 75.0f) + 180, (u8)(color * 155.0f) + 100, 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, (u8)(color * 255.0f), (u8)(color * 255.0f), alpha);

        scale = (color * 2.0f) + 10.0f;
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_kankyo.c", 2364), G_MTX_LOAD);
        Gfx_SetupDL_54Opa(play->state.gfxCtx);
        gSPDisplayList(POLY_OPA_DISP++, gSunDL);

        Matrix_Translate(play->view.eye.x - play->envCtx.sunPos.x, play->view.eye.y - play->envCtx.sunPos.y,
                         play->view.eye.z - play->envCtx.sunPos.z, MTXMODE_NEW);

        color = -y / 120.0f;
        color = CLAMP_MIN(color, 0.0f);

        scale = -15.0f * color + 25.0f;
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

        temp = -y / 80.0f;
        temp = CLAMP_MAX(temp, 1.0f);

        alpha = temp * 255.0f;

        if (alpha > 0.0f) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_kankyo.c", 2406), G_MTX_LOAD);
            Gfx_SetupDL_51Opa(play->state.gfxCtx);
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 240, 255, 180, alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, 80, 70, 20, alpha);
            gSPDisplayList(POLY_OPA_DISP++, gMoonDL);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 2429);
}

void Environment_DrawSunLensFlare(PlayState* play, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx,
                                  Vec3f pos, s32 unused) {
    if ((play->envCtx.precipitation[PRECIP_RAIN_CUR] == 0) && (play->envCtx.skyboxConfig == 0)) {
        Environment_DrawLensFlare(play, &play->envCtx, &play->view, play->state.gfxCtx, pos, 2000, 370,
                                  Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f, 400, true);
    }
}

f32 sLensFlareScales[] = { 23.0f, 12.0f, 7.0f, 5.0f, 3.0f, 10.0f, 6.0f, 2.0f, 3.0f, 1.0f };

typedef enum {
    /* 0 */ LENS_FLARE_CIRCLE0,
    /* 1 */ LENS_FLARE_CIRCLE1,
    /* 2 */ LENS_FLARE_RING
} LensFlareType;

void Environment_DrawLensFlare(PlayState* play, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx,
                               Vec3f pos, s32 unused, s16 scale, f32 colorIntensity, s16 glareStrength, u8 isSun) {
    s16 i;
    f32 tempX;
    f32 tempY;
    f32 tempZ;
    f32 lookDirX;
    f32 lookDirY;
    f32 lookDirZ;
    f32 tempX2;
    f32 tempY2;
    f32 tempZ2;
    f32 posDirX;
    f32 posDirY;
    f32 posDirZ;
    f32 length;
    f32 dist;
    f32 halfPosX;
    f32 halfPosY;
    f32 halfPosZ;
    f32 cosAngle;
    s32 pad;
    f32 lensFlareAlphaScaleTarget;
    u32 isOffScreen = false;
    f32 alpha;
    f32 adjScale;
    Vec3f screenPos;
    f32 fogInfluence;
    f32 temp;
    f32 glareAlphaScale;
    Color_RGB8 lensFlareColors[] = {
        { 155, 205, 255 }, // blue
        { 255, 255, 205 }, // yellow
        { 255, 255, 205 }, // yellow
        { 255, 255, 205 }, // yellow
        { 155, 255, 205 }, // green
        { 205, 255, 255 }, // light blue
        { 155, 155, 255 }, // dark blue
        { 205, 175, 255 }, // purple
        { 175, 255, 205 }, // light green
        { 255, 155, 235 }, // pink
    };
    u32 lensFlareAlphas[] = {
        50, 10, 25, 40, 70, 30, 50, 70, 50, 40,
    };
    u32 lensFlareTypes[] = {
        LENS_FLARE_RING,    LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1,
        LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1,
    };

    OPEN_DISPS(gfxCtx, "../z_kankyo.c", 2516);

    dist = Math3D_Vec3f_DistXYZ(&pos, &view->eye) / 12.0f;

    // compute a unit vector in the look direction
    tempX = view->at.x - view->eye.x;
    tempY = view->at.y - view->eye.y;
    tempZ = view->at.z - view->eye.z;

    length = sqrtf(SQ(tempX) + SQ(tempY) + SQ(tempZ));

    lookDirX = tempX / length;
    lookDirY = tempY / length;
    lookDirZ = tempZ / length;

    // compute a position along the look vector half as far as pos
    halfPosX = view->eye.x + lookDirX * (dist * 6.0f);
    halfPosY = view->eye.y + lookDirY * (dist * 6.0f);
    halfPosZ = view->eye.z + lookDirZ * (dist * 6.0f);

    // compute a unit vector in the direction from halfPos to pos
    tempX2 = pos.x - halfPosX;
    tempY2 = pos.y - halfPosY;
    tempZ2 = pos.z - halfPosZ;

    length = sqrtf(SQ(tempX2) + SQ(tempY2) + SQ(tempZ2));

    posDirX = tempX2 / length;
    posDirY = tempY2 / length;
    posDirZ = tempZ2 / length;

    // compute the cosine of the angle between lookDir and posDir
    cosAngle = (lookDirX * posDirX + lookDirY * posDirY + lookDirZ * posDirZ) /
               sqrtf((SQ(lookDirX) + SQ(lookDirY) + SQ(lookDirZ)) * (SQ(posDirX) + SQ(posDirY) + SQ(posDirZ)));

    lensFlareAlphaScaleTarget = cosAngle * 3.5f;
    lensFlareAlphaScaleTarget = CLAMP_MAX(lensFlareAlphaScaleTarget, 1.0f);

    if (!isSun) {
        lensFlareAlphaScaleTarget = cosAngle;
    }

    if (cosAngle < 0.0f) {
        // don't draw lens flare
    } else {
        if (isSun) {
            Play_GetScreenPos(play, &pos, &screenPos);
            sSunDepthTestX = (s16)screenPos.x;
            sSunDepthTestY = (s16)screenPos.y - 5.0f;
            if (sSunScreenDepth != GPACK_ZDZ(G_MAXFBZ, 0) || screenPos.x < 0.0f || screenPos.y < 0.0f ||
                screenPos.x > SCREEN_WIDTH || screenPos.y > SCREEN_HEIGHT) {
                isOffScreen = true;
            }
        }

        for (i = 0; i < ARRAY_COUNT(lensFlareTypes); i++) {
            Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);

            if (isSun) {
                temp = Environment_LerpWeight(60, 15, play->view.fovy);
            }

            Matrix_Translate(-posDirX * i * dist, -posDirY * i * dist, -posDirZ * i * dist, MTXMODE_APPLY);
            adjScale = sLensFlareScales[i] * cosAngle;

            if (isSun) {
                adjScale *= 0.001 * (scale + 630.0f * temp);
            } else {
                adjScale *= 0.0001f * scale * (2.0f * dist);
            }

            Matrix_Scale(adjScale, adjScale, adjScale, MTXMODE_APPLY);

            alpha = colorIntensity / 10.0f;
            alpha = CLAMP_MAX(alpha, 1.0f);
            alpha = alpha * lensFlareAlphas[i];
            alpha = CLAMP_MIN(alpha, 0.0f);

            fogInfluence = (996 - play->lightCtx.fogNear) / 50.0f;

            fogInfluence = CLAMP_MAX(fogInfluence, 1.0f);

            alpha *= 1.0f - fogInfluence;

            if (1) {}

            if (!(isOffScreen ^ 0)) {
                Math_SmoothStepToF(&envCtx->lensFlareAlphaScale, lensFlareAlphaScaleTarget, 0.5f, 0.05f, 0.001f);
            } else {
                Math_SmoothStepToF(&envCtx->lensFlareAlphaScale, 0.0f, 0.5f, 0.05f, 0.001f);
            }

            POLY_XLU_DISP = func_800947AC(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, lensFlareColors[i].r, lensFlareColors[i].g, lensFlareColors[i].b,
                            alpha * envCtx->lensFlareAlphaScale);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2662),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetCombineLERP(POLY_XLU_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0,
                              0, PRIMITIVE, 0);
            gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

            switch (lensFlareTypes[i]) {
                case LENS_FLARE_CIRCLE0:
                case LENS_FLARE_CIRCLE1:
                    gSPDisplayList(POLY_XLU_DISP++, gLensFlareCircleDL);
                    break;
                case LENS_FLARE_RING:
                    gSPDisplayList(POLY_XLU_DISP++, gLensFlareRingDL);
                    break;
            }
        }

        glareAlphaScale = cosAngle - (1.5f - cosAngle);

        if (glareStrength != 0) {
            if (glareAlphaScale > 0.0f) {
                POLY_XLU_DISP = Gfx_SetupDL_57(POLY_XLU_DISP);

                alpha = colorIntensity / 10.0f;
                alpha = CLAMP_MAX(alpha, 1.0f);
                alpha = alpha * glareStrength;
                alpha = CLAMP_MIN(alpha, 0.0f);

                fogInfluence = (996 - play->lightCtx.fogNear) / 50.0f;

                fogInfluence = CLAMP_MAX(fogInfluence, 1.0f);

                alpha *= 1.0f - fogInfluence;

                gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
                gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);

                if (!(isOffScreen ^ 0)) {
                    Math_SmoothStepToF(&envCtx->glareAlpha, alpha * glareAlphaScale, 0.5f, 50.0f, 0.1f);
                } else {
                    Math_SmoothStepToF(&envCtx->glareAlpha, 0.0f, 0.5f, 50.0f, 0.1f);
                }

                temp = colorIntensity / 120.0f;
                temp = CLAMP_MIN(temp, 0.0f);

                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, (u8)(temp * 75.0f) + 180, (u8)(temp * 155.0f) + 100,
                                (u8)envCtx->glareAlpha);
                gDPFillRectangle(POLY_XLU_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
            } else {
                envCtx->glareAlpha = 0.0f;
            }
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 2750);
}

f32 Environment_RandCentered(void) {
    return Rand_ZeroOne() - 0.5f;
}

void Environment_DrawRain(PlayState* play, View* view, GraphicsContext* gfxCtx) {
    s16 i;
    s32 pad;
    Vec3f vec;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 length;
    f32 rotX;
    f32 rotY;
    f32 x50;
    f32 y50;
    f32 z50;
    f32 x280;
    f32 z280;
    Vec3f unused = { 0.0f, 0.0f, 0.0f };
    Vec3f windDirection = { 0.0f, 0.0f, 0.0f };
    Player* player = GET_PLAYER(play);

    if (!(play->cameraPtrs[0]->unk_14C & 0x100) && (play->envCtx.precipitation[PRECIP_SNOW_CUR] == 0)) {
        OPEN_DISPS(gfxCtx, "../z_kankyo.c", 2799);

        vec.x = view->at.x - view->eye.x;
        vec.y = view->at.y - view->eye.y;
        vec.z = view->at.z - view->eye.z;

        length = sqrtf(SQXYZ(vec));

        temp1 = vec.x / length;
        temp2 = vec.y / length;
        temp3 = vec.z / length;

        x50 = view->eye.x + temp1 * 50.0f;
        y50 = view->eye.y + temp2 * 50.0f;
        z50 = view->eye.z + temp3 * 50.0f;

        x280 = view->eye.x + temp1 * 280.0f;
        z280 = view->eye.z + temp3 * 280.0f;

        if (play->envCtx.precipitation[PRECIP_RAIN_CUR]) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 150, 255, 255, 30);
            POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);
        }

        // draw rain drops
        for (i = 0; i < play->envCtx.precipitation[PRECIP_RAIN_CUR]; i++) {
            temp2 = Rand_ZeroOne();
            temp1 = Rand_ZeroOne();
            temp3 = Rand_ZeroOne();

            Matrix_Translate((temp2 - 0.7f) * 100.0f + x50, (temp1 - 0.7f) * 100.0f + y50,
                             (temp3 - 0.7f) * 100.0f + z50, MTXMODE_NEW);

            windDirection.x = play->envCtx.windDirection.x;
            windDirection.y = play->envCtx.windDirection.y;
            windDirection.z = play->envCtx.windDirection.z;

            vec.x = windDirection.x;
            vec.y = windDirection.y + 500.0f + Rand_ZeroOne() * 200.0f;
            vec.z = windDirection.z;
            length = sqrtf(SQXZ(vec));

            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            rotX = Math_Atan2F(length, -vec.y);
            rotY = Math_Atan2F(vec.z, vec.x);
            Matrix_RotateY(-rotY, MTXMODE_APPLY);
            Matrix_RotateX(M_PI / 2 - rotX, MTXMODE_APPLY);
            Matrix_Scale(0.4f, 1.2f, 0.4f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2887),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gRaindropDL);
        }

        // draw droplet rings on the ground
        if (player->actor.world.pos.y < view->eye.y) {
            u8 materialFlag = false;

            for (i = 0; i < play->envCtx.precipitation[PRECIP_RAIN_CUR]; i++) {
                if (!materialFlag) {
                    Gfx_SetupDL_25Xlu(gfxCtx);
                    gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 155, 0);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 120);
                    materialFlag++;
                }

                Matrix_Translate(Environment_RandCentered() * 280.0f + x280, player->actor.world.pos.y + 2.0f,
                                 Environment_RandCentered() * 280.0f + z280, MTXMODE_NEW);

                if ((LINK_IS_ADULT && ((player->actor.world.pos.y + 2.0f - view->eye.y) > -48.0f)) ||
                    (!LINK_IS_ADULT && ((player->actor.world.pos.y + 2.0f - view->eye.y) > -30.0f))) {
                    Matrix_Scale(0.02f, 0.02f, 0.02f, MTXMODE_APPLY);
                } else {
                    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
                }

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2940),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, gEffShockwaveDL);
            }
        }

        CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 2946);
    }
}

void Environment_ChangeLightSetting(PlayState* play, u32 lightSetting) {
    if ((play->envCtx.lightSetting != lightSetting) && (play->envCtx.lightBlend >= 1.0f) &&
        (play->envCtx.lightSettingOverride == LIGHT_SETTING_OVERRIDE_NONE)) {
        if (lightSetting >= LIGHT_SETTING_MAX) {
            lightSetting = 0;
        }

        play->envCtx.lightBlend = 0.0f;
        play->envCtx.prevLightSetting = play->envCtx.lightSetting;
        play->envCtx.lightSetting = lightSetting;
    }
}

/**
 * Draw color filters over the skybox. There are two filters.
 * The first uses the global fog color, and an alpha calculated with `fogNear`.
 * This filter draws unconditionally for skybox 29 at full alpha.
 * (note: skybox 29 is unused in the original game)
 * For the rest of the skyboxes it will draw if fogNear is less than 980.
 *
 * The second filter uses a custom color specified in `skyboxFilterColor`
 * and can be enabled with `customSkyboxFilter`.
 *
 * An example usage of a filter is to dim the skybox in cloudy conditions.
 */
void Environment_DrawSkyboxFilters(PlayState* play) {
    if (((play->skyboxId != SKYBOX_NONE) && (play->lightCtx.fogNear < 980)) || (play->skyboxId == SKYBOX_UNSET_1D)) {
        f32 alpha;

        OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3032);

        Gfx_SetupDL_57Opa(play->state.gfxCtx);

        alpha = (1000 - play->lightCtx.fogNear) * 0.02f;

        if (play->skyboxId == SKYBOX_UNSET_1D) {
            alpha = 1.0f;
        }

        if (alpha > 1.0f) {
            alpha = 1.0f;
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, play->lightCtx.fogColor[0], play->lightCtx.fogColor[1],
                        play->lightCtx.fogColor[2], 255.0f * alpha);
        gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3043);
    }

    if (play->envCtx.customSkyboxFilter) {
        OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3048);

        Gfx_SetupDL_57Opa(play->state.gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, play->envCtx.skyboxFilterColor[0], play->envCtx.skyboxFilterColor[1],
                        play->envCtx.skyboxFilterColor[2], play->envCtx.skyboxFilterColor[3]);
        gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3056);
    }
}

void Environment_DrawLightningFlash(PlayState* play, u8 red, u8 green, u8 blue, u8 alpha) {
    OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3069);

    Gfx_SetupDL_57Opa(play->state.gfxCtx);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, alpha);
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

    CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3079);
}

void Environment_UpdateLightningStrike(PlayState* play) {
    if (play->envCtx.lightningState != LIGHTNING_OFF) {
        switch (gLightningStrike.state) {
            case LIGHTNING_STRIKE_WAIT:
                // every frame theres a 10% chance of the timer advancing 50 units
                if (Rand_ZeroOne() < 0.1f) {
                    gLightningStrike.delayTimer += 50.0f;
                }

                gLightningStrike.delayTimer += Rand_ZeroOne();

                if (gLightningStrike.delayTimer > 500.0f) {
                    gLightningStrike.flashRed = 200;
                    gLightningStrike.flashGreen = 200;
                    gLightningStrike.flashBlue = 255;
                    gLightningStrike.flashAlphaTarget = 200;

                    gLightningStrike.delayTimer = 0.0f;
                    Environment_AddLightningBolts(play,
                                                  (u8)(Rand_ZeroOne() * (ARRAY_COUNT(sLightningBolts) - 0.1f)) + 1);
                    sLightningFlashAlpha = 0;
                    gLightningStrike.state++;
                }
                break;
            case LIGHTNING_STRIKE_START:
                gLightningStrike.flashRed = 200;
                gLightningStrike.flashGreen = 200;
                gLightningStrike.flashBlue = 255;

                play->envCtx.adjAmbientColor[0] += 80;
                play->envCtx.adjAmbientColor[1] += 80;
                play->envCtx.adjAmbientColor[2] += 100;

                sLightningFlashAlpha += 100;

                if (sLightningFlashAlpha >= gLightningStrike.flashAlphaTarget) {
                    Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_0, 0);
                    gLightningStrike.state++;
                    gLightningStrike.flashAlphaTarget = 0;
                }
                break;
            case LIGHTNING_STRIKE_END:
                if (play->envCtx.adjAmbientColor[0] > 0) {
                    play->envCtx.adjAmbientColor[0] -= 10;
                    play->envCtx.adjAmbientColor[1] -= 10;
                }

                if (play->envCtx.adjAmbientColor[2] > 0) {
                    play->envCtx.adjAmbientColor[2] -= 10;
                }

                sLightningFlashAlpha -= 10;

                if (sLightningFlashAlpha <= gLightningStrike.flashAlphaTarget) {
                    play->envCtx.adjAmbientColor[0] = 0;
                    play->envCtx.adjAmbientColor[1] = 0;
                    play->envCtx.adjAmbientColor[2] = 0;

                    gLightningStrike.state = LIGHTNING_STRIKE_WAIT;

                    if (play->envCtx.lightningState == LIGHTNING_LAST) {
                        play->envCtx.lightningState = LIGHTNING_OFF;
                    }
                }
                break;
        }
    }

    if (gLightningStrike.state != LIGHTNING_STRIKE_WAIT) {
        Environment_DrawLightningFlash(play, gLightningStrike.flashRed, gLightningStrike.flashGreen,
                                       gLightningStrike.flashBlue, sLightningFlashAlpha);
    }
}

/**
 * Request the number of lightning bolts specified by `num`
 * Note: only 3 lightning bolts can be active at the same time.
 */
void Environment_AddLightningBolts(PlayState* play, u8 num) {
    s16 boltsAdded = 0;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sLightningBolts); i++) {
        if (sLightningBolts[i].state == LIGHTNING_BOLT_INACTIVE) {
            sLightningBolts[i].state = LIGHTNING_BOLT_START;
            boltsAdded++;

            if (boltsAdded >= num) {
                break;
            }
        }
    }
}

/**
 * Draw any active lightning bolt entries contained in `sLightningBolts`
 */
void Environment_DrawLightning(PlayState* play, s32 unused) {
    static void* lightningTextures[] = {
        gEffLightning1Tex, gEffLightning2Tex, gEffLightning3Tex,
        gEffLightning4Tex, gEffLightning5Tex, gEffLightning6Tex,
        gEffLightning7Tex, gEffLightning8Tex, NULL,
    };
    s16 i;
    f32 dx;
    f32 dz;
    f32 x;
    f32 z;
    s32 pad[2];
    Vec3f unused1 = { 0.0f, 0.0f, 0.0f };
    Vec3f unused2 = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3253);

    for (i = 0; i < ARRAY_COUNT(sLightningBolts); i++) {
        switch (sLightningBolts[i].state) {
            case LIGHTNING_BOLT_START:
                dx = play->view.at.x - play->view.eye.x;
                dz = play->view.at.z - play->view.eye.z;

                x = dx / sqrtf(SQ(dx) + SQ(dz));
                z = dz / sqrtf(SQ(dx) + SQ(dz));

                sLightningBolts[i].pos.x = play->view.eye.x + x * 9500.0f;
                sLightningBolts[i].pos.y = Rand_ZeroOne() * 1000.0f + 4000.0f;
                sLightningBolts[i].pos.z = play->view.eye.z + z * 9500.0f;

                sLightningBolts[i].offset.x = (Rand_ZeroOne() - 0.5f) * 5000.0f;
                sLightningBolts[i].offset.y = 0.0f;
                sLightningBolts[i].offset.z = (Rand_ZeroOne() - 0.5f) * 5000.0f;

                sLightningBolts[i].textureIndex = 0;
                sLightningBolts[i].pitch = (Rand_ZeroOne() - 0.5f) * 40.0f;
                sLightningBolts[i].roll = (Rand_ZeroOne() - 0.5f) * 40.0f;
                sLightningBolts[i].delayTimer = 3 * (i + 1);
                sLightningBolts[i].state++;
                break;
            case LIGHTNING_BOLT_WAIT:
                sLightningBolts[i].delayTimer--;

                if (sLightningBolts[i].delayTimer <= 0) {
                    sLightningBolts[i].state++;
                }
                break;
            case LIGHTNING_BOLT_DRAW:
                if (sLightningBolts[i].textureIndex < 7) {
                    sLightningBolts[i].textureIndex++;
                } else {
                    sLightningBolts[i].state = LIGHTNING_BOLT_INACTIVE;
                }
                break;
        }

        if (sLightningBolts[i].state == LIGHTNING_BOLT_DRAW) {
            Matrix_Translate(sLightningBolts[i].pos.x + sLightningBolts[i].offset.x,
                             sLightningBolts[i].pos.y + sLightningBolts[i].offset.y,
                             sLightningBolts[i].pos.z + sLightningBolts[i].offset.z, MTXMODE_NEW);
            Matrix_RotateX(DEG_TO_RAD(sLightningBolts[i].pitch), MTXMODE_APPLY);
            Matrix_RotateZ(DEG_TO_RAD(sLightningBolts[i].roll), MTXMODE_APPLY);
            Matrix_Scale(22.0f, 100.0f, 22.0f, MTXMODE_APPLY);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 128);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, 128);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_kankyo.c", 3333),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(lightningTextures[sLightningBolts[i].textureIndex]));
            Gfx_SetupDL_61Xlu(play->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gEffLightningDL);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 3353);
}

void Environment_PlaySceneSequence(PlayState* play) {
    play->envCtx.timeSeqState = TIMESEQ_DISABLED;

    // both lost woods exits on the bridge from kokiri to hyrule field
    if (((void)0, gSaveContext.entranceIndex) == ENTR_SPOT10_8 ||
        ((void)0, gSaveContext.entranceIndex) == ENTR_SPOT10_9) {
        Audio_PlayNatureAmbienceSequence(NATURE_ID_KOKIRI_REGION);
    } else if (((void)0, gSaveContext.forcedSeqId) != NA_BGM_GENERAL_SFX) {
        if (!Environment_IsForcedSequenceDisabled()) {
            Audio_QueueSeqCmd(SEQ_PLAYER_BGM_MAIN << 24 | (s32)((void)0, gSaveContext.forcedSeqId));
        }
        gSaveContext.forcedSeqId = NA_BGM_GENERAL_SFX;
    } else if (play->sequenceCtx.seqId == NA_BGM_NO_MUSIC) {
        if (play->sequenceCtx.natureAmbienceId == NATURE_ID_NONE) {
            return;
        }
        if (((void)0, gSaveContext.natureAmbienceId) != play->sequenceCtx.natureAmbienceId) {
            Audio_PlayNatureAmbienceSequence(play->sequenceCtx.natureAmbienceId);
        }
    } else if (play->sequenceCtx.natureAmbienceId == NATURE_ID_NONE) {
        // "BGM Configuration"
        osSyncPrintf("\n\n\nBGM設定game_play->sound_info.BGM=[%d] old_bgm=[%d]\n\n", play->sequenceCtx.seqId,
                     ((void)0, gSaveContext.seqId));
        if (((void)0, gSaveContext.seqId) != play->sequenceCtx.seqId) {
            func_800F5550(play->sequenceCtx.seqId);
        }
    } else if (((void)0, gSaveContext.dayTime) >= CLOCK_TIME(7, 0) &&
               ((void)0, gSaveContext.dayTime) <= CLOCK_TIME(17, 10)) {
        if (((void)0, gSaveContext.seqId) != play->sequenceCtx.seqId) {
            func_800F5550(play->sequenceCtx.seqId);
        }

        play->envCtx.timeSeqState = TIMESEQ_FADE_DAY_BGM;
    } else {
        if (((void)0, gSaveContext.natureAmbienceId) != play->sequenceCtx.natureAmbienceId) {
            Audio_PlayNatureAmbienceSequence(play->sequenceCtx.natureAmbienceId);
        }

        if (((void)0, gSaveContext.dayTime) > CLOCK_TIME(17, 10) &&
            ((void)0, gSaveContext.dayTime) <= CLOCK_TIME(19, 0)) {
            play->envCtx.timeSeqState = TIMESEQ_EARLY_NIGHT_CRITTERS;
        } else if (((void)0, gSaveContext.dayTime) > CLOCK_TIME(19, 0) + 1 ||
                   ((void)0, gSaveContext.dayTime) < CLOCK_TIME(6, 30)) {
            play->envCtx.timeSeqState = TIMESEQ_NIGHT_CRITTERS;
        } else {
            play->envCtx.timeSeqState = TIMESEQ_MORNING_CRITTERS;
        }
    }

    osSyncPrintf("\n-----------------\n", ((void)0, gSaveContext.forcedSeqId));
    osSyncPrintf("\n 強制ＢＧＭ=[%d]", ((void)0, gSaveContext.forcedSeqId)); // "Forced BGM"
    osSyncPrintf("\n     ＢＧＭ=[%d]", play->sequenceCtx.seqId);
    osSyncPrintf("\n     エンブ=[%d]", play->sequenceCtx.natureAmbienceId);
    osSyncPrintf("\n     status=[%d]", play->envCtx.timeSeqState);

    Audio_SetEnvReverb(play->roomCtx.curRoom.echo);
}

void Environment_PlayTimeBasedSequence(PlayState* play) {
    switch (play->envCtx.timeSeqState) {
        case TIMESEQ_DAY_BGM:
            Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_4 << 4 | NATURE_CHANNEL_CRITTER_5,
                                             CHANNEL_IO_PORT_1, 0);

            if (play->envCtx.precipitation[PRECIP_RAIN_MAX] == 0 && play->envCtx.precipitation[PRECIP_SOS_MAX] == 0) {
                osSyncPrintf("\n\n\nNa_StartMorinigBgm\n\n");
                func_800F5510(play->sequenceCtx.seqId);
            }

            play->envCtx.timeSeqState++;
            break;

        case TIMESEQ_FADE_DAY_BGM:
            if (gSaveContext.dayTime > CLOCK_TIME(17, 10)) {
                if (play->envCtx.precipitation[PRECIP_RAIN_MAX] == 0 &&
                    play->envCtx.precipitation[PRECIP_SOS_MAX] == 0) {
                    Audio_QueueSeqCmd(0x1 << 28 | SEQ_PLAYER_BGM_MAIN << 24 | 0xF000FF);
                }

                play->envCtx.timeSeqState++;
            }
            break;

        case TIMESEQ_NIGHT_BEGIN_SFX:
            if (gSaveContext.dayTime > CLOCK_TIME(18, 0)) {
                func_800788CC(NA_SE_EV_DOG_CRY_EVENING);
                play->envCtx.timeSeqState++;
            }
            break;

        case TIMESEQ_EARLY_NIGHT_CRITTERS:
            if (play->envCtx.precipitation[PRECIP_RAIN_MAX] == 0 && play->envCtx.precipitation[PRECIP_SOS_MAX] == 0) {
                Audio_PlayNatureAmbienceSequence(play->sequenceCtx.natureAmbienceId);
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_1, 1);
            }

            play->envCtx.timeSeqState++;
            break;

        case TIMESEQ_NIGHT_DELAY:
            if (gSaveContext.dayTime > CLOCK_TIME(19, 0)) {
                play->envCtx.timeSeqState++;
            }
            break;

        case TIMESEQ_NIGHT_CRITTERS:
            Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_1, 0);

            if (play->envCtx.precipitation[PRECIP_RAIN_MAX] == 0 && play->envCtx.precipitation[PRECIP_SOS_MAX] == 0) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_1 << 4 | NATURE_CHANNEL_CRITTER_3,
                                                 CHANNEL_IO_PORT_1, 1);
            }

            play->envCtx.timeSeqState++;
            break;

        case TIMESEQ_DAY_BEGIN_SFX:
            if ((gSaveContext.dayTime <= CLOCK_TIME(19, 0)) && (gSaveContext.dayTime > CLOCK_TIME(6, 30))) {
                gSaveContext.totalDays++;
                gSaveContext.bgsDayCount++;
                gSaveContext.dogIsLost = true;
                func_80078884(NA_SE_EV_CHICKEN_CRY_M);

                if ((Inventory_ReplaceItem(play, ITEM_WEIRD_EGG, ITEM_CHICKEN) ||
                     Inventory_ReplaceItem(play, ITEM_POCKET_EGG, ITEM_POCKET_CUCCO)) &&
                    play->csCtx.state == 0 && !Player_InCsMode(play)) {
                    Message_StartTextbox(play, 0x3066, NULL);
                }

                play->envCtx.timeSeqState++;
            }
            break;

        case TIMESEQ_MORNING_CRITTERS:
            Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_1 << 4 | NATURE_CHANNEL_CRITTER_3,
                                             CHANNEL_IO_PORT_1, 0);

            if (play->envCtx.precipitation[PRECIP_RAIN_MAX] == 0 && play->envCtx.precipitation[PRECIP_SOS_MAX] == 0) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_CRITTER_4 << 4 | NATURE_CHANNEL_CRITTER_5,
                                                 CHANNEL_IO_PORT_1, 1);
            }

            play->envCtx.timeSeqState++;
            break;

        case TIMESEQ_DAY_DELAY:
            if (gSaveContext.dayTime > CLOCK_TIME(7, 0)) {
                play->envCtx.timeSeqState = 0;
            }
            break;
    }
}

void Environment_DrawCustomLensFlare(PlayState* play) {
    Vec3f pos;

    if (gCustomLensFlareOn) {
        pos.x = gCustomLensFlarePos.x;
        pos.y = gCustomLensFlarePos.y;
        pos.z = gCustomLensFlarePos.z;

        Environment_DrawLensFlare(play, &play->envCtx, &play->view, play->state.gfxCtx, pos, gLensFlareUnused,
                                  gLensFlareScale, gLensFlareColorIntensity, gLensFlareGlareStrength, false);
    }
}

void Environment_InitGameOverLights(PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);

    sGameOverLightsIntensity = 0;

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f, 0, 0, 0,
                              255);
    sNGameOverLightNode = LightContext_InsertLight(play, &play->lightCtx, &sNGameOverLightInfo);

    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f, 0, 0, 0,
                              255);
    sSGameOverLightNode = LightContext_InsertLight(play, &play->lightCtx, &sSGameOverLightInfo);
}

void Environment_FadeInGameOverLights(PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 i;

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f,
                              sGameOverLightsIntensity, sGameOverLightsIntensity, sGameOverLightsIntensity, 255);
    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f,
                              sGameOverLightsIntensity, sGameOverLightsIntensity, sGameOverLightsIntensity, 255);

    if (sGameOverLightsIntensity < 254) {
        sGameOverLightsIntensity += 2;
    }

    if (Play_CamIsNotFixed(play)) {
        for (i = 0; i < 3; i++) {
            if (play->envCtx.adjAmbientColor[i] > -255) {
                play->envCtx.adjAmbientColor[i] -= 12;
                play->envCtx.adjLight1Color[i] -= 12;
            }
            play->envCtx.adjFogColor[i] = -255;
        }

        if (play->envCtx.lightSettings.fogFar + play->envCtx.adjFogFar > 900) {
            play->envCtx.adjFogFar -= 100;
        }

        if (play->envCtx.lightSettings.fogNear + play->envCtx.adjFogNear > 950) {
            play->envCtx.adjFogNear -= 10;
        }
    } else {
        play->envCtx.fillScreen = true;
        play->envCtx.screenFillColor[0] = 0;
        play->envCtx.screenFillColor[1] = 0;
        play->envCtx.screenFillColor[2] = 0;
        play->envCtx.screenFillColor[3] = sGameOverLightsIntensity;
    }
}

void Environment_FadeOutGameOverLights(PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 i;

    if (sGameOverLightsIntensity >= 3) {
        sGameOverLightsIntensity -= 3;
    } else {
        sGameOverLightsIntensity = 0;
    }

    if (sGameOverLightsIntensity == 1) {
        LightContext_RemoveLight(play, &play->lightCtx, sNGameOverLightNode);
        LightContext_RemoveLight(play, &play->lightCtx, sSGameOverLightNode);
    } else if (sGameOverLightsIntensity >= 2) {
        Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                                  (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f,
                                  sGameOverLightsIntensity, sGameOverLightsIntensity, sGameOverLightsIntensity, 255);
        Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                                  (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f,
                                  sGameOverLightsIntensity, sGameOverLightsIntensity, sGameOverLightsIntensity, 255);
    }

    if (Play_CamIsNotFixed(play)) {
        for (i = 0; i < 3; i++) {
            Math_SmoothStepToS(&play->envCtx.adjAmbientColor[i], 0, 5, 12, 1);
            Math_SmoothStepToS(&play->envCtx.adjLight1Color[i], 0, 5, 12, 1);
            play->envCtx.adjFogColor[i] = 0;
        }
        play->envCtx.adjFogFar = 0;
        play->envCtx.adjFogNear = 0;
    } else {
        play->envCtx.fillScreen = true;
        play->envCtx.screenFillColor[0] = 0;
        play->envCtx.screenFillColor[1] = 0;
        play->envCtx.screenFillColor[2] = 0;
        play->envCtx.screenFillColor[3] = sGameOverLightsIntensity;
        if (sGameOverLightsIntensity == 0) {
            play->envCtx.fillScreen = false;
        }
    }
}

void Environment_UpdateRain(PlayState* play) {
    u8 max = MAX(play->envCtx.precipitation[PRECIP_RAIN_MAX], play->envCtx.precipitation[PRECIP_SOS_MAX]);

    if (play->envCtx.precipitation[PRECIP_RAIN_CUR] != max && ((play->state.frames % 8) == 0)) {
        if (play->envCtx.precipitation[PRECIP_RAIN_CUR] < max) {
            play->envCtx.precipitation[PRECIP_RAIN_CUR] += 2;
        } else {
            play->envCtx.precipitation[PRECIP_RAIN_CUR] -= 2;
        }
    }
}

void Environment_FillScreen(GraphicsContext* gfxCtx, u8 red, u8 green, u8 blue, u8 alpha, u8 drawFlags) {
    if (alpha != 0) {
        OPEN_DISPS(gfxCtx, "../z_kankyo.c", 3835);

        if (drawFlags & FILL_SCREEN_OPA) {
            POLY_OPA_DISP = Gfx_SetupDL_57(POLY_OPA_DISP);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, alpha);
            gDPSetAlphaDither(POLY_OPA_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_OPA_DISP++, G_CD_DISABLE);
            gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        if (drawFlags & FILL_SCREEN_XLU) {
            POLY_XLU_DISP = Gfx_SetupDL_57(POLY_XLU_DISP);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, red, green, blue, alpha);

            if ((u32)alpha == 255) {
                gDPSetRenderMode(POLY_XLU_DISP++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
            }

            gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
            gDPFillRectangle(POLY_XLU_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 3863);
    }
}

Color_RGB8 sSandstormPrimColors[] = {
    { 210, 156, 85 },
    { 255, 200, 100 },
    { 225, 160, 50 },
    { 105, 90, 40 },
};

Color_RGB8 sSandstormEnvColors[] = {
    { 155, 106, 35 },
    { 200, 150, 50 },
    { 170, 110, 0 },
    { 50, 40, 0 },
};

void Environment_DrawSandstorm(PlayState* play, u8 sandstormState) {
    s32 primA1;
    s32 envA1;
    s32 primA = play->envCtx.sandstormPrimA;
    s32 envA = play->envCtx.sandstormEnvA;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    s32 pad;
    f32 sp98;
    u16 sp96;
    u16 sp94;
    u16 sp92;

    switch (sandstormState) {
        case SANDSTORM_ACTIVE:
            if ((play->sceneNum == SCENE_SPOT13) && (play->roomCtx.curRoom.num == 0)) {
                envA1 = 0;
                primA1 = (play->envCtx.sandstormEnvA > 128) ? 255 : play->envCtx.sandstormEnvA >> 1;
            } else {
                primA1 = play->state.frames % 128;
                if (primA1 > 64) {
                    primA1 = 128 - primA1;
                }
                primA1 += 73;
                envA1 = 128;
            }
            break;

        case SANDSTORM_FILL:
            primA1 = 255;
            envA1 = (play->envCtx.sandstormPrimA >= 255) ? 255 : 128;
            break;

        case SANDSTORM_UNFILL:
            envA1 = 128;
            if (play->envCtx.sandstormEnvA > 128) {
                primA1 = 255;
            } else {
                primA1 = play->state.frames % 128;
                if (primA1 > 64) {
                    primA1 = 128 - primA1;
                }
                primA1 += 73;
            }
            if ((primA1 >= primA) && (primA1 != 255)) {
                play->envCtx.sandstormState = SANDSTORM_ACTIVE;
            }
            break;

        case SANDSTORM_DISSIPATE:
            envA1 = 0;
            primA1 = (play->envCtx.sandstormEnvA > 128) ? 255 : play->envCtx.sandstormEnvA >> 1;

            if (primA == 0) {
                play->envCtx.sandstormState = SANDSTORM_OFF;
            }
            break;
    }

    if (ABS(primA - primA1) < 9) {
        primA = primA1;
    } else if (primA1 < primA) {
        primA = primA - 9;
    } else {
        primA = primA + 9;
    }

    if (ABS(envA - envA1) < 9) {
        envA = envA1;
    } else if (envA1 < envA) {
        envA = envA - 9;
    } else {
        envA = envA + 9;
    }

    play->envCtx.sandstormPrimA = primA;
    play->envCtx.sandstormEnvA = envA;

    sp98 = (512.0f - (primA + envA)) * (3.0f / 128.0f);

    if (sp98 > 6.0f) {
        sp98 = 6.0f;
    }

    if ((play->envCtx.lightMode != LIGHT_MODE_TIME) ||
        (play->envCtx.lightSettingOverride != LIGHT_SETTING_OVERRIDE_NONE)) {
        primColor.r = sSandstormPrimColors[1].r;
        primColor.g = sSandstormPrimColors[1].g;
        primColor.b = sSandstormPrimColors[1].b;
        envColor.r = sSandstormEnvColors[1].r;
        envColor.g = sSandstormEnvColors[1].g;
        envColor.b = sSandstormEnvColors[1].b;
    } else if (sSandstormColorIndex == sNextSandstormColorIndex) {
        primColor.r = sSandstormPrimColors[sSandstormColorIndex].r;
        primColor.g = sSandstormPrimColors[sSandstormColorIndex].g;
        primColor.b = sSandstormPrimColors[sSandstormColorIndex].b;
        envColor.r = sSandstormEnvColors[sSandstormColorIndex].r;
        envColor.g = sSandstormEnvColors[sSandstormColorIndex].g;
        envColor.b = sSandstormEnvColors[sSandstormColorIndex].b;
    } else {
        primColor.r = (s32)F32_LERP(sSandstormPrimColors[sSandstormColorIndex].r,
                                    sSandstormPrimColors[sNextSandstormColorIndex].r, sSandstormLerpScale);
        primColor.g = (s32)F32_LERP(sSandstormPrimColors[sSandstormColorIndex].g,
                                    sSandstormPrimColors[sNextSandstormColorIndex].g, sSandstormLerpScale);
        primColor.b = (s32)F32_LERP(sSandstormPrimColors[sSandstormColorIndex].b,
                                    sSandstormPrimColors[sNextSandstormColorIndex].b, sSandstormLerpScale);
        envColor.r = (s32)F32_LERP(sSandstormEnvColors[sSandstormColorIndex].r,
                                   sSandstormEnvColors[sNextSandstormColorIndex].r, sSandstormLerpScale);
        envColor.g = (s32)F32_LERP(sSandstormEnvColors[sSandstormColorIndex].g,
                                   sSandstormEnvColors[sNextSandstormColorIndex].g, sSandstormLerpScale);
        envColor.b = (s32)F32_LERP(sSandstormEnvColors[sSandstormColorIndex].b,
                                   sSandstormEnvColors[sNextSandstormColorIndex].b, sSandstormLerpScale);
    }

    envColor.r = ((envColor.r * sp98) + ((6.0f - sp98) * primColor.r)) * (1.0f / 6.0f);
    envColor.g = ((envColor.g * sp98) + ((6.0f - sp98) * primColor.g)) * (1.0f / 6.0f);
    envColor.b = ((envColor.b * sp98) + ((6.0f - sp98) * primColor.b)) * (1.0f / 6.0f);

    sp96 = (s32)(sSandstormScroll * (11.0f / 6.0f));
    sp94 = (s32)(sSandstormScroll * (9.0f / 6.0f));
    sp92 = (s32)(sSandstormScroll * (6.0f / 6.0f));

    OPEN_DISPS(play->state.gfxCtx, "../z_kankyo.c", 4044);

    POLY_XLU_DISP = Gfx_SetupDL_64(POLY_XLU_DISP);

    gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_NOISE);
    gDPSetColorDither(POLY_XLU_DISP++, G_CD_NOISE);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, primColor.r, primColor.g, primColor.b, play->envCtx.sandstormPrimA);
    gDPSetEnvColor(POLY_XLU_DISP++, envColor.r, envColor.g, envColor.b, play->envCtx.sandstormEnvA);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, 0, (u32)sp96 % 0x1000, 0, 0x200, 0x20, 1, (u32)sp94 % 0x1000,
                                0xFFF - ((u32)sp92 % 0x1000), 0x100, 0x40));
    gDPSetTextureLUT(POLY_XLU_DISP++, G_TT_NONE);
    gSPDisplayList(POLY_XLU_DISP++, gFieldSandstormDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_kankyo.c", 4068);

    sSandstormScroll += (s32)sp98;
}

void Environment_AdjustLights(PlayState* play, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp;
    s32 i;

    if (play->roomCtx.curRoom.behaviorType1 != ROOM_BEHAVIOR_TYPE1_5 && Play_CamIsNotFixed(play)) {
        arg1 = CLAMP_MIN(arg1, 0.0f);
        arg1 = CLAMP_MAX(arg1, 1.0f);

        temp = arg1 - arg3;

        if (arg1 < arg3) {
            temp = 0.0f;
        }

        play->envCtx.adjFogNear = (arg2 - play->envCtx.lightSettings.fogNear) * temp;

        if (arg1 == 0.0f) {
            for (i = 0; i < 3; i++) {
                play->envCtx.adjFogColor[i] = 0;
            }
        } else {
            temp = arg1 * 5.0f;
            temp = CLAMP_MAX(temp, 1.0f);

            for (i = 0; i < 3; i++) {
                play->envCtx.adjFogColor[i] = -(s16)(play->envCtx.lightSettings.fogColor[i] * temp);
            }
        }

        if (arg4 <= 0.0f) {
            return;
        }

        arg1 *= arg4;

        for (i = 0; i < 3; i++) {
            play->envCtx.adjAmbientColor[i] = -(s16)(play->envCtx.lightSettings.ambientColor[i] * arg1);
            play->envCtx.adjLight1Color[i] = -(s16)(play->envCtx.lightSettings.light1Color[i] * arg1);
        }
    }
}

s32 Environment_GetBgsDayCount(void) {
    return gSaveContext.bgsDayCount;
}

void Environment_ClearBgsDayCount(void) {
    gSaveContext.bgsDayCount = 0;
}

s32 Environment_GetTotalDays(void) {
    return gSaveContext.totalDays;
}

void Environment_ForcePlaySequence(u16 seqId) {
    gSaveContext.forcedSeqId = seqId;
}

s32 Environment_IsForcedSequenceDisabled(void) {
    s32 isDisabled = false;

    if (gSaveContext.forcedSeqId == NA_BGM_DISABLED) {
        isDisabled = true;
    }

    return isDisabled;
}

void Environment_PlayStormNatureAmbience(PlayState* play) {
    if (play->sequenceCtx.natureAmbienceId == NATURE_ID_NONE) {
        Audio_PlayNatureAmbienceSequence(NATURE_ID_MARKET_NIGHT);
    } else {
        Audio_PlayNatureAmbienceSequence(play->sequenceCtx.natureAmbienceId);
    }

    Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 1);
    Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_1, 1);
}

void Environment_StopStormNatureAmbience(PlayState* play) {
    Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 0);
    Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_1, 0);

    if (func_800FA0B4(SEQ_PLAYER_BGM_MAIN) == NA_BGM_NATURE_AMBIENCE) {
        gSaveContext.seqId = NA_BGM_NATURE_SFX_RAIN;
        Environment_PlaySceneSequence(play);
    }
}

void Environment_WarpSongLeave(PlayState* play) {
    gWeatherMode = WEATHER_MODE_CLEAR;
    gSaveContext.cutsceneIndex = 0;
    gSaveContext.respawnFlag = -3;
    play->nextEntranceIndex = gSaveContext.respawn[RESPAWN_MODE_RETURN].entranceIndex;
    play->transitionTrigger = TRANS_TRIGGER_START;
    play->transitionType = TRANS_TYPE_FADE_WHITE;
    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;

    switch (play->nextEntranceIndex) {
        case ENTR_SPOT17_0:
            Flags_SetEventChkInf(EVENTCHKINF_B9);
            break;

        case ENTR_SPOT06_0:
            Flags_SetEventChkInf(EVENTCHKINF_B1);
            break;

        case ENTR_SPOT11_0:
            Flags_SetEventChkInf(EVENTCHKINF_B8);
            break;

        case ENTR_SPOT02_0:
            Flags_SetEventChkInf(EVENTCHKINF_B6);
            break;

        case ENTR_TOKINOMA_0:
            Flags_SetEventChkInf(EVENTCHKINF_A7);
            break;

        case ENTR_SPOT05_0:
            break;
    }
}
