#include "global.h"
#include "vt.h"

typedef struct {
    /* 0x000 */ s32 unk_0;
    /* 0x004 */ s32 unk_4;
    /* 0x008 */ s32 unk_8;
    /* 0x00C */ s32 unk_C;
    /* 0x010 */ s32 unk_10;
} Struct_8012AF0C; // size = 0x14

extern Struct_8012AF0C D_8012AF0C[6];
extern Struct_8012AF0C D_8012AEBC[4];

typedef struct {
    union {
        struct {
            /* 0x000 */ s16 unk_0;
            /* 0x004 */ s16 unk_2;
            /* 0x008 */ s16 unk_4;
            /* 0x00C */ s16 unk_6;
            /* 0x010 */ s16 unk_8;
        };
        s16 arr[5];
    };
} Struct_8012AD20; // size = 0xA

extern u32 D_8012AC90[4];
extern u16 D_8012ACA0[2][0x20];
extern Struct_8012AD20 D_8012AD20;
extern s16 D_8012AD2C[9];
extern s16 D_8012AD40[0x40];

extern u32 D_8012ADC0[6];
extern u16 D_8012ADD8[0x20];
extern Struct_8012AD20 D_8012AE18;
extern Struct_8012AD20 D_8012AE24;
extern Struct_8012AD20 D_8012AE30;
extern s16 D_8012AE3C[0x40];

typedef struct {
    /* 0x00 */ u16 unk_0; // start
    /* 0x02 */ u16 unk_2; // end
    /* 0x04 */ u8 unk_4;
    /* 0x05 */ u8 unk_5; // img idx 1
    /* 0x06 */ u8 unk_6; // img idx 2
    /* 0x07 */ char unk_7[0x1];
} Struct_8011FC1C; // size = 0x8

extern Struct_8011FC1C D_8011FC1C[8][9];

typedef struct {
    /* 0x00 */ u32 unk_0; // start
    /* 0x04 */ u32 unk_4; // end
    /* 0x08 */ u32 unk_8; // pal start
    /* 0x0C */ u32 unk_C; // pal end
} Struct_8011FD3C;        // size = 0x10

extern Struct_8011FD3C D_8011FD3C[];

#ifdef NON_EQUIVALENT
// Loop unrolls are totally wrong. No idea what's happening.
// I believe this to be equivalent, but it causes large ROM shifts which seems to break the ocarina.
s32 func_800ADBB0(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7,
                  s32 arg8, s32 arg9) {
    // 42C
    // 428
    s32 sp424;
    s32 k;
    // 420
    s32 i;
    // 41C
    s32 j;
    // 418
    s16 phi_t1;
    // 414
    s16 phi_a2_4;
    s16 phi_a0_4;
    // 410
    s16 phi_t2_4;
    s16 phi_ra;
    // 40C
    s32 sp358[9 * 5];
    s32 sp2A4[9 * 5];
    s32 sp1F0[9 * 5];
    s32 sp13C[9 * 5];
    s32 sp88[9 * 5];

    switch (arg8) {
        case 0:
        case 2:
            for (i = 0; i < 9; i++) {
                for (j = 0; j < 5; j++) {
                    sp358[5 * i + j] = arg3 + j * arg6;
                    sp2A4[5 * i + j] = arg4 + i * arg7;
                    sp1F0[5 * i + j] = arg5;
                    sp13C[5 * i + j] = D_8012AD20.arr[j];
                    sp88[5 * i + j] = D_8012AD2C[i];
                }
            }
            break;
        case 1:
        case 3:
            for (i = 0; i < 9; i++) {
                for (j = 0; j < 5; j++) {
                    sp358[5 * i + j] = arg3;
                    sp2A4[5 * i + j] = arg4 + i * arg7;
                    sp1F0[5 * i + j] = arg5 + j * arg6;
                    sp13C[5 * i + j] = D_8012AD20.arr[j];
                    sp88[5 * i + j] = D_8012AD2C[i];
                }
            }
            break;
        case 4:
        case 5:
            for (i = 0; i < 9; i++) {
                for (j = 0; j < 5; j++) {
                    sp358[5 * i + j] = arg3 + j * arg6;
                    sp2A4[5 * i + j] = arg4;
                    sp1F0[5 * i + j] = arg5 + i * arg7;
                    sp13C[5 * i + j] = D_8012AD20.arr[j];
                    sp88[5 * i + j] = D_8012AD2C[i];
                }
            }
            break;
    }

    for (sp424 = 0; sp424 < 2; sp424++) {
        // Vtx* vtxArr = &roomVtx[arg2];
        skyboxCtx->unk_138 = skyboxCtx->dListBuf2[sp424 + arg9];

        for (i = 0; i < 0x20; i++) {
            u16 temp = D_8012ACA0[sp424][i];

            roomVtx[arg2 + i].v.ob[0] = ((s32*)sp358)[temp];
            roomVtx[arg2 + i].v.ob[1] = ((s32*)sp2A4)[temp];
            roomVtx[arg2 + i].v.ob[2] = ((s32*)sp1F0)[temp];
            roomVtx[arg2 + i].v.flag = 0;
            roomVtx[arg2 + i].v.tc[0] = ((s32*)sp13C)[temp];
            roomVtx[arg2 + i].v.tc[1] = ((s32*)sp88)[temp];
            roomVtx[arg2 + i].v.cn[1] = 0;
            roomVtx[arg2 + i].v.cn[2] = 0;
            roomVtx[arg2 + i].v.cn[0] = 255;
        }
        gSPVertex(skyboxCtx->unk_138++, &roomVtx[arg2], 32, 0);
        arg2 += i;
        gSPCullDisplayList(skyboxCtx->unk_138++, 0, 15);

        phi_a2_4 = 0;
        for (phi_t2_4 = 0, phi_ra = 0; phi_ra < 4; phi_ra++, phi_a2_4 += 0x1F) {
            for (phi_a0_4 = 0, phi_t1 = 0; phi_t1 < 4; phi_t1++, phi_t2_4+=4, phi_a0_4 += 0x3F) {
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[0] + D_8012AC90[arg8], 0,
                                 G_TX_LOADTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 256, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x3F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->unk_138++, D_8012AD40[phi_t2_4 + 1], D_8012AD40[phi_t2_4 + 2],
                               D_8012AD40[phi_t2_4 + 3], D_8012AD40[phi_t2_4 + 0], 3);
            }
        }
        gSPEndDisplayList(skyboxCtx->unk_138++);
    }
    return arg2;
}
#else
s32 func_800ADBB0(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, s32,
                  s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_vr_box/func_800ADBB0.s")
#endif

#ifdef NON_EQUIVALENT
s32 func_800AE2C0(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7,
                  s32 arg8) {
    s32 i;
    s32 j;
    s16 sp320;
    s16 sp31E;
    s16 phi_t1;
    s16 phi_a2_4;
    s16 phi_a0_4;
    s16 phi_t2_4;
    s16 phi_ra;
    s32 sp2B4[5][5];
    s32 sp250[5][5];
    s32 sp1EC[5][5];
    s32 sp188[5][5];
    s32 sp124[5][5];

    switch (arg8) {
        case 0:
        case 1:
            for (i = 0; i < 5; i++) {
                for (j = 0; j < 5; j++) {
                    sp2B4[i][j] = arg3 + j * arg6;
                    sp250[i][j] = arg4 + i * arg7;
                    sp1EC[i][j] = arg5;
                    sp188[i][j] = D_8012AE18.arr[j];
                    sp124[i][j] = D_8012AE30.arr[i];
                }
            }
            break;
        case 2:
        case 3:
            for (i = 0; i < 5; i++) {
                for (j = 0; j < 5; j++) {
                    sp2B4[i][j] = arg3;
                    sp250[i][j] = arg4 + i * arg7;
                    sp1EC[i][j] = arg5 + j * arg6;
                    sp188[i][j] = D_8012AE18.arr[j];
                    sp124[i][j] = D_8012AE30.arr[i];
                }
            }
            break;
        case 4:
        case 5:
            for (i = 0; i < 5; i++) {
                for (j = 0; j < 5; j++) {
                    sp2B4[i][j] = arg3 + j * arg6;
                    sp250[i][j] = arg4;
                    sp1EC[i][j] = arg5 + i * arg7;
                    sp188[i][j] = D_8012AE18.arr[j];
                    sp124[i][j] = D_8012AE30.arr[i];
                }
            }
            break;
    }
    skyboxCtx->unk_138 = &skyboxCtx->dListBuf2[2 * arg8];

    for (i = 0; i < 0x20; i++) {
        u16 temp = D_8012ADD8[i];

        roomVtx[arg2 + i].v.ob[0] = ((s32*)sp2B4)[temp];
        roomVtx[arg2 + i].v.ob[1] = ((s32*)sp250)[temp];
        roomVtx[arg2 + i].v.ob[2] = ((s32*)sp1EC)[temp];
        roomVtx[arg2 + i].v.flag = 0;
        roomVtx[arg2 + i].v.tc[0] = ((s32*)sp188)[temp];
        roomVtx[arg2 + i].v.tc[1] = ((s32*)sp124)[temp];
        roomVtx[arg2 + i].v.cn[1] = 0;
        roomVtx[arg2 + i].v.cn[2] = 0;
        roomVtx[arg2 + i].v.cn[0] = 255;
    }
    gSPVertex(skyboxCtx->unk_138++, &roomVtx[arg2], 32, 0);
    arg2 += i;
    gSPCullDisplayList(skyboxCtx->unk_138++, 0, 15);

    if ((arg8 == 4) || (arg8 == 5)) {
        phi_a2_4 = 0;
        for (phi_t2_4 = 0, phi_ra = 0; phi_ra < 4; phi_ra++, phi_a2_4 += 0x1F) {
            for (phi_a0_4 = 0, phi_t1 = 0; phi_t1 < 4; phi_t1++, phi_a0_4 += 0x1F) {
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[0] + D_8012ADC0[arg8], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[1] + D_8012ADC0[arg8], 0x80,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->unk_138++, D_8012AE3C[phi_t2_4 + 1], D_8012AE3C[phi_t2_4 + 2],
                               D_8012AE3C[phi_t2_4 + 3], D_8012AE3C[phi_t2_4 + 0], 3);
                phi_t2_4 += 4;
            }
        }
    } else {
        phi_a2_4 = 0;
        for (phi_t2_4 = 0, phi_ra = 0; phi_ra < 2; phi_ra++, phi_a2_4 += 0x1F) {
            for (phi_a0_4 = 0, phi_t1 = 0; phi_t1 < 4; phi_t1++, phi_a0_4 += 0x1F) {
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[0] + D_8012ADC0[arg8], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[1] + D_8012ADC0[arg8], 0x80,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->unk_138++, D_8012AE3C[phi_t2_4 + 1], D_8012AE3C[phi_t2_4 + 2],
                               D_8012AE3C[phi_t2_4 + 3], D_8012AE3C[phi_t2_4 + 0], 3);

                phi_t2_4 += 4;
            }
        }
        phi_a2_4 -= 0x1F;
        for (phi_t2_4 = 0, phi_ra = 0; phi_ra < 2; phi_ra++, phi_a2_4 -= 0x1F) {
            for (phi_a0_4 = 0, phi_t1 = 0; phi_t1 < 4; phi_t1++, phi_a0_4 += 0x1F) {
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[0] + D_8012ADC0[arg8], 0,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gDPLoadMultiTile(skyboxCtx->unk_138++, (u32)skyboxCtx->staticSegments[1] + D_8012ADC0[arg8], 0x80,
                                 G_TX_RENDERTILE, G_IM_FMT_CI, G_IM_SIZ_8b, 128, 0, phi_a0_4, phi_a2_4, phi_a0_4 + 0x1F,
                                 phi_a2_4 + 0x1F, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                gSP1Quadrangle(skyboxCtx->unk_138++, D_8012AE3C[phi_t2_4 + 1], D_8012AE3C[phi_t2_4 + 2],
                               D_8012AE3C[phi_t2_4 + 3], D_8012AE3C[phi_t2_4 + 0], 3);
                phi_t2_4 += 4;
            }
        }
    }
    gSPEndDisplayList(skyboxCtx->unk_138++);
    return arg2;
}
#else
s32 func_800AE2C0(SkyboxContext* skyboxCtx, Vtx* roomVtx, s32, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_vr_box/func_800AE2C0.s")
#endif

void func_800AEFC8(SkyboxContext* skyboxCtx, s16 skyboxId) {
    s32 i;
    s32 j;
    s32 phi_s3 = 0;

    if (skyboxId == SKYBOX_BAZAAR || (skyboxId > SKYBOX_HOUSE_KAKARIKO && skyboxId <= SKYBOX_BOMBCHU_SHOP)) {
        for (j = 0, i = 0; i < 2; i++, j += 2) {
            phi_s3 = func_800ADBB0(skyboxCtx, skyboxCtx->roomVtx, phi_s3, D_8012AEBC[i].unk_0, D_8012AEBC[i].unk_4,
                                   D_8012AEBC[i].unk_8, D_8012AEBC[i].unk_C, D_8012AEBC[i].unk_10, i, j);
        }
    } else if (skyboxCtx->unk_140 == 2) {
        for (j = 0, i = 0; i < 3; i++, j += 2) {
            phi_s3 = func_800ADBB0(skyboxCtx, skyboxCtx->roomVtx, phi_s3, D_8012AEBC[i].unk_0, D_8012AEBC[i].unk_4,
                                   D_8012AEBC[i].unk_8, D_8012AEBC[i].unk_C, D_8012AEBC[i].unk_10, i, j);
        }
    } else {
        for (j = 0, i = 0; i < 4; i++, j += 2) {
            phi_s3 = func_800ADBB0(skyboxCtx, skyboxCtx->roomVtx, phi_s3, D_8012AEBC[i].unk_0, D_8012AEBC[i].unk_4,
                                   D_8012AEBC[i].unk_8, D_8012AEBC[i].unk_C, D_8012AEBC[i].unk_10, i, j);
        }
    }
}

void func_800AF178(SkyboxContext* skyboxCtx, s32 arg1) {
    s32 phi_s2 = 0;
    s32 i;

    for (i = 0; i < arg1; i++) {
        phi_s2 = func_800AE2C0(skyboxCtx, skyboxCtx->roomVtx, phi_s2, D_8012AF0C[i].unk_0, D_8012AF0C[i].unk_4,
                               D_8012AF0C[i].unk_8, D_8012AF0C[i].unk_C, D_8012AF0C[i].unk_10, i);
    }
}

#ifdef NON_MATCHING
// Some reoderings at the end of the first case, regalloc differences
void Skybox_Setup(GlobalContext* globalCtx, SkyboxContext* skyboxCtx, s16 skyboxId) {
    u32 size;
    s16 i;
    u8 sp41; // imageIdx
    u8 sp40; // imageIdx2
    u32 start;
    s32 phi_v1;

    switch (skyboxId) {
        case SKYBOX_NORMAL_SKY:
            phi_v1 = 0;
            if (gSaveContext.unk_13C3 != 0 && gSaveContext.sceneSetupIndex < 4 && D_8011FB30 > 0 && D_8011FB30 < 6) {
                phi_v1 = 1;
            }

            for (i = 0; i < 9; i++) {
                if (gSaveContext.environmentTime >= D_8011FC1C[phi_v1][i].unk_0 &&
                    (gSaveContext.environmentTime < D_8011FC1C[phi_v1][i].unk_2 ||
                     D_8011FC1C[phi_v1][i].unk_2 == 0xFFFF)) {
                    globalCtx->envCtx.unk_10 = sp41 = D_8011FC1C[phi_v1][i].unk_5;
                    globalCtx->envCtx.unk_11 = sp40 = D_8011FC1C[phi_v1][i].unk_6;
                    if (D_8011FC1C[phi_v1][i].unk_4 != 0) {
                        globalCtx->envCtx.unk_13 =
                            func_8006F93C(D_8011FC1C[phi_v1][i].unk_2, D_8011FC1C[phi_v1][i].unk_0,
                                          ((void)0, gSaveContext.environmentTime)) *
                            255.0f;
                    } else {
                        globalCtx->envCtx.unk_13 = 0;
                    }
                    break;
                }
            }

            size = D_8011FD3C[sp41].unk_4 - D_8011FD3C[sp41].unk_0;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1054);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1055);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], D_8011FD3C[sp41].unk_0, size, "../z_vr_box.c", 1058);

            size = D_8011FD3C[sp40].unk_4 - D_8011FD3C[sp40].unk_0;
            skyboxCtx->staticSegments[1] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1060);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1061);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[1], D_8011FD3C[sp40].unk_0, size, "../z_vr_box.c", 1064);

            // reorderings in the rest of this case

            if (((u8)(sp41 & 4) >> 2) != (sp41 & 1)) {
                size = D_8011FD3C[sp41].unk_C - D_8011FD3C[sp41].unk_8;
                skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size * 2, "../z_vr_box.c", 1072);

                ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                       1073);

                DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], D_8011FD3C[sp41].unk_8, size, "../z_vr_box.c", 1075);
                DmaMgr_SendRequest1((u32)skyboxCtx->staticSegments[2] + size, D_8011FD3C[sp40].unk_8, size,
                                    "../z_vr_box.c", 1077);
            } else {
                size = D_8011FD3C[sp41].unk_C - D_8011FD3C[sp41].unk_8;
                skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size * 2, "../z_vr_box.c", 1085);

                ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                       1086);

                DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], D_8011FD3C[sp40].unk_8, size, "../z_vr_box.c", 1088);
                DmaMgr_SendRequest1((u32)skyboxCtx->staticSegments[2] + size, D_8011FD3C[sp41].unk_8, size,
                                    "../z_vr_box.c", 1090);
            }
            break;

        case SKYBOX_BAZAAR:
            skyboxCtx->unk_140 = 1;

            start = _vr_SP1a_staticSegmentRomStart;
            size = _vr_SP1a_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1127);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1128);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1129);

            start = _vr_SP1a_pal_staticSegmentRomStart;
            size = _vr_SP1a_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1132);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1133);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1134);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_OVERCAST_SUNSET:
            start = _vr_cloud2_staticSegmentRomStart;
            size = _vr_cloud2_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1155);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1156);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1159);

            skyboxCtx->staticSegments[1] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1162);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1163);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[1], start, size, "../z_vr_box.c", 1166);

            start = _vr_cloud2_pal_staticSegmentRomStart;
            size = _vr_cloud2_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size * 2, "../z_vr_box.c", 1170);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1171);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1173);
            DmaMgr_SendRequest1((u32)skyboxCtx->staticSegments[2] + size, start, size, "../z_vr_box.c", 1175);
            break;
        case SKYBOX_MARKET_ADULT:
            skyboxCtx->unk_140 = 1;

            start = _vr_RUVR_staticSegmentRomStart;
            size = _vr_RUVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1182);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1183);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1184);

            start = _vr_RUVR_pal_staticSegmentRomStart;
            size = _vr_RUVR_pal_staticSegmentRomEnd - start;
            osSyncPrintf("ＳＩＺＥ = %d\n", size);

            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1188);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1189);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1190);
            break;
        case SKYBOX_CUTSCENE_MAP:
            start = _vr_holy0_staticSegmentRomStart;
            size = _vr_holy0_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1196);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1197);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1200);

            start = _vr_holy1_staticSegmentRomStart;
            size = _vr_holy1_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[1] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1203);
            ASSERT(skyboxCtx->staticSegments[1] != NULL, "vr_box->vr_box_staticSegment[1] != NULL", "../z_vr_box.c",
                   1204);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[1], start, size, "../z_vr_box.c", 1207);

            start = _vr_holy0_pal_staticSegmentRomStart;
            size = _vr_holy0_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size * 2, "../z_vr_box.c", 1211);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1212);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1214);
            DmaMgr_SendRequest1((u32)skyboxCtx->staticSegments[2] + size, _vr_holy1_pal_staticSegmentRomStart, size,
                                "../z_vr_box.c", 1216);
            break;
        case SKYBOX_HOUSE_LINK:
            skyboxCtx->unk_140 = 1;

            start = _vr_LHVR_staticSegmentRomStart;
            size = _vr_LHVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1226);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1227);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1228);

            start = _vr_LHVR_pal_staticSegmentRomStart;
            size = _vr_LHVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1231);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1232);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1233);
            break;
        case SKYBOX_MARKET_CHILD_DAY:
            skyboxCtx->unk_140 = 1;

            start = _vr_MDVR_staticSegmentRomStart;
            size = _vr_MDVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1257);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1258);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1259);

            start = _vr_MDVR_pal_staticSegmentRomStart;
            size = _vr_MDVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1262);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1263);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1264);
            break;
        case SKYBOX_MARKET_CHILD_NIGHT:
            skyboxCtx->unk_140 = 1;

            start = _vr_MNVR_staticSegmentRomStart;
            size = _vr_MNVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1271);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1272);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1273);

            start = _vr_MNVR_pal_staticSegmentRomStart;
            size = _vr_MNVR_pal_staticSegmentRomEnd - start;
            osSyncPrintf("ＳＩＺＥ = %d\n", size);

            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1277);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1278);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1279);
            break;
        case SKYBOX_HAPPY_MASK_SHOP:
            skyboxCtx->unk_140 = 1;

            start = _vr_FCVR_staticSegmentRomStart;
            size = _vr_FCVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1286);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1287);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1288);

            start = _vr_FCVR_pal_staticSegmentRomStart;
            size = _vr_FCVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1291);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1292);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1293);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_HOUSE_KNOW_IT_ALL_BROTHERS:
            skyboxCtx->unk_140 = 1;

            start = _vr_KHVR_staticSegmentRomStart;
            size = _vr_KHVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1301);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1302);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1303);

            start = _vr_KHVR_pal_staticSegmentRomStart;
            size = _vr_KHVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1306);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1307);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1308);
            break;
        case SKYBOX_HOUSE_OF_TWINS:
            skyboxCtx->unk_140 = 2;

            start = _vr_K3VR_staticSegmentRomStart;
            size = _vr_K3VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1331);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1332);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1333);

            start = _vr_K3VR_pal_staticSegmentRomStart;
            size = _vr_K3VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1336);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1337);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1338);
            break;
        case SKYBOX_STABLES:
            skyboxCtx->unk_140 = 1;

            start = _vr_MLVR_staticSegmentRomStart;
            size = _vr_MLVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1345);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1346);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1347);

            start = _vr_MLVR_pal_staticSegmentRomStart;
            size = _vr_MLVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1350);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1351);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1352);
            break;
        case SKYBOX_HOUSE_KAKARIKO:
            skyboxCtx->unk_140 = 1;

            start = _vr_KKRVR_staticSegmentRomStart;
            size = _vr_KKRVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1359);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1360);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1361);

            start = _vr_KKRVR_pal_staticSegmentRomStart;
            size = _vr_KKRVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1364);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1365);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1366);
            break;
        case SKYBOX_KOKIRI_SHOP:
            skyboxCtx->unk_140 = 1;

            start = _vr_KSVR_staticSegmentRomStart;
            size = _vr_KSVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1373);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1374);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1375);

            start = _vr_KSVR_pal_staticSegmentRomStart;
            size = _vr_KSVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1378);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1379);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1380);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_GORON_SHOP:
            skyboxCtx->unk_140 = 1;

            start = _vr_GLVR_staticSegmentRomStart;
            size = _vr_GLVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1405);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1406);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1407);

            start = _vr_GLVR_pal_staticSegmentRomStart;
            size = _vr_GLVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1410);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1411);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1412);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_ZORA_SHOP:
            skyboxCtx->unk_140 = 1;

            start = _vr_ZRVR_staticSegmentRomStart;
            size = _vr_ZRVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1420);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1421);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1422);

            start = _vr_ZRVR_pal_staticSegmentRomStart;
            size = _vr_ZRVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1425);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1426);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1427);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_POTION_SHOP_KAKARIKO:
            skyboxCtx->unk_140 = 1;

            start = _vr_DGVR_staticSegmentRomStart;
            size = _vr_DGVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1451);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1452);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1453);

            start = _vr_DGVR_pal_staticSegmentRomStart;
            size = _vr_DGVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1456);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1457);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1458);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_POTION_SHOP_MARKET:
            skyboxCtx->unk_140 = 1;

            start = _vr_ALVR_staticSegmentRomStart;
            size = _vr_ALVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1466);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1467);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1468);

            start = _vr_ALVR_pal_staticSegmentRomStart;
            size = _vr_ALVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1471);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1472);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1473);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_BOMBCHU_SHOP:
            skyboxCtx->unk_140 = 1;

            start = _vr_NSVR_staticSegmentRomStart;
            size = _vr_NSVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1481);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1482);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1483);

            start = _vr_NSVR_pal_staticSegmentRomStart;
            size = _vr_NSVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1486);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1487);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1488);
            skyboxCtx->rot.y = 0.8f;
            break;
        case SKYBOX_HOUSE_RICHARD:
            skyboxCtx->unk_140 = 1;

            start = _vr_IPVR_staticSegmentRomStart;
            size = _vr_IPVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1512);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1513);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1514);

            start = _vr_IPVR_pal_staticSegmentRomStart;
            size = _vr_IPVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1517);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1518);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1519);
            break;
        case SKYBOX_HOUSE_IMPA:
            skyboxCtx->unk_140 = 1;

            start = _vr_LBVR_staticSegmentRomStart;
            size = _vr_LBVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1526);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1527);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1528);

            start = _vr_LBVR_pal_staticSegmentRomStart;
            size = _vr_LBVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1531);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1532);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1533);
            break;
        case SKYBOX_TENT:
            skyboxCtx->unk_140 = 2;

            start = _vr_TTVR_staticSegmentRomStart;
            size = _vr_TTVR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1540);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1541);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1542);

            start = _vr_TTVR_pal_staticSegmentRomStart;
            size = _vr_TTVR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1545);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1546);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1547);
            break;
        case SKYBOX_HOUSE_MIDO:
            skyboxCtx->unk_140 = 2;

            start = _vr_K4VR_staticSegmentRomStart;
            size = _vr_K4VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1560);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1561);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1562);

            start = _vr_K4VR_pal_staticSegmentRomStart;
            size = _vr_K4VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1565);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1566);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1567);
            break;
        case SKYBOX_HOUSE_SARIA:
            skyboxCtx->unk_140 = 2;

            start = _vr_K5VR_staticSegmentRomStart;
            size = _vr_K5VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1574);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1575);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1576);

            start = _vr_K5VR_pal_staticSegmentRomStart;
            size = _vr_K5VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1579);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1580);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1581);
            break;
        case SKYBOX_HOUSE_ALLEY:
            skyboxCtx->unk_140 = 2;

            start = _vr_KR3VR_staticSegmentRomStart;
            size = _vr_KR3VR_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[0] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1588);
            ASSERT(skyboxCtx->staticSegments[0] != NULL, "vr_box->vr_box_staticSegment[0] != NULL", "../z_vr_box.c",
                   1589);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[0], start, size, "../z_vr_box.c", 1590);

            start = _vr_KR3VR_pal_staticSegmentRomStart;
            size = _vr_KR3VR_pal_staticSegmentRomEnd - start;
            skyboxCtx->staticSegments[2] = GameState_Alloc(&globalCtx->state, size, "../z_vr_box.c", 1593);
            ASSERT(skyboxCtx->staticSegments[2] != NULL, "vr_box->vr_box_staticSegment[2] != NULL", "../z_vr_box.c",
                   1594);

            DmaMgr_SendRequest1(skyboxCtx->staticSegments[2], start, size, "../z_vr_box.c", 1595);
            break;
        case SKYBOX_UNSET_27:
            break;
    }
}
#else
void Skybox_Setup(GlobalContext* globalCtx, SkyboxContext* skyboxCtx, s16 skyboxId);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_vr_box/Skybox_Setup.s")
#endif

void Skybox_Init(GlobalContext* globalCtx, SkyboxContext* skyboxCtx, s16 skyboxId) {
    skyboxCtx->unk_140 = 0;
    skyboxCtx->rot.x = 0.0f;
    skyboxCtx->rot.y = 0.0f;
    skyboxCtx->rot.z = 0.0f;

    Skybox_Setup(globalCtx, skyboxCtx, skyboxId);
    osSyncPrintf("\n\n\n＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\n\n\n"
                 "ＴＹＰＥ＝%d"
                 "\n\n\n＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊\n\n\n",
                 skyboxId);

    if (skyboxId != SKYBOX_NONE) {
        osSyncPrintf(VT_FGCOL(GREEN));

        if (skyboxCtx->unk_140 != 0) {
            skyboxCtx->dListBuf = GameState_Alloc(&globalCtx->state, 1200 * sizeof(Gfx), "../z_vr_box.c", 1636);
            ASSERT(skyboxCtx->dListBuf != NULL, "vr_box->dpList != NULL", "../z_vr_box.c", 1637);

            skyboxCtx->roomVtx = GameState_Alloc(&globalCtx->state, 256 * sizeof(Vtx), "../z_vr_box.c", 1639);
            ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1640);

            func_800AEFC8(skyboxCtx, skyboxId);
        } else {
            skyboxCtx->dListBuf = GameState_Alloc(&globalCtx->state, 1800 * sizeof(Gfx), "../z_vr_box.c", 1643);
            ASSERT(skyboxCtx->dListBuf != NULL, "vr_box->dpList != NULL", "../z_vr_box.c", 1644);

            if (skyboxId == SKYBOX_CUTSCENE_MAP) {
                skyboxCtx->roomVtx = GameState_Alloc(&globalCtx->state, 192 * sizeof(Vtx), "../z_vr_box.c", 1648);
                ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1649);

                func_800AF178(skyboxCtx, 6);
            } else {
                skyboxCtx->roomVtx = GameState_Alloc(&globalCtx->state, 160 * sizeof(Vtx), "../z_vr_box.c", 1653);
                ASSERT(skyboxCtx->roomVtx != NULL, "vr_box->roomVtx != NULL", "../z_vr_box.c", 1654);

                func_800AF178(skyboxCtx, 5);
            }
        }
        osSyncPrintf(VT_RST);
    }
}
