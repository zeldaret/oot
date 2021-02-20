#include "ultra64.h"
#include "global.h"

// external segments
extern u8 D_09006300[];
extern u8 D_0C000000[];
extern u8 D_0C001980[];
extern u8 D_0C001B80[];
extern u8 D_0C006C00[];
extern u8 D_0C006E00[];
extern u8 D_0C0083D8[];

void func_8081BB10(GlobalContext* globalCtx, GraphicsContext* gfxCtx) {
    static u64* D_8082A490[] = {
        0x09007E00,
        0x09008700,
        0x09009000,
    };
    static u64* D_8082A49C[] = {
        0x0D000000, 0x0D000600, 0x0D000C00, 0x0D001200, 0x0D001800,
        0x0D001E00, 0x0D002400, 0x0D002A00, 0x0D003000, 0x0D003600,
    };
    static u64* D_8082A4C4[] = {
        0x0C000000, 0x0C000C00, 0x0C000A80, 0x0C000900, 0x0C000780, 0x0C000600, 0x0C000480, 0x0C000300, 0x0C000180,
        0x0C000D80, 0x0C000F00, 0x0C001080, 0x0C001200, 0x0C001380, 0x0C001500, 0x0C001680, 0x0C001800,
    };
    static u16 D_8082A508[][3] = {
        { 0, 10, 31 },
        { 0, 25, 17 },
    };
    static s16 D_8082A514 = 0;
    static s16 D_8082A518 = 25;
    static s16 D_8082A51C = 17;
    static u16 D_8082A520 = 20;
    static u16 D_8082A524 = 0;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    s16 i;
    s16 j;
    s16 point;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    u16 rgba16;

    OPEN_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 123);

    if ((pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 0) && (pauseCtx->kscpPos == 1)) {
        pauseCtx->unk_260 = 0;
        point = pauseCtx->unk_218[1];

        if (pauseCtx->unk_238 == 0) {
            if (pauseCtx->stickRelX > 30) {
                if (pauseCtx->unk_222[1] != 0) {
                    func_8081F81C(globalCtx, 0xB);
                } else {
                    pauseCtx->unk_222[1] = 1;
                    pauseCtx->unk_218[1] = 0;
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_KEY_BOSS, gSaveContext.mapIndex)) {
                        pauseCtx->unk_218[1]++;
                        if (!CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                            pauseCtx->unk_218[1]++;
                            if (!CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
                                func_8081F81C(globalCtx, 0xB);
                            }
                        }
                    }
                }
            } else if (pauseCtx->stickRelX < -30) {
                if (pauseCtx->unk_222[1] == 0) {
                    func_8081F81C(globalCtx, 0xA);
                } else {
                    pauseCtx->unk_222[1] = 0;
                    pauseCtx->unk_218[1] = pauseCtx->unk_236;
                    osSyncPrintf("kscope->cursor_point=%d\n", pauseCtx->unk_218[1]);
                    R_MAP_TEX_INDEX = R_MAP_TEX_INDEX_BASE +
                                      gMapData->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->unk_218[1] - 3];
                    func_80826BA8(globalCtx);
                }
            }

            if (pauseCtx->unk_218[1] < 3) {
                if (pauseCtx->stickRelY > 30) {
                    if (pauseCtx->unk_218[1] != 0) {
                        for (i = pauseCtx->unk_218[1] - 1; i >= 0; i--) {
                            if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
                                pauseCtx->unk_218[1] = i;
                                break;
                            }
                        }
                    }
                } else {
                    if (pauseCtx->stickRelY < -30) {
                        if (pauseCtx->unk_218[1] != 2) {
                            for (i = pauseCtx->unk_218[1] + 1; i < 3; i++) {
                                if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
                                    pauseCtx->unk_218[1] = i;
                                    break;
                                }
                            }
                        }
                    }
                }
            } else {
                if (pauseCtx->stickRelY > 30) {
                    if (pauseCtx->unk_218[1] >= 4) {
                        for (i = pauseCtx->unk_218[1] - 4; i >= 0; i--) {
                            if ((gSaveContext.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
                                (CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex) &&
                                 (gMapData->floorID[interfaceCtx->unk_25A][i] != 0))) {
                                pauseCtx->unk_218[1] = i + 3;
                                break;
                            }
                        }
                    }
                } else if (pauseCtx->stickRelY < -30) {
                    if (pauseCtx->unk_218[1] != 10) {
                        for (i = pauseCtx->unk_218[1] - 2; i < 11; i++) {
                            if ((gSaveContext.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
                                (CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex) &&
                                 (gMapData->floorID[interfaceCtx->unk_25A][i] != 0))) {
                                pauseCtx->unk_218[1] = i + 3;
                                break;
                            }
                        }
                    }
                }
                i = R_MAP_TEX_INDEX;
                R_MAP_TEX_INDEX = R_MAP_TEX_INDEX_BASE +
                                  gMapData->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->unk_218[1] - 3];
                pauseCtx->unk_236 = pauseCtx->unk_218[1];
                if (i != R_MAP_TEX_INDEX) {
                    func_80826BA8(globalCtx);
                }
            }
        } else if (pauseCtx->unk_238 == 0xA) {
            if (pauseCtx->stickRelX > 30) {
                pauseCtx->unk_25C = 0;
                pauseCtx->unk_238 = 0;
                pauseCtx->unk_246[1] = pauseCtx->unk_218[1] = pauseCtx->unk_236;
                pauseCtx->unk_222[1] = 0;
                j = (pauseCtx->unk_246[1] * 4) + 0x48;
                func_80819E14(pauseCtx, j, pauseCtx->vtx_14C);
                Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        } else if (pauseCtx->stickRelX < -30) {
            pauseCtx->unk_25C = 0;
            pauseCtx->unk_238 = 0;
            pauseCtx->unk_222[1] = 1;
            pauseCtx->unk_218[1] = 0;
            if (!CHECK_DUNGEON_ITEM(DUNGEON_KEY_BOSS, gSaveContext.mapIndex)) {
                pauseCtx->unk_218[1]++;
                if (!CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                    pauseCtx->unk_218[1]++;
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
                        pauseCtx->unk_222[1] = 0;
                        pauseCtx->unk_246[1] = pauseCtx->unk_218[1] = pauseCtx->unk_236;
                        R_MAP_TEX_INDEX =
                            R_MAP_TEX_INDEX_BASE +
                            gMapData->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->unk_218[1] - 3];
                        func_80826BA8(globalCtx);
                    }
                }
            } else {
                pauseCtx->unk_246[1] = pauseCtx->unk_218[1];
            }

            osSyncPrintf("kscope->cursor_point====%d\n", pauseCtx->unk_218[1]);
            j = (pauseCtx->unk_246[1] * 4) + 0x48;
            func_80819E14(pauseCtx, j, pauseCtx->vtx_14C);
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        if (point != pauseCtx->unk_218[1]) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    if (pauseCtx->unk_238 == 0) {
        if (pauseCtx->unk_218[1] < 3) {
            pauseCtx->unk_23E[1] = pauseCtx->unk_218[1] + 0x74;
        } else {
            pauseCtx->unk_23E[1] = 999;
        }

        pauseCtx->unk_246[1] = pauseCtx->unk_218[1];

        j = (pauseCtx->unk_246[1] * 4) + 0x48;
        func_80819E14(pauseCtx, j, pauseCtx->vtx_14C);

        if (pauseCtx->unk_222[1] == 0) {
            pauseCtx->vtx_14C[j + 0].v.ob[0] = pauseCtx->vtx_14C[j + 2].v.ob[0] = pauseCtx->vtx_14C[j + 0].v.ob[0] - 2;
            pauseCtx->vtx_14C[j + 1].v.ob[0] = pauseCtx->vtx_14C[j + 3].v.ob[0] = pauseCtx->vtx_14C[j + 1].v.ob[0] + 4;
            pauseCtx->vtx_14C[j + 0].v.ob[1] = pauseCtx->vtx_14C[j + 1].v.ob[1] = pauseCtx->vtx_14C[j + 0].v.ob[1] + 2;
            pauseCtx->vtx_14C[j + 2].v.ob[1] = pauseCtx->vtx_14C[j + 3].v.ob[1] = pauseCtx->vtx_14C[j + 2].v.ob[1] - 4;
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x44], 16, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A49C[gSaveContext.mapIndex], G_IM_FMT_IA, G_IM_SIZ_8b, 96, 16, 0,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    for (i = 0, j = 4; i < 3; i++, j += 4) {
        if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A490[i], G_IM_FMT_RGBA, G_IM_SIZ_32b, 24, 24, 0,
                                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 200, pauseCtx->unk_208);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x54], 32, 0);

    for (i = j = 0; i < 8; i++, j += 4) {
        if ((gSaveContext.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
            CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
            if ((i + 3) != pauseCtx->unk_236) {
                gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A4C4[gMapData->floorID[interfaceCtx->unk_25A][i]],
                                    G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0, G_TX_WRAP | G_TX_NOMIRROR,
                                    G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
            }
        }
    }

    j = (pauseCtx->unk_236 - 3) * 4;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 150, 255, pauseCtx->unk_208);

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A4C4[gMapData->floorID[interfaceCtx->unk_25A][pauseCtx->unk_236 - 3]],
                        G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0, G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR,
                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

    pauseCtx->vtx_14C[0x7C].v.ob[0] = pauseCtx->vtx_14C[0x7E].v.ob[0] = pauseCtx->vtx_14C[0x7C].v.ob[0] + 2;
    pauseCtx->vtx_14C[0x7D].v.ob[0] = pauseCtx->vtx_14C[0x7F].v.ob[0] = pauseCtx->vtx_14C[0x7C].v.ob[0] + 19;
    pauseCtx->vtx_14C[0x7C].v.ob[1] = pauseCtx->vtx_14C[0x7D].v.ob[1] = pauseCtx->vtx_14C[0x7C].v.ob[1] - 2;
    pauseCtx->vtx_14C[0x7E].v.ob[1] = pauseCtx->vtx_14C[0x7F].v.ob[1] = pauseCtx->vtx_14C[0x7C].v.ob[1] - 19;

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x74], 12, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);

    pauseCtx->vtx_14C[0x74].v.ob[1] = pauseCtx->vtx_14C[0x75].v.ob[1] = (pauseCtx->unk_20A - (VREG(30) * 14)) + 49;
    pauseCtx->vtx_14C[0x76].v.ob[1] = pauseCtx->vtx_14C[0x77].v.ob[1] = pauseCtx->vtx_14C[0x74].v.ob[1] - 16;

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C001980, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP | G_TX_NOMIRROR,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex) &&
        (gMapData->skullFloorIconY[gSaveContext.mapIndex] != -99)) {
        pauseCtx->vtx_14C[0x78].v.ob[1] = pauseCtx->vtx_14C[0x79].v.ob[1] =
            gMapData->skullFloorIconY[gSaveContext.mapIndex] + pauseCtx->unk_20A;
        pauseCtx->vtx_14C[0x7A].v.ob[1] = pauseCtx->vtx_14C[0x7B].v.ob[1] = pauseCtx->vtx_14C[0x78].v.ob[1] - 16;

        gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C001B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0,
                            G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);
    }

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);

    if (GET_GS_FLAG(gSaveContext.mapIndex) == D_8082AC7C[gSaveContext.mapIndex]) {
        func_8081F87C(gfxCtx, D_09006300, 24, 24, 8);
    }

    if ((globalCtx->sceneNum >= 0) && (globalCtx->sceneNum < 0x11)) {
        stepR = (D_8082A514 - D_8082A508[D_8082A524][0]) / D_8082A520;
        stepG = (D_8082A518 - D_8082A508[D_8082A524][1]) / D_8082A520;
        stepB = (D_8082A51C - D_8082A508[D_8082A524][2]) / D_8082A520;
        D_8082A514 -= stepR;
        D_8082A518 -= stepG;
        D_8082A51C -= stepB;

        rgba16 = ((D_8082A514 & 0x1F) << 11) | ((D_8082A518 & 0x1F) << 6) | ((D_8082A51C & 0x1F) << 1) | 1;
        interfaceCtx->unk_140[28] = (rgba16 & 0xFF00) >> 8;
        interfaceCtx->unk_140[29] = rgba16 & 0xFF;

        D_8082A520--;
        if (D_8082A520 == 0) {
            D_8082A524 ^= 1;
            D_8082A520 = 20;
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);

    gDPLoadTLUT_pal16(POLY_OPA_DISP++, 0, interfaceCtx->unk_140);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x3C], 8, 0);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, interfaceCtx->mapSegment, G_IM_FMT_CI, 48, 85, 0, G_TX_WRAP | G_TX_NOMIRROR,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, interfaceCtx->mapSegment + 0x800, G_IM_FMT_CI, 48, 85, 0,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 388);
}

void func_8081D398(GlobalContext* globalCtx, GraphicsContext* gfxCtx) {
    static u64* D_8082A528[] = {
        0x0C00B7A8, 0x0C00A7E8, 0x0C00A718, 0x0C00A508, 0x0C00A3D8, 0x0C00A298, 0x0C00A168, 0x0C009EE0,
        0x0C009E00, 0x0C009AC0, 0x0C009960, 0x0C009768, 0x0C0092D0, 0x0C008FD0, 0x0C008B98, 0x0C008418,
    };
    static u16 D_8082A568[] = {
        0x05, 0x00, 0x13, 0x0E, 0x0F, 0x01, 0x02, 0x10, 0x12, 0x03, 0x07, 0x08, 0x09, 0x0C, 0x0B, 0x06,
    };
    static s16 D_8082A588[] = { 0, 0, 255 };
    static s16 D_8082A590[][3] = {
        { 0, 0, 255 },
        { 255, 255, 0 },
    };
    static s16 D_8082A59C[] = { 255, 255, 0 };
    static s16 D_8082A5A4[][3] = {
        { 255, 255, 0 },
        { 0, 0, 255 },
    };
    static s16 D_8082A5B0 = 1;
    static s16 D_8082A5B4 = 20;
    static s16 D_8082A5B8[] = { 64, 64, 64, 28 };
    static s16 D_8082A5C0[] = {
        -41, 19, 44, 40, 49, 51, -49, 83, 80, -67, 50, -109, -76, -86, -10, -6, 19, 24, 11, -17, 37, -6,
    };
    static s16 D_8082A5EC[] = {
        96, 32, 32, 48, 48, 32, 48, 32, 32, 32, 16, 32, 32, 16, 32, 32, 32, 32, 32, 32, 16, 32,
    };
    static s16 D_8082A618[] = {
        30, 36, 35, 26, 7, 11, -31, 30, 38, 23, 2, 42, 40, 32, 38, 50, 57, 58, 56, 12, 36, 50,
    };
    static s16 D_8082A644[] = {
        59, 19, 13, 19, 38, 17, 38, 17, 13, 26, 16, 26, 26, 16, 19, 17, 26, 13, 17, 17, 16, 17,
    };
    static u64* D_8082A670[] = {
        0x0C007848, 0x0C006E40, 0x0C007410, 0x0C007680, 0x0C006F70, 0x0C007300, 0x0C006F70, 0x0C007300,
        0x0C007410, 0x0C0074E0, 0x0C008358, 0x0C0074E0, 0x0C0074E0, 0x0C008358, 0x0C006E40, 0x0C007300,
        0x0C0074E0, 0x0C007410, 0x0C007300, 0x0C007300, 0x0C008358, 0x0C007300,
    };
    static u64* D_8082A6C8[] = {
        0x0D008180,
        0x0D008680,
        0x0D008580,
    };
    static u16 D_8082A6D4 = 0;
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    s16 i;
    s16 j;
    s16 t;
    s16 k;
    s16 point;
    s16 stepR;
    s16 stepG;
    s16 stepB;

    OPEN_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 556);

    if ((pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 0) && (pauseCtx->kscpPos == 1)) {
        pauseCtx->unk_260 = 0;
        point = pauseCtx->unk_218[4];

        if (pauseCtx->unk_238 == 0) {
            if (pauseCtx->stickRelX > 30) {
                D_8082A6D4 = 0;

                do {
                    pauseCtx->unk_218[4]++;
                    if (pauseCtx->unk_218[4] > 0xB) {
                        pauseCtx->unk_218[4] = 0xB;
                        func_8081F81C(globalCtx, 0xB);
                        break;
                    }
                } while (pauseCtx->unk_266[pauseCtx->unk_218[4]] == 0);
            } else if (pauseCtx->stickRelX < -30) {
                D_8082A6D4 = 0;

                do {
                    pauseCtx->unk_218[4]--;
                    if (pauseCtx->unk_218[4] < 0) {
                        pauseCtx->unk_218[4] = 0;
                        func_8081F81C(globalCtx, 0xA);
                        break;
                    }
                } while (pauseCtx->unk_266[pauseCtx->unk_218[4]] == 0);
            } else {
                D_8082A6D4++;
            }

            pauseCtx->unk_23E[1] = pauseCtx->unk_218[4];
            pauseCtx->unk_246[1] = pauseCtx->unk_218[4] + 0x1F;
            func_80819E14(pauseCtx, pauseCtx->unk_246[1] * 4, pauseCtx->vtx_14C);
        } else {
            pauseCtx->unk_23E[1] = gSaveContext.worldMapArea + 0x18;
            if (pauseCtx->unk_238 == 0xA) {
                if (pauseCtx->stickRelX > 30) {
                    pauseCtx->unk_218[4] = 0;
                    pauseCtx->unk_238 = 0;

                    while (pauseCtx->unk_266[pauseCtx->unk_218[4]] == 0) {
                        pauseCtx->unk_218[4]++;
                    }

                    pauseCtx->unk_23E[1] = pauseCtx->unk_218[4];
                    pauseCtx->unk_246[1] = pauseCtx->unk_218[4] + 0x1F;
                    func_80819E14(pauseCtx, pauseCtx->unk_246[1] * 4, pauseCtx->vtx_14C);
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    D_8082A6D4 = 0;
                }
            } else {
                if (pauseCtx->stickRelX < -30) {
                    pauseCtx->unk_218[4] = 0xB;
                    pauseCtx->unk_238 = 0;

                    while (pauseCtx->unk_266[pauseCtx->unk_218[4]] == 0) {
                        pauseCtx->unk_218[4]--;
                    }

                    pauseCtx->unk_23E[1] = pauseCtx->unk_218[4];
                    pauseCtx->unk_246[1] = pauseCtx->unk_218[4] + 0x1F;
                    func_80819E14(pauseCtx, pauseCtx->unk_246[1] * 4, pauseCtx->vtx_14C);
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    D_8082A6D4 = 0;
                }
            }
        }

        if (pauseCtx->unk_266[pauseCtx->unk_218[4]] == 0) {
            pauseCtx->unk_23E[1] = 999;
        }

        if (point != pauseCtx->unk_218[4]) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);

    if (HREG(15) == 0) {
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);

        gDPLoadTLUT_pal256(POLY_OPA_DISP++, D_0C006C00);
        gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0xBC], 32, 0);

        for (j = t = i = 0; i < 8; i++, t++, j += 4) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C000000 + t * 0x798, G_IM_FMT_CI, G_IM_SIZ_8b, 216, 9, 0,
                                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

            if (1) {}
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0xDC], 28, 0);

        for (j = i = 0; i < 6; i++, t++, j += 4) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C000000 + t * 0x798, G_IM_FMT_CI, G_IM_SIZ_8b, 216, 9, 0,
                                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
        }

        gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C000000 + t * 0x798, G_IM_FMT_CI, G_IM_SIZ_8b, 216, 2, 0,
                            G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
    } else if (HREG(15) == 1) {
        Gfx* sp1CC = POLY_OPA_DISP;
        void* source = D_0C000000;

        // gSPLoadUcodeL(POLY_OPA_DISP++, rspS2DEX)?
        gSPLoadUcodeEx(sp1CC++, OS_K0_TO_PHYSICAL(D_80113070), OS_K0_TO_PHYSICAL(D_801579A0), 0x800);

        func_8009638C(&sp1CC, source, D_0C006C00, 216, 128, G_IM_FMT_CI, G_IM_SIZ_8b, 0x8000, 256, HREG(13) / 100.0f,
                      HREG(14) / 100.0f);

        // gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData())?
        gSPLoadUcodeEx(sp1CC++, SysUcode_GetUCode(), SysUcode_GetUCodeData(), 0x800);

        POLY_OPA_DISP = sp1CC;
    }

    if (HREG(15) == 2) {
        HREG(15) = 1;
        HREG(14) = 6100;
        HREG(13) = 5300;
    }

    if (ZREG(38) == 0) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

        func_800949A8(gfxCtx);

        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 235, 235, 235, pauseCtx->unk_208);

        for (k = 0; k < 15; k += 8) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x3C + k * 4], 32, 0);

            for (j = i = 0; i < 8; i++, j += 4) {
                if (!(gSaveContext.worldMapAreaData & gBitFlags[D_8082A568[k + i]])) {
                    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, D_8082A528[k + i], G_IM_FMT_I, D_8082AAEC[k + i],
                                           D_8082AB2C[k + i], 0, G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR,
                                           G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

                    if (1) {}
                }
            }
        }
    }

    if (gSaveContext.worldMapArea < 0x16) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);

        pauseCtx->vtx_14C[0xAC].v.ob[0] = pauseCtx->vtx_14C[0xAE].v.ob[0] =
            D_8082A5C0[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->vtx_14C[0xAD].v.ob[0] = pauseCtx->vtx_14C[0xAF].v.ob[0] =
            pauseCtx->vtx_14C[0xAC].v.ob[0] + D_8082A5EC[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->vtx_14C[0xAC].v.ob[1] = pauseCtx->vtx_14C[0xAD].v.ob[1] =
            D_8082A618[((void)0, gSaveContext.worldMapArea)] + pauseCtx->unk_20A;

        pauseCtx->vtx_14C[0xAE].v.ob[1] = pauseCtx->vtx_14C[0xAF].v.ob[1] =
            pauseCtx->vtx_14C[0xAC].v.ob[1] - D_8082A644[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->vtx_14C[0xAD].v.tc[0] = pauseCtx->vtx_14C[0xAF].v.tc[0] =
            D_8082A5EC[((void)0, gSaveContext.worldMapArea)] << 5;

        pauseCtx->vtx_14C[0xAE].v.tc[1] = pauseCtx->vtx_14C[0xAF].v.tc[1] =
            D_8082A644[((void)0, gSaveContext.worldMapArea)] << 5;

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0xAC], 4, 0);

        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 255, pauseCtx->unk_208);

        gDPLoadTextureBlock_4b(POLY_OPA_DISP++, D_8082A670[((void)0, (gSaveContext.worldMapArea))], G_IM_FMT_IA,
                               D_8082A5EC[((void)0, (gSaveContext.worldMapArea))],
                               D_8082A644[((void)0, (gSaveContext.worldMapArea))], 0, G_TX_WRAP | G_TX_NOMIRROR,
                               G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);
    }

    stepR = ABS(D_8082A588[0] - D_8082A590[D_8082A5B0][0]) / D_8082A5B4;
    stepG = ABS(D_8082A588[1] - D_8082A590[D_8082A5B0][1]) / D_8082A5B4;
    stepB = ABS(D_8082A588[2] - D_8082A590[D_8082A5B0][2]) / D_8082A5B4;
    if (D_8082A588[0] >= D_8082A590[D_8082A5B0][0]) {
        D_8082A588[0] -= stepR;
    } else {
        D_8082A588[0] += stepR;
    }
    if (D_8082A588[1] >= D_8082A590[D_8082A5B0][1]) {
        D_8082A588[1] -= stepG;
    } else {
        D_8082A588[1] += stepG;
    }
    if (D_8082A588[2] >= D_8082A590[D_8082A5B0][2]) {
        D_8082A588[2] -= stepB;
    } else {
        D_8082A588[2] += stepB;
    }

    stepR = ABS(D_8082A59C[0] - D_8082A5A4[D_8082A5B0][0]) / D_8082A5B4;
    stepG = ABS(D_8082A59C[1] - D_8082A5A4[D_8082A5B0][1]) / D_8082A5B4;
    stepB = ABS(D_8082A59C[2] - D_8082A5A4[D_8082A5B0][2]) / D_8082A5B4;
    if (D_8082A59C[0] >= D_8082A5A4[D_8082A5B0][0]) {
        D_8082A59C[0] -= stepR;
    } else {
        D_8082A59C[0] += stepR;
    }
    if (D_8082A59C[1] >= D_8082A5A4[D_8082A5B0][1]) {
        D_8082A59C[1] -= stepG;
    } else {
        D_8082A59C[1] += stepG;
    }
    if (D_8082A59C[2] >= D_8082A5A4[D_8082A5B0][2]) {
        D_8082A59C[2] -= stepB;
    } else {
        D_8082A59C[2] += stepB;
    }

    D_8082A5B4--;
    if (D_8082A5B4 == 0) {
        D_8082A588[0] = D_8082A590[D_8082A5B0][0];
        D_8082A588[1] = D_8082A590[D_8082A5B0][1];
        D_8082A588[2] = D_8082A590[D_8082A5B0][2];
        D_8082A59C[0] = D_8082A5A4[D_8082A5B0][0];
        D_8082A59C[1] = D_8082A5A4[D_8082A5B0][1];
        D_8082A59C[2] = D_8082A5A4[D_8082A5B0][2];
        D_8082A5B0 ^= 1;
        D_8082A5B4 = 20;
    }

    func_800949A8(gfxCtx);

    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C006E00, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_WRAP | G_TX_NOMIRROR,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    for (j = i = 0; i < 12; i++, t++, j += 4) {
        if (pauseCtx->unk_266[i] != 0) {
            gDPPipeSync(POLY_OPA_DISP++);

            if (pauseCtx->unk_266[i] == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8082A590[0][0], D_8082A590[0][1], D_8082A590[0][2],
                                pauseCtx->unk_208);
                gDPSetEnvColor(POLY_OPA_DISP++, D_8082A5A4[0][0], D_8082A5A4[0][1], D_8082A5A4[0][2], 0);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8082A588[0], D_8082A588[1], D_8082A588[2], pauseCtx->unk_208);
                gDPSetEnvColor(POLY_OPA_DISP++, D_8082A59C[0], D_8082A59C[1], D_8082A59C[2], 0);
            }

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0x7C + i * 4], 4, 0);

            gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
        }
    }

    if (pauseCtx->unk_238 == 0) {
        func_8081FE30(globalCtx, 1);
    }

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->vtx_14C[0xB0], 16, 0);

    if (pauseCtx->unk_27A != 0xFF) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, D_8082A588[0], 0, pauseCtx->unk_208);

        gDPLoadTextureBlock(POLY_OPA_DISP++, D_0C0083D8, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_WRAP | G_TX_NOMIRROR,
                            G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    }

    if (gSaveContext.worldMapArea < 0x16) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 255, 255, pauseCtx->unk_208);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        POLY_OPA_DISP = func_8081F50C(POLY_OPA_DISP, pauseCtx->unk_138 + 0x400, 80, 32, 4);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                      PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, pauseCtx->unk_208);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, D_8082A6C8[gSaveContext.language], G_IM_FMT_I, 64, 8, 0,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

    gDPPipeSync(POLY_OPA_DISP++);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 874);
}
