#include "z_kaleido_scope.h"

#include "controller.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "regs.h"
#include "sfx.h"
#include "translation.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/parameter_static/parameter_static.h"

static u8 sChildUpgrades[] = {
    UPG_BULLET_BAG, // EQUIP_QUAD_UPG_BULLETBAG_QUIVER
    UPG_BOMB_BAG,   // EQUIP_QUAD_UPG_BOMB_BAG
    UPG_STRENGTH,   // EQUIP_QUAD_UPG_STRENGTH
    UPG_SCALE,      // EQUIP_QUAD_UPG_SCALE
};
static u8 sAdultUpgrades[] = {
    UPG_QUIVER,   // EQUIP_QUAD_UPG_BULLETBAG_QUIVER
    UPG_BOMB_BAG, // EQUIP_QUAD_UPG_BOMB_BAG
    UPG_STRENGTH, // EQUIP_QUAD_UPG_STRENGTH
    UPG_SCALE,    // EQUIP_QUAD_UPG_SCALE
};

static u8 sChildUpgradeItemBases[] = {
    ITEM_BULLET_BAG_30,            // EQUIP_QUAD_UPG_BULLETBAG_QUIVER
    ITEM_BOMB_BAG_20,              // EQUIP_QUAD_UPG_BOMB_BAG
    ITEM_STRENGTH_GORONS_BRACELET, // EQUIP_QUAD_UPG_STRENGTH
    ITEM_SCALE_SILVER,             // EQUIP_QUAD_UPG_SCALE
};
static u8 sAdultUpgradeItemBases[] = {
    ITEM_QUIVER_30,                // EQUIP_QUAD_UPG_BULLETBAG_QUIVER
    ITEM_BOMB_BAG_20,              // EQUIP_QUAD_UPG_BOMB_BAG
    ITEM_STRENGTH_GORONS_BRACELET, // EQUIP_QUAD_UPG_STRENGTH
    ITEM_SCALE_SILVER,             // EQUIP_QUAD_UPG_SCALE
};

static u8 sUpgradeItemOffsets[] = {
    0,                                              // unused
    ITEM_BOMB_BAG_20 - ITEM_QUIVER_30,              // UPG_BOMB_BAG
    ITEM_STRENGTH_GORONS_BRACELET - ITEM_QUIVER_30, // UPG_STRENGTH
    ITEM_SCALE_SILVER - ITEM_QUIVER_30,             // UPG_SCALE
};

static u8 sEquipmentItemOffsets[] = {
    // EQUIP_TYPE_SWORD
    0,                                       // unused
    ITEM_SWORD_KOKIRI - ITEM_SWORD_KOKIRI,   // EQUIP_VALUE_SWORD_KOKIRI
    ITEM_SWORD_MASTER - ITEM_SWORD_KOKIRI,   // EQUIP_VALUE_SWORD_MASTER
    ITEM_SWORD_BIGGORON - ITEM_SWORD_KOKIRI, // EQUIP_VALUE_SWORD_BIGGORON
    // EQUIP_TYPE_SHIELD
    0,                                      // unused
    ITEM_SHIELD_DEKU - ITEM_SWORD_KOKIRI,   // EQUIP_VALUE_SHIELD_DEKU
    ITEM_SHIELD_HYLIAN - ITEM_SWORD_KOKIRI, // EQUIP_VALUE_SHIELD_HYLIAN
    ITEM_SHIELD_MIRROR - ITEM_SWORD_KOKIRI, // EQUIP_VALUE_SHIELD_MIRROR
    // EQUIP_TYPE_TUNIC
    0,                                     // unused
    ITEM_TUNIC_KOKIRI - ITEM_SWORD_KOKIRI, // EQUIP_VALUE_TUNIC_KOKIRI
    ITEM_TUNIC_GORON - ITEM_SWORD_KOKIRI,  // EQUIP_VALUE_TUNIC_GORON
    ITEM_TUNIC_ZORA - ITEM_SWORD_KOKIRI,   // EQUIP_VALUE_TUNIC_ZORA
    // EQUIP_TYPE_BOOTS
    0,                                     // unused
    ITEM_BOOTS_KOKIRI - ITEM_SWORD_KOKIRI, // EQUIP_VALUE_BOOTS_KOKIRI
    ITEM_BOOTS_IRON - ITEM_SWORD_KOKIRI,   // EQUIP_VALUE_BOOTS_IRON
    ITEM_BOOTS_HOVER - ITEM_SWORD_KOKIRI,  // EQUIP_VALUE_BOOTS_HOVER
};

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
    remainingSize = width * height * G_IM_SIZ_16b_BYTES;
    textureHeight = TMEM_SIZE / (width * G_IM_SIZ_16b_BYTES);
    textureSize = width * textureHeight * G_IM_SIZ_16b_BYTES;
    textureCount = remainingSize / textureSize;
    if ((remainingSize % textureSize) != 0) {
        textureCount += 1;
    }

    vtxIndex = EQUIP_QUAD_PLAYER_FIRST * 4;

    gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, width - 1, textureHeight - 1, 0,
                     G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                     G_TX_NOLOD);

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
                textureHeight = remainingSize / (s32)(width * G_IM_SIZ_16b_BYTES);
                remainingSize -= textureSize;

                gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, width - 1, textureHeight - 1, 0,
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

#ifndef AVOID_UB
// Wrong prototype; this function is called with `play` even though it has no arguments
void KaleidoScope_ProcessPlayerPreRender(PlayState* play);
#endif

void KaleidoScope_DrawEquipment(PlayState* play) {
    static s16 sEquipTimer = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    Input* input = &play->state.input[0];
    u16 i;
    u16 j;
    u16 k;
    u16 bit;
    u16 rowStart;
    u16 temp;
    u16 point;
    s16 cursorMoveResult;
    u16 cursorSlot;
    u16 cursorItem;
    s16 cursorX;
    s16 cursorY;
    s16 oldCursorPoint;
    s16 cursorPoint;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 219);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, ZREG(39), ZREG(40), ZREG(41), pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, ZREG(43), ZREG(44), ZREG(45), 0);

    // Draw EQUIP_QUAD_SELECTED_SWORD, EQUIP_QUAD_SELECTED_SHIELD, EQUIP_QUAD_SELECTED_TUNIC, EQUIP_QUAD_SELECTED_BOOTS

    for (i = 0, j = EQUIP_QUAD_SELECTED_SWORD * 4; i < EQUIP_TYPE_MAX; i++, j += 4) {
        if (CUR_EQUIP_VALUE(i) != 0) {
            gDPPipeSync(POLY_OPA_DISP++);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[j], 4, 0);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, gEquippedItemOutlineTex, 32, 32, 0);
        }
    }

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
        (pauseCtx->pageIndex == PAUSE_EQUIP)) {
        oldCursorPoint = pauseCtx->cursorPoint[PAUSE_EQUIP];
        pauseCtx->cursorColorSet = 0;

        // Handle moving the cursor with stick input

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
            do {
                if (pauseCtx->stickAdjX < -30) {
                    if (pauseCtx->cursorX[PAUSE_EQUIP] != EQUIP_CURSOR_X_UPG) {
                        pauseCtx->cursorX[PAUSE_EQUIP]--;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] -= 1;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) {
                            if (pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_CURSOR_Y_BULLETBAG_QUIVER) {
                                //! @bug Assumes adult always has bullet bag (as adult this should rely on `UPG_QUIVER`)
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    cursorMoveResult = 1;
                                }
                            } else {
                                if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                    cursorMoveResult = 1;
                                }
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                gSaveContext.save.info.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP]++;

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
                        pauseCtx->cursorX[PAUSE_EQUIP]++;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] += 1;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) {
                            if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                cursorMoveResult = 1;
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                gSaveContext.save.info.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                        pauseCtx->cursorY[PAUSE_EQUIP]++;

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
            } while (cursorMoveResult == 0);

            cursorPoint = pauseCtx->cursorPoint[PAUSE_EQUIP];
            cursorY = pauseCtx->cursorY[PAUSE_EQUIP];

            cursorMoveResult = 0;
            do {
                if (pauseCtx->stickAdjY > 30) {
                    if (pauseCtx->cursorY[PAUSE_EQUIP] != 0) {
                        pauseCtx->cursorY[PAUSE_EQUIP]--;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] -= 4;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) {
                            if (pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_CURSOR_Y_BULLETBAG_QUIVER) {
                                if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                    cursorMoveResult = 1;
                                }
                            } else {
                                if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                    cursorMoveResult = 1;
                                }
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                gSaveContext.save.info.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        cursorMoveResult = 3;
                    }
                } else if (pauseCtx->stickAdjY < -30) {
                    if (pauseCtx->cursorY[PAUSE_EQUIP] < 3) {
                        pauseCtx->cursorY[PAUSE_EQUIP]++;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] += 4;

                        if (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) {
                            if (CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) != 0) {
                                cursorMoveResult = 1;
                            }
                        } else {
                            if (gBitFlags[pauseCtx->cursorPoint[PAUSE_EQUIP] - 1] &
                                gSaveContext.save.info.inventory.equipment) {
                                cursorMoveResult = 2;
                            }
                        }
                    } else {
                        pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                        pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                        cursorMoveResult = 3;
                    }
                } else {
                    cursorMoveResult = 4;
                }
            } while (cursorMoveResult == 0);
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;

                SFX_PLAY_CENTERED(NA_SE_SY_CURSOR);

                cursorPoint = cursorX = cursorY = 0;
                while (true) {
                    if (cursorX == EQUIP_CURSOR_X_UPG) {
                        if (cursorY == EQUIP_CURSOR_Y_BULLETBAG_QUIVER) {
                            if (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0) {
                                pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                                pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                                pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                                break;
                            }
                        } else {
                            if (CUR_UPG_VALUE(cursorY) != 0) {
                                pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                                pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                                pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                                break;
                            }
                        }
                    } else {
                        if (gBitFlags[cursorPoint - 1] & gSaveContext.save.info.inventory.equipment) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                            break;
                        }
                    }

                    cursorY = cursorY + 1;
                    cursorPoint = cursorPoint + 4;
                    if (cursorY >= 4) {
                        cursorY = 0;
                        cursorPoint = cursorX + 1;
                        cursorX = cursorPoint;
                        if (cursorX >= 4) {
                            KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                            break;
                        }
                    }
                }
            }
        } else { // cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT
            if (pauseCtx->stickAdjX < -30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                SFX_PLAY_CENTERED(NA_SE_SY_CURSOR);

                cursorPoint = cursorX = 3;
                cursorY = 0;
                while (true) {
                    if (cursorX == EQUIP_CURSOR_X_UPG) {
                        if (CUR_UPG_VALUE(cursorY) != 0) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                            break;
                        }
                    } else {
                        if (gBitFlags[cursorPoint - 1] & gSaveContext.save.info.inventory.equipment) {
                            pauseCtx->cursorPoint[PAUSE_EQUIP] = cursorPoint;
                            pauseCtx->cursorX[PAUSE_EQUIP] = cursorX;
                            pauseCtx->cursorY[PAUSE_EQUIP] = cursorY;
                            break;
                        }
                    }

                    cursorY = cursorY + 1;
                    cursorPoint = cursorPoint + 4;
                    if (cursorY >= 4) {
                        cursorY = 0;
                        cursorPoint = cursorX - 1;
                        cursorX = cursorPoint;
                        if (cursorX < 0) {
                            KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                            break;
                        }
                    }
                }
            }
        }

        // set cursorItem

        if (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) {
            pauseCtx->cursorColorSet = 0;

            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                if ((pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_CURSOR_Y_BULLETBAG_QUIVER) &&
                    (CUR_UPG_VALUE(UPG_BULLET_BAG) != 0)) {
                    cursorItem = ITEM_BULLET_BAG_30 + CUR_UPG_VALUE(UPG_BULLET_BAG) - 1;
                } else {
                    cursorItem = ITEM_QUIVER_30 + sUpgradeItemOffsets[pauseCtx->cursorY[PAUSE_EQUIP]] +
                                 CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) - 1;
                    PRINTF("H_arrowcase_1 + non_equip_item_table = %d\n", cursorItem);
                }
            } else {
                if ((pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_CURSOR_Y_BULLETBAG_QUIVER) &&
                    (CUR_UPG_VALUE(UPG_QUIVER) == 0)) {
                    cursorItem = ITEM_BULLET_BAG_30 + CUR_UPG_VALUE(UPG_BULLET_BAG) - 1;
                } else {
                    cursorItem = ITEM_QUIVER_30 + sUpgradeItemOffsets[pauseCtx->cursorY[PAUSE_EQUIP]] +
                                 CUR_UPG_VALUE(pauseCtx->cursorY[PAUSE_EQUIP]) - 1;
                    PRINTF(T("大人 H_arrowcase_1 + non_equip_item_table = %d\n",
                             "Adult H_arrowcase_1 + non_equip_item_table = %d\n"),
                           cursorItem);
                }
            }
        } else {
            cursorItem = ITEM_SWORD_KOKIRI + sEquipmentItemOffsets[pauseCtx->cursorPoint[PAUSE_EQUIP]];
            PRINTF("ccc=%d\n", cursorItem);

            if (pauseCtx->cursorSpecialPos == 0) {
                pauseCtx->cursorColorSet = 8;
            }
        }

        if ((pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_TYPE_SWORD) &&
            (pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_VALUE_SWORD_BIGGORON)) {
            if (gSaveContext.save.info.playerData.bgsFlag) {
                cursorItem = ITEM_HEART_PIECE_2;
            } else if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
                cursorItem = ITEM_GIANTS_KNIFE;
            }
        }

        cursorSlot = pauseCtx->cursorPoint[PAUSE_EQUIP];

        pauseCtx->cursorSlot[PAUSE_EQUIP] = cursorSlot;
        pauseCtx->cursorItem[PAUSE_EQUIP] = cursorItem;

        PRINTF("kscope->select_name[Display_Equipment] = %d\n", pauseCtx->cursorItem[PAUSE_EQUIP]);

        // Handle age particularities

        if (!CHECK_AGE_REQ_EQUIP(pauseCtx->cursorY[PAUSE_EQUIP], pauseCtx->cursorX[PAUSE_EQUIP])) {
            pauseCtx->nameColorSet = 1;
        }

        if (pauseCtx->cursorItem[PAUSE_EQUIP] == ITEM_STRENGTH_GORONS_BRACELET) {
            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                pauseCtx->nameColorSet = 0;
            } else {
                pauseCtx->nameColorSet = 1;
            }
        }

        if ((pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_CURSOR_X_UPG) &&
            (pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_CURSOR_Y_BULLETBAG_QUIVER)) {
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

        // Set cursor position

        KaleidoScope_SetCursorPos(pauseCtx, cursorSlot * 4, pauseCtx->equipVtx);

        // Handle input for changing equipment

        if ((pauseCtx->cursorSpecialPos == 0) && (cursorItem != PAUSE_ITEM_NONE) &&
            (pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
            CHECK_BTN_ALL(input->press.button, BTN_A) && (pauseCtx->cursorX[PAUSE_EQUIP] != EQUIP_CURSOR_X_UPG)) {

            if (CHECK_AGE_REQ_EQUIP(pauseCtx->cursorY[PAUSE_EQUIP], pauseCtx->cursorX[PAUSE_EQUIP])) {
                Inventory_ChangeEquipment(pauseCtx->cursorY[PAUSE_EQUIP], pauseCtx->cursorX[PAUSE_EQUIP]);

                if (pauseCtx->cursorY[PAUSE_EQUIP] == EQUIP_TYPE_SWORD) {
                    gSaveContext.save.info.infTable[INFTABLE_INDEX_1DX] = 0;
                    gSaveContext.save.info.equips.buttonItems[0] = cursorItem;

                    if ((pauseCtx->cursorX[PAUSE_EQUIP] == EQUIP_VALUE_SWORD_BIGGORON) &&
                        gSaveContext.save.info.playerData.bgsFlag) {
                        gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
                        gSaveContext.save.info.playerData.swordHealth = 8;
                    } else {
                        if (gSaveContext.save.info.equips.buttonItems[0] == ITEM_HEART_PIECE_2) {
                            gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
                        }
                        if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_SWORD_BIGGORON) &&
                            !gSaveContext.save.info.playerData.bgsFlag &&
                            CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
                            gSaveContext.save.info.equips.buttonItems[0] = ITEM_GIANTS_KNIFE;
                        }
                    }

                    Interface_LoadItemIcon1(play, 0);
                }

                SFX_PLAY_CENTERED(NA_SE_SY_DECIDE);

                // Wait 10 frames before accepting input again
                pauseCtx->mainState = PAUSE_MAIN_STATE_EQUIP_CHANGED;
                sEquipTimer = 10;
            } else {
                SFX_PLAY_CENTERED(NA_SE_SY_ERROR);
            }
        }

        if (oldCursorPoint != pauseCtx->cursorPoint[PAUSE_EQUIP]) {
            SFX_PLAY_CENTERED(NA_SE_SY_CURSOR);
        }
    } else if ((pauseCtx->mainState == PAUSE_MAIN_STATE_EQUIP_CHANGED) && (pauseCtx->pageIndex == PAUSE_EQUIP)) {
        KaleidoScope_SetCursorPos(pauseCtx, pauseCtx->cursorSlot[PAUSE_EQUIP] * 4, pauseCtx->equipVtx);
        pauseCtx->cursorColorSet = 8;

        sEquipTimer--;
        if (sEquipTimer == 0) {
            pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
        }
    }

    // Enlarge the equip item at the current cursor position, if it can be equipped

    // for each row (one row per equip type)
    for (rowStart = 0, i = 0, point = EQUIP_QUAD_SWORD_KOKIRI * 4; i < EQUIP_TYPE_MAX;
         i++, rowStart += 4, point += 4 * 4) {

        // for each equip column
        for (k = 0, temp = rowStart + 1, bit = rowStart, j = point; k < 3; k++, bit++, j += 4, temp++) {

            if ((gBitFlags[bit] & gSaveContext.save.info.inventory.equipment) && (pauseCtx->cursorSpecialPos == 0)) {
                if (CHECK_AGE_REQ_EQUIP(i, k + 1)) {
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

    // Draw upgrades and equips

    Gfx_SetupDL_42Opa(play->state.gfxCtx);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    // for each row
    for (rowStart = 0, j = 0, temp = 0, i = 0; i < 4; i++, rowStart += 4, j += 4 * 4) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->equipVtx[j], 4 * 4, 0);

        // Draw upgrade `i`
        // EQUIP_QUAD_UPG_BULLETBAG_QUIVER, EQUIP_QUAD_UPG_BOMB_BAG, EQUIP_QUAD_UPG_STRENGTH, EQUIP_QUAD_UPG_SCALE

        if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
            point = CUR_UPG_VALUE(sChildUpgrades[i]);
            if (((u32)point != 0) && (CUR_UPG_VALUE(sChildUpgrades[i]) != 0)) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx,
                                                   gItemIcons[sChildUpgradeItemBases[i] + point - 1], ITEM_ICON_WIDTH,
                                                   ITEM_ICON_HEIGHT, 0);
            }
        } else {
            if ((i == 0) && (CUR_UPG_VALUE(sAdultUpgrades[i]) == 0)) {
                // Show bullet bag instead of quiver if player has no quiver
                //! @bug This assumes adult always has bullet bag
                KaleidoScope_DrawQuadTextureRGBA32(
                    play->state.gfxCtx, gItemIcons[sChildUpgradeItemBases[i] + CUR_UPG_VALUE(sChildUpgrades[i]) - 1],
                    ITEM_ICON_WIDTH, ITEM_ICON_HEIGHT, 0);
            } else if (CUR_UPG_VALUE(sAdultUpgrades[i]) != 0) {
                KaleidoScope_DrawQuadTextureRGBA32(
                    play->state.gfxCtx, gItemIcons[sAdultUpgradeItemBases[i] + CUR_UPG_VALUE(sAdultUpgrades[i]) - 1],
                    ITEM_ICON_WIDTH, ITEM_ICON_HEIGHT, 0);
            }
        }

        // Draw owned equips of type `i`
        // EQUIP_QUAD_SWORD_KOKIRI, EQUIP_QUAD_SWORD_MASTER, EQUIP_QUAD_SWORD_BIGGORON
        // EQUIP_QUAD_SHIELD_DEKU, EQUIP_QUAD_SHIELD_HYLIAN, EQUIP_QUAD_SHIELD_MIRROR
        // EQUIP_QUAD_TUNIC_KOKIRI, EQUIP_QUAD_TUNIC_GORON, EQUIP_QUAD_TUNIC_ZORA
        // EQUIP_QUAD_BOOTS_KOKIRI, EQUIP_QUAD_BOOTS_IRON, EQUIP_QUAD_BOOTS_HOVER

        for (k = 0, bit = rowStart, point = 4; k < 3; k++, point += 4, temp++, bit++) {

            if (((u32)i == EQUIP_TYPE_SWORD) && (k == EQUIP_INV_SWORD_BIGGORON) &&
                gSaveContext.save.info.playerData.bgsFlag) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gItemIconSwordBiggoronTex, ITEM_ICON_WIDTH,
                                                   ITEM_ICON_HEIGHT, point);
            } else if ((i == EQUIP_TYPE_SWORD) && (k == EQUIP_INV_SWORD_BIGGORON) &&
                       (gBitFlags[bit + 1] & gSaveContext.save.info.inventory.equipment)) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gItemIconBrokenGiantsKnifeTex, ITEM_ICON_WIDTH,
                                                   ITEM_ICON_HEIGHT, point);
            } else if (gBitFlags[bit] & gSaveContext.save.info.inventory.equipment) {
                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gItemIcons[ITEM_SWORD_KOKIRI + temp],
                                                   ITEM_ICON_WIDTH, ITEM_ICON_HEIGHT, point);
            }
        }
    }

    // Draw player to the player prerender buffer

    KaleidoScope_DrawPlayerWork(play);

    if ((pauseCtx->mainState == PAUSE_MAIN_STATE_EQUIP_CHANGED) && (sEquipTimer == 10)) {
        KaleidoScope_SetupPlayerPreRender(play);
    }

    if ((pauseCtx->mainState == PAUSE_MAIN_STATE_EQUIP_CHANGED) && (sEquipTimer == 9)) {
#ifndef AVOID_UB
        //! @bug: This function shouldn't take any arguments
        KaleidoScope_ProcessPlayerPreRender(play);
#else
        KaleidoScope_ProcessPlayerPreRender();
#endif
    }

    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0B, interfaceCtx->mapSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);

    // Draw player prerender onto the equip page

    Gfx_SetupDL_42Opa(play->state.gfxCtx);
    KaleidoScope_DrawEquipmentImage(play, pauseCtx->playerSegment, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT);

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_equipment.c", 609);
}
