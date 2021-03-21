#include "z_kaleido_scope.h"
#include "textures/icon_item_static/icon_item_static.h"

u8 D_8082A3F0[] = { UPG_BULLET_BAG, UPG_BOMB_BAG, UPG_STRENGTH, UPG_SCALE };

u8 D_8082A3F4[] = { UPG_QUIVER, UPG_BOMB_BAG, UPG_STRENGTH, UPG_SCALE };

u8 D_8082A3F8[] = { ITEM_BULLET_BAG_30, ITEM_BOMB_BAG_20, ITEM_BRACELET, ITEM_SCALE_SILVER };

u8 D_8082A3FC[] = { ITEM_QUIVER_30, ITEM_BOMB_BAG_20, ITEM_BRACELET, ITEM_SCALE_SILVER };

u8 D_8082A400[] = { 0x00, 0x03, 0x06, 0x09 };

u8 D_8082A404[] = {
    0x00, 0x00, 0x01, 0x02, 0x00, 0x03, 0x04, 0x05, 0x00, 0x06, 0x07, 0x08, 0x00, 0x09, 0x0A, 0x0B,
};

s16 D_8082A414 = 0;

void KaleidoScope_DrawEquipmentImage(GlobalContext* globalCtx, void* source, u32 width, u32 height) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    u8* curTexture;
    s32 vtxIndex;
    s32 textureCount;
    s32 textureHeight;
    s32 remainingSize;
    s32 textureSize;
    s32 pad;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_equipment.c", 68);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);

    curTexture = source;
    remainingSize = width * height * 2;
    textureHeight = 4096 / (width * 2);
    textureSize = width * textureHeight * 2;
    textureCount = remainingSize / textureSize;
    if ((remainingSize % textureSize) != 0) {
        textureCount += 1;
    }

    vtxIndex = 80;

    gSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, textureHeight, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    remainingSize -= textureSize;

    for (i = 0; i < textureCount; i++) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[vtxIndex], 4, 0);

        gDPSetTextureImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, curTexture);

        gDPLoadSync(POLY_OPA_DISP++);
        gDPLoadTile(POLY_OPA_DISP++, G_TX_LOADTILE, 0, 0, (width - 1) << 2, (textureHeight - 1) << 2);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

        curTexture += textureSize;

        if ((remainingSize - textureSize) < 0) {
            if (remainingSize > 0) {
                textureHeight = remainingSize / (s32)(width * 2);
                remainingSize -= textureSize;

                gSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, textureHeight, 0,
                               G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                               G_TX_NOLOD, G_TX_NOLOD);
            }
        } else {
            remainingSize -= textureSize;
        }

        vtxIndex += 4;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_equipment.c", 122);
}

void KaleidoScope_DrawPlayerWork(GlobalContext* globalCtx) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    Vec3f pos;
    Vec3s rot;
    f32 scale;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        pos.x = 2.0f;
        pos.y = -130.0f;
        pos.z = -150.0f;
        scale = 0.046f;
    } else if (CUR_EQUIP_VALUE(EQUIP_SWORD) != 2) {
        pos.x = 25.0f;
        pos.y = -228.0f;
        pos.z = 60.0f;
        scale = 0.056f;
    } else {
        pos.x = 20.0f;
        pos.y = -180.0f;
        pos.z = -40.0f;
        scale = 0.047f;
    }

    rot.y = 32300;
    rot.x = rot.z = 0;
    func_8009214C(globalCtx, pauseCtx->playerSegment, &pauseCtx->playerSkelAnime, &pos, &rot, scale,
                  CUR_EQUIP_VALUE(EQUIP_SWORD), CUR_EQUIP_VALUE(EQUIP_TUNIC) - 1, CUR_EQUIP_VALUE(EQUIP_SHIELD),
                  CUR_EQUIP_VALUE(EQUIP_BOOTS) - 1);
}

#ifdef NON_MATCHING
void KaleidoScope_DrawEquipment(GlobalContext* globalCtx) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    Input* input = &globalCtx->state.input[0];
    u16 temp_s7;
    u16 phi_s0_3;
    u16 phi_s1_3;
    u16 phi_s2_3;
    u16 phi_s3_3;
    u16 spC2;
    u16 phi_s5;
    u16 phi_s4;
    u16 phi_s0_2;
    u16 spBA;
    s16 phi_s0;
    s16 phi_s1;
    s16 phi_s2;
    s16 phi_s3;
    s16 spB2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_equipment.c", 219);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, ZREG(39), ZREG(40), ZREG(41), pauseCtx->unk_208);
    gDPSetEnvColor(POLY_OPA_DISP++, ZREG(43), ZREG(44), ZREG(45), 0);

    for (phi_s5 = 0, phi_s4 = 64; phi_s5 < 4; phi_s5++, phi_s4 += 4) {
        if (CUR_EQUIP_VALUE(phi_s5) != 0) {
            gDPPipeSync(POLY_OPA_DISP++);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[phi_s4], 4, 0);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_02000A00[1], 32, 32, 0);
        }
    }

    if ((pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 0) && (pauseCtx->kscpPos == 3)) {
        spB2 = pauseCtx->unk_218[3];
        pauseCtx->unk_260 = 0;

        if (pauseCtx->unk_238 == 0) {
            pauseCtx->unk_25E = 0;

            phi_s0_2 = pauseCtx->unk_23E[3];
            if ((phi_s0_2 >= 0x3B) && (phi_s0_2 <= 0x46)) {
                pauseCtx->unk_260 = 8;
            }

            phi_s3 = pauseCtx->unk_218[3];
            phi_s1 = pauseCtx->unk_222[3];
            phi_s2 = pauseCtx->unk_22C[3];

            phi_s0 = 0;
            while (phi_s0 == 0) {
                if (pauseCtx->stickRelX < -30) {
                    if (pauseCtx->unk_222[3] != 0) {
                        pauseCtx->unk_222[3] = pauseCtx->unk_222[3] - 1;
                        pauseCtx->unk_218[3] = pauseCtx->unk_218[3] - 1;

                        if (pauseCtx->unk_222[3] == 0) {
                            if (pauseCtx->unk_22C[3] == 0) {
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    phi_s0 = 1;
                                }
                            } else {
                                if (CUR_UPG_VALUE(pauseCtx->unk_22C[3]) != 0) {
                                    phi_s0 = 1;
                                }
                            }
                        } else {
                            if (gBitFlags[pauseCtx->unk_218[3] - 1] & gSaveContext.inventory.equipment) {
                                phi_s0 = 2;
                            }
                        }
                    } else {
                        pauseCtx->unk_222[3] = phi_s1;
                        pauseCtx->unk_22C[3] = pauseCtx->unk_22C[3] + 1;

                        if (pauseCtx->unk_22C[3] >= 4) {
                            pauseCtx->unk_22C[3] = 0;
                        }

                        pauseCtx->unk_218[3] = pauseCtx->unk_222[3] + (pauseCtx->unk_22C[3] * 4);

                        if (pauseCtx->unk_218[3] >= 16) {
                            pauseCtx->unk_218[3] = pauseCtx->unk_222[3];
                        }

                        if (phi_s2 == pauseCtx->unk_22C[3]) {
                            pauseCtx->unk_222[3] = phi_s1;
                            pauseCtx->unk_218[3] = phi_s3;
                            func_8081F81C(globalCtx, 10);
                            phi_s0 = 3;
                        }
                    }
                } else if (pauseCtx->stickRelX > 30) {
                    if (pauseCtx->unk_222[3] < 3) {
                        pauseCtx->unk_222[3]++;
                        pauseCtx->unk_218[3]++;

                        if (pauseCtx->unk_222[3] == 0) {
                            if (CUR_UPG_VALUE(pauseCtx->unk_22C[3]) != 0) {
                                phi_s0 = 1;
                            }
                        } else {
                            if (gBitFlags[pauseCtx->unk_218[3] - 1] & gSaveContext.inventory.equipment) {
                                phi_s0 = 2;
                            }
                        }
                    } else {
                        pauseCtx->unk_222[3] = phi_s1;
                        pauseCtx->unk_22C[3] = pauseCtx->unk_22C[3] + 1;

                        if (pauseCtx->unk_22C[3] >= 4) {
                            pauseCtx->unk_22C[3] = 0;
                        }

                        pauseCtx->unk_218[3] = pauseCtx->unk_222[3] + (pauseCtx->unk_22C[3] * 4);

                        if (pauseCtx->unk_218[3] >= 16) {
                            pauseCtx->unk_218[3] = pauseCtx->unk_222[3];
                        }

                        if (phi_s2 == pauseCtx->unk_22C[3]) {
                            pauseCtx->unk_222[3] = phi_s1;
                            pauseCtx->unk_218[3] = phi_s3;
                            func_8081F81C(globalCtx, 11);
                            phi_s0 = 3;
                        }
                    }
                } else {
                    phi_s0 = 4;
                }
            }

            phi_s3 = pauseCtx->unk_218[3];
            phi_s2 = pauseCtx->unk_22C[3];

            phi_s0 = 0;
            while (phi_s0 == 0) {
                if (pauseCtx->stickRelY > 30) {
                    if (pauseCtx->unk_22C[3] != 0) {
                        pauseCtx->unk_22C[3] = pauseCtx->unk_22C[3] - 1;
                        pauseCtx->unk_218[3] = pauseCtx->unk_218[3] - 4;

                        if (pauseCtx->unk_222[3] == 0) {
                            if (pauseCtx->unk_22C[3] == 0) {
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    phi_s0 = 1;
                                }
                            } else if (CUR_UPG_VALUE(pauseCtx->unk_22C[3]) != 0) {
                                phi_s0 = 1;
                            }
                        } else if (gBitFlags[pauseCtx->unk_218[3] - 1] & gSaveContext.inventory.equipment) {
                            phi_s0 = 2;
                        }
                    } else {
                        pauseCtx->unk_22C[3] = phi_s2;
                        pauseCtx->unk_218[3] = phi_s3;
                        phi_s0 = 3;
                    }
                } else if (pauseCtx->stickRelY < -30) {
                    if (pauseCtx->unk_22C[3] < 3) {
                        pauseCtx->unk_22C[3] = pauseCtx->unk_22C[3] + 1;
                        pauseCtx->unk_218[3] = pauseCtx->unk_218[3] + 4;

                        if (pauseCtx->unk_222[3] == 0) {
                            if (CUR_UPG_VALUE(pauseCtx->unk_22C[3]) != 0) {
                                phi_s0 = 1;
                            }
                        } else if (gBitFlags[pauseCtx->unk_218[3] - 1] & gSaveContext.inventory.equipment) {
                            phi_s0 = 2;
                        }
                    } else {
                        pauseCtx->unk_22C[3] = phi_s2;
                        pauseCtx->unk_218[3] = phi_s3;
                        phi_s0 = 3;
                    }
                } else {
                    phi_s0 = 4;
                }
            }
        } else if (pauseCtx->unk_238 == 10) {
            if (pauseCtx->stickRelX > 30) {
                pauseCtx->unk_25C = 0;
                pauseCtx->unk_238 = 0;

                Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

                phi_s3 = phi_s1 = phi_s2 = 0;
                while (true) {
                    if (phi_s1 == 0) {
                        if (phi_s2 == 0) {
                            if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                pauseCtx->unk_218[3] = phi_s3;
                                pauseCtx->unk_222[3] = phi_s1;
                                pauseCtx->unk_22C[3] = phi_s2;
                                break;
                            }
                        } else if (CUR_UPG_VALUE(phi_s2) != 0) {
                            pauseCtx->unk_218[3] = phi_s3;
                            pauseCtx->unk_222[3] = phi_s1;
                            pauseCtx->unk_22C[3] = phi_s2;
                            break;
                        }
                    } else if (gBitFlags[phi_s3 - 1] & gSaveContext.inventory.equipment) {
                        pauseCtx->unk_218[3] = phi_s3;
                        pauseCtx->unk_222[3] = phi_s1;
                        pauseCtx->unk_22C[3] = phi_s2;
                        break;
                    }

                    phi_s2 = phi_s2 + 1;
                    phi_s3 = phi_s3 + 4;
                    if (phi_s2 < 4) {
                        continue;
                    }

                    phi_s2 = 0;
                    phi_s3 = phi_s1 + 1;
                    phi_s1 = phi_s3;
                    if (phi_s1 < 4) {
                        continue;
                    }

                    func_8081F81C(globalCtx, 11);
                    break;
                }
            }
        } else {
            if (pauseCtx->stickRelX < -30) {
                pauseCtx->unk_25C = 0;
                pauseCtx->unk_238 = 0;
                Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

                phi_s3 = phi_s1 = 3;
                phi_s2 = 0;
                while (true) {
                    if (phi_s1 == 0) {
                        if (CUR_UPG_VALUE(phi_s2) != 0) {
                            pauseCtx->unk_218[3] = phi_s3;
                            pauseCtx->unk_222[3] = phi_s1;
                            pauseCtx->unk_22C[3] = phi_s2;
                            break;
                        }
                    } else if (gBitFlags[phi_s3 - 1] & gSaveContext.inventory.equipment) {
                        pauseCtx->unk_218[3] = phi_s3;
                        pauseCtx->unk_222[3] = phi_s1;
                        pauseCtx->unk_22C[3] = phi_s2;
                        break;
                    }

                    phi_s2 = phi_s2 + 1;
                    phi_s3 = phi_s3 + 4;
                    if (phi_s2 < 4) {
                        continue;
                    }

                    phi_s2 = 0;
                    phi_s3 = phi_s1 - 1;
                    phi_s1 = phi_s3;
                    if (phi_s1 >= 0) {
                        continue;
                    }

                    func_8081F81C(globalCtx, 10);
                    break;
                }
            }
        }

        if (pauseCtx->unk_222[3] == 0) {
            pauseCtx->unk_260 = 0;

            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                if ((pauseCtx->unk_22C[3] == 0) && (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0)) {
                    phi_s0_2 = CUR_UPG_VALUE(UPG_BULLET_BAG) + 0x46;
                } else {
                    phi_s0_2 = CUR_UPG_VALUE(pauseCtx->unk_22C[3]) + D_8082A400[pauseCtx->unk_22C[3]] + 0x49;
                    osSyncPrintf("H_arrowcase_1 + non_equip_item_table = %d\n", phi_s0_2);
                }
            } else {
                if ((pauseCtx->unk_22C[3] == 0) && (CUR_UPG_VALUE(UPG_BULLET_BAG) == 0)) {
                    phi_s0_2 = CUR_UPG_VALUE(UPG_BULLET_BAG) + 0x46;
                } else {
                    phi_s0_2 = CUR_UPG_VALUE(pauseCtx->unk_22C[3]) + D_8082A400[pauseCtx->unk_22C[3]] + 0x49;
                    osSyncPrintf("大人 H_arrowcase_1 + non_equip_item_table = %d\n", phi_s0_2);
                }
            }
        } else {
            phi_s0_2 = D_8082A404[pauseCtx->unk_218[3]] + 0x3B;
            osSyncPrintf("ccc=%d\n", phi_s0_2);
            if (pauseCtx->unk_238 == 0) {
                pauseCtx->unk_260 = 8;
            }
        }

        if ((pauseCtx->unk_22C[3] == 0) && (pauseCtx->unk_222[3] == 3)) {
            if (gSaveContext.bgsFlag != 0) {
                phi_s0_2 = 0x7A;
            } else if (gBitFlags[3] & gSaveContext.inventory.equipment) {
                phi_s0_2 = 0x55;
            }
        }

        temp_s7 = pauseCtx->unk_218[3];

        pauseCtx->unk_23E[3] = phi_s0_2;
        pauseCtx->unk_246[3] = temp_s7;

        osSyncPrintf("kscope->select_name[Display_Equipment] = %d\n", pauseCtx->unk_23E[3]);

        if (!((D_8082ABFC[(pauseCtx->unk_22C[3] * 4) + pauseCtx->unk_222[3] + 0x18] == 9) ||
              (D_8082ABFC[(pauseCtx->unk_22C[3] * 4) + pauseCtx->unk_222[3] + 0x18] ==
               ((void)0, gSaveContext.linkAge)))) {
            pauseCtx->unk_25E = 1;
        }

        if (pauseCtx->unk_23E[3] == 0x50) {
            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                pauseCtx->unk_25E = 0;
            } else {
                pauseCtx->unk_25E = 1;
            }
        }

        if ((pauseCtx->unk_222[3] == 0) && (pauseCtx->unk_22C[3] == 0)) {
            if (LINK_AGE_IN_YEARS != YEARS_CHILD) {
                if ((phi_s0_2 >= 0x47) && (phi_s0_2 <= 0x49)) {
                    pauseCtx->unk_25E = 1;
                } else {
                    pauseCtx->unk_25E = 0;
                }
            } else {
                pauseCtx->unk_25E = 0;
            }
        }

        func_80819E14(pauseCtx, temp_s7 * 4, pauseCtx->equipVtx);

        if ((pauseCtx->unk_238 == 0) && (phi_s0_2 != 999) && (pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 0) &&
            CHECK_BTN_ALL(input->press.button, BTN_A)) {

            if (pauseCtx->unk_222[3] != 0) {
                if ((D_8082ABFC[(pauseCtx->unk_22C[3] * 4) + pauseCtx->unk_222[3] + 0x18] == 9) ||
                    (D_8082ABFC[(pauseCtx->unk_22C[3] * 4) + pauseCtx->unk_222[3] + 0x18] ==
                     ((void)0, gSaveContext.linkAge))) {
                    Inventory_ChangeEquipment(pauseCtx->unk_22C[3], pauseCtx->unk_222[3]);

                    if (pauseCtx->unk_22C[3] == 0) {
                        gSaveContext.infTable[29] = 0;
                        gSaveContext.equips.buttonItems[0] = phi_s0_2;

                        if ((pauseCtx->unk_222[3] == 3) && (gSaveContext.bgsFlag != 0)) {
                            gSaveContext.equips.buttonItems[0] = 0x3D;
                            gSaveContext.swordHealth = 8;
                        } else {
                            if (gSaveContext.equips.buttonItems[0] == 0x7A) {
                                gSaveContext.equips.buttonItems[0] = 0x3D;
                            }
                            if ((gSaveContext.equips.buttonItems[0] == 0x3D) && (gSaveContext.bgsFlag == 0) &&
                                (gBitFlags[3] & gSaveContext.inventory.equipment)) {
                                gSaveContext.equips.buttonItems[0] = 0x55;
                            }
                        }

                        Interface_LoadItemIcon1(globalCtx, 0);
                    }

                    Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    pauseCtx->unk_1E4 = 7;
                    D_8082A414 = 10;
                } else {
                    Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
            }
        }

        if (spB2 != pauseCtx->unk_218[3]) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        spBA = temp_s7;
    } else if ((pauseCtx->unk_1E4 == 7) && (pauseCtx->kscpPos == 3)) {
        func_80819E14(pauseCtx, pauseCtx->unk_246[3] * 4, pauseCtx->equipVtx);
        pauseCtx->unk_260 = 8;

        D_8082A414--;
        if (D_8082A414 == 0) {
            pauseCtx->unk_1E4 = 0;
        }
    }

    spC2 = 0;
    phi_s5 = 0;
    phi_s2_3 = 4;
    while (phi_s5 < 4) {

        phi_s1_3 = spC2;
        phi_s0_3 = 0;
        phi_s3_3 = spC2 + 1;
        phi_s4 = phi_s2_3;
        while (phi_s0_3 < 3) {
            if ((gBitFlags[phi_s1_3] & gSaveContext.inventory.equipment) && (pauseCtx->unk_238 == 0)) {
                if ((D_8082ABFC[(phi_s5 * 4) + phi_s0_3 + 0x18 + 1] == 9) ||
                    (D_8082ABFC[(phi_s5 * 4) + phi_s0_3 + 0x18 + 1] == ((void)0, gSaveContext.linkAge))) {
                    if (spBA == phi_s3_3) {
                        pauseCtx->equipVtx[phi_s4 + 0].v.ob[0] = pauseCtx->equipVtx[phi_s4 + 2].v.ob[0] =
                            pauseCtx->equipVtx[phi_s4 + 0].v.ob[0] - 2;
                        pauseCtx->equipVtx[phi_s4 + 1].v.ob[0] = pauseCtx->equipVtx[phi_s4 + 3].v.ob[0] =
                            pauseCtx->equipVtx[phi_s4 + 1].v.ob[0] + 4;
                        pauseCtx->equipVtx[phi_s4 + 0].v.ob[1] = pauseCtx->equipVtx[phi_s4 + 1].v.ob[1] =
                            pauseCtx->equipVtx[phi_s4 + 0].v.ob[1] + 2;
                        pauseCtx->equipVtx[phi_s4 + 2].v.ob[1] = pauseCtx->equipVtx[phi_s4 + 3].v.ob[1] =
                            pauseCtx->equipVtx[phi_s4 + 2].v.ob[1] - 4;
                    }
                }
            }

            phi_s0_3++;
            phi_s1_3++;
            phi_s4 += 4;
            phi_s3_3++;
        }

        phi_s5++;
        spC2 += 4;
        phi_s2_3 += 16;
    }

    func_800949A8(globalCtx->state.gfxCtx);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_208);

    spC2 = 0;
    phi_s4 = 0;
    phi_s5 = 0;
    phi_s3_3 = 0;
    while (phi_s5 < 4) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[phi_s4], 16, 0);

        if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
            phi_s2_3 = CUR_UPG_VALUE(D_8082A3F0[phi_s5]);
            if ((phi_s2_3 != 0) && (CUR_UPG_VALUE(D_8082A3F0[phi_s5]) != 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(
                    globalCtx->state.gfxCtx, gItemIcons[CUR_UPG_VALUE(D_8082A3F0[phi_s5]) + D_8082A3F8[phi_s5] - 1], 32,
                    32, 0);
            }
        } else if ((phi_s5 == 0) && (CUR_UPG_VALUE(D_8082A3F4[phi_s5]) == 0)) {
            KaleidoScope_DrawQuadTextureRGBA32(globalCtx->state.gfxCtx,
                                               gItemIcons[CUR_UPG_VALUE(D_8082A3F0[phi_s5]) + D_8082A3F8[phi_s5] - 1],
                                               32, 32, 0);
        } else if (CUR_UPG_VALUE(D_8082A3F4[phi_s5]) != 0) {
            KaleidoScope_DrawQuadTextureRGBA32(globalCtx->state.gfxCtx,
                                               gItemIcons[CUR_UPG_VALUE(D_8082A3F4[phi_s5]) + D_8082A3F8[phi_s5] - 1],
                                               32, 32, 0);
        }

        phi_s0_3 = 0;
        phi_s2_3 = 4;
        phi_s1_3 = spC2;
        while (phi_s0_3 < 3) {
            if ((phi_s5 == 0) && (phi_s0_3 == 2) && (gSaveContext.bgsFlag != 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(globalCtx->state.gfxCtx, gBiggoronSwordIconTex, 32, 32, phi_s2_3);
            } else if ((phi_s5 == 0) && (phi_s0_3 == 2) &&
                       (gBitFlags[phi_s1_3 + 1] & gSaveContext.inventory.equipment)) {
                KaleidoScope_DrawQuadTextureRGBA32(globalCtx->state.gfxCtx, gBrokenGiantsKnifeIconTex, 32, 32,
                                                   phi_s2_3);
            } else if (gBitFlags[phi_s1_3] & gSaveContext.inventory.equipment) {
                KaleidoScope_DrawQuadTextureRGBA32(globalCtx->state.gfxCtx, gItemIcons[phi_s3_3 + 0x3B], 32, 32,
                                                   phi_s2_3);
            }
            phi_s0_3++;
            phi_s2_3 += 4;
            phi_s3_3++;
            phi_s1_3++;
        }

        phi_s5++;
        spC2 += 4;
        phi_s4 += 16;
    }

    KaleidoScope_DrawPlayerWork(globalCtx);

    if ((pauseCtx->unk_1E4 == 7) && (D_8082A414 == 10)) {
        KaleidoScope_SetupPlayerPreRender(globalCtx);
    }

    if ((pauseCtx->unk_1E4 == 7) && (D_8082A414 == 9)) {
        // @bug This function doesn't have any arguments
        KaleidoScope_ProcessPlayerPreRender(globalCtx);
    }

    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0B, globalCtx->interfaceCtx.mapSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);

    func_800949A8(globalCtx->state.gfxCtx);
    KaleidoScope_DrawEquipmentImage(globalCtx, pauseCtx->playerSegment, 64, 112);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_equipment.c", 609);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/KaleidoScope_DrawEquipment.s")
#endif
