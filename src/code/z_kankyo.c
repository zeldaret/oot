#include "global.h"
#include "ultra64.h"
#include "vt.h"

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

u16 gTimeIncrement = 0; // D_8011FB40

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
        { 0x0000, 0x2AAC, 0, SBI_FINE1_PAL, SBI_FINE1_PAL },
        { 0x2AAC, 0x3556, 1, SBI_FINE1_PAL, SBI_FINE0 },
        { 0x3556, 0x4000, 0, SBI_FINE0, SBI_FINE0 },
        { 0x4000, 0x5556, 1, SBI_FINE0, SBI_FINE0_PAL },
        { 0x5556, 0xAAAB, 0, SBI_FINE0_PAL, SBI_FINE0_PAL },
        { 0xAAAB, 0xB556, 1, SBI_FINE0_PAL, SBI_FINE1 },
        { 0xB556, 0xC001, 0, SBI_FINE1, SBI_FINE1 },
        { 0xC001, 0xCAAC, 1, SBI_FINE1, SBI_FINE1_PAL },
        { 0xCAAC, 0xFFFF, 0, SBI_FINE1_PAL, SBI_FINE1_PAL },
    },
    {
        { 0x0000, 0x2AAC, 0, SBI_FINE3_PAL, SBI_FINE3_PAL },
        { 0x2AAC, 0x3556, 1, SBI_FINE3_PAL, SBI_FINE2 },
        { 0x3556, 0x4000, 0, SBI_FINE2, SBI_FINE2 },
        { 0x4000, 0x5556, 1, SBI_FINE2, SBI_FINE2_PAL },
        { 0x5556, 0xAAAB, 0, SBI_FINE2_PAL, SBI_FINE2_PAL },
        { 0xAAAB, 0xB556, 1, SBI_FINE2_PAL, SBI_FINE3 },
        { 0xB556, 0xC001, 0, SBI_FINE3, SBI_FINE3 },
        { 0xC001, 0xCAAC, 1, SBI_FINE3, SBI_FINE3_PAL },
        { 0xCAAC, 0xFFFF, 0, SBI_FINE3_PAL, SBI_FINE3_PAL },
    },
    {
        { 0x0000, 0x1556, 0, SBI_FINE1_PAL, SBI_FINE1_PAL },
        { 0x1556, 0x2AAC, 1, SBI_FINE1_PAL, SBI_FINE0 },
        { 0x2AAC, 0x5556, 0, SBI_FINE0, SBI_FINE0 },
        { 0x5556, 0x6AAB, 1, SBI_FINE0, SBI_FINE0_PAL },
        { 0x6AAB, 0x9556, 0, SBI_FINE0_PAL, SBI_FINE0_PAL },
        { 0x9556, 0xAAAB, 1, SBI_FINE0_PAL, SBI_FINE1 },
        { 0xAAAB, 0xD556, 0, SBI_FINE1, SBI_FINE1 },
        { 0xD556, 0xEAAB, 1, SBI_FINE1, SBI_FINE1_PAL },
        { 0xEAAB, 0xFFFF, 0, SBI_FINE1_PAL, SBI_FINE1_PAL },
    },
    {
        { 0x0000, 0x3556, 0, SBI_CLOUD1_PAL, SBI_CLOUD1_PAL },
        { 0x3556, 0x4000, 1, SBI_CLOUD1_PAL, SBI_CLOUD0 },
        { 0x4000, 0x4AAB, 0, SBI_CLOUD0, SBI_CLOUD0 },
        { 0x4AAB, 0x5556, 1, SBI_CLOUD0, SBI_CLOUD0_PAL },
        { 0x5556, 0xAAAB, 0, SBI_CLOUD0_PAL, SBI_CLOUD0_PAL },
        { 0xAAAB, 0xB556, 1, SBI_CLOUD0_PAL, SBI_CLOUD1 },
        { 0xB556, 0xC001, 0, SBI_CLOUD1, SBI_CLOUD1 },
        { 0xC001, 0xCAAC, 1, SBI_CLOUD1, SBI_CLOUD1_PAL },
        { 0xCAAC, 0xFFFF, 0, SBI_CLOUD1_PAL, SBI_CLOUD1_PAL },
    },
};

// this is wrong, seperation is prob on tex vs pallete, not background and clouds
typedef enum {
    /* 0 */ SKYBOX_FILE_BG,
    /* 1 */ SKYBOX_FILE_CLOUDS
} SkyboxFileType;

RomFile gSkyboxFiles[][2] = {
    ENV_ROM_FILES(fine0),  ENV_ROM_FILES(fine1),  ENV_ROM_FILES(fine2),  ENV_ROM_FILES(fine3), ENV_ROM_FILES(cloud0),
    ENV_ROM_FILES(cloud1), ENV_ROM_FILES(cloud2), ENV_ROM_FILES(cloud3), ENV_ROM_FILES(holy0),
};
u8 D_8011FDCC = 0;
u8 D_8011FDD0 = 0;
u8 D_8011FDD4 = 0;

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
s16 D_8015FDB0;

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

#ifdef NON_MATCHING
// minor ordering, regalloc, implicit stack slots
void Kankyo_Init(GlobalContext* globalCtx2, EnvironmentContext* envCtx, s32 unused) {
    GlobalContext* globalCtx = globalCtx2;
    u8 i;
    u16 uDayTime;

    gSaveContext.unk_1422 = 0;

    if (((void)0, gSaveContext.dayTime) > 0xC000 || ((void)0, gSaveContext.dayTime) < 0x4555) {
        ((void)0, gSaveContext.nightFlag = true);
    } else {
        ((void)0, gSaveContext.nightFlag = false);
    }

    globalCtx->state.gfxCtx->callback = Kankyo_GraphCallback;
    globalCtx->state.gfxCtx->callbackParam = globalCtx;

    Lights_DirectionalSetInfo(&envCtx->unk_28, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->unk_28);

    Lights_DirectionalSetInfo(&envCtx->unk_36, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->unk_36);

    envCtx->skybox1Index = 99;
    envCtx->skybox2Index = 99;
    envCtx->unk_19 = 0;
    envCtx->unk_1A = 0;
    envCtx->unk_21 = 0;
    envCtx->unk_22 = 0;
    envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
    envCtx->unk_1F = 0;
    envCtx->unk_20 = 0;
    envCtx->unk_BD = 0;
    envCtx->unk_BE = 0;
    envCtx->unk_DC = 0;
    envCtx->gloomySkyEvent = 0;
    envCtx->unk_DE = 0;
    envCtx->lightningMode = LIGHTNING_MODE_OFF;
    envCtx->unk_E0 = 0;
    envCtx->unk_E1 = 0;
    envCtx->unk_E2[0] = 0;
    envCtx->unk_E2[1] = 0;
    envCtx->unk_E2[2] = 0;
    envCtx->unk_E2[3] = 0;
    envCtx->unk_E9 = 0;
    envCtx->unk_EA[0] = 0;
    envCtx->unk_EA[1] = 0;
    envCtx->unk_EA[2] = 0;
    envCtx->unk_EA[3] = 0;
    envCtx->sandstormState = 0;
    envCtx->sandstormPrimA = 0;
    envCtx->sandstormEnvA = 0;
    envCtx->unk_84 = 0.0f;
    envCtx->unk_88 = 0.0f;
    envCtx->unk_D8 = 1.0f;

    gLightningStrike.state = LIGHTNING_STRIKE_WAIT;
    gLightningStrike.flashRed = 0;
    gLightningStrike.flashGreen = 0;
    gLightningStrike.flashBlue = 0;
    sLightningFlashAlpha = 0;
    ((void)0, gSaveContext.unk_1410 = 0);

    envCtx->unk_8C[0][0] = envCtx->unk_8C[0][1] = envCtx->unk_8C[0][2] = envCtx->unk_8C[1][0] = envCtx->unk_8C[1][1] =
        envCtx->unk_8C[1][2] = envCtx->unk_8C[2][0] = envCtx->unk_8C[2][1] = envCtx->unk_8C[2][2] = envCtx->unk_9E =
            envCtx->unk_A0 = 0;

    envCtx->sunPos.x = -(Math_Sins(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.y = +(Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.z = +(Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;

    envCtx->windDirection.x = 80;
    envCtx->windDirection.y = 80;
    envCtx->windDirection.z = 80;

    envCtx->unk_BC = 0;
    envCtx->unk_BF = 0xFF;
    envCtx->unk_D6 = 0xFFFF;
    envCtx->unk_02 = 0;
    REG(15) = gTimeIncrement = 0;
    REG(9) = 1;

    if (CREG(3) != 0) {
        gSaveContext.chamberCutsceneNum = CREG(3) - 1;
    }

    globalCtx->envCtx.unk_EE[0] = 0;
    globalCtx->envCtx.unk_EE[1] = 0;
    globalCtx->envCtx.unk_EE[2] = 0;
    globalCtx->envCtx.unk_EE[3] = 0;

    globalCtx->envCtx.unk_F2[0] = 0;

    if (gSaveContext.unk_13C3 != 0) {
        if (gSaveContext.sceneSetupIndex < 4) {
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
    gSkyboxBlendingEnabled = 0;
    gSaveContext.unk_13C3 = 0;
    cREG(3) = 80;
    cREG(4) = 80;
    cREG(5) = 80;
    cREG(6) = -80;
    cREG(7) = -80;
    cREG(8) = -80;
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

    globalCtx->unk_11D30[0] = 0;
    globalCtx->unk_11D30[1] = 0;

    for (i = 0; i < ARRAY_COUNT(globalCtx->csCtx.npcActions); i++) {
        globalCtx->csCtx.npcActions[i] = 0;
    }

    if (Object_GetIndex(&globalCtx->objectCtx, OBJECT_GAMEPLAY_FIELD_KEEP) < 0 && !globalCtx->envCtx.sunMoonDisabled) {
        globalCtx->envCtx.sunMoonDisabled = true;
        // Sun setting except field resident! So forced release!
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n\nフィールド常駐以外、太陽設定！よって強制解除！\n" VT_RST);
    }

    gCustomLensFlareOn = false;
    func_800AA15C();
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_8006F140.s")
#endif

// func_8006F93C
f32 Kankyo_InvLerp(u16 max, u16 min, u16 val) {
    f32 ret = max - min;

    if (ret != 0.0f) {
        ret = 1.0f - (max - val) / ret;

        if (true && !(ret >= 1.0f)) {
            return ret;
        }
    }

    return 1.0f;
}

f32 func_8006F9BC(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    f32 arg0f;
    f32 arg1f;
    f32 arg2f;
    f32 arg3f;
    f32 arg4f;
    f32 arg0f_arg1f;
    f32 reciprocal;
    f32 arg2f_arg1f;
    f32 ret;

    if (arg1 >= arg2) {
        return 0.0f;
    }

    if (arg2 >= arg0) {
        return 1.0f;
    }

    arg0f = (s32)arg0;
    arg1f = (s32)arg1;
    arg2f = (s32)arg2;
    arg0f_arg1f = arg0f - arg1f;
    arg2f_arg1f = arg2f - arg1f;
    arg3f = (s32)arg3;
    arg4f = (s32)arg4;

    if (arg0f <= arg1f || arg0f_arg1f < arg3f + arg4f) {
        // The frame relation between end_frame and start_frame is wrong
        osSyncPrintf(VT_COL(RED, WHITE) "\nend_frameとstart_frameのフレーム関係がおかしい!!!" VT_RST);
        osSyncPrintf(VT_COL(RED, WHITE) "\nby get_parcent_forAccelBrake!!!!!!!!!" VT_RST);
        return 0.0f;
    }

    reciprocal = 1.0f / (arg0f_arg1f + arg0f_arg1f - arg3f - arg4f);

    if (arg3f != 0.0f) {
        if (arg2f_arg1f <= arg3f) {
            return reciprocal * arg2f_arg1f * arg2f_arg1f / arg3f;
        }
        ret = reciprocal * arg3f;
    } else {
        ret = 0.0f;
    }

    if (arg2f_arg1f <= arg0f_arg1f - arg4f) {
        ret += (reciprocal + reciprocal) * (arg2f_arg1f - arg3f);
        return ret;
    }

    ret += (reciprocal + reciprocal) * (arg0f_arg1f - arg3f - arg4f);
    if (arg4f != 0.0f) {
        ret += reciprocal * arg4f;
        if (arg2f_arg1f < arg0f_arg1f) {
            ret -= reciprocal * (arg0f_arg1f - arg2f_arg1f) * (arg0f_arg1f - arg2f_arg1f) / arg4f;
        }
    }

    return ret;
}

void func_8006FB94(EnvironmentContext* envCtx, u8 arg1) {
    if (envCtx->gloomySkyEvent != 0) {
        switch (envCtx->unk_DE) {
            case 0:
                if (envCtx->gloomySkyEvent == 1 && gSkyboxBlendingEnabled == 0) {
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
                if (gSkyboxBlendingEnabled == 0 && envCtx->gloomySkyEvent == 2) {
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
                    envCtx->gloomySkyEvent = 0;
                    envCtx->unk_DE = 0;
                }
                break;
        }
    }
}

// func_8006FC88 skybox related
#ifdef NON_MATCHING
void Kankyo_UpdateSkybox(u8 arg0, EnvironmentContext* envCtx, SkyboxContext* skyboxCtx) {
    u32 size;
    u8 i;
    u8 newSkybox1Index = 0xFF;
    u8 newSkybox2Index = 0xFF;
    u8 skyboxBlend = 0;
    struct_8011FC1C* entry;

    if (arg0 == 5) {
        envCtx->unk_17 = 3;

        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->unk_17]); i++) {
            entry = &D_8011FC1C[envCtx->unk_17][i];
            if (((void)0, gSaveContext.skyboxTime) >= entry->startTime &&
                (((void)0, gSaveContext.skyboxTime) < entry->endTime || entry->endTime == 0xFFFF)) {
                if (entry->blend) {
                    envCtx->skyboxBlend =
                        Kankyo_InvLerp(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;
                } else {
                    envCtx->skyboxBlend = 0;
                }
                break;
            }
        }
    } else if (arg0 == 1 && !envCtx->skyboxDisabled) {
        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->unk_17]); i++) {
            entry = &D_8011FC1C[envCtx->unk_17][i];

            if (((void)0, gSaveContext.skyboxTime) >= entry->startTime &&
                (((void)0, gSaveContext.skyboxTime) < entry->endTime || entry->endTime == 0xFFFF)) {
                gSkyboxBlendingEnabled = entry->blend;

                if (envCtx->unk_17) {
                    entry = &D_8011FC1C[envCtx->unk_17][i];
                    skyboxBlend =
                        Kankyo_InvLerp(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;
                } else {
                    entry = &D_8011FC1C[envCtx->unk_17][i];
                    skyboxBlend =
                        Kankyo_InvLerp(entry->endTime, entry->startTime, ((void)0, gSaveContext.skyboxTime)) * 255;

                    skyboxBlend = (skyboxBlend < 0x80) ? 0xFF : 0;

                    if ((envCtx->unk_19 != 0) && (envCtx->unk_19 < 3)) {
                        envCtx->unk_19++;
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

        if ((newSkybox1Index != envCtx->skybox1Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_BG1_START;
            size = gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_BG].vromEnd -
                   gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_BG].vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[0],
                                gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_BG].vromStart, size, 0, &envCtx->loadQueue,
                                NULL, "../z_kankyo.c", 1264);
            envCtx->skybox1Index = newSkybox1Index;
        }

        if ((newSkybox2Index != envCtx->skybox2Index) && (envCtx->skyboxDmaState == SKYBOX_DMA_INACTIVE)) {
            envCtx->skyboxDmaState = SKYBOX_DMA_BG2_START;
            size = gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_BG].vromEnd -
                   gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_BG].vromStart;

            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[1],
                                gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_BG].vromStart, size, 0, &envCtx->loadQueue,
                                NULL, "../z_kankyo.c", 1281);
            envCtx->skybox2Index = newSkybox2Index;
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_BG1_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_CLOUDS1_START;
            size = gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_CLOUDS].vromEnd -
                   gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_CLOUDS].vromStart;

            if ((newSkybox1Index & 1) != ((s32)(newSkybox1Index & 4) >> 2)) {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2],
                                    gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_CLOUDS].vromStart, size, 0,
                                    &envCtx->loadQueue, NULL, "../z_kankyo.c", 1307);
            } else {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + size, size,
                                    gSkyboxFiles[newSkybox1Index][SKYBOX_FILE_CLOUDS].vromStart, 0, &envCtx->loadQueue,
                                    NULL, "../z_kankyo.c", 1320);
            }
        }

        if (envCtx->skyboxDmaState == SKYBOX_DMA_BG2_DONE) {
            envCtx->skyboxDmaState = SKYBOX_DMA_CLOUDS2_START;
            size = gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_CLOUDS].vromEnd -
                   gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_CLOUDS].vromStart;

            if ((newSkybox2Index & 1) != ((s32)(newSkybox2Index & 4) >> 2)) {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2],
                                    gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_CLOUDS].vromStart, size, 0,
                                    &envCtx->loadQueue, NULL, "../z_kankyo.c", 1342);
            } else {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + size,
                                    gSkyboxFiles[newSkybox2Index][SKYBOX_FILE_CLOUDS].vromStart, size, 0,
                                    &envCtx->loadQueue, NULL, "../z_kankyo.c", 1355);
            }
        }

        if ((envCtx->skyboxDmaState == SKYBOX_DMA_BG1_START) || (envCtx->skyboxDmaState == SKYBOX_DMA_BG2_START)) {
            if (osRecvMesg(&envCtx->loadQueue, 0, OS_MESG_NOBLOCK) == 0) {
                envCtx->skyboxDmaState++;
            }
        } else if (envCtx->skyboxDmaState >= SKYBOX_DMA_BG1_DONE) {
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

// runs when camera is entering water
void func_80070600(GlobalContext* globalCtx, s32 arg1) {
    if (arg1 == 0x1F) {
        arg1 = 0;
        // Underwater color is not set in the water poly data
        osSyncPrintf(VT_COL(YELLOW, BLACK) "\n水ポリゴンデータに水中カラーが設定されておりません!" VT_RST);
    }
    if (globalCtx->envCtx.unk_1E == 0) {
        D_8011FB34 = globalCtx->envCtx.unk_20;
        if (globalCtx->envCtx.unk_1F != arg1) {
            globalCtx->envCtx.unk_1F = arg1;
            globalCtx->envCtx.unk_20 = arg1;
        }
    } else {
        globalCtx->envCtx.unk_BC = 0;
        globalCtx->envCtx.unk_BF = arg1;
    }
}

// runs when camera is leaving water
void func_800706A0(GlobalContext* globalCtx) {
    if (globalCtx->envCtx.unk_1E == 0) {
        globalCtx->envCtx.unk_1F = D_8011FB34;
        globalCtx->envCtx.unk_20 = D_8011FB34;
    } else {
        globalCtx->envCtx.unk_BC = 0;
        globalCtx->envCtx.unk_BF = -1;
        globalCtx->envCtx.unk_D8 = 1;
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

// void Kankyo_Update(GlobalContext* globalCtx, EnvironmentContext* envCtx, LightContext* lightCtx, PauseContext*
// pauseCtx,
//                    MessageContext* msgCtx, GameOverContext* gameOverCtx, GraphicsContext* gfxCtx) {
//     f32 sp8C;
//     f32 sp88;
//     void* sp7C;
//     Gfx* sp74;
//     Gfx* sp70;
//     GraphicsContext* sp6C;
//     Gfx* sp5C;
//     s8 sp51;
//     s8 sp50;
//     s16 sp4E;
//     s16 sp4C;
//     f32 sp44;
//     void* sp40;
//     s32 sp34;
//     ? 32 sp28;
//     GameInfo* temp_v0_7;
//     Gfx* temp_a0;
//     Gfx* temp_t7;
//     Gfx* temp_v1_2;
//     GraphicsContext* temp_a1;
//     char* temp_a3_2;
//     char* temp_v0_14;
//     char* temp_v0_17;
//     char* temp_v0_19;
//     f32 temp_f0;
//     f32 temp_f0_2;
//     f32 temp_f10;
//     f32 temp_f10_2;
//     f32 temp_f10_3;
//     f32 temp_f12;
//     f32 temp_f14;
//     f32 temp_f14_2;
//     f32 temp_f14_3;
//     f32 temp_f14_4;
//     f32 temp_f18;
//     f32 temp_f18_2;
//     f32 temp_f18_3;
//     f32 temp_f18_4;
//     f32 temp_f4;
//     f32 temp_f4_2;
//     f32 temp_f4_3;
//     f32 temp_f6;
//     f32 temp_f8;
//     f32 temp_f8_2;
//     f32 temp_f8_3;
//     f32 temp_f8_4;
//     s16 temp_a1_11;
//     s16 temp_a1_7;
//     s16 temp_v0_13;
//     s16 temp_v1_16;
//     s16 temp_v1_17;
//     s16 temp_v1_18;
//     s16 temp_v1_19;
//     s32 temp_a0_10;
//     s32 temp_a0_11;
//     s32 temp_a0_12;
//     s32 temp_a0_2;
//     s32 temp_a0_9;
//     s32 temp_a1_6;
//     s32 temp_lo;
//     s32 temp_v0;
//     s32 temp_v0_10;
//     s32 temp_v0_11;
//     s32 temp_v0_12;
//     s32 temp_v0_16;
//     s32 temp_v0_20;
//     s32 temp_v0_21;
//     s32 temp_v0_9;
//     s32 temp_v1;
//     s8 temp_a1_8;
//     s8 temp_a1_9;
//     u16 temp_a3;
//     u16 temp_t4;
//     u16 temp_t6;
//     u16 temp_t8;
//     u16 temp_t9;
//     u16 temp_t9_2;
//     u16 temp_v0_3;
//     u16 temp_v0_4;
//     u16 temp_v0_5;
//     u16 temp_v0_6;
//     u16 temp_v0_8;
//     u16 temp_v1_11;
//     u32 temp_t6_2;
//     u32 temp_t8_2;
//     u32 temp_t8_3;
//     u32 temp_t8_4;
//     u32 temp_t9_3;
//     u32 temp_t9_4;
//     u32 temp_t9_5;
//     u32 temp_t9_6;
//     u8 temp_a1_10;
//     u8 temp_a1_2;
//     u8 temp_a1_3;
//     u8 temp_a1_4;
//     u8 temp_a1_5;
//     u8 temp_a2;
//     u8 temp_a2_2;
//     u8 temp_a2_3;
//     u8 temp_a2_4;
//     u8 temp_a2_5;
//     u8 temp_v0_2;
//     u8 temp_v1_12;
//     u8 temp_v1_13;
//     u8 temp_v1_14;
//     u8 temp_v1_3;
//     void* temp_a0_3;
//     void* temp_a0_4;
//     void* temp_a0_5;
//     void* temp_a0_6;
//     void* temp_a0_7;
//     void* temp_a0_8;
//     void* temp_a2_6;
//     void* temp_t2;
//     void* temp_t2_2;
//     void* temp_t2_3;
//     void* temp_v0_15;
//     void* temp_v0_18;
//     void* temp_v0_22;
//     void* temp_v0_23;
//     void* temp_v1_10;
//     void* temp_v1_15;
//     void* temp_v1_4;
//     void* temp_v1_5;
//     void* temp_v1_6;
//     void* temp_v1_7;
//     void* temp_v1_8;
//     void* temp_v1_9;
//     SaveContext* phi_t5;
//     u16 phi_v0;
//     SaveContext* phi_t5_2;
//     s32 phi_a0;
//     s32 phi_ra;
//     s32 phi_v0_2;
//     f32 phi_f10;
//     f32 phi_f18;
//     f32 phi_f14;
//     s32 phi_v0_3;
//     f32 phi_f18_2;
//     f32 phi_f8;
//     f32 phi_f4;
//     f32 phi_f10_2;
//     s32 phi_v0_4;
//     f32 phi_f18_3;
//     f32 phi_f8_2;
//     s32 phi_a0_2;
//     s32 phi_v0_5;
//     f32 phi_f4_2;
//     s32 phi_a0_3;
//     f32 phi_f8_3;
//     f32 phi_f6;
//     f32 phi_f10_3;
//     f32 phi_f4_3;
//     s32 phi_a0_4;
//     void* phi_a1;
//     GameInfo** phi_t3;
//     GameInfo** phi_t3_2;
//     f32 phi_f12;
//     f32 phi_f18_4;

//     temp_v0 = gSaveContext.gameMode;
//     sp40 = globalCtx + 0x10000;

//     if (gSaveContext.gameMode != 0 && gSaveContext.gameMode != 3) {
//         func_800AA16C(globalCtx);
//     }

//     if (pauseCtx->state == 0) {
//         if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0)) {
//             if (globalCtx->skyboxId == 1) {
//                 globalCtx->skyboxCtx.rot.y -= 0.001f;
//             } else if (globalCtx->skyboxId == 5) {
//                 globalCtx->skyboxCtx.rot.y -= 0.005f;
//             }
//         }
//         // real?
//         sp7C = globalCtx->envCtx.lightSettingsList;
//         sp88 = 0.0f;

//         func_800766C4(globalCtx); // increments or decrements unk_EE[1] depending on some condition
//         func_80075B44(globalCtx); // updates bgm/sfx and other things as the day progresses

//         if (gSaveContext.nextDayTime >= 0xFF00 && gSaveContext.nextDayTime != 0xFFFF) {
//             gSaveContext.nextDayTime -= 16;
//             osSyncPrintf("\nnext_zelda_time=[%x]", gSaveContext.nextDayTime);
//             if (gSaveContext.nextDayTime == 0xFF0E) {
//                 func_80078884(NA_SE_EV_CHICKEN_CRY_M);
//                 gSaveContext.nextDayTime = 0xFFFF;
//             } else if (gSaveContext.nextDayTime == 0xFF0D) {
//                 func_800788CC(NA_SE_EV_DOG_CRY_EVENING);
//                 gSaveContext.nextDayTime = 0xFFFF;
//             }

//         }

//         if ((pauseCtx->state == 0) && (gameOverCtx->state == 0) && (msgCtx->unk_E300 != 0 || msgCtx->msgMode != 0) &&
//             (gSaveContext.nextDayTime == 3) && (envCtx->unk_1A == 0) && !func_800C0D28(globalCtx) &&
//             (globalCtx->transitionMode == 0 || gSaveContext.gameMode != 0)) {
//             if (!gSaveContext.nightFlag || gTimeIncrement >= 400) {
//                 gSaveContext.dayTime += gTimeIncrement;
//             } else {
//                 gSaveContext.dayTime += gTimeIncrement * 2; // time moves twice as fast at night
//             }
//         }

//         if (((gSaveContext.sceneSetupIndex < 5 && gTimeIncrement == 0) ||
//              gSaveContext.dayTime <= ((void)0, gSaveContext.skyboxTime)) &&
//             gSaveContext.dayTime > 0xAAA && gTimeIncrement < 0) {
//             ((void)0, gSaveContext.skyboxTime) = gSaveContext.dayTime;
//         }

//         if (gSaveContext.dayTime <= 0xC000 || gSaveContext.dayTime < 0x4555) {
//             gSaveContext.nightFlag = true;
//         } else {
//             gSaveContext.nightFlag = false;
//         }

//         if (SREG(0) != 0 || CREG(2) != 0) {
//             Gfx* opaHead;
//             Gfx* overlayHead;

//             OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 1682);

//             opaHead = Graph_GfxPlusOne(POLY_OPA_DISP);
//             overlayHead = OVERLAY_DISP++;

//             gSPDisplayList(opaHead, overlayHead);
//             Kankyo_PrintDebugInfo(globalCtx, &overlayHead);
//             gSPEndDisplayList(overlayHead++);
//             Graph_BranchDlist(opaHead, overlayHead);

//             CLOSE_DISPS(gfxCtx, "../z_kankyo.c", 1690);
//         }

//         if ((envCtx->unk_BF != 0xFF) && (envCtx->unk_DC != 2) && (envCtx->unk_BD != envCtx->unk_BF) &&
//             (envCtx->unk_D8 >= 1.0f) && (envCtx->unk_BF < 0x20)) {
//             envCtx->unk_BE = envCtx->unk_BD;
//             envCtx->unk_BD = envCtx->unk_BF;
//             envCtx->unk_D8 = 0.0f;
//         }
//         // left off here
//         if (temp_v1_3 != 0xFE) {
//             if ((envCtx->unk_1E == 0) && (temp_v1_3 == 0xFF)) {
//                 temp_t4 = phi_t5_2->skyboxTime;
//                 phi_a0 = 0;
//             loop_52:
//                 temp_lo = phi_a0 * 6;
//                 temp_a0_2 = (phi_a0 + 1) & 0xFFFF;
//                 temp_v1_4 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                 temp_a3 = temp_v1_4->unk0;
//                 if (temp_t4 >= temp_a3) {
//                     temp_t9_2 = temp_v1_4->unk2;
//                     sp28 = temp_t9_2;
//                     if ((temp_t4 < temp_t9_2) || (phi_ra == temp_t9_2)) {
//                         sp34 = temp_lo;
//                         sp7C = globalCtx->envCtx.lightSettingsList;
//                         sp88 = 0.0f;
//                         temp_f0 = Kankyo_InvLerp(sp2A, temp_a3 & 0xFFFF, temp_t4 & 0xFFFF);
//                         D_8011FDCC = (&D_8011FB48[envCtx->unk_1F] + temp_lo)->unk4 & 3;
//                         temp_t2_3 = globalCtx->envCtx.lightSettingsList;
//                         D_8011FDD0 = (&D_8011FB48[envCtx->unk_1F] + temp_lo)->unk5 & 3;
//                         D_8011FDD4 = temp_f0;
//                         phi_f14 = 0.0f;
//                         if (envCtx->unk_21 != 0) {
//                             temp_t8 = envCtx->unk_24;
//                             temp_f12 = temp_t8;
//                             phi_f12 = temp_f12;
//                             if (temp_t8 < 0) {
//                                 phi_f12 = temp_f12 + 4294967296.0f;
//                             }
//                             temp_v0_8 = envCtx->unk_22;
//                             temp_t6 = temp_v0_8 - 1;
//                             temp_f18 = temp_v0_8;
//                             phi_f18_4 = temp_f18;
//                             if (temp_v0_8 < 0) {
//                                 phi_f18_4 = temp_f18 + 4294967296.0f;
//                             }
//                             envCtx->unk_22 = temp_t6;
//                             temp_f14_3 = (phi_f12 - phi_f18_4) / phi_f12;
//                             phi_f14 = temp_f14_3;
//                             if ((temp_t6 & 0xFFFF) <= 0) {
//                                 envCtx->unk_21 = 0;
//                                 envCtx->unk_1F = envCtx->unk_20;
//                                 phi_f14 = temp_f14_3;
//                             }
//                         }
//                         phi_v0_2 = 0;
//                     loop_63:
//                         temp_v1_5 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                         temp_a1_2 = *(temp_t2_3 + (temp_v1_5->unk4 * 0x16) + phi_v0_2);
//                         temp_f10 = temp_a1_2;
//                         phi_f10 = temp_f10;
//                         if (temp_a1_2 < 0) {
//                             phi_f10 = temp_f10 + 4294967296.0f;
//                         }
//                         temp_t9_3 =
//                             phi_f10 + ((*(temp_t2_3 + (temp_v1_5->unk5 * 0x16) + phi_v0_2) - temp_a1_2) * temp_f0);
//                         sp50 = temp_t9_3;
//                         temp_a0_3 = &D_8011FB48[envCtx->unk_20] + temp_lo;
//                         temp_a2_2 = *(temp_t2_3 + (temp_a0_3->unk4 * 0x16) + phi_v0_2);
//                         temp_f18_2 = temp_a2_2;
//                         phi_f18 = temp_f18_2;
//                         if (temp_a2_2 < 0) {
//                             phi_f18 = temp_f18_2 + 4294967296.0f;
//                         }
//                         temp_t6_2 =
//                             phi_f18 + ((*(temp_t2_3 + (temp_a0_3->unk5 * 0x16) + phi_v0_2) - temp_a2_2) * temp_f0);
//                         sp51 = temp_t6_2;
//                         temp_v0_9 = (phi_v0_2 + 1) & 0xFFFF;
//                         (&envCtx->unk_00[phi_v0_2])[0xC0] =
//                             (temp_t9_3 & 0xFF) + (((temp_t6_2 & 0xFF) - (temp_t9_3 & 0xFF)) * phi_f14);
//                         phi_v0_2 = temp_v0_9;
//                         if (temp_v0_9 < 3) {
//                             goto loop_63;
//                         }
//                         sp34 = temp_lo;
//                         sp7C = temp_t2_3;
//                         sp8C = temp_f0;
//                         sp88 = phi_f14;
//                         envCtx->unkC3 = -(Math_Sins(gSaveContext.dayTime - 0x8000) * 120.0f);
//                         envCtx->unkC4 = Math_Coss(gSaveContext.dayTime - 0x8000) * 120.0f;
//                         temp_f8 = Math_Coss(gSaveContext.dayTime - 0x8000) * 20.0f;
//                         temp_f14_4 = phi_f14;
//                         envCtx->unk_C9 = -envCtx->unkC3;
//                         envCtx->unkC5 = temp_f8;
//                         envCtx->unkCA = -envCtx->unkC4;
//                         envCtx->unkCB = -envCtx->unkC5;
//                         phi_v0_3 = 0;
//                     loop_69:
//                         temp_a3_2 = &envCtx->unk_00[phi_v0_3];
//                         temp_v1_6 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                         temp_a1_3 = (temp_t2_3 + (temp_v1_6->unk4 * 0x16) + phi_v0_3)->unk6;
//                         temp_f18_3 = temp_a1_3;
//                         phi_f18_2 = temp_f18_3;
//                         if (temp_a1_3 < 0) {
//                             phi_f18_2 = temp_f18_3 + 4294967296.0f;
//                         }
//                         temp_t8_2 = phi_f18_2 +
//                                     (((temp_t2_3 + (temp_v1_6->unk5 * 0x16) + phi_v0_3)->unk6 - temp_a1_3) *
//                                     temp_f0);
//                         sp50 = temp_t8_2;
//                         temp_a0_4 = &D_8011FB48[envCtx->unk_20] + temp_lo;
//                         temp_a2_3 = (temp_t2_3 + (temp_a0_4->unk4 * 0x16) + phi_v0_3)->unk6;
//                         temp_f8_2 = temp_a2_3;
//                         phi_f8 = temp_f8_2;
//                         if (temp_a2_3 < 0) {
//                             phi_f8 = temp_f8_2 + 4294967296.0f;
//                         }
//                         temp_t9_4 =
//                             phi_f8 + (((temp_t2_3 + (temp_a0_4->unk5 * 0x16) + phi_v0_3)->unk6 - temp_a2_3) *
//                             temp_f0);
//                         sp51 = temp_t9_4;
//                         temp_a3_2[0xC6] = (temp_t8_2 & 0xFF) + (((temp_t9_4 & 0xFF) - (temp_t8_2 & 0xFF)) *
//                         temp_f14_4); temp_v1_7 = &D_8011FB48[envCtx->unk_1F] + temp_lo; temp_a1_4 = (temp_t2_3 +
//                         (temp_v1_7->unk4 * 0x16) + phi_v0_3)->unkC; temp_f4 = temp_a1_4; phi_f4 = temp_f4; if
//                         (temp_a1_4 < 0) {
//                             phi_f4 = temp_f4 + 4294967296.0f;
//                         }
//                         temp_t8_3 =
//                             phi_f4 + (((temp_t2_3 + (temp_v1_7->unk5 * 0x16) + phi_v0_3)->unkC - temp_a1_4) *
//                             temp_f0);
//                         sp50 = temp_t8_3;
//                         temp_a0_5 = &D_8011FB48[envCtx->unk_20] + temp_lo;
//                         temp_a2_4 = (temp_t2_3 + (temp_a0_5->unk4 * 0x16) + phi_v0_3)->unkC;
//                         temp_f10_2 = temp_a2_4;
//                         phi_f10_2 = temp_f10_2;
//                         if (temp_a2_4 < 0) {
//                             phi_f10_2 = temp_f10_2 + 4294967296.0f;
//                         }
//                         temp_v0_10 = (phi_v0_3 + 1) & 0xFFFF;
//                         temp_t9_5 = phi_f10_2 +
//                                     (((temp_t2_3 + (temp_a0_5->unk5 * 0x16) + phi_v0_3)->unkC - temp_a2_4) *
//                                     temp_f0);
//                         sp51 = temp_t9_5;
//                         temp_a3_2[0xCC] = (temp_t8_3 & 0xFF) + (((temp_t9_5 & 0xFF) - (temp_t8_3 & 0xFF)) *
//                         temp_f14_4); phi_v0_3 = temp_v0_10; if (temp_v0_10 < 3) {
//                             goto loop_69;
//                         }
//                         phi_v0_4 = 0;
//                     loop_79:
//                         temp_v1_8 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                         temp_a1_5 = (temp_t2_3 + (temp_v1_8->unk4 * 0x16) + phi_v0_4)->unkF;
//                         temp_f18_4 = temp_a1_5;
//                         phi_f18_3 = temp_f18_4;
//                         if (temp_a1_5 < 0) {
//                             phi_f18_3 = temp_f18_4 + 4294967296.0f;
//                         }
//                         temp_t8_4 = phi_f18_3 +
//                                     (((temp_t2_3 + (temp_v1_8->unk5 * 0x16) + phi_v0_4)->unkF - temp_a1_5) *
//                                     temp_f0);
//                         sp50 = temp_t8_4;
//                         temp_a0_6 = &D_8011FB48[envCtx->unk_20] + temp_lo;
//                         temp_a2_5 = (temp_t2_3 + (temp_a0_6->unk4 * 0x16) + phi_v0_4)->unkF;
//                         temp_f8_3 = temp_a2_5;
//                         phi_f8_2 = temp_f8_3;
//                         if (temp_a2_5 < 0) {
//                             phi_f8_2 = temp_f8_3 + 4294967296.0f;
//                         }
//                         temp_t9_6 = phi_f8_2 +
//                                     (((temp_t2_3 + (temp_a0_6->unk5 * 0x16) + phi_v0_4)->unkF - temp_a2_5) *
//                                     temp_f0);
//                         sp51 = temp_t9_6;
//                         temp_v0_11 = (phi_v0_4 + 1) & 0xFFFF;
//                         (&envCtx->unk_00[phi_v0_4])[0xCF] =
//                             (temp_t8_4 & 0xFF) + (((temp_t9_6 & 0xFF) - (temp_t8_4 & 0xFF)) * temp_f14_4);
//                         phi_v0_4 = temp_v0_11;
//                         if (temp_v0_11 < 3) {
//                             goto loop_79;
//                         }
//                         temp_v1_9 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                         temp_v0_12 = (temp_t2_3 + (temp_v1_9->unk4 * 0x16))->unk12 & 0x3FF;
//                         sp4C = temp_v0_12 +
//                                ((((temp_t2_3 + (temp_v1_9->unk5 * 0x16))->unk12 & 0x3FF) - temp_v0_12) * temp_f0);
//                         temp_a0_7 = &D_8011FB48[envCtx->unk_20] + temp_lo;
//                         temp_a1_6 = (temp_t2_3 + (temp_a0_7->unk4 * 0x16))->unk12 & 0x3FF;
//                         sp4E = temp_a1_6 +
//                                ((((temp_t2_3 + (temp_a0_7->unk5 * 0x16))->unk12 & 0x3FF) - temp_a1_6) * temp_f0);
//                         envCtx->unk_D2 = sp4C + ((sp4E - sp4C) * temp_f14_4);
//                         temp_v1_10 = &D_8011FB48[envCtx->unk_1F] + temp_lo;
//                         temp_v0_13 = (temp_t2_3 + (temp_v1_10->unk4 * 0x16))->unk14;
//                         sp4C = temp_v0_13 + (((temp_t2_3 + (temp_v1_10->unk5 * 0x16))->unk14 - temp_v0_13) *
//                         temp_f0); temp_a0_8 = &D_8011FB48[envCtx->unk_20] + temp_lo; temp_a1_7 = (temp_t2_3 +
//                         (temp_a0_8->unk4 * 0x16))->unk14; sp4E = temp_a1_7 + (((temp_t2_3 + (temp_a0_8->unk5 *
//                         0x16))->unk14 - temp_a1_7) * temp_f0); envCtx->unk_D4 = sp4C + ((sp4E - sp4C) * temp_f14_4);
//                         phi_t3 = &gGameInfo;
//                         if ((&D_8011FB48[envCtx->unk_20] + temp_lo)->unk5 >= envCtx->nbLightSettings) {
//                             sp34 = temp_lo;
//                             osSyncPrintf("\x1b[41;37m\nカラーパレットの設定がおかしいようです！\x1b[m", temp_a1_7,
//                                          temp_a2_5, 0x16);
//                             osSyncPrintf("\x1b[41;37m\n設定パレット＝[%d] 最後パレット番号＝[%d]\n\x1b[m",
//                                          (&D_8011FB48[envCtx->unk_20] + temp_lo)->unk5, envCtx->nbLightSettings - 1);
//                         block_113:
//                             phi_t3 = &gGameInfo;
//                         }
//                     } else {
//                     block_86:
//                         phi_a0 = temp_a0_2;
//                         if (temp_a0_2 < 7) {
//                             goto loop_52;
//                         }
//                     }
//                 } else {
//                     goto block_86;
//                 }
//             } else {
//                 phi_a0_2 = 0;
//                 if (envCtx->unk_BC == 0) {
//                 loop_89:
//                     temp_v0_14 = &envCtx->unk_00[phi_a0_2];
//                     temp_v0_14[0xC0] = *(globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) + phi_a0_2);
//                     temp_v0_14[0xC3] = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) +
//                     phi_a0_2)->unk3; temp_v0_14[0xC6] = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD *
//                     0x16) + phi_a0_2)->unk6; temp_v0_14[0xC9] = (globalCtx->envCtx.lightSettingsList +
//                     (envCtx->unk_BD * 0x16) + phi_a0_2)->unk9; temp_v0_14[0xCC] =
//                     (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) + phi_a0_2)->unkC; temp_a0_9 =
//                     (phi_a0_2 + 1) & 0xFFFF; temp_v0_14[0xCF] = (globalCtx->envCtx.lightSettingsList +
//                     (envCtx->unk_BD * 0x16) + phi_a0_2)->unkF; phi_a0_2 = temp_a0_9; if (temp_a0_9 < 3) {
//                         goto loop_89;
//                     }
//                     temp_v0_15 = globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16);
//                     envCtx->unk_D2 = temp_v0_15->unk12 & 0x3FF;
//                     envCtx->unk_D8 = 1.0f;
//                     envCtx->unk_D4 = temp_v0_15->unk14;
//                 } else {
//                     temp_v0_16 =
//                         (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16))->unk12 >> 0xA) * 4) & 0xFF;
//                     phi_v0_5 = temp_v0_16;
//                     if (temp_v0_16 == 0) {
//                         phi_v0_5 = (temp_v0_16 + 1) & 0xFF;
//                     }
//                     temp_v1_11 = envCtx->unk_D6;
//                     if (phi_ra != temp_v1_11) {
//                         phi_v0_5 = temp_v1_11 & 0xFF;
//                     }
//                     if (envCtx->unk_DC == 0) {
//                         temp_f4_2 = phi_v0_5;
//                         phi_f4_2 = temp_f4_2;
//                         if (phi_v0_5 < 0) {
//                             phi_f4_2 = temp_f4_2 + 4294967296.0f;
//                         }
//                         envCtx->unk_D8 = envCtx->unk_D8 + (phi_f4_2 / 255.0f);
//                     }
//                     phi_a0_3 = 0;
//                     if (envCtx->unk_D8 > 1.0f) {
//                         envCtx->unk_D8 = 1.0f;
//                         phi_a0_3 = 0;
//                     }
//                 loop_101:
//                     temp_v0_17 = &envCtx->unk_00[phi_a0_3];
//                     temp_v1_12 = *(globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3);
//                     temp_f8_4 = temp_v1_12;
//                     phi_f8_3 = temp_f8_4;
//                     if (temp_v1_12 < 0) {
//                         phi_f8_3 = temp_f8_4 + 4294967296.0f;
//                     }
//                     temp_v0_17[0xC0] =
//                         phi_f8_3 +
//                         ((*(globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) + phi_a0_3) - temp_v1_12) *
//                          envCtx->unk_D8);
//                     temp_a1_8 = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3)->unk3;
//                     temp_v0_17[0xC3] =
//                         temp_a1_8 + (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) +
//                         phi_a0_3)->unk3 -
//                                       temp_a1_8) *
//                                      envCtx->unk_D8);
//                     temp_v1_13 = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3)->unk6;
//                     temp_f6 = temp_v1_13;
//                     phi_f6 = temp_f6;
//                     if (temp_v1_13 < 0) {
//                         phi_f6 = temp_f6 + 4294967296.0f;
//                     }
//                     temp_v0_17[0xC6] =
//                         phi_f6 + (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) + phi_a0_3)->unk6 -
//                                    temp_v1_13) *
//                                   envCtx->unk_D8);
//                     temp_a1_9 = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3)->unk9;
//                     temp_v0_17[0xC9] =
//                         temp_a1_9 + (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) +
//                         phi_a0_3)->unk9 -
//                                       temp_a1_9) *
//                                      envCtx->unk_D8);
//                     temp_v1_14 = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3)->unkC;
//                     temp_f10_3 = temp_v1_14;
//                     phi_f10_3 = temp_f10_3;
//                     if (temp_v1_14 < 0) {
//                         phi_f10_3 = temp_f10_3 + 4294967296.0f;
//                     }
//                     temp_v0_17[0xCC] =
//                         phi_f10_3 + (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) +
//                         phi_a0_3)->unkC -
//                                       temp_v1_14) *
//                                      envCtx->unk_D8);
//                     temp_a1_10 = (globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16) + phi_a0_3)->unkF;
//                     temp_f4_3 = temp_a1_10;
//                     phi_f4_3 = temp_f4_3;
//                     if (temp_a1_10 < 0) {
//                         phi_f4_3 = temp_f4_3 + 4294967296.0f;
//                     }
//                     temp_a0_10 = (phi_a0_3 + 1) & 0xFFFF;
//                     temp_v0_17[0xCF] =
//                         phi_f4_3 + (((globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16) + phi_a0_3)->unkF
//                         -
//                                      temp_a1_10) *
//                                     envCtx->unk_D8);
//                     phi_a0_3 = temp_a0_10;
//                     if (temp_a0_10 < 3) {
//                         goto loop_101;
//                     }
//                     temp_f0_2 = envCtx->unk_D8;
//                     temp_v1_15 = globalCtx->envCtx.lightSettingsList + (envCtx->unk_BE * 0x16);
//                     temp_a0_11 = temp_v1_15->unk12 & 0x3FF;
//                     temp_v0_18 = globalCtx->envCtx.lightSettingsList + (envCtx->unk_BD * 0x16);
//                     envCtx->unk_D2 = temp_a0_11 + (((temp_v0_18->unk12 & 0x3FF) - temp_a0_11) * temp_f0_2);
//                     temp_a1_11 = temp_v1_15->unk14;
//                     envCtx->unk_D4 = temp_a1_11 + ((temp_v0_18->unk14 - temp_a1_11) * temp_f0_2);
//                 }
//                 if (envCtx->unk_BD >= envCtx->nbLightSettings) {
//                     osSyncPrintf("\n\x1b[31mカラーパレットがおかしいようです！");
//                     osSyncPrintf("\n\x1b[33m設定パレット＝[%d] パレット数＝[%d]\n\x1b[m", envCtx->unk_BD,
//                                  envCtx->nbLightSettings);
//                     goto block_113;
//                 }
//             }
//         }
//         envCtx->unk_BC = 1;
//         phi_a0_4 = 0;
//     loop_115:
//         temp_a2_6 = envCtx + (phi_a0_4 * 2);
//         temp_v0_19 = &envCtx->unk_00[phi_a0_4];
//         temp_v1_16 = temp_a2_6->unk8C + temp_v0_19[0xC0];
//         if (temp_v1_16 >= 0x100) {
//             lightCtx->ambientColor[phi_a0_4] = 0xFF;
//             phi_a1 = lightCtx + phi_a0_4;
//         } else if (temp_v1_16 < 0) {
//             lightCtx->ambientColor[phi_a0_4] = 0;
//             phi_a1 = lightCtx + phi_a0_4;
//         } else {
//             lightCtx->ambientColor[phi_a0_4] = temp_v1_16;
//             phi_a1 = lightCtx + phi_a0_4;
//         }
//         temp_a0_12 = (phi_a0_4 + 1) & 0xFFFF;
//         temp_v1_17 = temp_a2_6->unk92 + temp_v0_19[0xC6];
//         if (temp_v1_17 >= 0x100) {
//             temp_v0_19[0x2D] = 0xFF;
//         } else if (temp_v1_17 < 0) {
//             temp_v0_19[0x2D] = 0;
//         } else {
//             temp_v0_19[0x2D] = temp_v1_17;
//         }
//         temp_v1_18 = temp_a2_6->unk92 + temp_v0_19[0xCC];
//         if (temp_v1_18 >= 0x100) {
//             temp_v0_19[0x3B] = 0xFF;
//         } else if (temp_v1_18 < 0) {
//             temp_v0_19[0x3B] = 0;
//         } else {
//             temp_v0_19[0x3B] = temp_v1_18;
//         }
//         temp_v1_19 = temp_a2_6->unk98 + temp_v0_19[0xCF];
//         if (temp_v1_19 >= 0x100) {
//             phi_a1->unk7 = 0xFF;
//         } else if (temp_v1_19 < 0) {
//             phi_a1->unk7 = 0;
//         } else {
//             phi_a1->unk7 = temp_v1_19;
//         }
//         phi_a0_4 = temp_a0_12;
//         if (temp_a0_12 < 3) {
//             goto loop_115;
//         }
//         envCtx->unk_28.params.dir.z = envCtx->unkC5;
//         envCtx->unk_36.params.dir.x = envCtx->unk_C9;
//         envCtx->unk_28.params.dir.x = envCtx->unkC3;
//         envCtx->unk_28.params.dir.y = envCtx->unkC4;
//         temp_v0_20 = envCtx->unk_D2 + envCtx->unk_9E;
//         envCtx->unk_36.params.dir.y = envCtx->unkCA;
//         envCtx->unk_36.params.dir.z = envCtx->unkCB;
//         if (temp_v0_20 < 0x3E5) {
//             lightCtx->fogNear = temp_v0_20;
//         } else {
//             lightCtx->fogNear = 0x3E4;
//         }
//         temp_v0_21 = envCtx->unk_D4 + envCtx->unk_A0;
//         if (temp_v0_21 < 0x3201) {
//             lightCtx->fogFar = temp_v0_21;
//         } else {
//             lightCtx->fogFar = 0x3200;
//         }
//         temp_v0_22 = *phi_t3;
//         if (temp_v0_22->unk26 != 0) {
//             temp_v0_22->unk14 = lightCtx->ambientColor;
//             (*phi_t3)->unk16 = lightCtx->unk5;
//             (*phi_t3)->unk18 = lightCtx->unk6;
//             (*phi_t3)->unk1A = envCtx->unk_28.params.dir.color;
//             (*phi_t3)->unk1C = envCtx->unk_28.params.point.z;
//             (*phi_t3)->unk1E = envCtx->unk2F;
//             (*phi_t3)->unk20 = envCtx->unk_36.params.dir.color;
//             (*phi_t3)->unk22 = envCtx->unk_36.params.point.z;
//             (*phi_t3)->unk24 = envCtx->unk3D;
//             (*phi_t3)->unk28 = lightCtx->fogColor;
//             (*phi_t3)->unk2A = lightCtx->unk8;
//             (*phi_t3)->unk2C = lightCtx->unk9;
//             (*phi_t3)->unk2E = lightCtx->fogFar;
//             (*phi_t3)->unk30 = lightCtx->fogNear;
//             (*phi_t3)->unkB5A = envCtx->unk_28.params.dir.x;
//             (*phi_t3)->unkB5C = envCtx->unk_28.params.dir.y;
//             (*phi_t3)->unkB5E = envCtx->unk_28.params.dir.z;
//             (*phi_t3)->unkB60 = envCtx->unk_36.params.dir.x;
//             (*phi_t3)->unkB62 = envCtx->unk_36.params.dir.y;
//             (*phi_t3)->unkB64 = envCtx->unk_36.params.dir.z;
//             (*phi_t3)->unk874 = envCtx->windDirection.x;
//             (*phi_t3)->unk876 = envCtx->windDirection.y;
//             (*phi_t3)->unk878 = envCtx->windDirection.z;
//             (*phi_t3)->unk87A = envCtx->windSpeed;
//         } else {
//             lightCtx->ambientColor = temp_v0_22->unk14;
//             lightCtx->unk5 = (*phi_t3)->unk16;
//             lightCtx->unk6 = (*phi_t3)->unk18;
//             envCtx->unk_28.params.dir.color = (*phi_t3)->unk1A;
//             envCtx->unk_28.params.point.z = (*phi_t3)->unk1C;
//             envCtx->unk2F = (*phi_t3)->unk1E;
//             envCtx->unk_36.params.dir.color = (*phi_t3)->unk20;
//             envCtx->unk_36.params.point.z = (*phi_t3)->unk22;
//             envCtx->unk3D = (*phi_t3)->unk24;
//             lightCtx->fogColor = (*phi_t3)->unk28;
//             lightCtx->unk8 = (*phi_t3)->unk2A;
//             lightCtx->unk9 = (*phi_t3)->unk2C;
//             lightCtx->fogNear = (*phi_t3)->unk30;
//             lightCtx->fogFar = (*phi_t3)->unk2E;
//             temp_v0_23 = *phi_t3;
//             if (temp_v0_23->unkB70 != 0) {
//                 sp44 = Math_Coss(temp_v0_23->unkB68);
//                 gGameInfo->unkB5A = Math_Coss(gGameInfo->unkB6A) * sp44 * 120.0f;
//                 envCtx->unk_28.params.dir.x = gGameInfo->unkB5A;
//                 sp44 = Math_Sins(gGameInfo->unkB68);
//                 gGameInfo->unkB5C = Math_Coss(gGameInfo->unkB6A) * sp44 * 120.0f;
//                 envCtx->unk_28.params.dir.y = gGameInfo->unkB5C;
//                 gGameInfo->unkB5E = Math_Sins(gGameInfo->unkB6A) * 120.0f;
//                 envCtx->unk_28.params.dir.z = gGameInfo->unkB5E;
//                 sp44 = Math_Coss(gGameInfo->unkB6C);
//                 gGameInfo->unkB60 = Math_Coss(gGameInfo->unkB6E) * sp44 * 120.0f;
//                 envCtx->unk_36.params.dir.x = gGameInfo->unkB60;
//                 sp44 = Math_Sins(gGameInfo->unkB6C);
//                 gGameInfo->unkB62 = Math_Coss(gGameInfo->unkB6E) * sp44 * 120.0f;
//                 envCtx->unk_36.params.dir.y = gGameInfo->unkB62;
//                 gGameInfo->unkB64 = Math_Sins(gGameInfo->unkB6E) * 120.0f;
//                 envCtx->unk_36.params.dir.z = gGameInfo->unkB64;
//                 phi_t3_2 = &gGameInfo;
//             } else {
//                 envCtx->unk_28.params.dir.x = temp_v0_23->unkB5A;
//                 envCtx->unk_28.params.dir.y = (*phi_t3)->unkB5C;
//                 envCtx->unk_28.params.dir.z = (*phi_t3)->unkB5E;
//                 envCtx->unk_36.params.dir.x = (*phi_t3)->unkB60;
//                 envCtx->unk_36.params.dir.y = (*phi_t3)->unkB62;
//                 envCtx->unk_36.params.dir.z = (*phi_t3)->unkB64;
//                 phi_t3_2 = phi_t3;
//             }
//             envCtx->windDirection.x = (*phi_t3_2)->unk874;
//             envCtx->windDirection.y = (*phi_t3_2)->unk876;
//             envCtx->windDirection.z = (*phi_t3_2)->unk878;
//             envCtx->windSpeed = (*phi_t3_2)->unk87A;
//         }
//         if ((envCtx->unk_28.params.dir.x == 0) && (envCtx->unk_28.params.dir.y == 0) &&
//             (envCtx->unk_28.params.dir.z == 0)) {
//             envCtx->unk_28.params.dir.x = 1;
//         }
//         if ((envCtx->unk_36.params.dir.x == 0) && (envCtx->unk_36.params.dir.y == 0) &&
//             (envCtx->unk_36.params.dir.z == 0)) {
//             envCtx->unk_36.params.dir.x = 1;
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80070C24.s")

#ifdef NON_MATCHING
// float regalloc
void Kankyo_DrawSunAndMoon(GlobalContext* globalCtx) {
    f32 alpha;
    f32 color;
    f32 y;
    f32 scale;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 2266);

    if (globalCtx->csCtx.state != 0) {
        Math_SmoothScaleMaxMinF(&globalCtx->envCtx.sunPos.x,
                                -(Math_Sins(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
        Math_SmoothScaleMaxMinF(&globalCtx->envCtx.sunPos.y,
                                (Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
        //! @bug This should be z.
        Math_SmoothScaleMaxMinF(&globalCtx->envCtx.sunPos.y,
                                (Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f, 1.0f, 0.8f,
                                0.8f);
    } else {
        globalCtx->envCtx.sunPos.x = -(Math_Sins(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.y = +(Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.z = +(Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;
    }

    if (gSaveContext.entranceIndex != 0xCD || gSaveContext.sceneSetupIndex != 5) {
        Matrix_Translate(globalCtx->view.eye.x + globalCtx->envCtx.sunPos.x,
                         globalCtx->view.eye.y + globalCtx->envCtx.sunPos.y,
                         globalCtx->view.eye.z + globalCtx->envCtx.sunPos.z, MTXMODE_NEW);

        y = globalCtx->envCtx.sunPos.y / 25.0f;

        alpha = y / 80.0f;
        alpha *= 255.0f;

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

        y = -y; // improves alot but also breaks some stuff, might be fake. doing the same above is way worse
        alpha = y / 80.0f;

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
                             Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f, 400, 1);
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
    lookDirX = view->lookAt.x - view->eye.x;
    lookDirY = view->lookAt.y - view->eye.y;
    lookDirZ = view->lookAt.z - view->eye.z;

    length = sqrtf(SQ(lookDirX) + SQ(lookDirY) + SQ(lookDirZ));

    lookDirX /= length;
    lookDirY /= length;
    lookDirZ /= length;

    // compute a position along the look vector half as far as pos
    halfPosX = view->eye.x + lookDirX * (dist * 6.0f);
    halfPosY = view->eye.y + lookDirY * (dist * 6.0f);
    halfPosZ = view->eye.z + lookDirZ * (dist * 6.0f);

    // compute a unit vector in the direction from halfPos to pos
    posDirX = pos.x - halfPosX;
    posDirY = pos.y - halfPosY;
    posDirZ = pos.z - halfPosZ;

    length = sqrtf(SQ(posDirX) + SQ(posDirY) + SQ(posDirZ));

    posDirX /= length;
    posDirY /= length;
    posDirZ /= length;

    // compute the cosine of the angle between lookDir and posDir
    cosAngle = (lookDirX * posDirX + lookDirY * posDirY + lookDirZ * posDirZ) /
               sqrtf((SQ(lookDirX) + SQ(lookDirY) + SQ(lookDirZ)) * (SQ(posDirX) + SQ(posDirY) + SQ(posDirZ)));

    unk88Target = cosAngle * 14.0f;

    if (unk88Target > 1.0f) {
        unk88Target = 1.0f;
    }

    if (!arg9) {
        unk88Target = cosAngle;
    }

    if (!(cosAngle < 0.0f)) {
        if (arg9) {
            func_800C016C(globalCtx, &pos, &screenPos);
            D_8015FD7E = screenPos.x;
            D_8015FD80 = (s16)screenPos.y - 5.0f;
            if (D_8011FB44 != 0xFFFC || screenPos.x < 0.0f || screenPos.x > SCREEN_WIDTH ||
                screenPos.y > SCREEN_HEIGHT) {
                isOffScreen = true;
            }
        }

        for (i = 0; i < ARRAY_COUNT(lensFlareTypes); i++) {
            Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);

            if (arg9) {
                temp = Kankyo_InvLerp(60, 15, globalCtx->view.fovy);
            }

            Matrix_Translate(-posDirX * i * dist, -posDirY * i * dist, -posDirZ * i * dist, MTXMODE_APPLY);
            scale = lensFlareScales[i] * cosAngle;

            if (arg9) {
                scale *= (arg6 + temp * 630.0f) * 0.001;
            } else {
                scale *= arg6 * 0.0001f * (dist + dist);
            }

            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            alpha = arg7 / 10.0f;

            if (alpha > 1.0f) {
                alpha = 1.0f;
            }

            alpha *= lensFlareAlphas[i];

            if (alpha < 0.0f) {
                alpha = 0.0f;
            }

            fogInfluence = (996 - globalCtx->lightCtx.fogNear) / 50.0f;

            if (fogInfluence > 1.0f) {
                fogInfluence = 1.0f;
            }

            alpha *= 1.0f - fogInfluence;

            if (!isOffScreen) { // 5088
                Math_SmoothScaleMaxMinF(&envCtx->unk_88, unk88Target, 1.0f, 0.05f, 0.001f);
            } else {
                Math_SmoothScaleMaxMinF(&envCtx->unk_88, 0.0f, 1.0f, 0.05f, 0.001f);
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

                alpha *= arg8;

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
                    Math_SmoothScaleMaxMinF(&envCtx->unk_84, alpha * alphaScale, 0.5f, 50.0f, 0.1f);
                } else {
                    Math_SmoothScaleMaxMinF(&envCtx->unk_84, 0.0f, 0.5f, 50.0f, 0.1f);
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
    return Math_Rand_ZeroOne() - 0.5f;
}

#ifdef NON_EQUIVALENT
void Kankyo_DrawRain(GlobalContext* globalCtx, View* view, GraphicsContext* gfxCtx) {
    u8 firstIterDone;
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
    Vec3f unused = { 0.0f, 0.0f, 0.0f };
    Vec3f windDirection = { 0.0f, 0.0f, 0.0f };
    Player* player = PLAYER;

    if (!(globalCtx->cameraPtrs[0]->unk_14C & 0x100) && (globalCtx->envCtx.unk_EE[2] == 0)) {
        OPEN_DISPS(gfxCtx, "../z_kankyo.c", 2799);

        vec.x = view->lookAt.x - view->eye.x;
        vec.y = view->lookAt.y - view->eye.y;
        vec.z = view->lookAt.z - view->eye.z;

        length = sqrtf(SQ(vec.x) + SQ(vec.y) + SQ(vec.z));

        norm.x = vec.x / length;
        norm.y = vec.y / length;
        norm.z = vec.z / length;

        x50 = view->eye.x + norm.x * 50.0f;
        y50 = view->eye.y + norm.y * 50.0f;
        z50 = view->eye.z + norm.z * 50.0f;

        x280 = view->eye.x + norm.x * 280.0f;
        z280 = view->eye.z + norm.z * 280.0f;

        if (globalCtx->envCtx.unk_EE[1] != 0) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 150, 255, 255, 30);
            POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);
        }

        // draw rain drops
        for (i = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
            vec.x = Math_Rand_ZeroOne();
            vec.y = Math_Rand_ZeroOne();
            vec.z = Math_Rand_ZeroOne();

            Matrix_Translate((vec.x - 0.7f) * 100.0f + x50, (vec.y - 0.7f) * 100.0f + y50,
                             (vec.z - 0.7f) * 100.0f + z50, MTXMODE_NEW);

            windDirection.x = globalCtx->envCtx.windDirection.x;
            windDirection.y = globalCtx->envCtx.windDirection.y;
            windDirection.z = globalCtx->envCtx.windDirection.z;

            tempY = 500.0f + Math_Rand_ZeroOne() * 200.0f + windDirection.y;
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            rotX = atan2f(sqrtf(SQ(windDirection.x) + SQ(windDirection.z)), -tempY);
            rotY = atan2f(windDirection.z, windDirection.x);
            Matrix_RotateY(-rotY, MTXMODE_APPLY);
            Matrix_RotateX(M_PI / 2 - rotX, MTXMODE_APPLY);
            Matrix_Scale(0.4f, 1.2f, 0.4f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2887),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_04048160);
        }

        // draw droplet rings on the ground
        if (player->actor.posRot.pos.y < view->eye.y) {
            firstIterDone = false;

            for (i = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
                if (!firstIterDone) {
                    func_80093D84(gfxCtx);
                    gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 155, 0);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 120);
                    firstIterDone++;
                }

                Matrix_Translate(func_800746DC() * 280.0f + x280, player->actor.posRot.pos.y + 2.0f,
                                 func_800746DC() * 280.0f + z280, MTXMODE_NEW);

                if ((LINK_IS_ADULT && ((player->actor.posRot.pos.y + 2.0f - view->eye.y) > -48.0f)) ||
                    (LINK_IS_CHILD && ((player->actor.posRot.pos.y + 2.0f - view->eye.y) > -30.0f))) {
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

// draws a filter over the screen in the color of the env fog
// not sure what the second color filter is for yet
void func_80074D6C(GlobalContext* globalCtx) {
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

    if (globalCtx->envCtx.unk_E9 != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 3048);

        func_800938B4(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, globalCtx->envCtx.unk_EA[0], globalCtx->envCtx.unk_EA[1],
                        globalCtx->envCtx.unk_EA[2], globalCtx->envCtx.unk_EA[3]);
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
                if (Math_Rand_ZeroOne() < 0.1f) {
                    gLightningStrike.delayTimer += 50.0f;
                }

                gLightningStrike.delayTimer += Math_Rand_ZeroOne();

                if (gLightningStrike.delayTimer > 500.0f) {
                    gLightningStrike.flashRed = 200;
                    gLightningStrike.flashGreen = 200;
                    gLightningStrike.flashBlue = 255;
                    gLightningStrike.flashAlphaTarget = 200;

                    gLightningStrike.delayTimer = 0.0f;
                    Kankyo_AddLightningBolts(globalCtx, (u8)(Math_Rand_ZeroOne() * 2.9f) + 1);
                    sLightningFlashAlpha = 0;
                    gLightningStrike.state++;
                }
                break;
            case LIGHTNING_STRIKE_START:
                gLightningStrike.flashRed = 200;
                gLightningStrike.flashGreen = 200;
                gLightningStrike.flashBlue = 255;

                globalCtx->envCtx.unk_8C[0][0] += 80;
                globalCtx->envCtx.unk_8C[0][1] += 80;
                globalCtx->envCtx.unk_8C[0][2] += 100;

                sLightningFlashAlpha += 100;

                if (sLightningFlashAlpha >= gLightningStrike.flashAlphaTarget) {
                    func_800F6D58(15, 0, 0);
                    gLightningStrike.state++;
                    gLightningStrike.flashAlphaTarget = 0;
                }
                break;
            case LIGHTNING_STRIKE_END:
                if (globalCtx->envCtx.unk_8C[0][0] > 0) {
                    globalCtx->envCtx.unk_8C[0][0] -= 10;
                    globalCtx->envCtx.unk_8C[0][1] -= 10;
                }

                if (globalCtx->envCtx.unk_8C[0][2] > 0) {
                    globalCtx->envCtx.unk_8C[0][2] -= 10;
                }

                sLightningFlashAlpha -= 10;

                if (sLightningFlashAlpha <= gLightningStrike.flashAlphaTarget) {
                    globalCtx->envCtx.unk_8C[0][0] = 0;
                    globalCtx->envCtx.unk_8C[0][1] = 0;
                    globalCtx->envCtx.unk_8C[0][2] = 0;

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
 * Request the number of lightning strikes specified by `numStrikes`
 * Note: only 3 lightning strikes can be active at the same time.
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
                sLightningBolts[i].pos.y = Math_Rand_ZeroOne() * 1000.0f + 4000.0f;
                sLightningBolts[i].pos.z = globalCtx->view.eye.z + z * 9500.0f;

                sLightningBolts[i].offset.x = (Math_Rand_ZeroOne() - 0.5f) * 5000.0f;
                sLightningBolts[i].offset.y = 0.0f;
                sLightningBolts[i].offset.z = (Math_Rand_ZeroOne() - 0.5f) * 5000.0f;

                sLightningBolts[i].textureIndex = 0;
                sLightningBolts[i].pitch = (Math_Rand_ZeroOne() - 0.5f) * 40.0f;
                sLightningBolts[i].roll = (Math_Rand_ZeroOne() - 0.5f) * 40.0f;
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

#ifdef NON_MATCHING
// func_800F5550 is using the wrong temp reg for globalCtx->soundCtx.seqIndex in the last else
void func_800758AC(GlobalContext* globalCtx) {
    globalCtx->envCtx.unk_E0 = 0xFF;

    // both lost woods exits on the bridge from kokiri to hyrule field
    if (((void)0, gSaveContext.entranceIndex) == 0x4DE || ((void)0, gSaveContext.entranceIndex) == 0x5E0) {
        func_800F6FB4(4);
    } else if (((void)0, gSaveContext.unk_140E) != 0) {
        if (!func_80077600()) {
            Audio_SetBGM(((void)0, gSaveContext.unk_140E));
        }

        gSaveContext.unk_140E = 0;
    } else if (globalCtx->soundCtx.seqIndex == 0x7F) {
        if (globalCtx->soundCtx.nightSeqIndex == 19u) {
            return;
        }

        if (((void)0, gSaveContext.nightSeqIndex) != globalCtx->soundCtx.nightSeqIndex) {
            func_800F6FB4((s32)globalCtx->soundCtx.nightSeqIndex);
        }
    } else if (globalCtx->soundCtx.nightSeqIndex == 19u) {
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
            func_800F6FB4((s32)globalCtx->soundCtx.nightSeqIndex);
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_800758AC.s")
#endif

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
                    Audio_SetBGM(0x10F000FF);
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

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.posRot.pos.x - 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z - 10.0f, 0, 0, 0,
                              255);
    sNGameOverLightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &sNGameOverLightInfo);

    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.posRot.pos.x + 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f, 0, 0, 0,
                              0xFF);
    sSGameOverLightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &sSGameOverLightInfo);
}

void Kankyo_FadeInGameOverLights(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 i;

    Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.posRot.pos.x - 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z - 10.0f,
                              sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);
    Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.posRot.pos.x + 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f,
                              sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 255);

    if (sGameOverLightsRGB < 254) {
        sGameOverLightsRGB += 2;
    }

    if (func_800C0CB8(globalCtx)) {
        for (i = 0; i < ARRAY_COUNT(*globalCtx->envCtx.unk_8C); i++) {
            if (globalCtx->envCtx.unk_8C[0][i] >= -0xFE) {
                globalCtx->envCtx.unk_8C[0][i] -= 12;
                globalCtx->envCtx.unk_8C[1][i] -= 12;
            }
            globalCtx->envCtx.unk_8C[2][i] = -0xFF;
        }

        if (globalCtx->envCtx.unk_D4 + globalCtx->envCtx.unk_A0 > 900) {
            globalCtx->envCtx.unk_A0 -= 100;
        }

        if (globalCtx->envCtx.unk_D2 + globalCtx->envCtx.unk_9E > 950) {
            globalCtx->envCtx.unk_9E -= 10;
        }
    } else {
        globalCtx->envCtx.unk_E1 = 1;
        globalCtx->envCtx.unk_E2[0] = 0;
        globalCtx->envCtx.unk_E2[1] = 0;
        globalCtx->envCtx.unk_E2[2] = 0;
        globalCtx->envCtx.unk_E2[3] = sGameOverLightsRGB;
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
        Lights_PointNoGlowSetInfo(&sNGameOverLightInfo, (s16)player->actor.posRot.pos.x - 10.0f,
                                  (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z - 10.0f,
                                  sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 0xFF);
        Lights_PointNoGlowSetInfo(&sSGameOverLightInfo, (s16)player->actor.posRot.pos.x + 10.0f,
                                  (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f,
                                  sGameOverLightsRGB, sGameOverLightsRGB, sGameOverLightsRGB, 0xFF);
    }

    if (func_800C0CB8(globalCtx)) {
        for (i = 0; i < ARRAY_COUNT(*globalCtx->envCtx.unk_8C); i++) {
            Math_SmoothScaleMaxMinS(&globalCtx->envCtx.unk_8C[0][i], 0, 5, 12, 1);
            Math_SmoothScaleMaxMinS(&globalCtx->envCtx.unk_8C[1][i], 0, 5, 12, 1);
            globalCtx->envCtx.unk_8C[2][i] = 0;
        }
        globalCtx->envCtx.unk_A0 = 0;
        globalCtx->envCtx.unk_9E = 0;
    } else {
        globalCtx->envCtx.unk_E1 = 1;
        globalCtx->envCtx.unk_E2[0] = 0;
        globalCtx->envCtx.unk_E2[1] = 0;
        globalCtx->envCtx.unk_E2[2] = 0;
        globalCtx->envCtx.unk_E2[3] = sGameOverLightsRGB;
        if (sGameOverLightsRGB == 0) {
            globalCtx->envCtx.unk_E1 = 0;
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

        if (drawFlags & 1) {
            POLY_OPA_DISP = func_800937C0(POLY_OPA_DISP);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, alpha);
            gDPSetAlphaDither(POLY_OPA_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_OPA_DISP++, G_CD_DISABLE);
            gDPFillRectangle(POLY_OPA_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        if (drawFlags & 2) {
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

#ifdef NON_EQUIVALENT
// incomplete
void Kankyo_DrawSandstorm(GlobalContext* globalCtx, u8 sandstormState) {
    s32 primA;
    s32 envA;
    u32 frames;

    u8 spA6;
    u8 spA5;
    u8 spA4;
    u8 spA2;
    u8 spA1;
    u8 spA0;
    f32 sp98;
    u16 sp96;
    u16 sp94;
    u16 sp92;
    GraphicsContext* sp8C;
    Gfx* sp7C;
    Gfx* sp68;
    void* sp58;
    Gfx* temp_t6_3;
    Gfx* temp_v0_3;
    Gfx* temp_v0_4;
    Gfx* temp_v0_5;
    Gfx* temp_v0_6;
    Gfx* temp_v0_7;
    Gfx* temp_v0_8;
    Gfx* temp_v0_9;
    GraphicsContext* temp_a1_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f8_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    u8 temp_a2;
    u8 temp_a3;
    u8 temp_t0;
    u8 temp_t1;
    u8 temp_t2;
    u8 temp_t3;
    u8 temp_t4_2;
    u8 temp_t6;
    u8 temp_t6_2;
    u8 temp_t7;
    u8 temp_t7_2;
    u8 temp_t7_3;
    u8 temp_t7_4;
    u8 temp_t7_5;
    u8 temp_t8;
    u8 temp_t8_2;
    u8 temp_t8_3;
    u8 temp_t9;
    void* temp_a0_2;
    void* temp_a1_2;
    void* temp_t4;
    void* temp_v0;
    void* temp_v0_2;
    void* temp_v1_4;
    void* temp_v1_5;
    s32 phi_v1;
    s32 primA1;
    s32 phi_v0;
    s32 phi_a1;
    s32 phi_v0_2;
    u8 primA2;
    u8 phi_t1;
    f32 phi_f8;
    f32 phi_f18;
    f32 phi_f4;
    f32 phi_f6;
    f32 phi_f4_2;
    f32 phi_f14;
    u32 phi_t3;
    u32 phi_t2;
    u32 phi_t1_2;
    s32 phi_v1_3;
    s32 phi_v1_4;
    f32 phi_f18_2;
    f32 phi_f4_3;
    f32 phi_f8_2;
    f32 phi_f4_4;
    f32 phi_f10;
    f32 phi_f4_5;

    switch (sandstormState) {
        case 3:
            // if in room 0 of haunted wasteland
            if ((globalCtx->sceneNum == SCENE_SPOT13) && (globalCtx->roomCtx.curRoom.num == 0)) {
                if (envA > 128) {
                    primA = 255;
                    envA = 0;
                } else {
                    primA = envA / 2; // shift?
                    envA = 0;
                }
            } else {
                frames = globalCtx->state.frames & 0x7F;

                if (frames > 64) {
                    frames = 128 - frames;
                }

                primA = frames + 73;
                envA = 128;
            }
            break;
        case 1:
            if (primA >= 255) {
                primA = 255;
                envA = 255;
            } else {
                primA = 255;
                envA = 128;
            }
            break;
        case 2:
            if (envA >= 0x81) {
                phi_v1 = 0xFF;
            } else {
                temp_v1_2 = globalCtx->state.frames & 0x7F;
                phi_v1_3 = temp_v1_2;
                if (temp_v1_2 >= 0x41) {
                    phi_v1_3 = 0x80 - temp_v1_2;
                }
                phi_v1 = phi_v1_3 + 0x49;
            }
            primA1 = phi_v1;
            envA1 = 0x80;
            if (phi_v1 >= primA) {
                primA1 = phi_v1;
                envA1 = 0x80;
                if (phi_v1 != 0xFF) {
                    globalCtx->envCtx.sandstormState = 3;
                    primA1 = phi_v1;
                    envA1 = 0x80;
                }
            }
            break;
        case 4:
            break;
    }

    ctx10000 = globalCtx + 0x10000;
    primA = globalCtx->envCtx.sandstormPrimA;
    envA = globalCtx->envCtx.sandstormEnvA;
    state = sandstormState & 0xFF;

    if (state != 1) {
        if (state != 2) {
            if (state != 3) {
                if (state != 4) {
                    primA1 = spB4;
                    envA1 = spB0;
                } else {
                    if (envA >= 0x81) {
                        primA1 = 0xFF;
                    } else {
                        primA1 = envA >> 1;
                    }
                    envA1 = 0;
                    if (primA == 0) {
                        globalCtx->envCtx.sandstormState = 0;
                        envA1 = 0;
                    }
                }
                // case 3 (done)
            } else if ((globalCtx->sceneNum == 0x5E) && (globalCtx->roomCtx.curRoom.num == 0)) {
                if (envA >= 0x81) {
                    primA1 = 0xFF;
                    envA1 = 0;
                } else {
                    primA1 = envA >> 1;
                    envA1 = 0;
                }
            } else {
                temp_v1 = globalCtx->state.frames & 0x7F;
                phi_v1_4 = temp_v1;
                if (temp_v1 >= 0x41) {
                    phi_v1_4 = 0x80 - temp_v1;
                }
                primA1 = phi_v1_4 + 0x49;
                envA1 = 0x80;
            }
        } else {
            if (envA >= 0x81) {
                phi_v1 = 0xFF;
            } else {
                temp_v1_2 = globalCtx->state.frames & 0x7F;
                phi_v1_3 = temp_v1_2;
                if (temp_v1_2 >= 0x41) {
                    phi_v1_3 = 0x80 - temp_v1_2;
                }
                phi_v1 = phi_v1_3 + 0x49;
            }
            primA1 = phi_v1;
            envA1 = 0x80;
            if (phi_v1 >= primA) {
                primA1 = phi_v1;
                envA1 = 0x80;
                if (phi_v1 != 0xFF) {
                    globalCtx->envCtx.sandstormState = 3;
                    primA1 = phi_v1;
                    envA1 = 0x80;
                }
            }
        }
    } else if (primA >= 0xFF) {
        primA1 = 0xFF;
        envA1 = 0xFF;
    } else {
        primA1 = 0xFF;
        envA1 = 0x80;
    }

    temp_a0 = primA - primA1;
    if (temp_a0 >= 0) {
        phi_v0 = temp_a0;
    } else {
        phi_v0 = -temp_a0;
    }
    if (phi_v0 < 9) {
        primA2 = primA1;
    } else if (primA1 < primA) {
        primA2 = primA - 9;
    } else {
        primA2 = primA + 9;
    }
    temp_v1_3 = envA - envA1;
    phi_v0_2 = -temp_v1_3;
    if (temp_v1_3 >= 0) {
        phi_v0_2 = temp_v1_3;
    }
    if (phi_v0_2 < 9) {
        envA2 = envA1;
    } else if (envA1 < envA) {
        envA2 = envA - 9;
    } else {
        envA2 = envA + 9;
    }
    globalCtx->envCtx.sandstormPrimA = primA2;
    globalCtx->envCtx.sandstormEnvA = envA2;
    temp_f14 = (512.0f - (primA2 + envA2)) * 0.0234375f;
    phi_f14 = temp_f14;
    if (temp_f14 > 6.0f) {
        phi_f14 = 6.0f;
    }
    if ((globalCtx->envCtx.unk_1E != 0) || (globalCtx->envCtx.unk_BF != 0xFF)) {
        sp58 = ctx10000;
        spA4 = D_8011FEC4[3];
        spA5 = D_8011FEC4[4];
        spA6 = D_8011FEC4[5];
        phi_t3 = D_8011FED0[5];
        phi_t2 = D_8011FED0[4];
        envA2_2 = D_8011FED0[3];
    } else {
        sp58 = ctx10000;
        temp_t0 = D_8011FDCC;
        temp_t4_2 = D_8011FDD0;
        if (temp_t4_2 == temp_t0) {
            temp_a2_2 = temp_t0 * 3;
            temp_v0 = D_8011FEC4 + temp_a2_2;
            temp_v1_4 = D_8011FED0 + temp_a2_2;
            spA4 = temp_v0->unk0;
            spA5 = temp_v0->unk1;
            spA6 = temp_v0->unk2;
            phi_t3 = temp_v1_4->unk2;
            phi_t2 = temp_v1_4->unk1;
            envA2_2 = temp_v1_4->unk0;
        } else {
            temp_a3_2 = temp_t4_2 * 3;
            temp_a0_2 = D_8011FEC4 + temp_a3_2;
            temp_t7 = temp_a0_2->unk0;
            temp_f0 = D_8011FDD4;
            temp_f8 = temp_t7;
            temp_a2_3 = temp_t0 * 3;
            temp_f2 = 1.0f - temp_f0;
            temp_v0_2 = D_8011FEC4 + temp_a2_3;
            phi_f8 = temp_f8;
            if (temp_t7 < 0) {
                phi_f8 = temp_f8 + 4294967296.0f;
            }
            temp_t7_2 = temp_a0_2->unk1;
            temp_f18 = temp_t7_2;
            spA4 = (phi_f8 * temp_f0) + (temp_v0_2->unk0 * temp_f2);
            phi_f18 = temp_f18;
            if (temp_t7_2 < 0) {
                phi_f18 = temp_f18 + 4294967296.0f;
            }
            temp_t8 = temp_v0_2->unk1;
            temp_f4 = temp_t8;
            phi_f4 = temp_f4;
            if (temp_t8 < 0) {
                phi_f4 = temp_f4 + 4294967296.0f;
            }
            temp_t7_3 = temp_a0_2->unk2;
            temp_f6 = temp_t7_3;
            spA5 = (phi_f18 * temp_f0) + (phi_f4 * temp_f2);
            phi_f6 = temp_f6;
            if (temp_t7_3 < 0) {
                phi_f6 = temp_f6 + 4294967296.0f;
            }
            temp_t8_2 = temp_v0_2->unk2;
            temp_f4_2 = temp_t8_2;
            phi_f4_2 = temp_f4_2;
            if (temp_t8_2 < 0) {
                phi_f4_2 = temp_f4_2 + 4294967296.0f;
            }
            temp_a1_2 = D_8011FED0 + temp_a3_2;
            temp_t7_4 = temp_a1_2->unk0;
            temp_v1_5 = D_8011FED0 + temp_a2_3;
            temp_f10 = temp_t7_4;
            spA6 = (phi_f6 * temp_f0) + (phi_f4_2 * temp_f2);
            phi_f10 = temp_f10;
            if (temp_t7_4 < 0) {
                phi_f10 = temp_f10 + 4294967296.0f;
            }
            temp_t8_3 = temp_v1_5->unk0;
            temp_f4_3 = temp_t8_3;
            phi_f4_5 = temp_f4_3;
            if (temp_t8_3 < 0) {
                phi_f4_5 = temp_f4_3 + 4294967296.0f;
            }
            temp_t6 = temp_a1_2->unk1;
            temp_f8_2 = temp_t6;
            phi_f8_2 = temp_f8_2;
            if (temp_t6 < 0) {
                phi_f8_2 = temp_f8_2 + 4294967296.0f;
            }
            temp_t7_5 = temp_v1_5->unk1;
            temp_f4_4 = temp_t7_5;
            phi_f4_4 = temp_f4_4;
            if (temp_t7_5 < 0) {
                phi_f4_4 = temp_f4_4 + 4294967296.0f;
            }
            temp_t9 = temp_a1_2->unk2;
            temp_f18_2 = temp_t9;
            phi_f18_2 = temp_f18_2;
            if (temp_t9 < 0) {
                phi_f18_2 = temp_f18_2 + 4294967296.0f;
            }
            temp_t6_2 = temp_v1_5->unk2;
            temp_f4_5 = temp_t6_2;
            phi_f4_3 = temp_f4_5;
            if (temp_t6_2 < 0) {
                phi_f4_3 = temp_f4_5 + 4294967296.0f;
            }
            phi_t3 = ((phi_f18_2 * temp_f0) + (phi_f4_3 * temp_f2)) & 0xFF;
            phi_t2 = ((phi_f8_2 * temp_f0) + (phi_f4_4 * temp_f2)) & 0xFF;
            envA2_2 = ((phi_f10 * temp_f0) + (phi_f4_5 * temp_f2)) & 0xFF;
        }
    }
    temp_f0_2 = 6.0f - phi_f14;
    temp_t1 = (((envA2_2 * phi_f14) + (temp_f0_2 * spA4)) * 0.16666667f) & 0xFF;
    temp_t2 = (((phi_t2 * phi_f14) + (temp_f0_2 * spA5)) * 0.16666667f) & 0xFF;
    temp_t3 = (((phi_t3 * phi_f14) + (temp_f0_2 * spA6)) * 0.16666667f) & 0xFF;
    temp_f2_2 = D_8015FDB0;
    sp96 = temp_f2_2 * 1.8333334f;
    sp94 = temp_f2_2 * 1.5f;
    sp92 = temp_f2_2 * 1.0f;
    temp_a1_3 = globalCtx->state.gfxCtx;
    sp98 = phi_f14;
    spA2 = temp_t3;
    spA1 = temp_t2;
    spA0 = temp_t1;
    sp8C = temp_a1_3;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 4044);

    POLY_XLU_DISP = func_80093F34(sp8C->polyXlu.p);
    gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_NOISE);
    gDPSetColorDither(POLY_XLU_DISP++, G_CD_NOISE);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, spA4, spA5, spA6, globalCtx->envCtx.sandstormPrimA);
    gDPSetEnvColor(POLY_XLU_DISP++, temp_t1, temp_t2, temp_t3, globalCtx->envCtx.sandstormEnvA);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp96 & 0xFFF, 0, 0x200, 0x20, 1, sp94 & 0xFFF,
                                0xFFF - (sp92 & 0xFFF), 0x100, 0x40));
    gDPSetTextureLUT(POLY_XLU_DISP++, G_TT_NONE);
    gSPDisplayList(POLY_XLU_DISP++, D_0500CA70);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kankyo.c", 4068);

    D_8015FDB0 += temp_f14_2;
}
#else
char D_8011FEC4[] = { 0xD2, 0x9C, 0x55, 0xFF, 0xC8, 0x64, 0xE1, 0xA0, 0x32, 0x69, 0x5A, 0x28 };
char D_8011FED0[] = { 0x9B, 0x6A, 0x23, 0xC8, 0x96, 0x32, 0xAA, 0x6E, 0x00, 0x32, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00 };
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80076934.s")
#endif

void func_800773A8(GlobalContext* globalCtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp;
    s32 i;

    if (globalCtx->roomCtx.curRoom.unk_03 == 5 || !func_800C0CB8(globalCtx)) {
        return;
    }

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
    globalCtx->envCtx.unk_9E = (arg2 - globalCtx->envCtx.unk_D2) * temp;

    if (arg1 == 0.0f) {
        for (i = 0; i < ARRAY_COUNT(*globalCtx->envCtx.unk_8C); i++) {
            globalCtx->envCtx.unk_8C[2][i] = 0;
        }
    } else {
        temp = arg1 * 5.0f;
        if (temp > 1.0f) {
            temp = 1.0f;
        }
        for (i = 0; i < ARRAY_COUNT(*globalCtx->envCtx.unk_8C); i++) {
            globalCtx->envCtx.unk_8C[2][i] = -(s16)(globalCtx->envCtx.unk_C9[2][i] * temp);
        }
    }

    if (arg4 <= 0.0f) {
        return;
    }

    arg1 *= arg4;
    for (i = 0; i < ARRAY_COUNT(*globalCtx->envCtx.unk_8C); i++) {
        globalCtx->envCtx.unk_8C[0][i] = -(s16)(globalCtx->envCtx.unk_C0[0][i] * arg1);
        globalCtx->envCtx.unk_8C[1][i] = -(s16)(globalCtx->envCtx.unk_C0[2][i] * arg1);
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
