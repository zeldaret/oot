#include "z_kaleido_scope.h"
#include "assets/textures/parameter_static/parameter_static.h"

u8 gAmmoItems[] = {
    ITEM_DEKU_STICK, // SLOT_DEKU_STICK
    ITEM_DEKU_NUT,   // SLOT_DEKU_NUT
    ITEM_BOMB,       // SLOT_BOMB
    ITEM_BOW,        // SLOT_BOW
    ITEM_NONE,       // SLOT_ARROW_FIRE
    ITEM_NONE,       // SLOT_DINS_FIRE
    ITEM_SLINGSHOT,  // SLOT_SLINGSHOT
    ITEM_NONE,       // SLOT_OCARINA
    ITEM_BOMBCHU,    // SLOT_BOMBCHU
    ITEM_NONE,       // SLOT_HOOKSHOT
    ITEM_NONE,       // SLOT_ARROW_ICE
    ITEM_NONE,       // SLOT_FARORES_WIND
    ITEM_NONE,       // SLOT_BOOMERANG
    ITEM_NONE,       // SLOT_LENS_OF_TRUTH
    ITEM_MAGIC_BEAN, // SLOT_MAGIC_BEAN
    ITEM_NONE,
};

static s16 sEquipState = 0;
static s16 sEquipAnimTimer = 0;
static s16 sEquipMoveTimer = 10;

static s16 sAmmoVtxOffset[] = {
    ITEM_QUAD_AMMO_STICK_TENS - ITEM_QUAD_AMMO_FIRST,     // ITEM_DEKU_STICK
    ITEM_QUAD_AMMO_NUT_TENS - ITEM_QUAD_AMMO_FIRST,       // ITEM_DEKU_NUT
    ITEM_QUAD_AMMO_BOMB_TENS - ITEM_QUAD_AMMO_FIRST,      // ITEM_BOMB
    ITEM_QUAD_AMMO_BOW_TENS - ITEM_QUAD_AMMO_FIRST,       // ITEM_BOW
    99,                                                   // (ITEM_ARROW_FIRE)
    99,                                                   // (ITEM_DINS_FIRE)
    ITEM_QUAD_AMMO_SLINGSHOT_TENS - ITEM_QUAD_AMMO_FIRST, // ITEM_SLINGSHOT
    99,                                                   // (ITEM_OCARINA_FAIRY)
    99,                                                   // (ITEM_OCARINA_OF_TIME)
    ITEM_QUAD_AMMO_BOMBCHU_TENS - ITEM_QUAD_AMMO_FIRST,   // ITEM_BOMBCHU
    99,                                                   // (ITEM_HOOKSHOT)
    99,                                                   // (ITEM_LONGSHOT)
    99,                                                   // (ITEM_ARROW_ICE)
    99,                                                   // (ITEM_FARORES_WIND)
    99,                                                   // (ITEM_BOOMERANG)
    99,                                                   // (ITEM_LENS)
    ITEM_QUAD_AMMO_BEAN_TENS - ITEM_QUAD_AMMO_FIRST,      // ITEM_MAGIC_BEAN
};

void KaleidoScope_DrawAmmoCount(PauseContext* pauseCtx, GraphicsContext* gfxCtx, s16 item) {
    s16 ammo;
    s16 ammoTens;

    OPEN_DISPS(gfxCtx, "../z_kaleido_item.c", 69);

    ammo = AMMO(item);

    gDPPipeSync(POLY_OPA_DISP++);

    if (!CHECK_AGE_REQ_SLOT(SLOT(item))) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 100, 100, pauseCtx->alpha);
    } else {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

        if (ammo == 0) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 130, 130, 130, pauseCtx->alpha);
        } else if ((item == ITEM_BOMB && AMMO(item) == CUR_CAPACITY(UPG_BOMB_BAG)) ||
                   (item == ITEM_BOW && AMMO(item) == CUR_CAPACITY(UPG_QUIVER)) ||
                   (item == ITEM_SLINGSHOT && AMMO(item) == CUR_CAPACITY(UPG_BULLET_BAG)) ||
                   (item == ITEM_DEKU_STICK && AMMO(item) == CUR_CAPACITY(UPG_DEKU_STICKS)) ||
                   (item == ITEM_DEKU_NUT && AMMO(item) == CUR_CAPACITY(UPG_DEKU_NUTS)) ||
                   (item == ITEM_BOMBCHU && ammo == 50) || (item == ITEM_MAGIC_BEAN && ammo == 15)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 120, 255, 0, pauseCtx->alpha);
        }
    }

    for (ammoTens = 0; ammo >= 10; ammoTens++) {
        ammo -= 10;
    }

    gDPPipeSync(POLY_OPA_DISP++);

    if (ammoTens != 0) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->itemVtx[(ITEM_QUAD_AMMO_FIRST + sAmmoVtxOffset[item] + 0) * 4], 4, 0);

        gDPLoadTextureBlock(POLY_OPA_DISP++, ((u8*)gAmmoDigit0Tex + (8 * 8 * ammoTens)), G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8,
                            0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    }

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->itemVtx[(ITEM_QUAD_AMMO_FIRST + sAmmoVtxOffset[item] + 1) * 4], 4, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, ((u8*)gAmmoDigit0Tex + (8 * 8 * ammo)), G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_item.c", 116);
}

void KaleidoScope_SetCursorPos(PauseContext* pauseCtx, u16 index, Vtx* vtx) {
    pauseCtx->cursorVtx[0].v.ob[0] = vtx[index].v.ob[0];
    pauseCtx->cursorVtx[0].v.ob[1] = vtx[index].v.ob[1];
}

void KaleidoScope_SetItemCursorPos(PauseContext* pauseCtx) {
    KaleidoScope_SetCursorPos(pauseCtx, pauseCtx->cursorSlot[PAUSE_ITEM] * 4, pauseCtx->itemVtx);
}

void KaleidoScope_DrawItemSelect(PlayState* play) {
    static s16 magicArrowEffectsR[] = { 255, 100, 255 };
    static s16 magicArrowEffectsG[] = { 0, 100, 255 };
    static s16 magicArrowEffectsB[] = { 0, 255, 100 };
    Input* input = &play->state.input[0];
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 i;
    u16 j;
    u16 cursorItem;
    u16 cursorSlot;
    u16 index;
    s16 cursorPoint;
    s16 cursorX;
    s16 cursorY;
    s16 oldCursorPoint;
    s16 cursorMoveResult;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_item.c", 234);

    Gfx_SetupDL_42Opa(play->state.gfxCtx);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    pauseCtx->cursorColorSet = 0;
    pauseCtx->nameColorSet = 0;

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
        (pauseCtx->pageIndex == PAUSE_ITEM)) {
        cursorMoveResult = 0;
        oldCursorPoint = pauseCtx->cursorPoint[PAUSE_ITEM];

        cursorItem = pauseCtx->cursorItem[PAUSE_ITEM];
        cursorSlot = pauseCtx->cursorSlot[PAUSE_ITEM];

        if (pauseCtx->cursorSpecialPos == 0) {
            pauseCtx->cursorColorSet = 4;

            if (cursorItem == PAUSE_ITEM_NONE) {
                pauseCtx->stickAdjX = 40;
            }

            if (ABS(pauseCtx->stickAdjX) > 30) {
                cursorPoint = pauseCtx->cursorPoint[PAUSE_ITEM];
                cursorX = pauseCtx->cursorX[PAUSE_ITEM];
                cursorY = pauseCtx->cursorY[PAUSE_ITEM];

                PRINTF("now=%d  ccc=%d\n", cursorPoint, cursorItem);

                do {
                    if (pauseCtx->stickAdjX < -30) { // left
                        // if not on the left-most column
                        if (pauseCtx->cursorX[PAUSE_ITEM] != 0) {
                            // move left
                            pauseCtx->cursorX[PAUSE_ITEM]--;
                            pauseCtx->cursorPoint[PAUSE_ITEM] -= 1;

                            // if there's an item there, stop there
                            if (gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]] !=
                                ITEM_NONE) {
                                cursorMoveResult = 1;
                            }
                        } else {
                            // move the cursor to its initial horizontal position and try find an item on the next line

                            pauseCtx->cursorX[PAUSE_ITEM] = cursorX;

                            pauseCtx->cursorY[PAUSE_ITEM]++;
                            if (pauseCtx->cursorY[PAUSE_ITEM] >= ITEM_GRID_ROWS) {
                                pauseCtx->cursorY[PAUSE_ITEM] = 0;
                            }

                            pauseCtx->cursorPoint[PAUSE_ITEM] =
                                pauseCtx->cursorX[PAUSE_ITEM] + (pauseCtx->cursorY[PAUSE_ITEM] * ITEM_GRID_COLS);

                            if (pauseCtx->cursorPoint[PAUSE_ITEM] >= (ITEM_GRID_ROWS * ITEM_GRID_COLS)) {
                                pauseCtx->cursorPoint[PAUSE_ITEM] = pauseCtx->cursorX[PAUSE_ITEM];
                            }

                            if (cursorY == pauseCtx->cursorY[PAUSE_ITEM]) {
                                // there is no item to the left of the initial position, on any line

                                pauseCtx->cursorX[PAUSE_ITEM] = cursorX;
                                pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;

                                KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);

                                cursorMoveResult = 2;
                            }
                        }
                    } else if (pauseCtx->stickAdjX > 30) {
                        if (pauseCtx->cursorX[PAUSE_ITEM] < (ITEM_GRID_COLS - 1)) {
                            pauseCtx->cursorX[PAUSE_ITEM]++;
                            pauseCtx->cursorPoint[PAUSE_ITEM] += 1;

                            if (gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]] !=
                                ITEM_NONE) {
                                cursorMoveResult = 1;
                            }
                        } else {
                            pauseCtx->cursorX[PAUSE_ITEM] = cursorX;
                            pauseCtx->cursorY[PAUSE_ITEM]++;

                            if (pauseCtx->cursorY[PAUSE_ITEM] >= ITEM_GRID_ROWS) {
                                pauseCtx->cursorY[PAUSE_ITEM] = 0;
                            }

                            pauseCtx->cursorPoint[PAUSE_ITEM] =
                                pauseCtx->cursorX[PAUSE_ITEM] + (pauseCtx->cursorY[PAUSE_ITEM] * ITEM_GRID_COLS);

                            if (pauseCtx->cursorPoint[PAUSE_ITEM] >= (ITEM_GRID_ROWS * ITEM_GRID_COLS)) {
                                pauseCtx->cursorPoint[PAUSE_ITEM] = pauseCtx->cursorX[PAUSE_ITEM];
                            }

                            if (cursorY == pauseCtx->cursorY[PAUSE_ITEM]) {
                                pauseCtx->cursorX[PAUSE_ITEM] = cursorX;
                                pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;

                                KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);

                                cursorMoveResult = 2;
                            }
                        }
                    }
                } while (cursorMoveResult == 0);

                if (cursorMoveResult == 1) {
                    cursorItem = gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]];
                }

                PRINTF("【Ｘ cursor=%d(%) (cur_xpt=%d)(ok_fg=%d)(ccc=%d)(key_angle=%d)】  ",
                       pauseCtx->cursorPoint[PAUSE_ITEM], pauseCtx->cursorX[PAUSE_ITEM], cursorMoveResult, cursorItem,
                       pauseCtx->cursorSpecialPos);
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;

                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                cursorPoint = cursorX = cursorY = 0;
                while (true) {
                    if (gSaveContext.save.info.inventory.items[cursorPoint] != ITEM_NONE) {
                        pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;
                        pauseCtx->cursorX[PAUSE_ITEM] = cursorX;
                        pauseCtx->cursorY[PAUSE_ITEM] = cursorY;
                        cursorMoveResult = 1;
                        break;
                    }

                    cursorY += 1;
                    cursorPoint += ITEM_GRID_COLS;
                    if (cursorY >= ITEM_GRID_ROWS) {
                        cursorY = 0;
                        cursorPoint = cursorX + 1;
                        cursorX = cursorPoint;
                        if (cursorX >= ITEM_GRID_COLS) {
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

                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                cursorPoint = cursorX = ITEM_GRID_COLS - 1;
                cursorY = 0;
                while (true) {
                    if (gSaveContext.save.info.inventory.items[cursorPoint] != ITEM_NONE) {
                        pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;
                        pauseCtx->cursorX[PAUSE_ITEM] = cursorX;
                        pauseCtx->cursorY[PAUSE_ITEM] = cursorY;
                        cursorMoveResult = 1;
                        break;
                    }

                    cursorY += 1;
                    cursorPoint += ITEM_GRID_COLS;
                    if (cursorY >= ITEM_GRID_ROWS) {
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

        if (pauseCtx->cursorSpecialPos == 0) {
            if (cursorItem != PAUSE_ITEM_NONE) {
                if (ABS(pauseCtx->stickAdjY) > 30) {
                    cursorMoveResult = 0;

                    cursorPoint = pauseCtx->cursorPoint[PAUSE_ITEM];
                    cursorY = pauseCtx->cursorY[PAUSE_ITEM];
                    do {
                        if (pauseCtx->stickAdjY > 30) {
                            if (pauseCtx->cursorY[PAUSE_ITEM] != 0) {
                                pauseCtx->cursorY[PAUSE_ITEM]--;
                                pauseCtx->cursorPoint[PAUSE_ITEM] -= ITEM_GRID_COLS;

                                if (gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]] !=
                                    ITEM_NONE) {
                                    cursorMoveResult = 1;
                                }
                            } else {
                                pauseCtx->cursorY[PAUSE_ITEM] = cursorY;
                                pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;

                                cursorMoveResult = 2;
                            }
                        } else if (pauseCtx->stickAdjY < -30) {
                            if (pauseCtx->cursorY[PAUSE_ITEM] < (ITEM_GRID_ROWS - 1)) {
                                pauseCtx->cursorY[PAUSE_ITEM]++;
                                pauseCtx->cursorPoint[PAUSE_ITEM] += ITEM_GRID_COLS;

                                if (gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]] !=
                                    ITEM_NONE) {
                                    cursorMoveResult = 1;
                                }
                            } else {
                                pauseCtx->cursorY[PAUSE_ITEM] = cursorY;
                                pauseCtx->cursorPoint[PAUSE_ITEM] = cursorPoint;

                                cursorMoveResult = 2;
                            }
                        }
                    } while (cursorMoveResult == 0);

                    cursorPoint = PAUSE_ITEM;
                    PRINTF("【Ｙ cursor=%d(%) (cur_ypt=%d)(ok_fg=%d)(ccc=%d)】  ", pauseCtx->cursorPoint[cursorPoint],
                           pauseCtx->cursorY[PAUSE_ITEM], cursorMoveResult, cursorItem);
                }
            }

            cursorSlot = pauseCtx->cursorPoint[PAUSE_ITEM];

            pauseCtx->cursorColorSet = 4;

            if (cursorMoveResult == 1) {
                cursorItem = gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]];
            } else if (cursorMoveResult != 2) {
                cursorItem = gSaveContext.save.info.inventory.items[pauseCtx->cursorPoint[PAUSE_ITEM]];
            }

            pauseCtx->cursorItem[PAUSE_ITEM] = cursorItem;
            pauseCtx->cursorSlot[PAUSE_ITEM] = cursorSlot;

            if (!CHECK_AGE_REQ_SLOT(cursorSlot)) {
                pauseCtx->nameColorSet = 1;
            }

            if (cursorItem != PAUSE_ITEM_NONE) {
                index = cursorSlot * 4; // required to match?
                KaleidoScope_SetCursorPos(pauseCtx, index, pauseCtx->itemVtx);

                if ((pauseCtx->debugState == 0) && (pauseCtx->state == PAUSE_STATE_MAIN) &&
                    (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
                    if (CHECK_BTN_ANY(input->press.button, BTN_CLEFT | BTN_CDOWN | BTN_CRIGHT)) {
                        if (CHECK_AGE_REQ_SLOT(cursorSlot) && (cursorItem != ITEM_SOLD_OUT)) {
                            if (CHECK_BTN_ALL(input->press.button, BTN_CLEFT)) {
                                pauseCtx->equipTargetCBtn = 0;
                            } else if (CHECK_BTN_ALL(input->press.button, BTN_CDOWN)) {
                                pauseCtx->equipTargetCBtn = 1;
                            } else if (CHECK_BTN_ALL(input->press.button, BTN_CRIGHT)) {
                                pauseCtx->equipTargetCBtn = 2;
                            }

                            pauseCtx->equipTargetItem = cursorItem;
                            pauseCtx->equipTargetSlot = cursorSlot;
                            pauseCtx->mainState = PAUSE_MAIN_STATE_3;
                            pauseCtx->equipAnimX = pauseCtx->itemVtx[index].v.ob[0] * 10;
                            pauseCtx->equipAnimY = pauseCtx->itemVtx[index].v.ob[1] * 10;
                            pauseCtx->equipAnimAlpha = 255;
                            sEquipAnimTimer = 0;
                            sEquipState = 3;
                            sEquipMoveTimer = 10;
                            if ((pauseCtx->equipTargetItem == ITEM_ARROW_FIRE) ||
                                (pauseCtx->equipTargetItem == ITEM_ARROW_ICE) ||
                                (pauseCtx->equipTargetItem == ITEM_ARROW_LIGHT)) {
                                index = 0;
                                if (pauseCtx->equipTargetItem == ITEM_ARROW_ICE) {
                                    index = 1;
                                }
                                if (pauseCtx->equipTargetItem == ITEM_ARROW_LIGHT) {
                                    index = 2;
                                }
                                Audio_PlaySfxGeneral(NA_SE_SY_SET_FIRE_ARROW + index, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                                pauseCtx->equipTargetItem = 0xBF + index;
                                sEquipState = 0;
                                pauseCtx->equipAnimAlpha = 0;
                                sEquipMoveTimer = 6;
                            } else {
                                Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            }
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        }
                    }
                }
            } else {
                pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->cursorVtx[2].v.ob[0] = pauseCtx->cursorVtx[1].v.ob[0] =
                    pauseCtx->cursorVtx[3].v.ob[0] = 0;

                pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->cursorVtx[1].v.ob[1] = pauseCtx->cursorVtx[2].v.ob[1] =
                    pauseCtx->cursorVtx[3].v.ob[1] = -200;
            }
        } else {
            pauseCtx->cursorItem[PAUSE_ITEM] = PAUSE_ITEM_NONE;
        }

        if (oldCursorPoint != pauseCtx->cursorPoint[PAUSE_ITEM]) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if ((pauseCtx->mainState == PAUSE_MAIN_STATE_3) && (pauseCtx->pageIndex == PAUSE_ITEM)) {
        //! @bug cursorSlot is uninitialized
        KaleidoScope_SetCursorPos(pauseCtx, cursorSlot * 4, pauseCtx->itemVtx);
        pauseCtx->cursorColorSet = 4;
    }

    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    for (i = 0, j = ITEM_QUAD_GRID_SELECTED_C_LEFT * 4; i < 3; i++, j += 4) {
        if (gSaveContext.save.info.equips.buttonItems[i + 1] != ITEM_NONE) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->itemVtx[j], 4, 0);
            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, gEquippedItemOutlineTex, 32, 32, 0);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    for (i = j = 0; i < (ITEM_GRID_ROWS * ITEM_GRID_COLS); i++, j += 4) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

        if (gSaveContext.save.info.inventory.items[i] != ITEM_NONE) {
            if ((pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) && (pauseCtx->pageIndex == PAUSE_ITEM) &&
                (pauseCtx->cursorSpecialPos == 0)) {
                if (CHECK_AGE_REQ_SLOT(i)) {
                    if ((sEquipState == 2) && (i == 3)) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, magicArrowEffectsR[pauseCtx->equipTargetItem - 0xBF],
                                        magicArrowEffectsG[pauseCtx->equipTargetItem - 0xBF],
                                        magicArrowEffectsB[pauseCtx->equipTargetItem - 0xBF], pauseCtx->alpha);

                        pauseCtx->itemVtx[j + 0].v.ob[0] = pauseCtx->itemVtx[j + 2].v.ob[0] =
                            pauseCtx->itemVtx[j + 0].v.ob[0] - ITEM_GRID_QUAD_ENLARGE_OFFSET;

                        pauseCtx->itemVtx[j + 1].v.ob[0] = pauseCtx->itemVtx[j + 3].v.ob[0] =
                            pauseCtx->itemVtx[j + 0].v.ob[0] +
                            (ITEM_GRID_QUAD_WIDTH + (ITEM_GRID_QUAD_ENLARGE_OFFSET * 2));

                        pauseCtx->itemVtx[j + 0].v.ob[1] = pauseCtx->itemVtx[j + 1].v.ob[1] =
                            pauseCtx->itemVtx[j + 0].v.ob[1] + ITEM_GRID_QUAD_ENLARGE_OFFSET;

                        pauseCtx->itemVtx[j + 2].v.ob[1] = pauseCtx->itemVtx[j + 3].v.ob[1] =
                            pauseCtx->itemVtx[j + 0].v.ob[1] -
                            (ITEM_GRID_QUAD_HEIGHT + (ITEM_GRID_QUAD_ENLARGE_OFFSET * 2));
                    } else if (i == cursorSlot) {
                        // enlarge item under the cursor

                        pauseCtx->itemVtx[j + 0].v.ob[0] = pauseCtx->itemVtx[j + 2].v.ob[0] =
                            pauseCtx->itemVtx[j + 0].v.ob[0] - ITEM_GRID_QUAD_ENLARGE_OFFSET;

                        pauseCtx->itemVtx[j + 1].v.ob[0] = pauseCtx->itemVtx[j + 3].v.ob[0] =
                            pauseCtx->itemVtx[j + 0].v.ob[0] +
                            (ITEM_GRID_QUAD_WIDTH + (ITEM_GRID_QUAD_ENLARGE_OFFSET * 2));

                        pauseCtx->itemVtx[j + 0].v.ob[1] = pauseCtx->itemVtx[j + 1].v.ob[1] =
                            pauseCtx->itemVtx[j + 0].v.ob[1] + ITEM_GRID_QUAD_ENLARGE_OFFSET;

                        pauseCtx->itemVtx[j + 2].v.ob[1] = pauseCtx->itemVtx[j + 3].v.ob[1] =
                            pauseCtx->itemVtx[j + 0].v.ob[1] -
                            (ITEM_GRID_QUAD_HEIGHT + (ITEM_GRID_QUAD_ENLARGE_OFFSET * 2));
                    }
                }
            }

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->itemVtx[j + 0], 4, 0);
            KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx,
                                               gItemIcons[gSaveContext.save.info.inventory.items[i]], ITEM_ICON_WIDTH,
                                               ITEM_ICON_HEIGHT, 0);
        }
    }

    if (pauseCtx->cursorSpecialPos == 0) {
        KaleidoScope_DrawCursor(play, PAUSE_ITEM);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    for (i = 0; i < 15; i++) {
        if ((gAmmoItems[i] != ITEM_NONE) && (gSaveContext.save.info.inventory.items[i] != ITEM_NONE)) {
            KaleidoScope_DrawAmmoCount(pauseCtx, play->state.gfxCtx, gSaveContext.save.info.inventory.items[i]);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_item.c", 516);
}

static s16 sCButtonPosX[] = { 660, 900, 1140 };
static s16 sCButtonPosY[] = { 1100, 920, 1100 };

void KaleidoScope_UpdateItemEquip(PlayState* play) {
    static s16 D_8082A488 = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    Vtx* bowItemVtx;
    u16 offsetX;
    u16 offsetY;

    if (sEquipState == 0) {
        pauseCtx->equipAnimAlpha += 14;
        if (pauseCtx->equipAnimAlpha > 255) {
            pauseCtx->equipAnimAlpha = 254;
            sEquipState++;
        }
        sEquipAnimTimer = 5;
        return;
    }

    if (sEquipState == 2) {
        D_8082A488--;

        if (D_8082A488 == 0) {
            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
            pauseCtx->equipTargetSlot = SLOT_BOW;
            sEquipMoveTimer = 6;
            WREG(90) = 320;
            WREG(87) = WREG(91);
            sEquipState++;
            Audio_PlaySfxGeneral(NA_SE_SY_SYNTH_MAGIC_ARROW, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
        return;
    }

    if (sEquipState == 1) {
        bowItemVtx = &pauseCtx->itemVtx[12];
        offsetX = ABS(pauseCtx->equipAnimX - bowItemVtx->v.ob[0] * 10) / sEquipMoveTimer;
        offsetY = ABS(pauseCtx->equipAnimY - bowItemVtx->v.ob[1] * 10) / sEquipMoveTimer;
    } else {
        offsetX = ABS(pauseCtx->equipAnimX - sCButtonPosX[pauseCtx->equipTargetCBtn]) / sEquipMoveTimer;
        offsetY = ABS(pauseCtx->equipAnimY - sCButtonPosY[pauseCtx->equipTargetCBtn]) / sEquipMoveTimer;
    }

    if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipAnimAlpha < 254)) {
        pauseCtx->equipAnimAlpha += 14;
        if (pauseCtx->equipAnimAlpha > 255) {
            pauseCtx->equipAnimAlpha = 254;
        }
        sEquipAnimTimer = 5;
        return;
    }

    if (sEquipAnimTimer == 0) {
        WREG(90) -= WREG(87) / sEquipMoveTimer;
        WREG(87) -= WREG(87) / sEquipMoveTimer;

        if (sEquipState == 1) {
            if (pauseCtx->equipAnimX >= (pauseCtx->itemVtx[12].v.ob[0] * 10)) {
                pauseCtx->equipAnimX -= offsetX;
            } else {
                pauseCtx->equipAnimX += offsetX;
            }

            if (pauseCtx->equipAnimY >= (pauseCtx->itemVtx[12].v.ob[1] * 10)) {
                pauseCtx->equipAnimY -= offsetY;
            } else {
                pauseCtx->equipAnimY += offsetY;
            }
        } else {
            if (pauseCtx->equipAnimX >= sCButtonPosX[pauseCtx->equipTargetCBtn]) {
                pauseCtx->equipAnimX -= offsetX;
            } else {
                pauseCtx->equipAnimX += offsetX;
            }

            if (pauseCtx->equipAnimY >= sCButtonPosY[pauseCtx->equipTargetCBtn]) {
                pauseCtx->equipAnimY -= offsetY;
            } else {
                pauseCtx->equipAnimY += offsetY;
            }
        }

        sEquipMoveTimer--;

        if (sEquipMoveTimer == 0) {
            if (sEquipState == 1) {
                sEquipState++;
                D_8082A488 = 4;
                return;
            }

            PRINTF("\n＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝\n");

            if (pauseCtx->equipTargetCBtn == 0) {

                if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[1]) {
                    if (gSaveContext.save.info.equips.buttonItems[1] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[1] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[1] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[1] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[2] = gSaveContext.save.info.equips.buttonItems[1];
                            gSaveContext.save.info.equips.cButtonSlots[1] =
                                gSaveContext.save.info.equips.cButtonSlots[0];
                            Interface_LoadItemIcon2(play, 2);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[2] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[1] = SLOT_NONE;
                    }
                } else if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[2]) {
                    if (gSaveContext.save.info.equips.buttonItems[1] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[1] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[1] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[1] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[3] = gSaveContext.save.info.equips.buttonItems[1];
                            gSaveContext.save.info.equips.cButtonSlots[2] =
                                gSaveContext.save.info.equips.cButtonSlots[0];
                            Interface_LoadItemIcon2(play, 3);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[3] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[2] = SLOT_NONE;
                    }
                }

                if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1)) {
                    if ((gSaveContext.save.info.equips.buttonItems[1] == ITEM_BOW) ||
                        ((gSaveContext.save.info.equips.buttonItems[1] >= ITEM_BOW_FIRE) &&
                         (gSaveContext.save.info.equips.buttonItems[1] <= ITEM_BOW_LIGHT))) {
                        pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                        pauseCtx->equipTargetSlot = SLOT_BOW;
                    }
                } else if (pauseCtx->equipTargetItem == ITEM_BOW) {
                    if ((gSaveContext.save.info.equips.buttonItems[2] >= ITEM_BOW_FIRE) &&
                        (gSaveContext.save.info.equips.buttonItems[2] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[2] = gSaveContext.save.info.equips.buttonItems[1];
                        gSaveContext.save.info.equips.cButtonSlots[1] = gSaveContext.save.info.equips.cButtonSlots[0];
                        Interface_LoadItemIcon2(play, 2);
                    } else if ((gSaveContext.save.info.equips.buttonItems[3] >= ITEM_BOW_FIRE) &&
                               (gSaveContext.save.info.equips.buttonItems[3] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[3] = gSaveContext.save.info.equips.buttonItems[1];
                        gSaveContext.save.info.equips.cButtonSlots[2] = gSaveContext.save.info.equips.cButtonSlots[0];
                        Interface_LoadItemIcon2(play, 3);
                    }
                }

                gSaveContext.save.info.equips.buttonItems[1] = pauseCtx->equipTargetItem;
                gSaveContext.save.info.equips.cButtonSlots[0] = pauseCtx->equipTargetSlot;
                Interface_LoadItemIcon1(play, 1);

                PRINTF("Ｃ左sl_item_no=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetItem,
                       gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
                       gSaveContext.save.info.equips.buttonItems[3]);
                PRINTF("Ｃ左sl_number=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetSlot,
                       gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                       gSaveContext.save.info.equips.cButtonSlots[2]);
            } else if (pauseCtx->equipTargetCBtn == 1) {
                PRINTF("Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetItem,
                       gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
                       gSaveContext.save.info.equips.buttonItems[3]);
                PRINTF("Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetSlot,
                       gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                       gSaveContext.save.info.equips.cButtonSlots[2]);

                if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[0]) {
                    if (gSaveContext.save.info.equips.buttonItems[2] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[2] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[2] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[2] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[1] = gSaveContext.save.info.equips.buttonItems[2];
                            gSaveContext.save.info.equips.cButtonSlots[0] =
                                gSaveContext.save.info.equips.cButtonSlots[1];
                            Interface_LoadItemIcon2(play, 1);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[1] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[0] = SLOT_NONE;
                    }
                } else if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[2]) {
                    if (gSaveContext.save.info.equips.buttonItems[2] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[2] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[2] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[2] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[3] = gSaveContext.save.info.equips.buttonItems[2];
                            gSaveContext.save.info.equips.cButtonSlots[2] =
                                gSaveContext.save.info.equips.cButtonSlots[1];
                            Interface_LoadItemIcon2(play, 3);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[3] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[2] = SLOT_NONE;
                    }
                }

                if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1)) {
                    if ((gSaveContext.save.info.equips.buttonItems[2] == ITEM_BOW) ||
                        ((gSaveContext.save.info.equips.buttonItems[2] >= ITEM_BOW_FIRE) &&
                         (gSaveContext.save.info.equips.buttonItems[2] <= ITEM_BOW_LIGHT))) {
                        pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                        pauseCtx->equipTargetSlot = SLOT_BOW;
                    }
                } else if (pauseCtx->equipTargetItem == ITEM_BOW) {
                    if ((gSaveContext.save.info.equips.buttonItems[1] >= ITEM_BOW_FIRE) &&
                        (gSaveContext.save.info.equips.buttonItems[1] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[1] = gSaveContext.save.info.equips.buttonItems[2];
                        Interface_LoadItemIcon2(play, 1);
                    } else if ((gSaveContext.save.info.equips.buttonItems[3] >= ITEM_BOW_FIRE) &&
                               (gSaveContext.save.info.equips.buttonItems[3] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[3] = gSaveContext.save.info.equips.buttonItems[2];
                        Interface_LoadItemIcon2(play, 3);
                    }
                }

                gSaveContext.save.info.equips.buttonItems[2] = pauseCtx->equipTargetItem;
                gSaveContext.save.info.equips.cButtonSlots[1] = pauseCtx->equipTargetSlot;
                Interface_LoadItemIcon1(play, 2);

                PRINTF("Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetItem,
                       gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
                       gSaveContext.save.info.equips.buttonItems[3]);
                PRINTF("Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetSlot,
                       gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                       gSaveContext.save.info.equips.cButtonSlots[2]);
            } else {
                PRINTF("Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetItem,
                       gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
                       gSaveContext.save.info.equips.buttonItems[3]);
                PRINTF("Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetSlot,
                       gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                       gSaveContext.save.info.equips.cButtonSlots[2]);

                if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[0]) {
                    if (gSaveContext.save.info.equips.buttonItems[3] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[3] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[3] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[3] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[1] = gSaveContext.save.info.equips.buttonItems[3];
                            gSaveContext.save.info.equips.cButtonSlots[0] =
                                gSaveContext.save.info.equips.cButtonSlots[2];
                            Interface_LoadItemIcon2(play, 1);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[1] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[0] = SLOT_NONE;
                    }
                } else if (pauseCtx->equipTargetSlot == gSaveContext.save.info.equips.cButtonSlots[1]) {
                    if (gSaveContext.save.info.equips.buttonItems[3] != ITEM_NONE) {
                        if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1) &&
                            ((gSaveContext.save.info.equips.buttonItems[3] == ITEM_BOW) ||
                             ((gSaveContext.save.info.equips.buttonItems[3] >= ITEM_BOW_FIRE) &&
                              (gSaveContext.save.info.equips.buttonItems[3] <= ITEM_BOW_LIGHT)))) {
                            pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                            pauseCtx->equipTargetSlot = SLOT_BOW;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[2] = gSaveContext.save.info.equips.buttonItems[3];
                            gSaveContext.save.info.equips.cButtonSlots[1] =
                                gSaveContext.save.info.equips.cButtonSlots[2];
                            Interface_LoadItemIcon2(play, 2);
                        }
                    } else {
                        gSaveContext.save.info.equips.buttonItems[2] = ITEM_NONE;
                        gSaveContext.save.info.equips.cButtonSlots[1] = SLOT_NONE;
                    }
                }

                if ((pauseCtx->equipTargetItem >= 0xBF) && (pauseCtx->equipTargetItem <= 0xC1)) {
                    if ((gSaveContext.save.info.equips.buttonItems[3] == ITEM_BOW) ||
                        ((gSaveContext.save.info.equips.buttonItems[3] >= ITEM_BOW_FIRE) &&
                         (gSaveContext.save.info.equips.buttonItems[3] <= ITEM_BOW_LIGHT))) {
                        pauseCtx->equipTargetItem -= 0xBF - ITEM_BOW_FIRE;
                        pauseCtx->equipTargetSlot = SLOT_BOW;
                    }
                } else if (pauseCtx->equipTargetItem == ITEM_BOW) {
                    if ((gSaveContext.save.info.equips.buttonItems[1] >= ITEM_BOW_FIRE) &&
                        (gSaveContext.save.info.equips.buttonItems[1] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[1] = gSaveContext.save.info.equips.buttonItems[3];
                        Interface_LoadItemIcon2(play, 1);
                    } else if ((gSaveContext.save.info.equips.buttonItems[2] >= ITEM_BOW_FIRE) &&
                               (gSaveContext.save.info.equips.buttonItems[2] <= ITEM_BOW_LIGHT)) {
                        gSaveContext.save.info.equips.buttonItems[2] = gSaveContext.save.info.equips.buttonItems[3];
                        Interface_LoadItemIcon2(play, 2);
                    }
                }

                gSaveContext.save.info.equips.buttonItems[3] = pauseCtx->equipTargetItem;
                gSaveContext.save.info.equips.cButtonSlots[2] = pauseCtx->equipTargetSlot;
                Interface_LoadItemIcon1(play, 3);

                PRINTF("Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetItem,
                       gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
                       gSaveContext.save.info.equips.buttonItems[3]);
                PRINTF("Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n", pauseCtx->equipTargetSlot,
                       gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                       gSaveContext.save.info.equips.cButtonSlots[2]);
            }

            pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
            sEquipMoveTimer = 10;
            WREG(90) = 320;
            WREG(87) = WREG(91);
        }
    } else {
        sEquipAnimTimer--;
        if (sEquipAnimTimer == 0) {
            pauseCtx->equipAnimAlpha = 255;
        }
    }
}
