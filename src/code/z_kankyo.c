#include "global.h"
#include "ultra64.h"
#include "vt.h"
#include "objects/gameplay_field_keep/gameplay_field_keep.h"

#define ENV_ROM_FILE(name) \
    { (u32) _vr_##name##_staticSegmentRomStart, (u32)_vr_##name##_staticSegmentRomEnd }
#define ENV_ROM_FILES(name) \
    { ENV_ROM_FILE(name), ENV_ROM_FILE(name##_pal) }

typedef enum {
    /* 0 */ LENS_FLARE_CIRCLE0,
    /* 1 */ LENS_FLARE_CIRCLE1,
    /* 2 */ LENS_FLARE_RING
} LensFlareType;

typedef enum {
    /* 0x00 */ LIGHTNING_BOLT_START,
    /* 0x01 */ LIGHTNING_BOLT_WAIT,
    /* 0x02 */ LIGHTNING_BOLT_DRAW,
    /* 0xFF */ LIGHTNING_BOLT_INACTIVE = 0xFF
} LightningBoltState;

typedef struct {
    u16 startTime;
    u16 endTime;
    u8 unk_04;
    u8 unk_05;
} struct_8011FB48;

typedef struct {
    u8 state;
    Vec3f offset;
    Vec3f pos;
    s8 pitch;
    s8 roll;
    u8 textureIndex;
    u8 delayTimer;
} LightningBolt;

// data
s32 D_8011FAF0[][2] = {
    { 0x00000006, 0x00000000 }, { 0x00000005, 0x00020000 }, { 0x00000004, 0x00030000 }, { 0x00000003, 0x00038000 },
    { 0x00000002, 0x0003c000 }, { 0x00000001, 0x0003e000 }, { 0x00000000, 0x0003f000 }, { 0x00000000, 0x0003f800 },
};

u8 gWeatherMode = 0; // "E_wether_flg"

u8 D_8011FB34 = 0;

u8 D_8011FB38 = 0;

u8 gSkyboxBlendingEnabled = false; // D_8011FB3C

u16 gTimeIncrement = 0; // gTimeIncrement

u16 D_8011FB44 = 0xFFFC;

struct_8011FB48 D_8011FB48[][7] = {
    {
        { 0x0000, 0x2AAC, 3, 3 },
        { 0x2AAC, 0x4000, 3, 0 },
        { 0x4000, 0x5556, 0, 1 },
        { 0x5556, 0xAAAB, 1, 1 },
        { 0xAAAB, 0xB556, 1, 2 },
        { 0xB556, 0xCAAC, 2, 3 },
        { 0xCAAC, 0xFFFF, 3, 3 },
    },
    {
        { 0x0000, 0x2AAC, 7, 7 },
        { 0x2AAC, 0x4000, 7, 4 },
        { 0x4000, 0x5556, 4, 5 },
        { 0x5556, 0xAAAB, 5, 5 },
        { 0xAAAB, 0xB556, 5, 6 },
        { 0xB556, 0xCAAC, 6, 7 },
        { 0xCAAC, 0xFFFF, 7, 7 },
    },
    {
        { 0x0000, 0x2AAC, 11, 11 },
        { 0x2AAC, 0x4000, 11, 8 },
        { 0x4000, 0x5556, 8, 9 },
        { 0x5556, 0xAAAB, 9, 9 },
        { 0xAAAB, 0xB556, 9, 10 },
        { 0xB556, 0xCAAC, 10, 11 },
        { 0xCAAC, 0xFFFF, 11, 11 },
    },
    {
        { 0x0000, 0x2AAC, 15, 15 },
        { 0x2AAC, 0x4000, 15, 12 },
        { 0x4000, 0x5556, 12, 13 },
        { 0x5556, 0xAAAB, 13, 13 },
        { 0xAAAB, 0xB556, 13, 14 },
        { 0xB556, 0xCAAC, 14, 15 },
        { 0xCAAC, 0xFFFF, 15, 15 },
    },
    {
        { 0x0000, 0x2AAC, 23, 23 },
        { 0x2AAC, 0x4000, 23, 20 },
        { 0x4000, 0x5556, 20, 21 },
        { 0x5556, 0xAAAB, 21, 21 },
        { 0xAAAB, 0xB556, 21, 22 },
        { 0xB556, 0xCAAC, 22, 23 },
        { 0xCAAC, 0xFFFF, 23, 23 },
    },
};

// at a later time, use a macro to automatically use the right index for pal vs ntsc
typedef enum {
    /*  0 */ SBI_FINE0,
    /*  1 */ SBI_FINE0_PAL,
    /*  2 */ SBI_FINE1,
    /*  3 */ SBI_FINE1_PAL,
    /*  4 */ SBI_FINE2,
    /*  5 */ SBI_FINE2_PAL,
    /*  6 */ SBI_FINE3,
    /*  7 */ SBI_FINE3_PAL,
    /*  8 */ SBI_CLOUD0,
    /*  9 */ SBI_CLOUD0_PAL,
    /* 10 */ SBI_CLOUD1,
    /* 11 */ SBI_CLOUD1_PAL,
    /* 12 */ SBI_CLOUD2,
    /* 13 */ SBI_CLOUD2_PAL,
    /* 14 */ SBI_CLOUD3,
    /* 15 */ SBI_CLOUD3_PAL,
    /* 14 */ SBI_HOLY0,
    /* 15 */ SBI_HOLY0_PAL
} SkyboxFileIndex;

struct_8011FC1C D_8011FC1C[][9] = {
    {
        { 0x0000, 0x2AAC, 0, 3, 3 },
        { 0x2AAC, 0x3556, 1, 3, 0 },
        { 0x3556, 0x4000, 0, 0, 0 },
        { 0x4000, 0x5556, 1, 0, 1 },
        { 0x5556, 0xAAAB, 0, 1, 1 },
        { 0xAAAB, 0xB556, 1, 1, 2 },
        { 0xB556, 0xC001, 0, 2, 2 },
        { 0xC001, 0xCAAC, 1, 2, 3 },
        { 0xCAAC, 0xFFFF, 0, 3, 3 },
    },
    {
        { 0x0000, 0x2AAC, 0, 7, 7 },
        { 0x2AAC, 0x3556, 1, 7, 4 },
        { 0x3556, 0x4000, 0, 4, 4 },
        { 0x4000, 0x5556, 1, 4, 5 },
        { 0x5556, 0xAAAB, 0, 5, 5 },
        { 0xAAAB, 0xB556, 1, 5, 6 },
        { 0xB556, 0xC001, 0, 6, 6 },
        { 0xC001, 0xCAAC, 1, 6, 7 },
        { 0xCAAC, 0xFFFF, 0, 7, 7 },
    },
    {
        { 0x0000, 0x1556, 0, 3, 3 },
        { 0x1556, 0x2AAC, 1, 3, 0 },
        { 0x2AAC, 0x5556, 0, 0, 0 },
        { 0x5556, 0x6AAB, 1, 0, 1 },
        { 0x6AAB, 0x9556, 0, 1, 1 },
        { 0x9556, 0xAAAB, 1, 1, 2 },
        { 0xAAAB, 0xD556, 0, 2, 2 },
        { 0xD556, 0xEAAB, 1, 2, 3 },
        { 0xEAAB, 0xFFFF, 0, 3, 3 },
    },
    {
        { 0x0000, 0x3556, 0, 11, 11 },
        { 0x3556, 0x4000, 1, 11, 8 },
        { 0x4000, 0x4AAB, 0, 8, 8 },
        { 0x4AAB, 0x5556, 1, 8, 9 },
        { 0x5556, 0xAAAB, 0, 9, 9 },
        { 0xAAAB, 0xB556, 1, 9, 10 },
        { 0xB556, 0xC001, 0, 10, 10 },
        { 0xC001, 0xCAAC, 1, 10, 11 },
        { 0xCAAC, 0xFFFF, 0, 11, 11 },
    },
};

SkyboxFile gSkyboxFiles[] = {
    {
        { _vr_fine0_staticSegmentRomStart, _vr_fine0_staticSegmentRomEnd },
        { _vr_fine0_pal_staticSegmentRomStart, _vr_fine0_pal_staticSegmentRomEnd },
    },
    {
        { _vr_fine1_staticSegmentRomStart, _vr_fine1_staticSegmentRomEnd },
        { _vr_fine1_pal_staticSegmentRomStart, _vr_fine1_pal_staticSegmentRomEnd },
    },
    {
        { _vr_fine2_staticSegmentRomStart, _vr_fine2_staticSegmentRomEnd },
        { _vr_fine2_pal_staticSegmentRomStart, _vr_fine2_pal_staticSegmentRomEnd },
    },
    {
        { _vr_fine3_staticSegmentRomStart, _vr_fine3_staticSegmentRomEnd },
        { _vr_fine3_pal_staticSegmentRomStart, _vr_fine3_pal_staticSegmentRomEnd },
    },
    {
        { _vr_cloud0_staticSegmentRomStart, _vr_cloud0_staticSegmentRomEnd },
        { _vr_cloud0_pal_staticSegmentRomStart, _vr_cloud0_pal_staticSegmentRomEnd },
    },
    {
        { _vr_cloud1_staticSegmentRomStart, _vr_cloud1_staticSegmentRomEnd },
        { _vr_cloud1_pal_staticSegmentRomStart, _vr_cloud1_pal_staticSegmentRomEnd },
    },
    {
        { _vr_cloud2_staticSegmentRomStart, _vr_cloud2_staticSegmentRomEnd },
        { _vr_cloud2_pal_staticSegmentRomStart, _vr_cloud2_pal_staticSegmentRomEnd },
    },
    {
        { _vr_cloud3_staticSegmentRomStart, _vr_cloud3_staticSegmentRomEnd },
        { _vr_cloud3_pal_staticSegmentRomStart, _vr_cloud3_pal_staticSegmentRomEnd },
    },
    {
        { _vr_holy0_staticSegmentRomStart, _vr_holy0_staticSegmentRomEnd },
        { _vr_holy0_pal_staticSegmentRomStart, _vr_holy0_pal_staticSegmentRomEnd },
    },
};

u8 D_8011FDCC = 0;
u8 D_8011FDD0 = 0;
f32 D_8011FDD4 = 0.0f;

// bss
u8 gCustomLensFlareOn;     // D_8015FCF0
Vec3f gCustomLensFlarePos; // D_8015FCF8
s16 D_8015FD04;
s16 D_8015FD06;
f32 D_8015FD08;
s16 D_8015FD0C;
LightningBolt sLightningBolts[3]; // D_8015FD10
LightningStrike gLightningStrike; // D_8015FD70
s16 sLightningFlashAlpha;
s16 D_8015FD7E;
s16 D_8015FD80;
LightNode* sNGameOverLightNode;
LightInfo sNGameOverLightInfo;
LightNode* sSGameOverLightNode;
LightInfo sSGameOverLightInfo;
u8 sGameOverLightsRGB;
u16 D_8015FDB0;

void func_80075B44(GlobalContext* globalCtx);
void func_800766C4(GlobalContext* globalCtx);

s32 func_8006F0A0(s32 a0) {
    s32 ret = ((a0 >> 4 & 0x7FF) << D_8011FAF0[a0 >> 15 & 7][0]) + D_8011FAF0[a0 >> 15 & 7][1];

    return ret;
}

// func_8006F0D4
u16 Kankyo_GetPixelDepth(s32 x, s32 y) {
    s32 pixelDepth = gZBuffer[y][x];

    return pixelDepth;
}

void Kankyo_GraphCallback(GraphicsContext* gfxCtx, void* param) {
    GlobalContext* globalCtx = (GlobalContext*)param;

    D_8011FB44 = Kankyo_GetPixelDepth(D_8015FD7E, D_8015FD80);
    Lights_GlowCheck(globalCtx);
}

void Kankyo_Init(GlobalContext* globalCtx2, EnvironmentContext* envCtx, s32 unused) {
    GlobalContext* globalCtx = globalCtx2;
    u8 i;
    u16 uDayTime;

    gSaveContext.sunsState = SUNS_INACTIVE;

    if (((void)0, gSaveContext.dayTime) > 0xC000 || ((void)0, gSaveContext.dayTime) < 0x4555) {
        ((void)0, gSaveContext.nightFlag = true);
    } else {
        ((void)0, gSaveContext.nightFlag = false);
    }

    globalCtx->state.gfxCtx->callback = Kankyo_GraphCallback;
    globalCtx->state.gfxCtx->callbackParam = globalCtx;

    Lights_DirectionalSetInfo(&envCtx->dirLight1, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->dirLight1);

    Lights_DirectionalSetInfo(&envCtx->dirLight2, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->dirLight2);

    envCtx->skybox1Index = 99;
    envCtx->skybox2Index = 99;
    envCtx->unk_19 = 0;
    envCtx->unk_1A = 0;
    envCtx->unk_21 = 0;
    envCtx->unk_22 = 0;
    envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
    envCtx->unk_1F = 0;
    envCtx->unk_20 = 0;
    envCtx->unk_84 = 0.0f;
    envCtx->unk_88 = 0.0f;
    envCtx->unk_BD = 0;
    envCtx->unk_BE = 0;
    envCtx->unk_D8 = 1.0f;
    envCtx->unk_DC = 0;
    envCtx->gloomySkyMode = 0;
    envCtx->unk_DE = 0;
    envCtx->lightningMode = LIGHTNING_MODE_OFF;
    envCtx->unk_E0 = 0;
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
    envCtx->sandstormState = 0;
    envCtx->sandstormPrimA = 0;
    envCtx->sandstormEnvA = 0;
    

    gLightningStrike.state = LIGHTNING_STRIKE_WAIT;
    gLightningStrike.flashRed = 0;
    gLightningStrike.flashGreen = 0;
    gLightningStrike.flashBlue = 0;
    
    sLightningFlashAlpha = 0;

    gSaveContext.unk_1410 = 0;

    envCtx->adjAmbientColor[0] = envCtx->adjAmbientColor[1] = envCtx->adjAmbientColor[2] = envCtx->adjLight1Color[0] =
        envCtx->adjLight1Color[1] = envCtx->adjLight1Color[2] = envCtx->adjFogColor[0] = envCtx->adjFogColor[1] =
            envCtx->adjFogColor[2] = envCtx->adjFogNear = envCtx->adjFogFar = 0;

    envCtx->sunPos.x = -(Math_SinS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.y = +(Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.z = +(Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;

    envCtx->windDirection.x = 80;
    envCtx->windDirection.y = 80;
    envCtx->windDirection.z = 80;

    envCtx->blendIndoorLights = false;
    envCtx->unk_BF = 0xFF;
    envCtx->unk_D6 = 0xFFFF;
    R_ENV_TIME_INCREMENT = gTimeIncrement = envCtx->timeIncrement = 0;
    R_ENV_DISABLE_DBG = true;

    if (CREG(3) != 0) {
        gSaveContext.chamberCutsceneNum = CREG(3) - 1;
    }

    globalCtx->envCtx.unk_EE[0] = 0;
    globalCtx->envCtx.unk_EE[1] = 0;
    globalCtx->envCtx.unk_EE[2] = 0;
    globalCtx->envCtx.unk_EE[3] = 0;

    globalCtx->envCtx.unk_F2[0] = 0;

    if (gSaveContext.unk_13C3 != 0) {
        if (((void)0, gSaveContext.sceneSetupIndex) < 4) {
            switch (gWeatherMode) {
                case 1:
                    envCtx->unk_17 = 1;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1F = 3;
                    envCtx->unk_20 = 3;
                    globalCtx->envCtx.unk_EE[3] = 0;
                    globalCtx->envCtx.unk_EE[2] = 0;
                    break;
                case 2:
                case 3:
                case 4:
                    envCtx->unk_17 = 1;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1F = 2;
                    envCtx->unk_20 = 2;
                    globalCtx->envCtx.unk_EE[3] = 0;
                    globalCtx->envCtx.unk_EE[2] = 0;
                    break;
                case 5:
                    envCtx->unk_17 = 1;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1F = 4;
                    envCtx->unk_20 = 4;
                    globalCtx->envCtx.unk_EE[3] = 0;
                    globalCtx->envCtx.unk_EE[2] = 0;
                    break;
                default:
                    break;
            }

            if (globalCtx->skyboxId == 1) {
                if (gWeatherMode == 3) {
                    globalCtx->envCtx.unk_EE[2] = globalCtx->envCtx.unk_EE[3] = 0x40;
                } else if (gWeatherMode == 4) {
                    globalCtx->envCtx.unk_EE[0] = 0x14;
                    globalCtx->envCtx.unk_EE[1] = 0x14;
                } else if (gWeatherMode == 5) {
                    globalCtx->envCtx.unk_EE[0] = 0x1E;
                    globalCtx->envCtx.unk_EE[1] = 0x1E;
                }
            }
        }
    } else {
        gWeatherMode = 0;
    }

    D_8011FB38 = 0;
    D_8011FB34 = 0;
    gSkyboxBlendingEnabled = false;
    gSaveContext.unk_13C3 = 0;
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

    globalCtx->roomCtx.unk_74[0] = 0;
    globalCtx->roomCtx.unk_74[1] = 0;

    for (i = 0; i < ARRAY_COUNT(globalCtx->csCtx.npcActions); i++) {
        globalCtx->csCtx.npcActions[i] = 0;
    }

    if (Object_GetIndex(&globalCtx->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP) < 0 && !globalCtx->envCtx.sunMoonDisabled) {
        globalCtx->envCtx.sunMoonDisabled = true;
        // Sun setting other than field keep! So forced release!
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n\nフィールド常駐以外、太陽設定！よって強制解除！\n" VT_RST);
    }

    gCustomLensFlareOn = false;
    func_800AA15C();
}

u8 Kankyo_SmoothStepToU8(u8 *pvalue, u8 target, u8 scale, u8 step, u8 minStep) {
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

u8 Kankyo_SmoothStepToS8(s8 *pvalue, s8 target, u8 scale, u8 step, u8 minStep) {
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

f32 Kankyo_LerpWeight(u16 max, u16 min, u16 val) {
    f32 ret = max - min;

    if (ret != 0.0f) {
        ret = 1.0f - (max - val) / ret;

        if (true && !(ret >= 1.0f)) {
            return ret;
        }
    }

    return 1.0f;
}

f32 Kankyo_LerpWeightAccelDecel(u16 endFrame, u16 startFrame, u16 curFrame, u16 accelDuration, u16 decelDuration) {
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
        // The frame relation between end_frame and start_frame is wrong
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
        ret += (temp * 2.0f) * (framesElapsed - accelDurationF);
        return ret;
    }

    ret += (temp + temp) * (totalFrames - accelDurationF - decelDurationF);

    if (decelDurationF != 0.0f) {
        ret += temp * decelDurationF;
        if (framesElapsed < totalFrames) {
            ret -= temp * (totalFrames - framesElapsed) * (totalFrames - framesElapsed) / decelDurationF;
        }
    }

    return ret;
}

void func_8006FB94(EnvironmentContext* envCtx, u8 unused) {
    if (envCtx->gloomySkyMode != 0) {
        switch (envCtx->unk_DE) {
            case 0:
                if ((envCtx->gloomySkyMode == 1) && !gSkyboxBlendingEnabled) {
                    envCtx->unk_19 = 1;
                    envCtx->unk_17 = 0;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1A = 100;
                    envCtx->unk_21 = 1;
                    envCtx->unk_1F = 0;
                    envCtx->unk_20 = 2;
                    D_8011FB34 = 2;
                    envCtx->unk_22 = envCtx->unk_24 = 100;
                    envCtx->unk_DE++;
                }
                break;
            case 1:
                if (!gSkyboxBlendingEnabled && (envCtx->gloomySkyMode == 2)) {
                    gWeatherMode = 0;
                    envCtx->unk_19 = 1;
                    envCtx->unk_17 = 1;
                    envCtx->unk_18 = 0;
                    envCtx->unk_1A = 100;
                    envCtx->unk_21 = 1;
                    envCtx->unk_1F = 2;
                    envCtx->unk_20 = 0;
                    D_8011FB34 = 0;
                    envCtx->unk_22 = envCtx->unk_24 = 100;
                    envCtx->unk_EE[0] = 0;
                    envCtx->gloomySkyMode = 0;
                    envCtx->unk_DE = 0;
                }
                break;
        }
    }
}

// func_8006FC88 skybox related
#ifdef NON_MATCHING
void Kankyo_UpdateSkybox(u8 skyboxId, EnvironmentContext* envCtx, SkyboxContext* skyboxCtx) {
    u32 size;
    u8 i;
    u8 newSkybox1Index = 0xFF;
    u8 newSkybox2Index = 0xFF;
    u8 skyboxBlend = 0;
    struct_8011FC1C* entry;

    if (skyboxId == 5) { // C18
        envCtx->unk_17 = 3;

        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->unk_17]); i++) {
            entry = &D_8011FC1C[envCtx->unk_17][i];
            if (((void)0, gSaveContext.skyboxTime) >= entry->startTime &&
                (((void)0, gSaveContext.skyboxTime) < entry->endTime || entry->endTime == 0xFFFF)) {
                if (entry->blend) {
                    envCtx->skyboxBlend =
                        Kankyo_LerpWeight(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;
                } else {
                    envCtx->skyboxBlend = 0;
                }
                break;
            }
        }
    } else if (skyboxId == 1 && !envCtx->skyboxDisabled) { // d60 && d74
        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->unk_17]); i++) {
            entry = &D_8011FC1C[envCtx->unk_17][i];

            if (((void)0, gSaveContext.skyboxTime) >= entry->startTime &&
                (((void)0, gSaveContext.skyboxTime) < entry->endTime || entry->endTime == 0xFFFF)) {
                gSkyboxBlendingEnabled = entry->blend;
                newSkybox1Index = entry->skybox1Index;
                newSkybox2Index = entry->skybox2Index;
                

                if (gSkyboxBlendingEnabled) {
                    entry = &D_8011FC1C[envCtx->unk_17][i];

                    skyboxBlend =
                        Kankyo_LerpWeight(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;
                } else {
                    entry = &D_8011FC1C[envCtx->unk_17][i];
                    skyboxBlend =
                        Kankyo_LerpWeight(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;

                    skyboxBlend = (skyboxBlend < 0x80) ? 0xFF : 0;

                    if ((envCtx->unk_19 != 0) && (envCtx->unk_19 < 3)) {
                        envCtx->unk_19++;
                        skyboxBlend = 0;
                    }
                }
                break;
            }
        }

        func_8006FB94(envCtx, skyboxBlend);

        if (envCtx->unk_19 >= 3) {
            newSkybox1Index = D_8011FC1C[envCtx->unk_17][i].skybox1Index;
            newSkybox2Index = D_8011FC1C[envCtx->unk_18][i].skybox2Index;

            skyboxBlend = ((f32)envCtx->unk_24 - envCtx->unk_1A--) / (f32)envCtx->unk_24 * 255;

            if (envCtx->unk_1A <= 0) {
                envCtx->unk_19 = 0;
                envCtx->unk_17 = envCtx->unk_18;
            }
        }

        if (newSkybox1Index == 0xFF) {
            // Environment VR data acquisition failed! Report to Sasaki!
            osSyncPrintf(VT_COL(RED, WHITE) "\n環境ＶＲデータ取得失敗！ ささきまでご報告を！" VT_RST);
        }

        if ((envCtx->skybox1Index != newSkybox1Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_FILE1_START;
            size = gSkyboxFiles[newSkybox1Index].file.vromEnd - gSkyboxFiles[newSkybox1Index].file.vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[0],
                                gSkyboxFiles[newSkybox1Index].file.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                "../z_kankyo.c", 1264);
            envCtx->skybox1Index = newSkybox1Index;
        }

        if ((envCtx->skybox2Index != newSkybox2Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_FILE2_START;
            size = gSkyboxFiles[newSkybox2Index].file.vromEnd - gSkyboxFiles[newSkybox2Index].file.vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[1],
                                gSkyboxFiles[newSkybox2Index].file.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                "../z_kankyo.c", 1281);
            envCtx->skybox2Index = newSkybox2Index;
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_FILE1_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_PAL1_START;

            if (((newSkybox1Index & 4) >> 2) != (newSkybox1Index & 1)) { // & 1 at 12e8
                size = gSkyboxFiles[newSkybox1Index].pallete.vromEnd - gSkyboxFiles[newSkybox1Index].pallete.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2],
                                    gSkyboxFiles[newSkybox1Index].pallete.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                    "../z_kankyo.c", 1307);
            } else {
                size = gSkyboxFiles[newSkybox1Index].pallete.vromEnd - gSkyboxFiles[newSkybox1Index].pallete.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + size, size,
                                    gSkyboxFiles[newSkybox1Index].pallete.vromStart, 0, &envCtx->loadQueue, NULL,
                                    "../z_kankyo.c", 1320);
            }
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_FILE2_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_PAL2_START;

            if (((newSkybox2Index & 4) >> 2) != (newSkybox2Index & 1)) {
                size = gSkyboxFiles[newSkybox2Index].pallete.vromEnd - gSkyboxFiles[newSkybox2Index].pallete.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2],
                                    gSkyboxFiles[newSkybox2Index].pallete.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                    "../z_kankyo.c", 1342);
            } else {
                size = gSkyboxFiles[newSkybox2Index].pallete.vromEnd - gSkyboxFiles[newSkybox2Index].pallete.vromStart;
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + size,
                                    gSkyboxFiles[newSkybox2Index].pallete.vromStart, size, 0, &envCtx->loadQueue, NULL,
                                    "../z_kankyo.c", 1355);
            }
        }

        if ((envCtx->skyboxDmaState == SKYBOX_DMA_FILE1_START) || (envCtx->skyboxDmaState == SKYBOX_DMA_FILE2_START)) {
            if (osRecvMesg(&envCtx->loadQueue, 0, OS_MESG_NOBLOCK) == 0) {
                envCtx->skyboxDmaState++;
            }
        } else if (envCtx->skyboxDmaState >= SKYBOX_DMA_FILE1_DONE) {
            if (osRecvMesg(&envCtx->loadQueue, 0, OS_MESG_NOBLOCK) == 0) {
                envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
            }
        }

        envCtx->skyboxBlend = skyboxBlend;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_8006FC88.s")
#endif

void Kankyo_EnableUnderwaterLights(GlobalContext* globalCtx, s32 waterLightsIndex) {
    if (waterLightsIndex == 0x1F) {
        waterLightsIndex = 0;
        // "Underwater color is not set in the water poly data!"
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n水ポリゴンデータに水中カラーが設定されておりません!" VT_RST);
    }

    if (!globalCtx->envCtx.indoors) {
        D_8011FB34 = globalCtx->envCtx.unk_20;

        if (globalCtx->envCtx.unk_1F != waterLightsIndex) {
            globalCtx->envCtx.unk_1F = waterLightsIndex;
            globalCtx->envCtx.unk_20 = waterLightsIndex;
        }
    } else {
        globalCtx->envCtx.blendIndoorLights = false; // instantly switch to water lights
        globalCtx->envCtx.unk_BF = waterLightsIndex;
    }
}

void Kankyo_DisableUnderwaterLights(GlobalContext* globalCtx) {
    if (!globalCtx->envCtx.indoors) {
        globalCtx->envCtx.unk_1F = D_8011FB34;
        globalCtx->envCtx.unk_20 = D_8011FB34;
    } else {
        globalCtx->envCtx.blendIndoorLights = false; // instantly switch to previous lights
        globalCtx->envCtx.unk_BF = 0xFF;
        globalCtx->envCtx.unk_D8 = 1.0f;
    }
}

void Kankyo_PrintDebugInfo(GlobalContext* globalCtx, Gfx** gfx) {
    GfxPrint printer;
    u32 time;
    s32 pad;

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
    time = gSaveContext.dayTime;
    GfxPrint_Printf(&printer, "%02d", (u8)(45.0f / 2048.0f * time / 60.0f));

    if ((gSaveContext.dayTime & 0x1F) >= 0x10 || gTimeIncrement >= 6) {
        GfxPrint_Printf(&printer, "%s", ":");
    } else {
        GfxPrint_Printf(&printer, "%s", " ");
    }

    time = gSaveContext.dayTime;
    GfxPrint_Printf(&printer, "%02d", (s16)(45.0f / 2048.0f * time) % 60);

    GfxPrint_SetColor(&printer, 255, 255, 55, 64);
    GfxPrint_SetPos(&printer, 22, 9);
    GfxPrint_Printf(&printer, "%s", "VRBOXTIME ");

    GfxPrint_SetColor(&printer, 255, 255, 255, 64);
    time = ((void)0, gSaveContext.skyboxTime);
    GfxPrint_Printf(&printer, "%02d", (u8)(45.0f / 2048.0f * time / 60.0f));

    if ((((void)0, gSaveContext.skyboxTime) & 0x1F) >= 0x10 || gTimeIncrement >= 6) {
        GfxPrint_Printf(&printer, "%s", ":");
    } else {
        GfxPrint_Printf(&printer, "%s", " ");
    }

    time = ((void)0, gSaveContext.skyboxTime);
    GfxPrint_Printf(&printer, "%02d", (s16)(45.0f / 2048.0f * time) % 60);

    GfxPrint_SetColor(&printer, 55, 255, 255, 64);
    GfxPrint_SetPos(&printer, 22, 6);

    if (gSaveContext.nightFlag) {
        GfxPrint_Printf(&printer, "%s", "YORU"); // "night"
    } else {
        GfxPrint_Printf(&printer, "%s", "HIRU"); // "day"
    }

    *gfx = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

#define TIME_ENTRY D_8011FB48[envCtx->unk_1F][i]
#define TIME_ENTRY2 D_8011FB48[envCtx->unk_20][i]
#define LERP(x, y, scale) ((x) + ((y) - (x)) * (scale))

#ifdef NON_EQUIVALENT
void Kankyo_Update(GlobalContext* globalCtx, EnvironmentContext* envCtx, LightContext* lightCtx, PauseContext* pauseCtx,
                   MessageContext* msgCtx, GameOverContext* gameOverCtx, GraphicsContext* gfxCtx) {
    f32 sp8C;
    f32 sp88 = 0.0f;
    u16 i;
    u16 j;
    EnvLightSettings* lightSettingsList = globalCtx->envCtx.lightSettingsList; // 7C
    u8 color1;                                                                 // sp50?
    u8 color2;                                                                 // sp51?
    u8 temp1;                                                                  // sp50?
    u8 temp2; 
    s32 temp3;
    s32 temp4;  
    s32 temp5;
    s32 temp6;                                                              // sp51?
    s16 adjustment;
    u16 nextDayTime;
    EnvLightSettings* light;

    if ((((void)0, gSaveContext.gameMode) != 0) && (((void)0, gSaveContext.gameMode) != 3)) {
        func_800AA16C(globalCtx);
    }

    if (pauseCtx->state == 0) {
        if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.debugState == 0)) {
            if (globalCtx->skyboxId == 1) {
                globalCtx->skyboxCtx.rot.y -= 0.001f;
            } else if (globalCtx->skyboxId == 5) {
                globalCtx->skyboxCtx.rot.y -= 0.005f;
            }
        }

        func_800766C4(globalCtx); // increments or decrements unk_EE[1] depending on some condition
        func_80075B44(globalCtx); // updates bgm/sfx and other things as the day progresses

        nextDayTime = ((void)0, gSaveContext.nextDayTime);

        if (nextDayTime >= 0xFF00 && nextDayTime != 0xFFFF) {
            gSaveContext.nextDayTime -= 16;
            osSyncPrintf("\nnext_zelda_time=[%x]", nextDayTime);
            // 1CB8
            if (nextDayTime == 0xFF0E) {
                func_80078884(NA_SE_EV_CHICKEN_CRY_M);
                gSaveContext.nextDayTime = 0xFFFF;
            } else if (nextDayTime == 0xFF0D) {
                func_800788CC(NA_SE_EV_DOG_CRY_EVENING);
                gSaveContext.nextDayTime = 0xFFFF;
            }
        }
        // 1d38
        if ((pauseCtx->state == 0) && (gameOverCtx->state == GAMEOVER_INACTIVE)) {
            if (((msgCtx->unk_E300 == 0) && (msgCtx->msgMode == 0)) || (((void)0, gSaveContext.gameMode) == 3)) {
                if ((envCtx->unk_1A == 0) && !FrameAdvance_IsEnabled(globalCtx) &&
                    (globalCtx->transitionMode == 0 || ((void)0, gSaveContext.gameMode) != 0)) {

                    if (!((void)0, gSaveContext.nightFlag) || gTimeIncrement >= 400) {
                        // 1d80
                        gSaveContext.dayTime += gTimeIncrement;
                    } else {
                        gSaveContext.dayTime += gTimeIncrement * 2; // time moves twice as fast at night
                    }
                }
            }
        }
        // 1e34
        if (((((void)0, gSaveContext.sceneSetupIndex) >= 5 || gTimeIncrement != 0) &&
             ((void)0, gSaveContext.skyboxTime) < ((void)0, gSaveContext.dayTime)) ||
            (((void)0, gSaveContext.dayTime) < 0xAAB || gTimeIncrement < 0)) {

            gSaveContext.skyboxTime = ((void)0, gSaveContext.dayTime);
        }

        // 1e88
        if (((void)0, gSaveContext.dayTime) > 0xC000 || ((void)0, gSaveContext.dayTime) < 0x4555) {
            gSaveContext.nightFlag = true;
        } else {
            gSaveContext.nightFlag = false;
        }
        // 1ec0
        if (SREG(0) != 0 || CREG(2) != 0) {
            Gfx* prevDisplayList;
            Gfx* displayList;

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 1682);

            prevDisplayList = POLY_OPA_DISP;
            displayList = Graph_GfxPlusOne(POLY_OPA_DISP);
            gSPDisplayList(OVERLAY_DISP++, displayList);
            Kankyo_PrintDebugInfo(globalCtx, &displayList);
            gSPEndDisplayList(displayList++);
            Graph_BranchDlist(prevDisplayList, displayList);
            POLY_OPA_DISP = displayList;

            CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 1690);
        }
        // 1fc8
        if ((envCtx->unk_BF != 0xFF) && (envCtx->unk_DC != 2) && (envCtx->unk_BD != envCtx->unk_BF) &&
            (envCtx->unk_D8 >= 1.0f) && (envCtx->unk_BF < 0x20)) {
            envCtx->unk_BE = envCtx->unk_BD;
            envCtx->unk_BD = envCtx->unk_BF;
            envCtx->unk_D8 = 0.0f;
        }
        // 2030
        if (envCtx->unk_BF != 0xFE) {
            // 203c
            if (!envCtx->indoors && (envCtx->unk_BF == 0xFF)) {
                for (i = 0; i < ARRAY_COUNT(D_8011FB48[envCtx->unk_1F]); i++) {
                    if ((((void)0, gSaveContext.skyboxTime) >= D_8011FB48[envCtx->unk_1F][i].startTime) &&
                        ((((void)0, gSaveContext.skyboxTime) < D_8011FB48[envCtx->unk_1F][i].endTime) ||
                         D_8011FB48[envCtx->unk_1F][i].endTime == 0xFFFF)) {

                        sp8C = Kankyo_LerpWeight(D_8011FB48[envCtx->unk_1F][i].endTime,
                                                 D_8011FB48[envCtx->unk_1F][i].startTime,
                                                 ((void)0, gSaveContext.skyboxTime));

                        D_8011FDCC = D_8011FB48[envCtx->unk_1F][i].unk_04 & 3;
                        D_8011FDD0 = D_8011FB48[envCtx->unk_1F][i].unk_05 & 3;
                        D_8011FDD4 = sp8C;
                        // 2160 (l 387)
                        if (envCtx->unk_21 != 0) {
                            f32 timer = envCtx->unk_24;

                            sp88 = (timer - envCtx->unk_22) / timer;
                            envCtx->unk_22--;

                            if (envCtx->unk_22 <= 0) {
                                envCtx->unk_21 = 0;
                                envCtx->unk_1F = envCtx->unk_20;
                            }
                        }

                        for (j = 0; j < 3; j++) {
                            f32 tempf;
                            // blend ambientColor
                            // 21d0 (l 415)

                            tempf = lightSettingsList[TIME_ENTRY.unk_04].ambientColor[j];
                            temp1 = tempf + ((lightSettingsList[TIME_ENTRY.unk_05].ambientColor[j] -
                                              lightSettingsList[TIME_ENTRY.unk_04].ambientColor[j]) *
                                             sp8C);

                            tempf = lightSettingsList[TIME_ENTRY2.unk_04].ambientColor[j];
                            temp2 = tempf + ((lightSettingsList[TIME_ENTRY2.unk_05].ambientColor[j] -
                                              lightSettingsList[TIME_ENTRY2.unk_04].ambientColor[j]) *
                                             sp8C);

                            envCtx->lightSettings.ambientColor[j] = temp1 + ((temp2 - temp1) * sp88);

                            // 24e4 bnez    at,21d0 ~>
                        }

                        // set light1 direction for the sun
                        envCtx->lightSettings.light1Dir[0] =
                            -(Math_SinS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f);
                        envCtx->lightSettings.light1Dir[1] =
                            Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f;
                        envCtx->lightSettings.light1Dir[2] =
                            -(Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f);

                        // set light2 direction for the moon
                        envCtx->lightSettings.light2Dir[0] = -envCtx->lightSettings.light1Dir[0];
                        envCtx->lightSettings.light2Dir[1] = -envCtx->lightSettings.light1Dir[1];
                        envCtx->lightSettings.light2Dir[2] = -envCtx->lightSettings.light1Dir[2];

                        for (j = 0; j < 3; j++) {
                            // blend light1Color
                            color1 = lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_04].light1Color[j];

                            temp1 = color1 +
                                    ((lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_05].light1Color[j] - color1) *
                                     sp8C);

                            color2 = lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_04].light1Color[j];

                            temp2 = color2 +
                                    ((lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_05].light1Color[j] - color2) *
                                     sp8C);

                            envCtx->lightSettings.light1Color[j] = temp1 + ((temp2 - temp1) * sp88);

                            // blend light2Color
                            color1 = lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_04].light2Color[j];

                            temp1 = color1 +
                                    ((lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_05].light2Color[j] - color1) *
                                     sp8C);

                            color2 = lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_04].light2Color[j];

                            temp2 = color2 +
                                    ((lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_05].light2Color[j] - color2) *
                                     sp8C);

                            envCtx->lightSettings.light2Color[j] = temp1 + ((temp2 - temp1) * sp88);
                        }

                        // blend fogColor
                        for (j = 0; j < 3; j++) {
                            color1 = lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_04].fogColor[j];

                            temp1 =
                                color1 +
                                ((lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_05].fogColor[j] - color1) * sp8C);

                            color2 = lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_04].fogColor[j];

                            temp2 =
                                color2 +
                                ((lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_05].fogColor[j] - color2) * sp8C);

                            envCtx->lightSettings.fogColor[j] = temp1 + ((temp2 - temp1) * sp88);
                        }
                        // *((volatile int*)0)=0;
                        // blend fogNear
                        // light = &
                        // temp3 = ;
                        // temp4 = ;

                        temp5 = LERP(lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_04].fogNear & 0x3FF, lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_05].fogNear & 0x3FF, sp8C);

                        // temp3 = ;
                        // temp4 = ;
                        
                        temp6 = LERP(lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_04].fogNear & 0x3FF, lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_05].fogNear & 0x3FF, sp8C);

                        envCtx->lightSettings.fogNear = LERP(temp5, temp6, sp88);

                        // blend fogFar
                        temp3 = lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_04].fogFar & 0x3FF;
                        temp4 = lightSettingsList[D_8011FB48[envCtx->unk_1F][i].unk_05].fogFar & 0x3FF;

                        temp5 = LERP(temp3, temp4, sp8C);

                        temp3 = lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_04].fogFar & 0x3FF;
                        temp4 = lightSettingsList[D_8011FB48[envCtx->unk_20][i].unk_05].fogFar & 0x3FF;
                        
                        temp6 = LERP(temp3, temp4, sp8C);

                        envCtx->lightSettings.fogFar = LERP(temp5, temp6, sp88);

                        if (D_8011FB48[envCtx->unk_20][i].unk_05 >= envCtx->numLightSettings) {
                            // "The color palette setting seems to be wrong"
                            osSyncPrintf(VT_COL(RED, WHITE) "\nカラーパレットの設定がおかしいようです！" VT_RST);

                            // "Pallete setting: [] Last pallete number = []"
                            osSyncPrintf(VT_COL(RED, WHITE) "\n設定パレット＝[%d] 最後パレット番号＝[%d]\n" VT_RST,
                                         D_8011FB48[envCtx->unk_20][i].unk_05, envCtx->numLightSettings - 1);
                        }
                    }
                }
            } else {
                // 3200 (l 1608)
                if (!envCtx->blendIndoorLights) {
                    for (i = 0; i < 3; i++) {
                        envCtx->lightSettings.ambientColor[i] = lightSettingsList[envCtx->unk_BD].ambientColor[i];
                        envCtx->lightSettings.light1Dir[i] = lightSettingsList[envCtx->unk_BD].light1Dir[i];
                        envCtx->lightSettings.light1Color[i] = lightSettingsList[envCtx->unk_BD].light1Color[i];
                        envCtx->lightSettings.light2Dir[i] = lightSettingsList[envCtx->unk_BD].light2Dir[i];
                        envCtx->lightSettings.light2Color[i] = lightSettingsList[envCtx->unk_BD].light2Color[i];
                        envCtx->lightSettings.fogColor[i] = lightSettingsList[envCtx->unk_BD].fogColor[i];
                    }

                    envCtx->lightSettings.fogNear = lightSettingsList[envCtx->unk_BD].fogNear & 0x3FF;
                    envCtx->lightSettings.fogFar = lightSettingsList[envCtx->unk_BD].fogFar;
                    envCtx->unk_D8 = 1.0f;
                } else {
                    // 3344 (l 1689)
                    u8 blendRate;
                    blendRate = ((lightSettingsList[envCtx->unk_BD].fogNear >> 0xA) << 0x2) & 0xFF;

                    if (blendRate == 0) {
                        blendRate++;
                    }

                    if (envCtx->unk_D6 != 0xFFFF) {
                        blendRate = envCtx->unk_D6;
                    }

                    if (envCtx->unk_DC == 0) {
                        envCtx->unk_D8 += blendRate / 255.0f;
                    }

                    if (envCtx->unk_D8 > 1.0f) {
                        envCtx->unk_D8 = 1.0f;
                    }

                    for (i = 0; i < 3; i++) {
                        s8 direction;
                        // blend ambientColor
                        // color1 = lightSettingsList[envCtx->unk_BE].ambientColor[j];

                        envCtx->lightSettings.ambientColor[j] = lightSettingsList[envCtx->unk_BE].ambientColor[j] +
                                                                ((lightSettingsList[envCtx->unk_BD].ambientColor[j] -
                                                                  lightSettingsList[envCtx->unk_BE].ambientColor[j]) *
                                                                 envCtx->unk_D8);

                        // blend light1Dir
                        // color1 = lightSettingsList[envCtx->unk_BE].light1Dir[j];
                        direction = lightSettingsList[envCtx->unk_BE].light1Dir[j];
                        envCtx->lightSettings.light1Dir[j] =
                            direction + ((lightSettingsList[envCtx->unk_BD].light1Dir[j] - direction) * envCtx->unk_D8);

                        // blend light1Color
                        color1 = lightSettingsList[envCtx->unk_BE].light1Color[j];

                        envCtx->lightSettings.light1Color[j] =
                            color1 + ((lightSettingsList[envCtx->unk_BD].light1Color[j] - color1) * envCtx->unk_D8);

                        // blend light2Dir
                        color1 = lightSettingsList[envCtx->unk_BE].light2Dir[j];

                        envCtx->lightSettings.light2Dir[j] =
                            color1 + ((lightSettingsList[envCtx->unk_BD].light2Dir[j] - color1) * envCtx->unk_D8);

                        // blend light2Color
                        color1 = lightSettingsList[envCtx->unk_BE].light2Color[j];

                        envCtx->lightSettings.light2Color[j] =
                            color1 + ((lightSettingsList[envCtx->unk_BD].light2Color[j] - color1) * envCtx->unk_D8);

                        // blend fogColor
                        color1 = lightSettingsList[envCtx->unk_BE].fogColor[j];

                        envCtx->lightSettings.fogColor[j] =
                            color1 + ((lightSettingsList[envCtx->unk_BD].fogColor[j] - color1) * envCtx->unk_D8);
                    }

                    color1 = lightSettingsList[envCtx->unk_BE].fogNear & 0x3FF;

                    envCtx->lightSettings.fogNear =
                        color1 + (((lightSettingsList[envCtx->unk_BD].fogNear & 0x3FF) - color1) * envCtx->unk_D8);

                    color1 = lightSettingsList[envCtx->unk_BE].fogFar;

                    envCtx->lightSettings.fogNear =
                        color1 + ((lightSettingsList[envCtx->unk_BD].fogFar - color1) * envCtx->unk_D8);
                }

                if (envCtx->unk_BD >= envCtx->numLightSettings) {
                    // "The color palette seems to be wrong!"
                    osSyncPrintf(VT_FGCOL(RED) "\nカラーパレットがおかしいようです！");

                    // "Pallete setting: [] Last pallete number = []"
                    osSyncPrintf(VT_FGCOL(YELLOW) "\n設定パレット＝[%d] パレット数＝[%d]\n" VT_RST, envCtx->unk_BD,
                                 envCtx->numLightSettings);
                }
            }
        }
        // L80072A64
        envCtx->blendIndoorLights = true;

        // Apply lighting adjustments
        for (i = 0; i < 3; i++) {
            adjustment = envCtx->adjAmbientColor[i] + envCtx->lightSettings.ambientColor[i];

            if (adjustment > 255) {
                lightCtx->ambientColor[i] = 255;
            } else if (adjustment < 0) {
                lightCtx->ambientColor[i] = 0;
            } else {
                lightCtx->ambientColor[i] = adjustment;
            }

            adjustment = envCtx->adjLight1Color[i] + envCtx->lightSettings.light1Color[i];

            if (adjustment > 255) {
                envCtx->dirLight1.params.dir.color[i] = 255;
            } else if (adjustment < 0) {
                envCtx->dirLight1.params.dir.color[i] = 0;
            } else {
                envCtx->dirLight1.params.dir.color[i] = adjustment;
            }

            adjustment = envCtx->adjFogColor[i] + envCtx->lightSettings.fogColor[i];

            if (adjustment > 255) {
                lightCtx->fogColor[i] = 255;
            } else if (adjustment < 0) {
                lightCtx->fogColor[i] = 0;
            } else {
                lightCtx->fogColor[i] = adjustment;
            }
        }

        // Set both directional light directions
        envCtx->dirLight1.params.dir.x = envCtx->lightSettings.light1Dir[0];
        envCtx->dirLight1.params.dir.z = envCtx->lightSettings.light1Dir[1];
        envCtx->dirLight1.params.dir.y = envCtx->lightSettings.light1Dir[2];

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
            lightCtx->fogFar = R_ENV_FOG_FAR;
            lightCtx->fogNear = R_ENV_FOG_NEAR;

            if (cREG(14)) {
                envCtx->dirLight1.params.dir.x = R_ENV_LIGHT1_DIR(0) =
                    Math_CosS(cREG(11)) * Math_CosS(cREG(10)) * 120.0f;
                envCtx->dirLight1.params.dir.y = R_ENV_LIGHT1_DIR(1) =
                    Math_CosS(cREG(11)) * Math_SinS(cREG(10)) * 120.0f;
                envCtx->dirLight1.params.dir.z = R_ENV_LIGHT1_DIR(2) = Math_SinS(cREG(11)) * 120.0f;

                envCtx->dirLight2.params.dir.x = R_ENV_LIGHT2_DIR(0) =
                    Math_CosS(cREG(13)) * Math_CosS(cREG(12)) * 120.0f;
                envCtx->dirLight2.params.dir.y = R_ENV_LIGHT2_DIR(1) =
                    Math_CosS(cREG(13)) * Math_SinS(cREG(12)) * 120.0f;
                envCtx->dirLight2.params.dir.z = R_ENV_LIGHT2_DIR(2) = Math_SinS(cREG(13)) * 120.0f;
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80070C24.s")
#endif

#ifdef NON_MATCHING
// float regalloc
void Kankyo_DrawSunAndMoon(GlobalContext* globalCtx) {
    f32 alpha;
    f32 color;
    f32 y;
    f32 scale;
    f32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 2266);

    if (globalCtx->csCtx.state != 0) {
        Math_SmoothStepToF(&globalCtx->envCtx.sunPos.x,
                                -(Math_SinS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
        Math_SmoothStepToF(&globalCtx->envCtx.sunPos.y,
                                (Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
        //! @bug This should be z.
        Math_SmoothStepToF(&globalCtx->envCtx.sunPos.y,
                                (Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
    } else {
        globalCtx->envCtx.sunPos.x = -(Math_SinS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.y = +(Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.z = +(Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;
    }

    if (gSaveContext.entranceIndex != 0xCD || ((void)0, gSaveContext.sceneSetupIndex) != 5) {
        Matrix_Translate(globalCtx->view.eye.x + globalCtx->envCtx.sunPos.x,
                         globalCtx->view.eye.y + globalCtx->envCtx.sunPos.y,
                         globalCtx->view.eye.z + globalCtx->envCtx.sunPos.z, MTXMODE_NEW);

        y = globalCtx->envCtx.sunPos.y / 25.0f;

        alpha = 255.0f * (y / 80.0f);

        if (alpha < 0.0f) {
            alpha = 0.0f;
        }

        if (alpha > 255.0f) {
            alpha = 255.0f;
        }

        alpha = 255.0f - alpha;

        color = y / 80.0f;
        if (color < 0.0f) {
            color = 0.0f;
        }

        if (color > 1.0f) {
            color = 1.0f;
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, (u8)(color * 75.0f) + 180, (u8)(color * 155.0f) + 100, 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, color * 255.0f, color * 255.0f, alpha);

        scale = (color * 2.0f) + 10.0f;
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_kanyo.c", 2364), G_MTX_LOAD);
        func_80093AD0(globalCtx->state.gfxCtx);
        gSPDisplayList(POLY_OPA_DISP++, &D_0404D1C0);

        Matrix_Translate(globalCtx->view.eye.x - globalCtx->envCtx.sunPos.x,
                         globalCtx->view.eye.y - globalCtx->envCtx.sunPos.y,
                         globalCtx->view.eye.z - globalCtx->envCtx.sunPos.z, MTXMODE_NEW);

        scale = -y / 120.0f;

        if (scale < 0.0f) {
            scale = 0.0f;
        }

        scale = -15.0f * scale + 25.0f;
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

        alpha = - y / 80.0f;

        if (alpha > 1.0f) {
            alpha = 1.0f;
        }

        if ((alpha * 255.0f) > 0.0f) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_kanyo.c", 2406), G_MTX_LOAD);
            func_8009398C(globalCtx->state.gfxCtx);
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 240, 255, 180, alpha * 255.0f);
            gDPSetEnvColor(POLY_OPA_DISP++, 80, 70, 20, alpha * 255.0f);
            gSPDisplayList(POLY_OPA_DISP++, &D_04038F00);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 2429);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/Kankyo_DrawSunAndMoon.s")
#endif

void Kankyo_DrawSunLensFlare(GlobalContext* globalCtx, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx,
                             Vec3f pos, s32 unused) {
    if ((globalCtx->envCtx.unk_EE[1] == 0) && (globalCtx->envCtx.unk_17 == 0)) {
        Kankyo_DrawLensFlare(globalCtx, &globalCtx->envCtx, &globalCtx->view, globalCtx->state.gfxCtx, pos, 2000, 370,
                             Math_CosS(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f, 400, 1);
    }
}

#ifdef NON_MATCHING
void Kankyo_DrawLensFlare(GlobalContext* globalCtx, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx,
                          Vec3f pos, s32 unused, s16 arg6, f32 arg7, s16 arg8, u8 arg9) {
    static f32 lensFlareScales[] = { 23.0f, 12.0f, 7.0f, 5.0f, 3.0f, 10.0f, 6.0f, 2.0f, 3.0f, 1.0f };
    f32 lookDirX;
    f32 lookDirY;
    f32 lookDirZ;
    f32 posDirX;
    f32 posDirY;
    f32 posDirZ;
    f32 halfPosX;
    f32 halfPosY;
    f32 halfPosZ;
    f32 tempX;
    f32 tempY;
    f32 tempZ;
    f32 tempX2;
    f32 tempY2;
    f32 tempZ2;
    f32 pad;
    f32 cosAngle;
    f32 unk88Target;
    u32 isOffScreen = false;
    Vec3f screenPos;
    f32 temp;
    s16 i;
    f32 length;
    f32 dist;
    f32 scale;
    f32 alpha;
    f32 fogInfluence;
    f32 alphaScale;
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
    u32 lensFlareAlphas[] = { 50, 10, 25, 40, 70, 30, 50, 70, 50, 40 };
    u32 lensFlareTypes[] = {
        LENS_FLARE_RING,    LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1,
        LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1, LENS_FLARE_CIRCLE1,
    };
    OPEN_DISPS(gfxCtx, "../z_kankyo.c", 2516);

    dist = Math3D_Vec3f_DistXYZ(&pos, &view->eye) / 12.0f;

    // compute a unit vector in the look direction
    tempX = view->lookAt.x - view->eye.x;
    tempY = view->lookAt.y - view->eye.y;
    tempZ = view->lookAt.z - view->eye.z;

    length = sqrtf(SQ(tempX) + SQ(tempY) + SQ(tempZ));

    lookDirX = tempX / length;
    lookDirY = tempY / length;
    lookDirZ = tempZ / length;

    // compute a position along the look vector half as far as pos
    halfPosX = view->eye.x + lookDirX * (dist * 6.0f);
    halfPosY = view->eye.y + lookDirY * (dist * 6.0f);
    halfPosZ = view->eye.z + lookDirZ * (dist * 6.0f);

    // compute a unit vector in the direction from halfPos to pos
    tempX = pos.x - halfPosX;
    tempY = pos.y - halfPosY;
    tempZ = pos.z - halfPosZ;

    length = sqrtf(SQ(tempX) + SQ(tempY) + SQ(tempZ));

    posDirX = tempX / length;
    posDirY = tempY / length;
    posDirZ = tempZ / length;

    // compute the cosine of the angle between lookDir and posDir
    cosAngle = (lookDirX * posDirX + lookDirY * posDirY + lookDirZ * posDirZ) /
               sqrtf((SQ(lookDirX) + SQ(lookDirY) + SQ(lookDirZ)) * (SQ(posDirX) + SQ(posDirY) + SQ(posDirZ)));

    unk88Target = cosAngle * 3.5f;

    if (unk88Target > 1.0f) {
        unk88Target = 1.0f;
    }

    if (!arg9) {
        unk88Target = cosAngle;
    }

    if (cosAngle < 0.0f) {

    } else {
        if (arg9) {
            func_800C016C(globalCtx, &pos, &screenPos);
            D_8015FD7E = screenPos.x;
            D_8015FD80 = (s16)screenPos.y - 5.0f;
            if (D_8011FB44 != 0xFFFC || screenPos.x < 0.0f || screenPos.y < 0.0f || screenPos.x > SCREEN_WIDTH ||
                screenPos.y > SCREEN_HEIGHT) {
                isOffScreen = true;
            }
        }

        for (i = 0; i < ARRAY_COUNT(lensFlareTypes); i++) {
            Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);

            if (arg9) {
                temp = Kankyo_LerpWeight(60, 15, globalCtx->view.fovy);
            }

            Matrix_Translate(-posDirX * i * dist, -posDirY * i * dist, -posDirZ * i * dist, MTXMODE_APPLY);
            scale = lensFlareScales[i] * cosAngle;

            if (arg9) {
                scale *=  0.001 * (arg6 + 630.0f * temp);
            } else {
                scale *= 0.0001f * arg6 * (2.0f * dist);
            }

            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            alpha = arg7 / 10.0f;

            if (alpha > 1.0f) {
                alpha = 1.0f;
            }

            alpha = alpha * lensFlareAlphas[i];

            if (alpha < 0.0f) {
                alpha = 0.0f;
            }

            fogInfluence = (996 - globalCtx->lightCtx.fogNear) / 50.0f;

            if (fogInfluence > 1.0f) {
                fogInfluence = 1.0f;
            }

            alpha *= 1.0f - fogInfluence;

            if (!isOffScreen) { // 5088
                Math_SmoothStepToF(&envCtx->unk_88, unk88Target, 0.5f, 0.05f, 0.001f);
            } else {
                Math_SmoothStepToF(&envCtx->unk_88, 0.0f, 0.5f, 0.05f, 0.001f);
            }

            POLY_XLU_DISP = func_800947AC(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, lensFlareColors[i].r, lensFlareColors[i].g, lensFlareColors[i].b,
                            alpha * envCtx->unk_88);
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
                    gSPDisplayList(POLY_XLU_DISP++, D_04037730);
                    break;
                case LENS_FLARE_RING:
                    gSPDisplayList(POLY_XLU_DISP++, D_04037798);
                    break;
            }
        }

        alphaScale = cosAngle - (1.5f - cosAngle);

        if (arg8 != 0) {
            if (alphaScale > 0.0f) {
                POLY_XLU_DISP = func_800937C0(POLY_XLU_DISP);

                alpha = arg7 / 10.0f;

                if (alpha > 1.0f) {
                    alpha = 1.0f;
                }

                alpha = alpha * arg8;

                if (alpha < 0.0f) {
                    alpha = 0.0f;
                }

                fogInfluence = (996 - globalCtx->lightCtx.fogNear) / 50.0f;

                if (fogInfluence > 1.0f) {
                    fogInfluence = 1.0f;
                }

                alpha *= 1.0f - fogInfluence;

                gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
                gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);

                if (!isOffScreen) {
                    Math_SmoothStepToF(&envCtx->unk_84, alpha * alphaScale, 0.5f, 50.0f, 0.1f);
                } else {
                    Math_SmoothStepToF(&envCtx->unk_84, 0.0f, 0.5f, 50.0f, 0.1f);
                }

                temp = arg7 / 120.0f;

                if (temp < 0.0f) {
                    temp = 0.0f;
                }

                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, (u8)(temp * 75.0f) + 180, (u8)(temp * 155.0f) + 100,
                                envCtx->unk_84);
                gDPFillRectangle(POLY_XLU_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
            } else {
                envCtx->unk_84 = 0.0f;
            }
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 2750);
}
#else
f32 D_8011FDD8[] = { 23.0f, 12.0f, 7.0f, 5.0f, 3.0f, 10.0f, 6.0f, 2.0f, 3.0f, 1.0f };
Color_RGB8 D_8011FE00[] = {
    { 155, 205, 255 }, { 255, 255, 205 }, { 255, 255, 205 }, { 255, 255, 205 }, { 155, 255, 205 },
    { 205, 255, 255 }, { 155, 155, 255 }, { 205, 175, 255 }, { 175, 255, 205 }, { 255, 155, 235 },
};
u32 D_8011FE20[] = { 0x32, 0xA, 0x19, 0x28, 0x46, 0x1E, 0x32, 0x46, 0x32, 0x28 };
u32 D_8011FE48[] = { 2, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80073A5C.s")
#endif

f32 func_800746DC() {
    return Rand_ZeroOne() - 0.5f;
}

#ifdef NON_MATCHING
// float regalloc, but appears to be equivalent
void Kankyo_DrawRain(GlobalContext* globalCtx, View* view, GraphicsContext* gfxCtx) {
    s16 i;
    Vec3f vec;
    f32 length;
    Vec3f norm;
    f32 rotX;
    f32 rotY;
    f32 tempY;
    f32 x50;
    f32 y50;
    f32 z50;
    f32 x280;
    f32 z280;
    f32 temp;
    f32 temp2;
    Vec3f unused = { 0.0f, 0.0f, 0.0f };
    Vec3f windDirection = { 0.0f, 0.0f, 0.0f };
    Player* player = PLAYER;

    if (!(globalCtx->cameraPtrs[0]->unk_14C & 0x100) && (globalCtx->envCtx.unk_EE[2] == 0)) {
        OPEN_DISPS(gfxCtx, "../z_kankyo.c", 2799);

        vec.x = view->lookAt.x - view->eye.x;
        vec.y = view->lookAt.y - view->eye.y;
        vec.z = view->lookAt.z - view->eye.z;

        length = sqrtf(SQXYZ(vec));

        norm.x = vec.x / length;
        norm.y = vec.y / length;
        norm.z = vec.z / length;

        x50 = view->eye.x + norm.x * 50.0f;
        y50 = view->eye.y + norm.y * 50.0f;
        z50 = view->eye.z + norm.z * 50.0f;

        x280 = view->eye.x + norm.x * 280.0f;
        z280 = view->eye.z + norm.z * 280.0f;

        if (globalCtx->envCtx.unk_EE[1]) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 150, 255, 255, 30);
            POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 20);
        }

        // draw rain drops
        for (i = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
            vec.x = Rand_ZeroOne();
            vec.y = Rand_ZeroOne();
            vec.z = Rand_ZeroOne();

            Matrix_Translate((vec.x - 0.7f) * 100.0f + x50, (vec.y - 0.7f) * 100.0f + y50,
                             (vec.z - 0.7f) * 100.0f + z50, MTXMODE_NEW);

            temp = windDirection.x = globalCtx->envCtx.windDirection.x;
            windDirection.y = globalCtx->envCtx.windDirection.y;
            temp2 = windDirection.z = globalCtx->envCtx.windDirection.z;
            
            tempY = windDirection.y + 500.0f + Rand_ZeroOne() * 200.0f;
            // float regalloc is bad around here.
            z50 = temp2;
            length = sqrtf(SQ(temp) + SQ(z50));

            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            rotX = Math_Atan2F(length, -tempY);
            rotY = Math_Atan2F(z50, temp);
            Matrix_RotateY(-rotY, MTXMODE_APPLY);
            Matrix_RotateX(M_PI / 2 - rotX, MTXMODE_APPLY);
            Matrix_Scale(0.4f, 1.2f, 0.4f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2887),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_04048160);
            
        }

        // draw droplet rings on the ground
        if (player->actor.world.pos.y < view->eye.y) {
            u8 firstDone = false;

            for (i = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
                if (!firstDone) {
                    func_80093D84(gfxCtx);
                    gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 155, 0);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 120);
                    firstDone++;
                }

                Matrix_Translate(func_800746DC() * 280.0f + x280, player->actor.world.pos.y + 2.0f,
                                 func_800746DC() * 280.0f + z280, MTXMODE_NEW);

                if ((LINK_IS_ADULT && ((player->actor.world.pos.y + 2.0f - view->eye.y) > -48.0f)) ||
                    (!LINK_IS_ADULT && ((player->actor.world.pos.y + 2.0f - view->eye.y) > -30.0f))) {
                    Matrix_Scale(0.02f, 0.02f, 0.02f, MTXMODE_APPLY);
                } else {
                    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
                }

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2940),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, D_0401A0B0);
            }
        }

        CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 2946);
    }
}
#else
Vec3f D_8011FE70 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8011FE7C = { 0.0f, 0.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80074704.s")
#endif

void func_80074CE8(GlobalContext* globalCtx, u32 arg1) {
    if (globalCtx->envCtx.unk_BD != arg1 && globalCtx->envCtx.unk_D8 >= 1.0f && globalCtx->envCtx.unk_BF == 0xFF) {
        if (arg1 > 30) {
            arg1 = 0;
        }
        globalCtx->envCtx.unk_D8 = 0.0f;
        globalCtx->envCtx.unk_BE = globalCtx->envCtx.unk_BD;
        globalCtx->envCtx.unk_BD = arg1;
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
void Kankyo_DrawSkyboxFilters(GlobalContext* globalCtx) {
    if (((globalCtx->skyboxId != 0) && (globalCtx->lightCtx.fogNear < 980)) || (globalCtx->skyboxId == 29)) {
        f32 alpha;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3032);

        func_800938B4(globalCtx->state.gfxCtx);

        alpha = (1000 - globalCtx->lightCtx.fogNear) * 0.02f;

        if (globalCtx->skyboxId == 29) {
            alpha = 1.0f;
        }

        if (alpha > 1.0f) {
            alpha = 1.0f;
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, globalCtx->lightCtx.fogColor[0], globalCtx->lightCtx.fogColor[1],
                        globalCtx->lightCtx.fogColor[2], 255.0f * alpha);
        gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3043);
    }

    if (globalCtx->envCtx.customSkyboxFilter) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3048);

        func_800938B4(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, globalCtx->envCtx.skyboxFilterColor[0],
                        globalCtx->envCtx.skyboxFilterColor[1], globalCtx->envCtx.skyboxFilterColor[2],
                        globalCtx->envCtx.skyboxFilterColor[3]);
        gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3056);
    }
}

void Kankyo_DrawLightningFlash(GlobalContext* globalCtx, u8 red, u8 green, u8 blue, u8 alpha) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3069);

    func_800938B4(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, alpha);
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3079);
}

void Kankyo_UpdateLightningStrike(GlobalContext* globalCtx) {
    if (globalCtx->envCtx.lightningMode != LIGHTNING_MODE_OFF) {
        switch (gLightningStrike.state) {
            case LIGHTNING_STRIKE_WAIT:
                // every frame theres a 10% chance of the timer advancing 50 frames
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
                    Kankyo_AddLightningBolts(globalCtx, (u8)(Rand_ZeroOne() * 2.9f) + 1);
                    sLightningFlashAlpha = 0;
                    gLightningStrike.state++;
                }
                break;
            case LIGHTNING_STRIKE_START:
                gLightningStrike.flashRed = 200;
                gLightningStrike.flashGreen = 200;
                gLightningStrike.flashBlue = 255;

                globalCtx->envCtx.adjAmbientColor[0] += 80;
                globalCtx->envCtx.adjAmbientColor[1] += 80;
                globalCtx->envCtx.adjAmbientColor[2] += 100;

                sLightningFlashAlpha += 100;

                if (sLightningFlashAlpha >= gLightningStrike.flashAlphaTarget) {
                    func_800F6D58(15, 0, 0);
                    gLightningStrike.state++;
                    gLightningStrike.flashAlphaTarget = 0;
                }
                break;
            case LIGHTNING_STRIKE_END:
                if (globalCtx->envCtx.adjAmbientColor[0] > 0) {
                    globalCtx->envCtx.adjAmbientColor[0] -= 10;
                    globalCtx->envCtx.adjAmbientColor[1] -= 10;
                }

                if (globalCtx->envCtx.adjAmbientColor[2] > 0) {
                    globalCtx->envCtx.adjAmbientColor[2] -= 10;
                }

                sLightningFlashAlpha -= 10;

                if (sLightningFlashAlpha <= gLightningStrike.flashAlphaTarget) {
                    globalCtx->envCtx.adjAmbientColor[0] = 0;
                    globalCtx->envCtx.adjAmbientColor[1] = 0;
                    globalCtx->envCtx.adjAmbientColor[2] = 0;

                    gLightningStrike.state = LIGHTNING_STRIKE_WAIT;

                    if (globalCtx->envCtx.lightningMode == LIGHTNING_MODE_LAST) {
                        globalCtx->envCtx.lightningMode = LIGHTNING_MODE_OFF;
                    }
                }
                break;
        }
    }

    if (gLightningStrike.state != LIGHTNING_STRIKE_WAIT) {
        Kankyo_DrawLightningFlash(globalCtx, gLightningStrike.flashRed, gLightningStrike.flashGreen,
                                  gLightningStrike.flashBlue, sLightningFlashAlpha);
    }
}

/**
 * Request the number of lightning bolts specified by `num`
 * Note: only 3 lightning bolts can be active at the same time.
 */
void Kankyo_AddLightningBolts(GlobalContext* globalCtx, u8 num) {
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
void Kankyo_DrawLightning(GlobalContext* globalCtx, s32 unused) {
    static void* lightningTextures[] = {
        &D_04029F30, &D_0402A530, &D_0402AB30, &D_0402B130, &D_0402B730, &D_0402BD30, &D_0402C330, &D_0402C930, NULL,
    };
    s16 i;
    f32 dx;
    f32 dz;
    f32 x;
    f32 z;
    s32 pad[2];
    Vec3f unused1 = { 0.0f, 0.0f, 0.0f };
    Vec3f unused2 = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3253);

    for (i = 0; i < ARRAY_COUNT(sLightningBolts); i++) {
        switch (sLightningBolts[i].state) {
            case LIGHTNING_BOLT_START:
                dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;

                x = dx / sqrtf(SQ(dx) + SQ(dz));
                z = dz / sqrtf(SQ(dx) + SQ(dz));

                sLightningBolts[i].pos.x = globalCtx->view.eye.x + x * 9500.0f;
                sLightningBolts[i].pos.y = Rand_ZeroOne() * 1000.0f + 4000.0f;
                sLightningBolts[i].pos.z = globalCtx->view.eye.z + z * 9500.0f;

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
            Matrix_RotateX(sLightningBolts[i].pitch * (M_PI / 180.0f), MTXMODE_APPLY);
            Matrix_RotateZ(sLightningBolts[i].roll * (M_PI / 180.0f), MTXMODE_APPLY);
            Matrix_Scale(22.0f, 100.0f, 22.0f, MTXMODE_APPLY);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 128);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, 128);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_kankyo.c", 3333),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(lightningTextures[sLightningBolts[i].textureIndex]));
            func_80094C50(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, &D_0402CF30);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3353);
}

void func_800758AC(GlobalContext* globalCtx) {
    globalCtx->envCtx.unk_E0 = 0xFF;
    
    // both lost woods exits on the bridge from kokiri to hyrule field
    if (((void)0, gSaveContext.entranceIndex) == 0x4DE || ((void)0, gSaveContext.entranceIndex) == 0x5E0) {
        func_800F6FB4(4);
    } else if (((void)0, gSaveContext.unk_140E) != 0) {
        if (!func_80077600()) {
            Audio_QueueSeqCmd((s32)((void) 0, gSaveContext.unk_140E));
        }
        gSaveContext.unk_140E = 0;
    } else if (globalCtx->soundCtx.seqIndex == 0x7F) {
        if (globalCtx->soundCtx.nightSeqIndex == 0x13) {
            return;
        }
        if (((void)0, gSaveContext.nightSeqIndex) != globalCtx->soundCtx.nightSeqIndex) {
            func_800F6FB4(globalCtx->soundCtx.nightSeqIndex);
        }
    } else if (globalCtx->soundCtx.nightSeqIndex == 0x13) {
        // "BGM Configuration"
        osSyncPrintf("\n\n\nBGM設定game_play->sound_info.BGM=[%d] old_bgm=[%d]\n\n", globalCtx->soundCtx.seqIndex,
                     ((void)0, gSaveContext.seqIndex));
        if (((void)0, gSaveContext.seqIndex) != globalCtx->soundCtx.seqIndex) {
            func_800F5550(globalCtx->soundCtx.seqIndex);
        }
    } else if (((void)0, gSaveContext.dayTime) > 0x4AAA && ((void)0, gSaveContext.dayTime) < 0xB71D) {
        if (((void)0, gSaveContext.seqIndex) != globalCtx->soundCtx.seqIndex) {
            func_800F5550(globalCtx->soundCtx.seqIndex);
        }

        globalCtx->envCtx.unk_E0 = 1;
    } else {
        if (((void)0, gSaveContext.nightSeqIndex) != globalCtx->soundCtx.nightSeqIndex) {
            func_800F6FB4(globalCtx->soundCtx.nightSeqIndex);
        }

        if (((void)0, gSaveContext.dayTime) > 0xB71C && ((void)0, gSaveContext.dayTime) < 0xCAAC) {
            globalCtx->envCtx.unk_E0 = 3;
        } else if (((void)0, gSaveContext.dayTime) > 0xCAAC || ((void)0, gSaveContext.dayTime) < 0x4555) {
            globalCtx->envCtx.unk_E0 = 5;
        } else {
            globalCtx->envCtx.unk_E0 = 7;
        }
    }

    osSyncPrintf("\n-----------------\n", ((void)0, gSaveContext.unk_140E));
    osSyncPrintf("\n 強制ＢＧＭ=[%d]", ((void)0, gSaveContext.unk_140E)); // "Forced BGM"
    osSyncPrintf("\n     ＢＧＭ=[%d]", globalCtx->soundCtx.seqIndex);
    osSyncPrintf("\n     エンブ=[%d]", globalCtx->soundCtx.nightSeqIndex);
    osSyncPrintf("\n     status=[%d]", globalCtx->envCtx.unk_E0);

    func_800F66C0(globalCtx->roomCtx.curRoom.echo);
}

// updates bgm/sfx and other things as the day progresses
void func_80075B44(GlobalContext* globalCtx) {
    switch (globalCtx->envCtx.unk_E0) {
        case 0:
            func_800F6D58(86, 1, 0);
            if (globalCtx->envCtx.unk_EE[0] == 0 && globalCtx->envCtx.unk_F2[0] == 0) {
                osSyncPrintf("\n\n\nNa_StartMorinigBgm\n\n");
                func_800F5510(globalCtx->soundCtx.seqIndex);
            }
            globalCtx->envCtx.unk_E0++;
            break;
        case 1:
            if (gSaveContext.dayTime > 0xB71C) {
                if (globalCtx->envCtx.unk_EE[0] == 0 && globalCtx->envCtx.unk_F2[0] == 0) {
                    Audio_QueueSeqCmd(0x10F000FF);
                }
                globalCtx->envCtx.unk_E0++;
            }
            break;
        case 2:
            if (gSaveContext.dayTime > 0xC000) {
                func_800788CC(NA_SE_EV_DOG_CRY_EVENING);
                globalCtx->envCtx.unk_E0++;
            }
            break;
        case 3:
            if (globalCtx->envCtx.unk_EE[0] == 0 && globalCtx->envCtx.unk_F2[0] == 0) {
                func_800F6FB4(globalCtx->soundCtx.nightSeqIndex);
                func_800F6D58(1, 1, 1);
            }
            globalCtx->envCtx.unk_E0++;
            break;
        case 4:
            if (gSaveContext.dayTime > 0xCAAB) {
                globalCtx->envCtx.unk_E0++;
            }
            break;
        case 5:
            func_800F6D58(1, 1, 0);
            if (globalCtx->envCtx.unk_EE[0] == 0 && globalCtx->envCtx.unk_F2[0] == 0) {
                func_800F6D58(36, 1, 1);
            }
            globalCtx->envCtx.unk_E0++;
            break;
        case 6:
            if ((gSaveContext.dayTime < 0xCAAC) && (gSaveContext.dayTime > 0x4555)) {
                gSaveContext.totalDays++;
                gSaveContext.bgsDayCount++;
                gSaveContext.dogIsLost = true;
                func_80078884(NA_SE_EV_CHICKEN_CRY_M);
                if ((Inventory_ReplaceItem(globalCtx, ITEM_WEIRD_EGG, ITEM_CHICKEN) ||
                     Inventory_ReplaceItem(globalCtx, ITEM_POCKET_EGG, ITEM_POCKET_CUCCO)) &&
                    globalCtx->csCtx.state == 0 && !Player_InCsMode(globalCtx)) {
                    func_8010B680(globalCtx, 0x3066, NULL);
                }
                globalCtx->envCtx.unk_E0++;
            }
            break;
        case 7:
            func_800F6D58(36, 1, 0);
            if (globalCtx->envCtx.unk_EE[0] == 0 && globalCtx->envCtx.unk_F2[0] == 0) {
                func_800F6D58(86, 1, 1);
            }
            globalCtx->envCtx.unk_E0++;
            break;
        case 8:
            if (gSaveContext.dayTime > 0x4AAB) {
                globalCtx->envCtx.unk_E0 = 0;
            }
            break;
    }
}

void Kankyo_DrawCustomLensFlare(GlobalContext* globalCtx) {
    Vec3f pos;

    if (gCustomLensFlareOn) {
        pos.x = gCustomLensFlarePos.x;
        pos.y = gCustomLensFlarePos.y;
        pos.z = gCustomLensFlarePos.z;

        Kankyo_DrawLensFlare(globalCtx, &globalCtx->envCtx, &globalCtx->view, globalCtx->state.gfxCtx, pos, D_8015FD04,
                             D_8015FD06, D_8015FD08, D_8015FD0C, 0);
    }
}

void Kankyo_InitGameOverLights(GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    sGameOverLightsRGB = 0;

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f, 0, 0, 0,
                              255);
    sNGameOverLightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &sNGameOverLightInfo);

    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f, 0, 0, 0,
                              255);
    sSGameOverLightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &sSGameOverLightInfo);
}

void Kankyo_FadeInGameOverLights(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 i;

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f,
                              sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);
    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f,
                              sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);

    if (sGameOverLightsRGB < 254) {
        sGameOverLightsRGB += 2;
    }

    if (func_800C0CB8(globalCtx)) {
        for (i = 0; i < 3; i++) {
            if (globalCtx->envCtx.adjAmbientColor[i] > -255) {
                globalCtx->envCtx.adjAmbientColor[i] -= 12;
                globalCtx->envCtx.adjLight1Color[i] -= 12;
            }
            globalCtx->envCtx.adjFogColor[i] = -255;
        }

        if (globalCtx->envCtx.lightSettings.fogFar + globalCtx->envCtx.adjFogFar > 900) {
            globalCtx->envCtx.adjFogFar -= 100;
        }

        if (globalCtx->envCtx.lightSettings.fogNear + globalCtx->envCtx.adjFogNear > 950) {
            globalCtx->envCtx.adjFogNear -= 10;
        }
    } else {
        globalCtx->envCtx.fillScreen = true;
        globalCtx->envCtx.screenFillColor[0] = 0;
        globalCtx->envCtx.screenFillColor[1] = 0;
        globalCtx->envCtx.screenFillColor[2] = 0;
        globalCtx->envCtx.screenFillColor[3] = sGameOverLightsRGB;
    }
}

void Kankyo_FadeOutGameOverLights(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 i;

    if (sGameOverLightsRGB >= 3) {
        sGameOverLightsRGB -= 3;
    } else {
        sGameOverLightsRGB = 0;
    }

    if (sGameOverLightsRGB == 1) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, sNGameOverLightNode);
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, sSGameOverLightNode);
    } else if (sGameOverLightsRGB >= 2) {
        Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                                  (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z - 10.0f,
                                  sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);
        Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                                  (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f,
                                  sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);
    }

    if (func_800C0CB8(globalCtx)) {
        for (i = 0; i < 3; i++) {
            Math_SmoothStepToS(&globalCtx->envCtx.adjAmbientColor[i], 0, 5, 12, 1);
            Math_SmoothStepToS(&globalCtx->envCtx.adjLight1Color[i], 0, 5, 12, 1);
            globalCtx->envCtx.adjFogColor[i] = 0;
        }
        globalCtx->envCtx.adjFogFar = 0;
        globalCtx->envCtx.adjFogNear = 0;
    } else {
        globalCtx->envCtx.fillScreen = true;
        globalCtx->envCtx.screenFillColor[0] = 0;
        globalCtx->envCtx.screenFillColor[1] = 0;
        globalCtx->envCtx.screenFillColor[2] = 0;
        globalCtx->envCtx.screenFillColor[3] = sGameOverLightsRGB;
        if (sGameOverLightsRGB == 0) {
            globalCtx->envCtx.fillScreen = false;
        }
    }
}

void func_800766C4(GlobalContext* globalCtx) {
    u8 max = MAX(globalCtx->envCtx.unk_EE[0], globalCtx->envCtx.unk_F2[0]);

    if (globalCtx->envCtx.unk_EE[1] != max && (globalCtx->state.frames & 7) == 0) {
        if (globalCtx->envCtx.unk_EE[1] < max) {
            globalCtx->envCtx.unk_EE[1] += 2;
        } else {
            globalCtx->envCtx.unk_EE[1] -= 2;
        }
    }
}

void Kankyo_FillScreen(GraphicsContext* gfxCtx, u8 red, u8 green, u8 blue, u8 alpha, u8 drawFlags) {
    if (alpha != 0) {
        OPEN_DISPS(gfxCtx, "../z_kankyo.c", 3835);

        if (drawFlags & FILL_SCREEN_OPA) {
            POLY_OPA_DISP = func_800937C0(POLY_OPA_DISP);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, alpha);
            gDPSetAlphaDither(POLY_OPA_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_OPA_DISP++, G_CD_DISABLE);
            gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        if (drawFlags & FILL_SCREEN_XLU) {
            POLY_XLU_DISP = func_800937C0(POLY_XLU_DISP);
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

Color_RGB8 D_8011FEC4[] = { {0xD2, 0x9C, 0x55}, {0xFF, 0xC8, 0x64}, {0xE1, 0xA0, 0x32}, {0x69, 0x5A, 0x28 }, };
Color_RGB8 D_8011FED0[] = { {0x9B, 0x6A, 0x23}, {0xC8, 0x96, 0x32}, {0xAA, 0x6E, 0x00}, {0x32, 0x28, 0x00}, };

void Kankyo_DrawSandstorm(GlobalContext* globalCtx, u8 sandstormState) {
    s32 primA1;
    s32 envA1;
    s32 primA = globalCtx->envCtx.sandstormPrimA;
    s32 envA = globalCtx->envCtx.sandstormEnvA;
    Color_RGBA8 spA4;
    Color_RGBA8 spA0;
    s32 pad;
    f32 sp98;
    u16 sp96;
    u16 sp94;
    u16 sp92;

    switch (sandstormState) {
        case 3:
            if ((globalCtx->sceneNum == SCENE_SPOT13) && (globalCtx->roomCtx.curRoom.num == 0)) { 
                envA1 = 0;
                primA1 = (globalCtx->envCtx.sandstormEnvA > 128) ? 255 : globalCtx->envCtx.sandstormEnvA >> 1;
            } else {
                primA1 = globalCtx->state.frames % 128;
                if (primA1 > 64) {
                    primA1 = 128 - primA1;
                }
                primA1 += 73;
                envA1 = 128;
            }
            break;
        case 1:
            primA1 = 255;
            envA1 = (globalCtx->envCtx.sandstormPrimA >= 255) ? 255 : 128;
            break;
        case 2:
            envA1 = 128;
            if (globalCtx->envCtx.sandstormEnvA > 128) {
                primA1 = 0xFF;
            } else {
                primA1 = globalCtx->state.frames % 128;
                if (primA1 > 64) {
                    primA1 = 128 - primA1;
                }
                primA1 += 73;
            }
            if ((primA1 >= primA) && (primA1 != 255)) {
                globalCtx->envCtx.sandstormState = 3;
            }
            break;
        case 4:
            envA1 = 0;
            primA1 = (globalCtx->envCtx.sandstormEnvA > 128) ? 255 : globalCtx->envCtx.sandstormEnvA >> 1;

            if (primA == 0) {
                globalCtx->envCtx.sandstormState = 0;
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
    globalCtx->envCtx.sandstormPrimA = primA;
    globalCtx->envCtx.sandstormEnvA = envA;

    sp98 = (512.0f - (primA + envA)) * (3.0f / 128.0f);
    if (sp98 > 6.0f) {
        sp98 = 6.0f;
    }
    if (globalCtx->envCtx.indoors || (globalCtx->envCtx.unk_BF != 0xFF)) {
        spA4.r = D_8011FEC4[1].r;
        spA4.g = D_8011FEC4[1].g;
        spA4.b = D_8011FEC4[1].b;
        spA0.r = D_8011FED0[1].r;
        spA0.g = D_8011FED0[1].g;
        spA0.b = D_8011FED0[1].b;
    } else if (D_8011FDCC == D_8011FDD0) {
        spA4.r = D_8011FEC4[D_8011FDCC].r;
        spA4.g = D_8011FEC4[D_8011FDCC].g;
        spA4.b = D_8011FEC4[D_8011FDCC].b;
        spA0.r = D_8011FED0[D_8011FDCC].r;
        spA0.g = D_8011FED0[D_8011FDCC].g;
        spA0.b = D_8011FED0[D_8011FDCC].b;
    } else {
        spA4.r = (s32)F32_LERP(D_8011FEC4[D_8011FDCC].r,D_8011FEC4[D_8011FDD0].r, D_8011FDD4); //* (1 - D_8011FDD4)) + (D_8011FEC4[D_8011FDD0].r * D_8011FDD4));
        spA4.g = (s32)F32_LERP(D_8011FEC4[D_8011FDCC].g,D_8011FEC4[D_8011FDD0].g, D_8011FDD4);
        spA4.b = (s32)F32_LERP(D_8011FEC4[D_8011FDCC].b,D_8011FEC4[D_8011FDD0].b, D_8011FDD4);
        spA0.r = (s32)F32_LERP(D_8011FED0[D_8011FDCC].r,D_8011FED0[D_8011FDD0].r, D_8011FDD4);
        spA0.g = (s32)F32_LERP(D_8011FED0[D_8011FDCC].g,D_8011FED0[D_8011FDD0].g, D_8011FDD4);
        spA0.b = (s32)F32_LERP(D_8011FED0[D_8011FDCC].b,D_8011FED0[D_8011FDD0].b, D_8011FDD4);
    }

    spA0.r = ((spA0.r * sp98) + ((6.0f - sp98) * spA4.r)) * (1.0f / 6.0f);
    spA0.g = ((spA0.g * sp98) + ((6.0f - sp98) * spA4.g)) * (1.0f / 6.0f);
    spA0.b = ((spA0.b * sp98) + ((6.0f - sp98) * spA4.b)) * (1.0f / 6.0f);

    sp96 = (s32)(D_8015FDB0 * (11.0f / 6.0f));
    sp94 = (s32)(D_8015FDB0 * (9.0f / 6.0f));
    sp92 = (s32)(D_8015FDB0 * (6.0f / 6.0f));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 4044);

    POLY_XLU_DISP = func_80093F34(POLY_XLU_DISP);
    gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_NOISE);
    gDPSetColorDither(POLY_XLU_DISP++, G_CD_NOISE);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, spA4.r, spA4.g, spA4.b, globalCtx->envCtx.sandstormPrimA);
    gDPSetEnvColor(POLY_XLU_DISP++, spA0.r, spA0.g, spA0.b, globalCtx->envCtx.sandstormEnvA);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (u32)sp96 % 0x1000, 0, 0x200, 0x20, 1, (u32)sp94 % 0x1000,
                                0xFFF - ((u32)sp92 % 0x1000), 0x100, 0x40));
    gDPSetTextureLUT(POLY_XLU_DISP++, G_TT_NONE);
    gSPDisplayList(POLY_XLU_DISP++, D_0500CA70);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 4068);

    D_8015FDB0 += (s32)sp98;
}

// arg1 intensity
// arg4 colorScale
void Kankyo_AdjustLights(GlobalContext* globalCtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp;
    s32 i;

    if (globalCtx->roomCtx.curRoom.unk_03 != 5 && func_800C0CB8(globalCtx)) {
        if (arg1 < 0.0f) {
            arg1 = 0.0f;
        }

        if (arg1 > 1.0f) {
            arg1 = 1.0f;
        }

        temp = arg1 - arg3;
        if (arg1 < arg3) {
            temp = 0.0f;
        }

        globalCtx->envCtx.adjFogNear = (arg2 - globalCtx->envCtx.lightSettings.fogNear) * temp;

        if (arg1 == 0.0f) {
            for (i = 0; i < 3; i++) {
                globalCtx->envCtx.adjFogColor[i] = 0;
            }
        } else {
            temp = arg1 * 5.0f;

            if (temp > 1.0f) {
                temp = 1.0f;
            }

            for (i = 0; i < 3; i++) {
                globalCtx->envCtx.adjFogColor[i] = -(s16)(globalCtx->envCtx.lightSettings.fogColor[i] * temp);
            }
        }

        if (arg4 <= 0.0f) {
            return;
        }

        arg1 *= arg4;
        for (i = 0; i < 3; i++) {
            globalCtx->envCtx.adjAmbientColor[i] = -(s16)(globalCtx->envCtx.lightSettings.ambientColor[i] * arg1);
            globalCtx->envCtx.adjLight1Color[i] = -(s16)(globalCtx->envCtx.lightSettings.light1Color[i] * arg1);
        }
    }
}

s32 Kankyo_GetBgsDayCount() {
    return gSaveContext.bgsDayCount;
}

void Kankyo_ClearBgsDayCount(void) {
    gSaveContext.bgsDayCount = 0;
}

s32 Kankyo_GetTotalDays() {
    return gSaveContext.totalDays;
}

void func_800775F0(u16 arg0) {
    gSaveContext.unk_140E = arg0;
}

s32 func_80077600(void) {
    s32 ret = false;

    if (gSaveContext.unk_140E == 0xFFFF) {
        ret = true;
    }

    return ret;
}

void func_80077624(GlobalContext* globalCtx) {
    if (globalCtx->soundCtx.nightSeqIndex == 19) {
        func_800F6FB4(5);
    } else {
        func_800F6FB4(globalCtx->soundCtx.nightSeqIndex);
    }

    func_800F6D58(14, 1, 1);
    func_800F6D58(15, 1, 1);
}

void func_80077684(GlobalContext* globalCtx) {
    func_800F6D58(14, 1, 0);
    func_800F6D58(15, 1, 0);

    if (func_800FA0B4(0) == 1) {
        gSaveContext.seqIndex = 0x80;
        func_800758AC(globalCtx);
    }
}

/**
 * After a warp song has been played, set the next entrance accordingly and begin the fade out.
 * Additionally, set the flag for having watched the intro cutscene for the destination area.
 * This makes it so the cutscene will be skipped if you have already been to the area via warp song.
 */
void Kankyo_WarpSongLeave(GlobalContext* globalCtx) {
    gWeatherMode = 0;
    gSaveContext.cutsceneIndex = 0;
    gSaveContext.respawnFlag = -3;
    globalCtx->nextEntranceIndex = gSaveContext.respawn[RESPAWN_MODE_RETURN].entranceIndex;
    globalCtx->sceneLoadFlag = 0x14;
    globalCtx->fadeTransition = 3;
    gSaveContext.nextTransition = 3;

    switch (globalCtx->nextEntranceIndex) {
        case 0x147:
            Flags_SetEventChkInf(0xB9);
            break;
        case 0x0102:
            Flags_SetEventChkInf(0xB1);
            break;
        case 0x0123:
            Flags_SetEventChkInf(0xB8);
            break;
        case 0x00E4:
            Flags_SetEventChkInf(0xB6);
            break;
        case 0x0053:
            Flags_SetEventChkInf(0xA7);
            break;
        case 0x00FC:
            break;
    }
}
