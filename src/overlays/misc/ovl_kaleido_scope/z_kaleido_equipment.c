#include "z_kaleido_scope.h"
#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/parameter_static/parameter_static.h"

static u8 sChildUpgrades[] = { UPG_BULLET_BAG, UPG_BOMB_BAG, UPG_STRENGTH, UPG_SCALE };
static u8 sAdultUpgrades[] = { UPG_QUIVER, UPG_BOMB_BAG, UPG_STRENGTH, UPG_SCALE };

static u8 sChildUpgradeItemBases[] = { ITEM_BULLET_BAG_30, ITEM_BOMB_BAG_20, ITEM_STRENGTH_GORONS_BRACELET,
                                       ITEM_SCALE_SILVER };
static u8 sAdultUpgradeItemBases[] = { ITEM_QUIVER_30, ITEM_BOMB_BAG_20, ITEM_STRENGTH_GORONS_BRACELET,
                                       ITEM_SCALE_SILVER };

static u8 sUpgradeItemOffsets[] = { 0x00, 0x03, 0x06, 0x09 };

static u8 sEquipmentItemOffsets[] = {
    0x00, 0x00, 0x01, 0x02, 0x00, 0x03, 0x04, 0x05, 0x00, 0x06, 0x07, 0x08, 0x00, 0x09, 0x0A, 0x0B,
};

static s16 sEquipTimer = 0;

void KaleidoScope_DrawEquipmentImage(PlayState* play, void* source, u32 width, u32 height) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u8* curTexture;
    s32 vtxIndex;
    s32 textureCount;
    s32 textureHeight;
    s32 remainingSize;
    s32 textureSize;
    s32 pad;
    s32 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 68);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    curTexture = source;
    remainingSize = width * height * 2;
    textureHeight = 4096 / (width * 2);
    textureSize = width * textureHeight * 2;
    textureCount = remainingSize / textureSize;
    if ((remainingSize % textureSize) != 0) {
        textureCount += 1;
    }

    vtxIndex = 80;

    gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, textureHeight, 0, G_TX_NOMIRROR | G_TX_CLAMP,
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

                gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, textureHeight, 0,
                                 G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);
            }
        } else {
            remainingSize -= textureSize;
        }

        vtxIndex += 4;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 122);
}

void KaleidoScope_DrawPlayerWork(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    Vec3f pos;
    Vec3s rot;
    f32 scale;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        pos.x = 2.0f;
        pos.y = -130.0f;
        pos.z = -150.0f;
        scale = 0.046f;
    } else if (CUR_EQUIP_VALUE(EQUIP_TYPE_SWORD) != EQUIP_VALUE_SWORD_MASTER) {
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
    Player_DrawPause(play, pauseCtx->playerSegment, &pauseCtx->playerSkelAnime, &pos, &rot, scale,
                     SWORD_EQUIP_TO_PLAYER(CUR_EQUIP_VALUE(EQUIP_TYPE_SWORD)),
                     TUNIC_EQUIP_TO_PLAYER(CUR_EQUIP_VALUE(EQUIP_TYPE_TUNIC)),
                     SHIELD_EQUIP_TO_PLAYER(CUR_EQUIP_VALUE(EQUIP_TYPE_SHIELD)),
                     BOOTS_EQUIP_TO_PLAYER(CUR_EQUIP_VALUE(EQUIP_TYPE_BOOTS)));
}

// Wrong prototype; this function is called with `play` even though it has no arguments
void KaleidoScope_ProcessPlayerPreRender(PlayState* play);

void KaleidoScope_DrawEquipment(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
    u16 i;
    u16 j;
    u16 k;
    u16 bit;
    u16 temp;
    u16 point;
    u16 rowStart;
    u16 pad;
    s16 cursorMoveResult;
    u16 cursorItem;
    u16 cursorSlot;
    s16 cursorPoint;
    s16 cursorX;
    s16 cursorY;
    volatile s16 oldCursorPoint;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 219);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, ZREG(39), ZREG(40), ZREG(41), pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, ZREG(43), ZREG(44), ZREG(45), 0);

    for (i = 0, j = 64; i < 4; i++, j += 4) {
        if (CUR_EQUIP_VALUE(i) != 0) {
            gDPPipeSync(POLY_OPA_DISP++);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[j], 4, 0);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, gEquippedItemOutlineTex, 32, 32, 0);
        }
    }

    if ((pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 0) && (pauseCtx->pageIndex == PAUSE_EQUIP)) {
        oldCursorPoint = pauseCtx->cursorPoint[PAUSE_EQUIP];
        pauseCtx->cursorColorSet = 0;

        if (pauseCtx->cursorSpecialPos == 0) {
            pauseCtx->nameColorSet = 0;

            cursorItem = pauseCtx->cursorItem[PAUSE_EQUIP];
            if ((cursorItem >= ITEM_SWORD_KOKIRI) && (cursorItem <= ITEM_BOOTS_HOVER)) {
                pauseCtx->cursorColorSet = 8;
            }

            cursorPoint = pauseCtx->cursorPoint[PAUSE_EQUIP];
            cursorX = pauseCtx->cursorX[PAUSE_EQUIP];
            cursorY = pauseCtx->cursorY[PAUSE_EQUIP];

            cursorMoveResult = 0;
            while (cursorMoveResult == 0) {
                if (pauseCtx->stickAdjX < -30) {
                    if (pauseCtx->cursorX[PAUSE_EQUIP] != 0) {
                        pauseCtx->cursorX[PAUSE_EQUIP] -= 1;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] -= 1;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == 0) {
                            if (pauseCtx->cursorY[PAUSE_EQUIP] == 0) {
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    cursorMoveResult = 1;
                                }
                            } else {
                                if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                    cursorMoveResult = 1;
                                }
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] & gSaveContext.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP] += 1;

                        if (pauseCtx->cursorY[PAUSE_EQUIP] >= 4) {
                            pauseCtx->cursorY[PAUSE_EQUIP] = 0;
                        }

                        pauseCtx->cursorPoint[PAUSE_EQUIP] =
                            pauseCtx->cursorX[PAUSE_EQUIP] + (pauseCtx->cursorY[PAUSE_EQUIP] * 4);

                        if (pauseCtx->cursorPoint[PAUSE_EQUIP] >= 16) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = pauseCtx->cursorX[PAUSE_EQUIP];
                        }

                        if (cursorY == pauseCtx->cursorY[PAUSE_EQUIP]) {
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                            cursorMoveResult = 3;
                        }
                    }
                } else if (pauseCtx->stickAdjX > 30) {
                    if (pauseCtx->cursorX[PAUSE_EQUIP] < 3) {
                        pauseCtx->cursorX[PAUSE_EQUIP] += 1;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] += 1;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == 0) {
                            if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                cursorMoveResult = 1;
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] & gSaveContext.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP] += 1;

                        if (pauseCtx->cursorY[PAUSE_EQUIP] >= 4) {
                            pauseCtx->cursorY[PAUSE_EQUIP] = 0;
                        }

                        pauseCtx->cursorPoint[PAUSE_EQUIP] =
                            pauseCtx->cursorX[PAUSE_EQUIP] + (pauseCtx->cursorY[PAUSE_EQUIP] * 4);

                        if (pauseCtx->cursorPoint[PAUSE_EQUIP] >= 16) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = pauseCtx->cursorX[PAUSE_EQUIP];
                        }

                        if (cursorY == pauseCtx->cursorY[PAUSE_EQUIP]) {
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                            cursorMoveResult = 3;
                        }
                    }
                } else {
                    cursorMoveResult = 4;
                }
            }

            cursorPoint = pauseCtx->cursorPoint[PAUSE_EQUIP];
            cursorY = pauseCtx->cursorY[PAUSE_EQUIP];

            if (cursorMoveResult) {}

            cursorMoveResult = 0;
            while (cursorMoveResult == 0) {
                if (pauseCtx->stickAdjY > 30) {
                    if (pauseCtx->cursorY[PAUSE_EQUIP] != 0) {
                        pauseCtx->cursorY[PAUSE_EQUIP] -= 1;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] -= 4;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == 0) {
                            if (pauseCtx->cursorY[PAUSE_EQUIP] == 0) {
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    cursorMoveResult = 1;
                                }
                            } else if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                cursorMoveResult = 1;
                            }
                        } else if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                   gSaveContext.inventory.equipment) {
                            cursorMoveResult = 2;
                        }
                    } else {
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        cursorMoveResult = 3;
                    }
                } else if (pauseCtx->stickAdjY < -30) {
                    if (pauseCtx->cursorY[PAUSE_EQUIP] < 3) {
                        pauseCtx->cursorY[PAUSE_EQUIP] += 1;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] += 4;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == 0) {
                            if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                cursorMoveResult = 1;
                            }
                        } else if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                   gSaveContext.inventory.equipment) {
                            cursorMoveResult = 2;
                        }
                    } else {
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        cursorMoveResult = 3;
                    }
                } else {
                    cursorMoveResult = 4;
                }
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;

                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                cursorPoint = cursorX = cursorY = 0;
                while (true) {
                    if (cursorX == 0) {
                        if (cursorY == 0) {
                            if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                                pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                                pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                                break;
                            }
                        } else if (CUR_UPG_VALUE(cursorY) != 0) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                            break;
                        }
                    } else if (gBitFlags[cursorPoint - 1] & gSaveContext.inventory.equipment) {
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        break;
                    }

                    cursorY = cursorY + 1;
                    cursorPoint = cursorPoint + 4;
                    if (cursorY < 4) {
                        continue;
                    }

                    cursorY = 0;
                    cursorPoint = cursorX + 1;
                    cursorX = cursorPoint;
                    if (cursorX < 4) {
                        continue;
                    }

                    KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                    break;
                }
            }
        } else {
            if (pauseCtx->stickAdjX < -30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                cursorPoint = cursorX = 3;
                cursorY = 0;
                while (true) {
                    if (cursorX == 0) {
                        if (CUR_UPG_VALUE(cursorY) != 0) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                            break;
                        }
                    } else if (gBitFlags[cursorPoint - 1] & gSaveContext.inventory.equipment) {
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        break;
                    }

                    cursorY = cursorY + 1;
                    cursorPoint = cursorPoint + 4;
                    if (cursorY < 4) {
                        continue;
                    }

                    cursorY = 0;
                    cursorPoint = cursorX - 1;
                    cursorX = cursorPoint;
                    if (cursorX >= 0) {
                        continue;
                    }

                    KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                    break;
                }
            }
        }

        if (pauseCtx->cursorX[PAUSE_EQUIP] == 0) {
            pauseCtx->cursorColorSet = 0;

            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                if ((pauseCtx->cursorY[PAUSE_EQUIP] == 0) && (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0)) {
                    cursorItem = ITEM_BULLET_BAG_30 + CUR_UPG_VALUE(UPG_BULLET_BAG) - 1;
                } else {
                    cursorItem = ITEM_QUIVER_30 + sUpgradeItemOffsets[pauseCtx->cursorY[PAUSE_EQUIP]] +
                                 CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) - 1;
                    osSyncPrintf("H_arrowcase_1 + non_equip_item_table = %d\n", cursorItem);
                }
            } else {
                if ((pauseCtx->cursorY[PAUSE_EQUIP] == 0) && (CUR_UPG_VALUE(UPG_QUIVER) == 0)) {
                    cursorItem = ITEM_BULLET_BAG_30 + CUR_UPG_VALUE(UPG_BULLET_BAG) - 1;
                } else {
                    cursorItem = ITEM_QUIVER_30 + sUpgradeItemOffsets[pauseCtx->cursorY[PAUSE_EQUIP]] +
                                 CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) - 1;
                    osSyncPrintf("大人 H_arrowcase_1 + non_equip_item_table = %d\n", cursorItem);
                }
            }
        } else {
            cursorItem = ITEM_SWORD_KOKIRI + sEquipmentItemOffsets[pauseCtx->cursorPoint[PAUSE_EQUIP]];
            osSyncPrintf("ccc=%d\n", cursorItem);

            if (pauseCtx->cursorSpecialPos == 0) {
                pauseCtx->cursorColorSet = 8;
            }
        }

        if ((pauseCtx->cursorY[PAUSE_EQUIP] == 0) && (pauseCtx->cursorX[PAUSE_EQUIP] == 3)) {
            if (gSaveContext.bgsFlag != 0) {
                cursorItem = ITEM_HEART_PIECE_2;
            } else if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
                cursorItem = ITEM_GIANTS_KNIFE;
            }
        }

        cursorSlot = pauseCtx->cursorPoint[PAUSE_EQUIP];

        pauseCtx->cursorItem[PAUSE_EQUIP] = cursorItem;
        pauseCtx->cursorSlot[PAUSE_EQUIP] = cursorSlot;

        osSyncPrintf("kscope->select_name[Display_Equipment] = %d\n", pauseCtx->cursorItem[PAUSE_EQUIP]);

        if (!((gEquipAgeReqs[pauseCtx->cursorY[PAUSE_EQUIP]][pauseCtx->cursorX[PAUSE_EQUIP]] == 9) ||
              (gEquipAgeReqs[pauseCtx->cursorY[PAUSE_EQUIP]][pauseCtx->cursorX[PAUSE_EQUIP]] ==
               ((void)0, gSaveContext.linkAge)))) {
            pauseCtx->nameColorSet = 1;
        }

        if (pauseCtx->cursorItem[PAUSE_EQUIP] == ITEM_STRENGTH_GORONS_BRACELET) {
            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                pauseCtx->nameColorSet = 0;
            } else {
                pauseCtx->nameColorSet = 1;
            }
        }

        if ((pauseCtx->cursorX[PAUSE_EQUIP] == 0) && (pauseCtx->cursorY[PAUSE_EQUIP] == 0)) {
            if (LINK_AGE_IN_YEARS != YEARS_CHILD) {
                if ((cursorItem >= ITEM_BULLET_BAG_30) && (cursorItem <= ITEM_BULLET_BAG_50)) {
                    pauseCtx->nameColorSet = 1;
                } else {
                    pauseCtx->nameColorSet = 0;
                }
            } else {
                pauseCtx->nameColorSet = 0;
            }
        }

        KaleidoScope_SetCursorVtx(pauseCtx, cursorSlot * 4, pauseCtx->equipVtx);

        if ((pauseCtx->cursorSpecialPos == 0) && (cursorItem != PAUSE_ITEM_NONE) && (pauseCtx->state == 6) &&
            (pauseCtx->unk_1E4 == 0) && CHECK_BTN_ALL(input->press.button, BTN_A) &&
            (pauseCtx->cursorX[PAUSE_EQUIP] != 0)) {

            if ((gEquipAgeReqs[pauseCtx->cursorY[PAUSE_EQUIP]][pauseCtx->cursorX[PAUSE_EQUIP]] == 9) ||
                (gEquipAgeReqs[pauseCtx->cursorY[PAUSE_EQUIP]][pauseCtx->cursorX[PAUSE_EQUIP]] ==
                 ((void)0, gSaveContext.linkAge))) {
                Inventory_ChangeEquipment(pauseCtx->cursorY[PAUSE_EQUIP], pauseCtx->cursorX[PAUSE_EQUIP]);

                if (pauseCtx->cursorY[PAUSE_EQUIP] == 0) {
                    gSaveContext.infTable[INFTABLE_1DX_INDEX] = 0;
                    gSaveContext.equips.buttonItems[0] = cursorItem;

                    if ((pauseCtx->cursorX[PAUSE_EQUIP] == 3) && (gSaveContext.bgsFlag != 0)) {
                        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
                        gSaveContext.swordHealth = 8;
                    } else {
                        if (gSaveContext.equips.buttonItems[0] == ITEM_HEART_PIECE_2) {
                            gSaveContext.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
                        }
                        if ((gSaveContext.equips.buttonItems[0] == ITEM_SWORD_BIGGORON) &&
                            (gSaveContext.bgsFlag == 0) &&
                            CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
                            gSaveContext.equips.buttonItems[0] = ITEM_GIANTS_KNIFE;
                        }
                    }

                    Interface_LoadItemIcon1(play, 0);
                }

                Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                pauseCtx->unk_1E4 = 7;
                sEquipTimer = 10;
            } else {
                Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        }

        if (oldCursorPoint != pauseCtx->cursorPoint[PAUSE_EQUIP]) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if ((pauseCtx->unk_1E4 == 7) && (pauseCtx->pageIndex == PAUSE_EQUIP)) {
        KaleidoScope_SetCursorVtx(pauseCtx, pauseCtx->cursorSlot[PAUSE_EQUIP] * 4, pauseCtx->equipVtx);
        pauseCtx->cursorColorSet = 8;

        sEquipTimer--;
        if (sEquipTimer == 0) {
            pauseCtx->unk_1E4 = 0;
        }
    }

    for (rowStart = 0, i = 0, point = 4; i < 4; i++, rowStart += 4, point += 16) {

        for (k = 0, temp = rowStart + 1, bit = rowStart, j = point; k < 3; k++, bit++, j += 4, temp++) {

            if ((gBitFlags[bit] & gSaveContext.inventory.equipment) && (pauseCtx->cursorSpecialPos == 0)) {
                if ((gEquipAgeReqs[i][k + 1] == 9) || (gEquipAgeReqs[i][k + 1] == ((void)0, gSaveContext.linkAge))) {
                    if (temp == cursorSlot) {
                        pauseCtx->equipVtx[j].v.ob[0] = pauseCtx->equipVtx[j + 2].v.ob[0] =
                            pauseCtx->equipVtx[j].v.ob[0] - 2;
                        pauseCtx->equipVtx[j + 1].v.ob[0] = pauseCtx->equipVtx[j + 3].v.ob[0] =
                            pauseCtx->equipVtx[j + 1].v.ob[0] + 4;
                        pauseCtx->equipVtx[j].v.ob[1] = pauseCtx->equipVtx[j + 1].v.ob[1] =
                            pauseCtx->equipVtx[j].v.ob[1] + 2;
                        pauseCtx->equipVtx[j + 2].v.ob[1] = pauseCtx->equipVtx[j + 3].v.ob[1] =
                            pauseCtx->equipVtx[j + 2].v.ob[1] - 4;
                    }
                }
            }
        }
    }

    Gfx_SetupDL_42Opa(play->state.gfxCtx);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    for (rowStart = 0, j = 0, temp = 0, i = 0; i < 4; i++, rowStart += 4, j += 16) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[j], 16, 0);

        if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
            point = CUR_UPG_VALUE(sChildUpgrades[i]);
            if (1) {}
            if ((point != 0) && (CUR_UPG_VALUE(sChildUpgrades[i]) != 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx,
                                                   gItemIcons[sChildUpgradeItemBases[i] + point - 1], 32, 32, 0);
            }
        } else {
            if ((i == 0) && (CUR_UPG_VALUE(sAdultUpgrades[i]) == 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(
                    play->state.gfxCtx, gItemIcons[sChildUpgradeItemBases[i] + CUR_UPG_VALUE(sChildUpgrades[i]) - 1],
                    32, 32, 0);
            } else if (CUR_UPG_VALUE(sAdultUpgrades[i]) != 0) {
                KaleidoScope_DrawQuadTextureRGBA32(
                    play->state.gfxCtx, gItemIcons[sAdultUpgradeItemBases[i] + CUR_UPG_VALUE(sAdultUpgrades[i]) - 1],
                    32, 32, 0);
            }
        }

        for (k = 0, bit = rowStart, point = 4; k < 3; k++, point += 4, temp++, bit++) {

            if (((u32)i == 0) && (k == 2) && (gSaveContext.bgsFlag != 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gBiggoronSwordIconTex, 32, 32, point);
            } else if ((i == 0) && (k == 2) && (gBitFlags[bit + 1] & gSaveContext.inventory.equipment)) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gBrokenGiantsKnifeIconTex, 32, 32, point);
            } else if (gBitFlags[bit] & gSaveContext.inventory.equipment) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gItemIcons[ITEM_SWORD_KOKIRI + temp], 32, 32,
                                                   point);
            }
        }
    }

    KaleidoScope_DrawPlayerWork(play);

    if ((pauseCtx->unk_1E4 == 7) && (sEquipTimer == 10)) {
        KaleidoScope_SetupPlayerPreRender(play);
    }

    if ((pauseCtx->unk_1E4 == 7) && (sEquipTimer == 9)) {
        //! @bug: This function shouldn't take any arguments
        KaleidoScope_ProcessPlayerPreRender(play);
    }

    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0B, play->interfaceCtx.mapSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);

    Gfx_SetupDL_42Opa(play->state.gfxCtx);
    KaleidoScope_DrawEquipmentImage(play, pauseCtx->playerSegment, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT);

    if (gUpgradeMasks[0]) {}

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 609);
}
