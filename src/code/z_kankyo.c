#include "global.h"
#include "ultra64.h"
#include "vt.h"

#define ENV_ROM_FILE(name) \
    { (u32) _vr_##name##_staticSegmentRomStart, (u32)_vr_##name##_staticSegmentRomEnd }
#define ENV_ROM_FILES(name) \
    { ENV_ROM_FILE(name), ENV_ROM_FILE(name##_pal) }

typedef struct {
    u16 minTime;
    u16 maxTime;
    u8 unk_04;
    u8 unk_05;
} struct_8011FB48;

// data
s32 D_8011FAF0[][2] = {
    { 0x00000006, 0x00000000 }, { 0x00000005, 0x00020000 }, { 0x00000004, 0x00030000 }, { 0x00000003, 0x00038000 },
    { 0x00000002, 0x0003c000 }, { 0x00000001, 0x0003e000 }, { 0x00000000, 0x0003f000 }, { 0x00000000, 0x0003f800 },
};
u8 D_8011FB30 = 0;
u8 D_8011FB34 = 0;
u8 D_8011FB38 = 0;
u8 D_8011FB3C = 0;
u16 D_8011FB40 = 0;
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
RomFile D_8011FD3C[][2] = {
    ENV_ROM_FILES(fine0),  ENV_ROM_FILES(fine1),  ENV_ROM_FILES(fine2),  ENV_ROM_FILES(fine3), ENV_ROM_FILES(cloud0),
    ENV_ROM_FILES(cloud1), ENV_ROM_FILES(cloud2), ENV_ROM_FILES(cloud3), ENV_ROM_FILES(holy0),
};
u8 D_8011FDCC = 0;
u8 D_8011FDD0 = 0;
u8 D_8011FDD4 = 0;

// bss
u8 gCustomLensFlareOn;
Vec3f gCustomLensFlarePos;
s16 D_8015FD04;
s16 D_8015FD06;
f32 D_8015FD08;
s16 D_8015FD0C;
struct_8015FD10 D_8015FD10[3];
struct_8015FD70 D_8015FD70;
s16 D_8015FD7C;
s16 D_8015FD7E;
s16 D_8015FD80;
LightNode* D_8015FD84;
LightInfo D_8015FD88;
LightNode* D_8015FD98;
LightInfo D_8015FDA0;
u8 D_8015FDAE;
s32 D_8015FDB0[4];

void func_80075B44(GlobalContext* globalCtx);
void func_800766C4(GlobalContext* globalCtx);

s32 func_8006F0A0(s32 a0) {
    s32 ret = ((a0 >> 4 & 0x7FF) << D_8011FAF0[a0 >> 15 & 7][0]) + D_8011FAF0[a0 >> 15 & 7][1];
    return ret;
}

u16 Kankyo_GetZBufferPixel(s32 x, s32 y) {
    u32 ret = gZBuffer[y][x];

    return ret;
}

void Kankyo_GraphCallback(GraphicsContext* gfxCtx, GlobalContext* globalCtx) {
    D_8011FB44 = Kankyo_GetZBufferPixel(D_8015FD7E, D_8015FD80);
    Lights_GlowCheck(globalCtx);
}

#ifdef NON_MATCHING
// // minor ordering, regalloc, implicit stack slots
// // jacob had this return a byte?
void Kankyo_Init(GlobalContext* globalCtx2, EnvironmentContext* envCtx, UNK_TYPE unused) {
    GlobalContext* globalCtx = globalCtx2;
    u8 i;
    u16 uDayTime;

    gSaveContext.unk_1422 = 0;

    if ((0, gSaveContext.dayTime) > 0xC000 || (0, gSaveContext.dayTime) < 0x4555) {
        (0, gSaveContext.nightFlag = true);
    } else {
        (0, gSaveContext.nightFlag = false);
    }

    globalCtx->state.gfxCtx->callback = Kankyo_GraphCallback;
    globalCtx->state.gfxCtx->callbackParam = globalCtx;

    Lights_DirectionalSetInfo(&envCtx->unk_28, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->unk_28);

    Lights_DirectionalSetInfo(&envCtx->unk_36, 80, 80, 80, 80, 80, 80);
    LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &envCtx->unk_36);

    envCtx->unk_10 = 99;
    envCtx->unk_11 = 99;
    envCtx->unk_19 = 0;
    envCtx->unk_1A = 0;
    envCtx->unk_21 = 0;
    envCtx->unk_22 = 0;
    envCtx->unk_44 = 0;
    envCtx->unk_1F = 0;
    envCtx->unk_20 = 0;
    envCtx->unk_BD = 0;
    envCtx->unk_BE = 0;
    envCtx->unk_DC = 0;
    envCtx->gloomySkyEvent = 0;
    envCtx->unk_DE = false;
    envCtx->lightning = 0;
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
    envCtx->unk_E6 = 0;
    envCtx->unk_E7 = 0;
    envCtx->unk_E8 = 0;
    envCtx->unk_84 = 0.0f;
    envCtx->unk_88 = 0.0f;
    envCtx->unk_D8 = 1.0f;

    D_8015FD70.unk_00 = 0;
    D_8015FD70.red = 0;
    D_8015FD70.green = 0;
    D_8015FD70.blue = 0;
    D_8015FD7C = 0;
    (0, gSaveContext.unk_1410 = 0);

    envCtx->unk_8C[0][0] = envCtx->unk_8C[0][1] = envCtx->unk_8C[0][2] = envCtx->unk_8C[1][0] = envCtx->unk_8C[1][1] =
        envCtx->unk_8C[1][2] = envCtx->unk_8C[2][0] = envCtx->unk_8C[2][1] = envCtx->unk_8C[2][2] = envCtx->unk_9E =
            envCtx->unk_A0 = 0;

    envCtx->sunPos.x = -(Math_Sins((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.y = +(Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
    envCtx->sunPos.z = +(Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;

    envCtx->unk_A8.x = 80;
    envCtx->unk_A8.y = 80;
    envCtx->unk_A8.z = 80;

    envCtx->unk_BC = 0;
    envCtx->unk_BF = 0xFF;
    envCtx->unk_D6 = 0xFFFF;
    envCtx->unk_02 = 0;
    REG(15) = D_8011FB40 = 0;
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
            switch (D_8011FB30) {
                case 1:
                    envCtx->gloomySky = 1;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1F = 3;
                    envCtx->unk_20 = 3;
                    globalCtx->envCtx.unk_EE[3] = 0;
                    globalCtx->envCtx.unk_EE[2] = 0;
                    break;
                case 2:
                case 3:
                case 4:
                    envCtx->gloomySky = 1;
                    envCtx->unk_18 = 1;
                    envCtx->unk_1F = 2;
                    envCtx->unk_20 = 2;
                    globalCtx->envCtx.unk_EE[3] = 0;
                    globalCtx->envCtx.unk_EE[2] = 0;
                    break;
                case 5:
                    envCtx->gloomySky = 1;
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
                if (D_8011FB30 == 3) {
                    globalCtx->envCtx.unk_EE[2] = globalCtx->envCtx.unk_EE[3] = 0x40;
                } else if (D_8011FB30 == 4) {
                    globalCtx->envCtx.unk_EE[0] = 0x14;
                    globalCtx->envCtx.unk_EE[1] = 0x14;
                } else if (D_8011FB30 == 5) {
                    globalCtx->envCtx.unk_EE[0] = 0x1E;
                    globalCtx->envCtx.unk_EE[1] = 0x1E;
                }
            }
        }
    } else {
        D_8011FB30 = 0;
    }

    D_8011FB38 = 0;
    D_8011FB34 = 0;
    D_8011FB3C = 0;
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

    for (i = 0; i < ARRAY_COUNT(D_8015FD10); i++) {
        D_8015FD10[i].unk_00 = 0xFF;
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

    gCustomLensFlareOn = 0;
    func_800AA15C();
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_8006F140.s")
#endif

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
    if (envCtx->gloomySkyEvent == 0) {
        return;
    }

    switch (envCtx->unk_DE) {
        case 0:
            if (envCtx->gloomySkyEvent == 1 && D_8011FB3C == 0) {
                envCtx->unk_19 = 1;
                envCtx->gloomySky = 0;
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
            if (D_8011FB3C == 0 && envCtx->gloomySkyEvent == 2) {
                D_8011FB30 = 0;
                envCtx->unk_19 = 1;
                envCtx->gloomySky = 1;
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

#ifdef NON_EQUIVALENT
// major instruction/register/stack differences
void func_8006FC88(u8 arg0, EnvironmentContext* envCtx, SkyboxContext* skyboxCtx) {
    u8 sp5A = -1;
    u8 sp59 = -1;
    u8 sp58 = 0;
    u16 temp_t6;
    u16 temp_v0;
    u16 temp_v0_2;
    u8 temp_t0_3;
    f32 phi_f0;
    s8 phi_v1;

    u8 i;
    struct_8011FC1C* entry;
    u8 something;
    u32 length;
    RomFile* file;

    if (arg0 == 5) {
        envCtx->gloomySky = 3;
        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->gloomySky]); i++) {
            entry = &D_8011FC1C[envCtx->gloomySky][i];
            if (gSaveContext.environmentTime >= entry->minTime &&
                (gSaveContext.environmentTime < entry->maxTime || entry->maxTime == 0xFFFF)) {
                if (entry->unk_04 != 0) {
                    envCtx->unk_13 = Kankyo_InvLerp(entry->maxTime, entry->minTime, gSaveContext.environmentTime) * 255;
                } else {
                    envCtx->unk_13 = 0;
                }
                break;
            }
        }
    } else if (arg0 == 1 && !envCtx->skyDisabled) {
        for (i = 0; i < ARRAY_COUNT(D_8011FC1C[envCtx->gloomySky]); i++) {
            entry = &D_8011FC1C[envCtx->gloomySky][i];
            if (gSaveContext.environmentTime >= entry->minTime &&
                (gSaveContext.environmentTime < entry->maxTime || entry->maxTime == 0xFFFF)) {
                D_8011FB3C = entry->unk_04;
                if (envCtx->gloomySky) {
                    entry = &D_8011FC1C[envCtx->gloomySky][i];
                    sp58 = something =
                        Kankyo_InvLerp(entry->maxTime, entry->minTime, gSaveContext.environmentTime) * 255;
                } else {
                    entry = &D_8011FC1C[envCtx->gloomySky][i];
                    something = Kankyo_InvLerp(entry->maxTime, entry->minTime, gSaveContext.environmentTime) * 255;
                    if (something < 0x80) {
                        sp58 = 0xFF;
                    } else {
                        sp58 = 0;
                    }
                    if (envCtx->unk_19 != 0 && envCtx->unk_19 < 3) {
                        envCtx->unk_19++;
                    }
                }
                break;
            }
        }
        func_8006FB94(envCtx, something);
        if ((s32)envCtx->unk_19 >= 3) {
            sp5A = D_8011FC1C[envCtx->gloomySky][i].unk_05;
            sp59 = D_8011FC1C[envCtx->unk_18][i].unk_06;
            phi_f0 = envCtx->unk_24;
            sp58 = (phi_f0 - envCtx->unk_1A--) / phi_f0 * 255;
            if (envCtx->unk_1A <= 0) {
                envCtx->unk_19 = 0U;
                envCtx->gloomySky = envCtx->unk_18;
            }
        }
        if (sp5A == 0xFF) {
            // Environment VR data acquisition failed! Report to Sasaki!
            osSyncPrintf(VT_COL(RED, WHITE) "\n環境ＶＲデータ取得失敗！ ささきまでご報告を！" VT_RST);
        }
        if (sp5A != envCtx->unk_10 && envCtx->unk_44 == 0) {
            envCtx->unk_44 = 1;
            file = &D_8011FD3C[sp5A][0];
            length = file->vromEnd - file->vromStart;
            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[0], file->vromStart, length, 0,
                                &envCtx->loadQueue, 0, "../z_kankyo.c", 0x4F0);
            envCtx->unk_10 = sp5A;
        }
        if (sp59 != envCtx->unk_11 && envCtx->unk_44 == 0) {
            envCtx->unk_44 = 11;
            file = &D_8011FD3C[sp59][0];
            length = file->vromEnd - file->vromStart;
            osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
            DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[1], file->vromStart, length, 0,
                                &envCtx->loadQueue, 0, "../z_kankyo.c", 0x501);
            envCtx->unk_11 = sp59;
        }
        if (envCtx->unk_44 == 2) {
            envCtx->unk_44 = 3;
            file = &D_8011FD3C[sp5A][1];
            length = file->vromEnd - file->vromStart;
            if ((sp5A & 1) != ((s32)(sp5A & 4) >> 2)) {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2], file->vromStart, length, 0,
                                    &envCtx->loadQueue, 0, "../z_kankyo.c", 0x51B);
            } else {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + length, length,
                                    file->vromStart, 0, &envCtx->loadQueue, 0, "../z_kankyo.c", 0x528);
            }
        }
        if (envCtx->unk_44 == 12) {
            envCtx->unk_44 = 13;
            file = &D_8011FD3C[sp59][1];
            length = file->vromEnd - file->vromStart;
            if ((sp59 & 1) != ((s32)(sp59 & 4) >> 2)) {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2], file->vromStart, length, 0,
                                    &envCtx->loadQueue, 0, "../z_kankyo.c", 0x53E);
            } else {
                osCreateMesgQueue(&envCtx->loadQueue, &envCtx->loadMsg, 1);
                DmaMgr_SendRequest2(&envCtx->dmaRequest, (u32)skyboxCtx->staticSegments[2] + length, file->vromStart,
                                    length, 0, &envCtx->loadQueue, 0, "../z_kankyo.c", 0x54B);
            }
        }
        if (envCtx->unk_44 == 1 || envCtx->unk_44 == 11) {
            if (osRecvMesg(&envCtx->loadQueue, 0, 0) == 0) {
                envCtx->unk_44++;
            }
        } else if (envCtx->unk_44 >= 2) {
            if (osRecvMesg(&envCtx->loadQueue, 0, 0) == 0) {
                envCtx->unk_44 = 0;
            }
        }
        envCtx->unk_13 = sp58;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_8006FC88.s")
#endif

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

void func_80070718(GlobalContext* globalCtx, Gfx** gfx) {
    GfxPrint printer;
    u32 time;
    s32 pad;

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *gfx);

    GfxPrint_SetPos(&printer, 22, 7);
    GfxPrint_SetColor(&printer, 155, 155, 255, 64);
    GfxPrint_Printf(&printer, "T%03d ", ((void)0, gSaveContext.numDays));
    GfxPrint_Printf(&printer, "E%03d", ((void)0, gSaveContext.unk_18));

    GfxPrint_SetColor(&printer, 255, 255, 55, 64);
    GfxPrint_SetPos(&printer, 22, 8);
    GfxPrint_Printf(&printer, "%s", "ZELDATIME ");

    GfxPrint_SetColor(&printer, 255, 255, 255, 64);
    time = gSaveContext.dayTime;
    GfxPrint_Printf(&printer, "%02d", (u8)(45.0f / 2048.0f * time / 60.0f));

    if ((gSaveContext.dayTime & 0x1F) >= 0x10 || D_8011FB40 >= 6) {
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
    time = gSaveContext.environmentTime;
    GfxPrint_Printf(&printer, "%02d", (u8)(45.0f / 2048.0f * time / 60.0f));

    if ((gSaveContext.environmentTime & 0x1F) >= 0x10 || D_8011FB40 >= 6) {
        GfxPrint_Printf(&printer, "%s", ":");
    } else {
        GfxPrint_Printf(&printer, "%s", " ");
    }

    time = gSaveContext.environmentTime;
    GfxPrint_Printf(&printer, "%02d", (s16)(45.0f / 2048.0f * time) % 60);

    GfxPrint_SetColor(&printer, 55, 255, 255, 64);
    GfxPrint_SetPos(&printer, 22, 6);

    if (gSaveContext.nightFlag) {
        GfxPrint_Printf(&printer, "%s", "YORU"); // night
    } else {
        GfxPrint_Printf(&printer, "%s", "HIRU"); // day
    }

    *gfx = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

#ifdef NON_EQUIVALENT
// incomplete
void func_80070C24(GlobalContext* globalCtx, EnvironmentContext* envCtx, LightContext* lightCtx, PauseContext* pauseCtx,
                   MessageContext* msgCtx, u16* unk_10A20, GraphicsContext* gfxCtx_) {
    if (gSaveContext.gameMode != 0 && gSaveContext.gameMode != 3) {
        func_800AA16C(globalCtx);
    }
    if (pauseCtx->state == 0) {
        if (globalCtx->pauseCtx.state == 0 && globalCtx->pauseCtx.flag == 0) {
            if (globalCtx->skyboxId == 1) {
                globalCtx->skyboxCtx.rot.y -= 1.0e-3f;
            } else if (globalCtx->skyboxId == 5) {
                globalCtx->skyboxCtx.rot.y -= 5.0e-3f;
            }
        }
        func_800766C4(globalCtx);
        func_80075B44(globalCtx);
        if (gSaveContext.nextDayTime >= 0xFF00 && gSaveContext.nextDayTime != 0xFFFF) {
            gSaveContext.nextDayTime -= 16;
            osSyncPrintf("\nnext_zelda_time=[%x]", gSaveContext.nextDayTime);
            if (gSaveContext.nextDayTime == 0xFF0E) {
                func_80078884(0x2813);
                gSaveContext.nextDayTime = 0xFFFF;
            } else if (gSaveContext.nextDayTime == 0xFF0D) {
                func_800788CC(0x28AE);
                gSaveContext.nextDayTime = 0xFFFF;
            }
        }
        if (pauseCtx->state == 0 && *unk_10A20 == 0 && (msgCtx->unk_E300 != 0 || msgCtx->msgMode != 0) &&
            gSaveContext.nextDayTime == 3 && envCtx->unk_1A == 0 && func_800C0D28(globalCtx) == 0 &&
            (globalCtx->transitionMode == 0 || gSaveContext.gameMode != 0)) {
            if (gSaveContext.nightFlag == 0 || D_8011FB40 >= 400) {
                gSaveContext.dayTime += D_8011FB40;
            } else {
                gSaveContext.dayTime += 2 * D_8011FB40;
            }
        }
        if (((gSaveContext.sceneSetupIndex < 5 && D_8011FB40 == 0) ||
             gSaveContext.dayTime <= gSaveContext.environmentTime) &&
            gSaveContext.dayTime > 0xAAA && D_8011FB40 < 0) {
            gSaveContext.environmentTime = gSaveContext.dayTime;
        }
        if (gSaveContext.dayTime <= 0xC000 || gSaveContext.dayTime < 0x4555) {
            gSaveContext.nightFlag = true;
        } else {
            gSaveContext.nightFlag = false;
        }
        if (SREG(0) != 0 || CREG(2) != 0) {
            // 1ed4
            Gfx* polyOpa;
            Gfx* overlay;
            GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
            Gfx* dispRefs[4];

            Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 1682);
            polyOpa = Graph_GfxPlusOne(gfxCtx->polyOpa.p);
            overlay = gfxCtx->overlay.p++;
            gSPDisplayList(polyOpa, overlay);
            func_80070718(globalCtx, &overlay);
            gSPEndDisplayList(overlay++);
            Graph_BranchDlist(polyOpa, overlay);
            Graph_CloseDisps(dispRefs, gfxCtx, "../z_kankyo.c", 1690);
        }
        if (envCtx->unk_1A != 0xFF && envCtx->unk_DC != 2 && envCtx->unk_BD != envCtx->unk_1A &&
            envCtx->unk_D8 >= 1.0f && envCtx->unk_BF < 0x20) {
            envCtx->unk_BE = envCtx->unk_BD;
            envCtx->unk_BD = envCtx->unk_BF;
            envCtx->unk_D8 = 0.0f;
        }
        if (envCtx->unk_BF != 0xFE) {
            //
        }
    } // 402c
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_80070C24.s")
#endif

// draw sun and moon
// #ifdef NON_MATCHING
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
                                -(Math_Sins((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f, 0.8f);
        Math_SmoothScaleMaxMinF(&globalCtx->envCtx.sunPos.y,
                                (Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f, 1.0f, 0.8f, 0.8f);
        //! @bug This should be z.
        Math_SmoothScaleMaxMinF(&globalCtx->envCtx.sunPos.y,
                                (Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f, 1.0f, 0.8f, 0.8f);
    } else {
        globalCtx->envCtx.sunPos.x = -(Math_Sins((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.y = +(Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 120.0f) * 25.0f;
        globalCtx->envCtx.sunPos.z = +(Math_Coss((0, gSaveContext.dayTime) - 0x8000) * 20.0f) * 25.0f;
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

        alpha = -y / 80.0f;

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
// #else
// #pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/Kankyo_DrawSunAndMoon.s")
// #endif

// lens flare
void Kankyo_DrawSunLensFlare(GlobalContext* globalCtx, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx, Vec3f pos,
                   s32 unused) {
    if ((globalCtx->envCtx.unk_EE[1] == 0) && (globalCtx->envCtx.gloomySky == 0)) {
        func_80073A5C(globalCtx, &globalCtx->envCtx, &globalCtx->view, globalCtx->state.gfxCtx, pos, 2000, 370,
                      Math_Coss(((void)0, gSaveContext.dayTime) - 0x8000) * 120.0f, 400, 1);
    }
}

#ifdef NON_EQUIVALENT
// not ready
void func_80073A5C(GlobalContext* globalCtx, EnvironmentContext* envCtx, View* view, GraphicsContext* gfxCtx_,
                   Vec3f pos, UNK_TYPE arg5, s16 arg6, f32 arg7, s16 arg8, u8 arg9) {
    static f32 D_8011FDD8[] = { 23.0f, 12.0f, 7.0f, 5.0f, 3.0f, 10.0f, 6.0f, 2.0f, 3.0f, 1.0f };

    s32 pad[7];
    f32 lookDirX, lookDirY, lookDirZ;
    f32 posDirX, posDirY, posDirZ;
    f32 halfPosX, halfPosY, halfPosZ;
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
    f32 fogAlpha;
    f32 alphaScale;
    Color_RGB8 unk_8011FE00[] = {
        { 155, 205, 255 }, { 255, 255, 205 }, { 255, 255, 205 }, { 255, 255, 205 }, { 155, 255, 205 },
        { 205, 255, 255 }, { 155, 155, 255 }, { 205, 175, 255 }, { 175, 255, 205 }, { 255, 155, 235 },
    };
    u32 unk_8011FE20[] = { 0x32, 0xA, 0x19, 0x28, 0x46, 0x1E, 0x32, 0x46, 0x32, 0x28 };
    u32 unk_8011FE48[] = { 2, 1, 1, 1, 1, 1, 1, 1, 1, 1 };

    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    s32 pad2[2];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_kankyo.c", 2516);

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

        for (i = 0; i < ARRAY_COUNT(D_8011FDD8); i++) {
            Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);

            if (arg9) {
                temp = Kankyo_InvLerp(60, 15, globalCtx->view.fovy);
            }

            Matrix_Translate(-posDirX * i * dist, -posDirY * i * dist, -posDirZ * i * dist, MTXMODE_APPLY);

            scale = D_8011FDD8[i] * cosAngle;
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
            alpha *= unk_8011FE20[i];
            if (alpha < 0.0f) {
                alpha = 0.0f;
            }

            fogAlpha = (996 - globalCtx->lightCtx.fogNear) / 50.0f;
            if (fogAlpha > 1.0f) {
                fogAlpha = 1.0f;
            }
            alpha *= 1.0f - fogAlpha;

            if (!isOffScreen) {
                Math_SmoothScaleMaxMinF(&envCtx->unk_88, unk88Target, 1.0f, 0.05f, 0.001f);
            } else {
                Math_SmoothScaleMaxMinF(&envCtx->unk_88, unk88Target, 1.0f, 0.05f, 0.001f);
            }

            gfxCtx->polyXlu.p = func_800947AC(gfxCtx->polyXlu.p++);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, unk_8011FE00[i].r, unk_8011FE00[i].g, unk_8011FE00[i].b,
                            alpha * envCtx->unk_88);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2662),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetCombineLERP(gfxCtx->polyXlu.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE,
                              TEXEL0, 0, PRIMITIVE, 0);
            gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_DISABLE);
            gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);
            gSPMatrix(gfxCtx->polyXlu.p++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

            switch (unk_8011FE48[i]) {
                case 0:
                case 1:
                    gSPDisplayList(gfxCtx->polyXlu.p++, D_04037730);
                    break;
                case 2:
                    gSPDisplayList(gfxCtx->polyXlu.p++, D_04037798);
                    break;
            }
        }

        alphaScale = cosAngle - (1.5f - cosAngle);
        if (arg8 != 0) {
            if (alphaScale > 0.0f) {
                gfxCtx->polyXlu.p = func_800937C0(gfxCtx->polyXlu.p);

                alpha = arg7 / 10.0f;
                if (alpha > 1.0f) {
                    alpha = 1.0f;
                }
                alpha *= arg8;
                if (alpha < 0.0f) {
                    alpha = 0.0f;
                }

                fogAlpha = (996 - globalCtx->lightCtx.fogNear) / 50.0f;
                if (fogAlpha > 1.0f) {
                    fogAlpha = 1.0f;
                }
                alpha *= 1.0f - fogAlpha;

                gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_DISABLE);
                gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);

                if (!isOffScreen) {
                    Math_SmoothScaleMaxMinF(&envCtx->unk_84, alpha * alphaScale, 0.5f, 50.0f, 0.1f);
                } else {
                    Math_SmoothScaleMaxMinF(&envCtx->unk_84, 0.0f, 0.5f, 50.0f, 0.1f);
                }

                temp = arg7 / 120.0f;
                if (temp < 0.0f) {
                    temp = 0.0f;
                }
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, (u8)(temp * 75.0f) + 180, (u8)(temp * 155.0f) + 100,
                                envCtx->unk_84);
                gDPFillRectangle(gfxCtx->polyXlu.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
            } else {
                envCtx->unk_84 = 0.0f;
            }
        }
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_kankyo.c", 2750);
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
// minor instruction/register/stack differences
void func_80074704(GlobalContext* globalCtx, View* view, GraphicsContext* _gfxCtx) {
    s16 i;
    u8 j;
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
    Vec3f unk_8011FE70 = { 0.0f, 0.0f, 0.0f };
    Vec3f unk_8011FE7C = { 0.0f, 0.0f, 0.0f };
    Actor* actor = globalCtx->actorCtx.actorList[2].first;
    GraphicsContext* gfxCtx = _gfxCtx;
    Gfx* dispRefs[4];
    (void)unk_8011FE70;
    (void)unk_8011FE7C;

    if (globalCtx->cameraPtrs[0]->unk_14C & 0x100 || globalCtx->envCtx.unk_EE[2] != 0) {
        return;
    }

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_kankyo.c", 2799);

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
        gDPPipeSync(gfxCtx->polyXlu.p++);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 150, 255, 255, 30);
        gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0x14);
    }

    for (i = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
        vec.x = Math_Rand_ZeroOne();
        vec.y = Math_Rand_ZeroOne();
        vec.z = Math_Rand_ZeroOne();
        Matrix_Translate((vec.x - 0.7f) * 100.0f + x50, (vec.y - 0.7f) * 100.0f + y50, (vec.z - 0.7f) * 100.0f + z50,
                         MTXMODE_NEW);
        vec.x = globalCtx->envCtx.unk_A8.x;
        vec.y = globalCtx->envCtx.unk_A8.y;
        vec.z = globalCtx->envCtx.unk_A8.z;
        tempY = 500.0f + Math_Rand_ZeroOne() * 200.0f + vec.y;
        gSPMatrix(gfxCtx->polyXlu.p++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        rotX = atan2f(sqrtf(SQ(vec.x) + SQ(vec.z)), -tempY);
        rotY = atan2f(vec.z, vec.x);
        Matrix_RotateY(-rotY, MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2 - rotX, MTXMODE_APPLY);
        Matrix_Scale(0.4f, 1.2f, 0.4f, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2887),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, &D_04048160);
    }

    if (actor->posRot.pos.y < view->eye.y) {
        for (i = 0, j = 0; i < globalCtx->envCtx.unk_EE[1]; i++) {
            if (j == 0) {
                func_80093D84(gfxCtx);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 155, 155, 155, 0);
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, 120);
                j++;
            }
            Matrix_Translate(func_800746DC() * 280.0f + x280, actor->posRot.pos.y + 2.0f,
                             func_800746DC() * 280.0f + z280, MTXMODE_NEW);
            if ((gSaveContext.linkAge == 0 && actor->posRot.pos.y + 2.0f - view->eye.y > -48.0f) ||
                (gSaveContext.linkAge != 0 && actor->posRot.pos.y + 2.0f - view->eye.y > -30.0f)) {
                Matrix_Scale(0.02f, 0.02f, 0.02f, MTXMODE_APPLY);
            } else {
                Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
            }
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_kankyo.c", 2940),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, &D_0401A0B0);
        }
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_kankyo.c", 2946);
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

void func_80074D6C(GlobalContext* globalCtx) {
    if ((globalCtx->skyboxId != 0 && globalCtx->lightCtx.fogNear < 980) || globalCtx->skyboxId == 29) {
        f32 alpha;
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3032);

        func_800938B4(globalCtx->state.gfxCtx);
        alpha = (1000 - globalCtx->lightCtx.fogNear) * 0.02f;
        if (globalCtx->skyboxId == 29) {
            alpha = 1.0f;
        }
        if (alpha > 1.0f) {
            alpha = 1.0f;
        }
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, globalCtx->lightCtx.fogColor[0], globalCtx->lightCtx.fogColor[1],
                        globalCtx->lightCtx.fogColor[2], 255.0f * alpha);
        gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3043);
    }

    if (globalCtx->envCtx.unk_E9 != 0) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3048);

        func_800938B4(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, globalCtx->envCtx.unk_EA[0], globalCtx->envCtx.unk_EA[1],
                        globalCtx->envCtx.unk_EA[2], globalCtx->envCtx.unk_EA[3]);
        gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3056);
    }
}

void func_80074FF4(GlobalContext* globalCtx, u8 r, u8 g, u8 b, u8 a) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3069);

    func_800938B4(globalCtx->state.gfxCtx);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, r, g, b, a);
    gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3079);
}

void func_800750C0(GlobalContext* globalCtx) {
    if (globalCtx->envCtx.lightning != 0) {
        switch (D_8015FD70.unk_00) {
            case 0:
                if (Math_Rand_ZeroOne() < 0.1f) {
                    D_8015FD70.unk_08 += 50.0f;
                }
                D_8015FD70.unk_08 += Math_Rand_ZeroOne();
                if (D_8015FD70.unk_08 > 500.0f) {
                    D_8015FD70.red = 200;
                    D_8015FD70.green = 200;
                    D_8015FD70.blue = 255;
                    D_8015FD70.unk_04 = 200;
                    D_8015FD70.unk_08 = 0.0f;
                    func_800753C4(globalCtx, (u8)(Math_Rand_ZeroOne() * 2.9f) + 1);
                    D_8015FD7C = 0;
                    D_8015FD70.unk_00++;
                }
                break;
            case 1:
                D_8015FD70.red = 200;
                D_8015FD70.green = 200;
                D_8015FD70.blue = 255;
                globalCtx->envCtx.unk_8C[0][0] += 80;
                globalCtx->envCtx.unk_8C[0][1] += 80;
                globalCtx->envCtx.unk_8C[0][2] += 100;
                D_8015FD7C += 100;
                if (D_8015FD7C >= D_8015FD70.unk_04) {
                    func_800F6D58(15, 0, 0);
                    D_8015FD70.unk_00++;
                    D_8015FD70.unk_04 = 0;
                }
                break;
            case 2:
                if (globalCtx->envCtx.unk_8C[0][0] > 0) {
                    globalCtx->envCtx.unk_8C[0][0] -= 10;
                    globalCtx->envCtx.unk_8C[0][1] -= 10;
                }
                if (globalCtx->envCtx.unk_8C[0][2] > 0) {
                    globalCtx->envCtx.unk_8C[0][2] -= 10;
                }
                D_8015FD7C -= 10;
                if (D_8015FD70.unk_04 >= D_8015FD7C) {
                    globalCtx->envCtx.unk_8C[0][0] = 0;
                    globalCtx->envCtx.unk_8C[0][1] = 0;
                    globalCtx->envCtx.unk_8C[0][2] = 0;
                    D_8015FD70.unk_00 = 0;
                    if (globalCtx->envCtx.lightning == 2) {
                        globalCtx->envCtx.lightning = 0;
                    }
                }
                break;
        }
    }

    if (D_8015FD70.unk_00 != 0) {
        func_80074FF4(globalCtx, D_8015FD70.red, D_8015FD70.green, D_8015FD70.blue, D_8015FD7C);
    }
}

void func_800753C4(GlobalContext* globalCtx, u8 max) {
    s16 count = 0;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_8015FD10); i++) {
        if (D_8015FD10[i].unk_00 == 0xFF) {
            D_8015FD10[i].unk_00 = 0;
            if (++count >= max) {
                break;
            }
        }
    }
}

// draw lightning
void func_8007542C(GlobalContext* globalCtx, UNK_TYPE unused) {
    static void* D_8011FEA0[] = { &D_04029F30, &D_0402A530, &D_0402AB30, &D_0402B130, &D_0402B730,
                                  &D_0402BD30, &D_0402C330, &D_0402C930, NULL };
    s16 i;
    f32 dx, dz, x, z;
    s32 pad[2];
    Vec3f unused_8011FE88 = { 0.0f, 0.0f, 0.0f };
    Vec3f unused_8011FE94 = { 0.0f, 0.0f, 0.0f };
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3253);

    for (i = 0; i < ARRAY_COUNT(D_8015FD10); i++) {
        switch (D_8015FD10[i].unk_00) {
            case 0:
                dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
                x = dx / sqrtf(SQ(dx) + SQ(dz));
                z = dz / sqrtf(SQ(dx) + SQ(dz));
                D_8015FD10[i].unk_10.x = globalCtx->view.eye.x + x * 9500.0f;
                D_8015FD10[i].unk_10.y = Math_Rand_ZeroOne() * 1000.0f + 4000.0f;
                D_8015FD10[i].unk_10.z = globalCtx->view.eye.z + z * 9500.0f;
                D_8015FD10[i].unk_04.x = (Math_Rand_ZeroOne() - 0.5f) * 5000.0f;
                D_8015FD10[i].unk_04.y = 0.0f;
                D_8015FD10[i].unk_04.z = (Math_Rand_ZeroOne() - 0.5f) * 5000.0f;
                D_8015FD10[i].unk_1E = 0;
                D_8015FD10[i].unk_1C = (Math_Rand_ZeroOne() - 0.5f) * 40.0f;
                D_8015FD10[i].unk_1D = (Math_Rand_ZeroOne() - 0.5f) * 40.0f;
                D_8015FD10[i].unk_1F = 3 * (i + 1);
                D_8015FD10[i].unk_00++;
                break;
            case 1:
                if (--D_8015FD10[i].unk_1F <= 0) {
                    D_8015FD10[i].unk_00++;
                }
                break;
            case 2:
                if (D_8015FD10[i].unk_1E < 7) {
                    D_8015FD10[i].unk_1E++;
                } else {
                    D_8015FD10[i].unk_00 = 0xFF;
                }
                break;
        }
        if (D_8015FD10[i].unk_00 == 2) {
            Matrix_Translate(D_8015FD10[i].unk_10.x + D_8015FD10[i].unk_04.x,
                             D_8015FD10[i].unk_10.y + D_8015FD10[i].unk_04.y,
                             D_8015FD10[i].unk_10.z + D_8015FD10[i].unk_04.z, MTXMODE_NEW);
            Matrix_RotateX(D_8015FD10[i].unk_1C * (M_PI / 180.0f), MTXMODE_APPLY);
            Matrix_RotateZ(D_8015FD10[i].unk_1D * (M_PI / 180.0f), MTXMODE_APPLY);
            Matrix_Scale(22.0f, 100.0f, 22.0f, MTXMODE_APPLY);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, 128);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 255, 255, 128);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_kankyo.c", 3333),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_8011FEA0[D_8015FD10[i].unk_1E]));
            func_80094C50(globalCtx->state.gfxCtx);
            gSPMatrix(gfxCtx->polyXlu.p++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, &D_0402CF30);
        }
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_kankyo.c", 3353);
}

#ifdef NON_MATCHING
// trivial register differences
// using a temp for seq index fixes things mostly but it looks fake
void func_800758AC(GlobalContext* globalCtx) {

    globalCtx->envCtx.unk_E0 = 0xFF;

    // both lost woods exits on the bridge from kokiri to hyrule field
    if ((0, gSaveContext.entranceIndex) == 0x4DE || (0, gSaveContext.entranceIndex) == 0x5E0) {
        func_800F6FB4(4);
    } else if ((0, gSaveContext.unk_140E) != 0) {
        if (!func_80077600()) {
            Audio_SetBGM((0, gSaveContext.unk_140E));
        }
        gSaveContext.unk_140E = 0;
    } else {
        if (globalCtx->soundCtx.seqIndex == 0x7F) {
            if (globalCtx->soundCtx.nightSeqIndex == 19u) {
                return;
            }
            if ((0, gSaveContext.nightSeqIndex) != globalCtx->soundCtx.nightSeqIndex) {
                func_800F6FB4(globalCtx->soundCtx.nightSeqIndex);
            }
        } else if (globalCtx->soundCtx.nightSeqIndex == 19u) {
            osSyncPrintf("\n\n\nBGM設定game_play->sound_info.BGM=[%d] old_bgm=[%d]\n\n", globalCtx->soundCtx.seqIndex,
                         (0, gSaveContext.seqIndex)); // BGM Configuration

            if ((0, gSaveContext.seqIndex) != globalCtx->soundCtx.seqIndex) {
                func_800F5550(globalCtx->soundCtx.seqIndex);
            }
        } else if ((0, gSaveContext.dayTime) > 0x4AAA && (0, gSaveContext.dayTime) < 0xB71D) {
            if ((0, gSaveContext.seqIndex) != globalCtx->soundCtx.seqIndex) {
                func_800F5550(globalCtx->soundCtx.seqIndex);
            }
            globalCtx->envCtx.unk_E0 = 1;
        } else {
            if ((0, gSaveContext.nightSeqIndex) != globalCtx->soundCtx.nightSeqIndex) {
                func_800F6FB4((s32)globalCtx->soundCtx.nightSeqIndex);
            }
            if ((0, gSaveContext.dayTime) > 0xB71C && (0, gSaveContext.dayTime) < 0xCAAC) {
                globalCtx->envCtx.unk_E0 = 3;
            } else if ((0, gSaveContext.dayTime) > 0xCAAC || (0, gSaveContext.dayTime) < 0x4555) {
                globalCtx->envCtx.unk_E0 = 5;
            } else {
                globalCtx->envCtx.unk_E0 = 7;
            }
        }
    }
    osSyncPrintf("\n-----------------\n", (0, gSaveContext.unk_140E));
    osSyncPrintf("\n 強制ＢＧＭ=[%d]", (0, gSaveContext.unk_140E)); // Forced BGM
    osSyncPrintf("\n     ＢＧＭ=[%d]", globalCtx->soundCtx.seqIndex);
    osSyncPrintf("\n     エンブ=[%d]", globalCtx->soundCtx.nightSeqIndex); // Emblem?
    osSyncPrintf("\n     status=[%d]", globalCtx->envCtx.unk_E0);
    func_800F66C0(globalCtx->roomCtx.curRoom.echo);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kankyo/func_800758AC.s")
#endif

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
                func_800788CC(0x28AE);
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
            if (gSaveContext.dayTime < 0xCAAC && gSaveContext.dayTime > 0x4555) {
                gSaveContext.numDays++;
                gSaveContext.unk_18++;
                gSaveContext.dogIsLost = true;
                func_80078884(0x2813);
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

        func_80073A5C(globalCtx, &globalCtx->envCtx, &globalCtx->view, globalCtx->state.gfxCtx, pos, D_8015FD04,
                      D_8015FD06, D_8015FD08, D_8015FD0C, 0);
    }
}

void func_80075F14(GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    D_8015FDAE = 0;

    Lights_PointNoGlowSetInfo(&D_8015FD88, (s16)player->actor.posRot.pos.x - 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z - 10.0f, 0, 0, 0,
                              255);
    D_8015FD84 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &D_8015FD88);

    Lights_PointNoGlowSetInfo(&D_8015FDA0, (s16)player->actor.posRot.pos.x + 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f, 0, 0, 0,
                              0xFF);
    D_8015FD98 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &D_8015FDA0);
}

void func_800760F4(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 i;

    Lights_PointNoGlowSetInfo(&D_8015FD88, (s16)player->actor.posRot.pos.x - 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z - 10.0f,
                              D_8015FDAE, D_8015FDAE, D_8015FDAE, 255);
    Lights_PointNoGlowSetInfo(&D_8015FDA0, (s16)player->actor.posRot.pos.x + 10.0f,
                              (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f,
                              D_8015FDAE, D_8015FDAE, D_8015FDAE, 255);

    if (D_8015FDAE < 254) {
        D_8015FDAE += 2;
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
        globalCtx->envCtx.unk_E2[3] = D_8015FDAE;
    }
}

void func_800763A8(GlobalContext* globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorList[2].first;
    s16 i;

    if (D_8015FDAE >= 3) {
        D_8015FDAE -= 3;
    } else {
        D_8015FDAE = 0;
    }

    if (D_8015FDAE == 1) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, D_8015FD84);
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, D_8015FD98);
    } else if (D_8015FDAE >= 2) {
        Lights_PointNoGlowSetInfo(&D_8015FD88, (s16)actor->posRot.pos.x - 10.0f, (s16)actor->posRot.pos.y + 10.0f,
                                  (s16)actor->posRot.pos.z - 10.0f, D_8015FDAE, D_8015FDAE, D_8015FDAE, 0xFF);
        Lights_PointNoGlowSetInfo(&D_8015FDA0, (s16)actor->posRot.pos.x + 10.0f, (s16)actor->posRot.pos.y + 10.0f,
                                  (s16)actor->posRot.pos.z + 10.0f, D_8015FDAE, D_8015FDAE, D_8015FDAE, 0xFF);
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
        globalCtx->envCtx.unk_E2[3] = D_8015FDAE;
        if (D_8015FDAE == 0) {
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
void func_80076934(GlobalContext* globalCtx, u8 arg1) {
    static char D_8011FEC4[] = { 0xD2, 0x9C, 0x55, 0xFF, 0xC8, 0x64, 0xE1, 0xA0, 0x32, 0x69, 0x5A, 0x28 };
    static char D_8011FED0[] = { 0x9B, 0x6A, 0x23, 0xC8, 0x96, 0x32, 0xAA, 0x6E,
                                 0x00, 0x32, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00 };

    u8 unk_E7 = globalCtx->envCtx.unk_E7;
    u8 unk_E8 = globalCtx->envCtx.unk_E8;
    s32 v1;
    s32 a1;
    s32 v0;
    s32 t0;
    s32 t1;
    s32 t2;
    s32 t3;
    f32 f14;

    switch (arg1) {
        case 3:
            if (globalCtx->sceneNum == SCENE_SPOT13 && globalCtx->roomCtx.curRoom.num == 0) {
                if (unk_E8 > 0x80) {
                    a1 = 0;
                    v1 = 0xFF;
                } else {
                    a1 = 0;
                    v1 = unk_E8 >> 1;
                }
            } else {
                a1 = 0x80;
                v1 = globalCtx->state.frames & 0x7F;
                if (v1 > 0x40) {
                    v1 = 0x80 - v1;
                }
                v1 += 0x49;
            }
            break;
        case 1:
            v1 = 0xFF;
            if (unk_E7 >= 0xFF) {
                a1 = 0xFF;
            } else {
                a1 = 0x80;
            }
            break;
        case 2:
            a1 = 0x80;
            if (unk_E8 > 0x80) {
                v1 = 0xFF;
            } else {
                v1 = globalCtx->state.frames & 0x7F;
                if (v1 > 0x40) {
                    v1 = 0x80 - v1;
                }
                v1 += 0x49;
                if (v1 >= unk_E7 && v1 != 0xFF) {
                    globalCtx->envCtx.unk_E6 = 3;
                }
            }
            break;
        case 4:
            a1 = 0;
            if (unk_E8 > 0x80) {
                v1 = 0xFF;
            } else {
                v1 = unk_E8 >> 1;
            }
            if (unk_E7 == 0) {
                globalCtx->envCtx.unk_E6 = 0;
            }
            break;
    }

    if (ABS(unk_E7 - v1) < 9) {
        t0 = v1;
    } else if (v1 < unk_E7) {
        t0 = v1 - 9;
    } else {
        t0 = v1 + 9;
    }

    if (ABS(unk_E8 - a1) < 9) {
        t1 = a1;
    } else if (a1 < unk_E7) {
        t1 = a1 - 9;
    } else {
        t1 = a1 + 9;
    }

    globalCtx->envCtx.unk_E7 = t0;
    globalCtx->envCtx.unk_E8 = t1;
    f14 = CLAMP_MAX((512.0f - (t0 + t1)) * (3.0f / 128.0f), 6.0f);

    if (globalCtx->envCtx.unk_1E != 0 || globalCtx->envCtx.unk_BF != 0xFF) { // 7b00
        consume(f14);
    } else if (D_8011FDCC == D_8011FDD0) { // 7b2c
        consume(f14);
    } else { // 7b8c
        consume(f14);
    } // 7de4

    consume(t1, t2, t3);
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

s32 func_800775CC() {
    return gSaveContext.unk_18;
}

void func_800775D8() {
    gSaveContext.unk_18 = 0;
}

s32 func_800775E4() {
    return gSaveContext.numDays;
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

void func_800776E4(GlobalContext* globalCtx) {
    D_8011FB30 = 0;
    gSaveContext.cutsceneIndex = 0;
    gSaveContext.respawnFlag = -3;
    globalCtx->nextEntranceIndex = gSaveContext.respawn[1].entranceIndex;
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
