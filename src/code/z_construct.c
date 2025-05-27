#include "map.h"
#include "printf.h"
#include "regs.h"
#include "segment_symbols.h"
#include "translation.h"
#include "versions.h"
#include "z64lifemeter.h"
#include "z64interface.h"
#include "z64ocarina.h"
#include "z64play.h"
#include "z64save.h"

void Interface_Destroy(PlayState* play) {
    Map_Destroy(play);
}

#define ICON_ITEM_SEGMENT_SIZE (4 * ITEM_ICON_SIZE)

void Interface_Init(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    u32 parameterSize;
    u16 doActionOffset;
    u8 timerId;

    gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
    gSaveContext.nextHudVisibilityMode = gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;

    View_Init(&interfaceCtx->view, play->state.gfxCtx);

    interfaceCtx->unk_1EC = interfaceCtx->unk_1EE = interfaceCtx->unk_1F0 = 0;
    interfaceCtx->unk_1F4 = 0.0f;
    interfaceCtx->unk_1FA = interfaceCtx->unk_261 = interfaceCtx->unk_1FC = 0;

    interfaceCtx->unk_22E = 0;
    interfaceCtx->lensMagicConsumptionTimer = 16;
    interfaceCtx->unk_228 = XREG(95);
    interfaceCtx->unk_244 = interfaceCtx->aAlpha = interfaceCtx->bAlpha = interfaceCtx->cLeftAlpha =
        interfaceCtx->cDownAlpha = interfaceCtx->cRightAlpha = interfaceCtx->healthAlpha = interfaceCtx->startAlpha =
            interfaceCtx->magicAlpha = 0;
    interfaceCtx->minimapAlpha = 0;
    interfaceCtx->unk_260 = 0;

    parameterSize = (uintptr_t)_parameter_staticSegmentRomEnd - (uintptr_t)_parameter_staticSegmentRomStart;

    PRINTF(T("常駐ＰＡＲＡＭＥＴＥＲセグメント=%x\n", "Permanent PARAMETER Segment = %x\n"), parameterSize);

    interfaceCtx->parameterSegment = GAME_STATE_ALLOC(&play->state, parameterSize, "../z_construct.c", 159);

    PRINTF("parameter->parameterSegment=%x\n", interfaceCtx->parameterSegment);

    ASSERT(interfaceCtx->parameterSegment != NULL, "parameter->parameterSegment != NULL", "../z_construct.c", 161);
    DMA_REQUEST_SYNC(interfaceCtx->parameterSegment, (uintptr_t)_parameter_staticSegmentRomStart, parameterSize,
                     "../z_construct.c", 162);

    interfaceCtx->doActionSegment = GAME_STATE_ALLOC(&play->state, 3 * DO_ACTION_TEX_SIZE, "../z_construct.c", 166);

    PRINTF(T("ＤＯアクション テクスチャ初期=%x\n", "DO Action Texture Initialization = %x\n"), 3 * DO_ACTION_TEX_SIZE);
    PRINTF("parameter->do_actionSegment=%x\n", interfaceCtx->doActionSegment);

    ASSERT(interfaceCtx->doActionSegment != NULL, "parameter->do_actionSegment != NULL", "../z_construct.c", 169);

#if OOT_NTSC
    if (gSaveContext.language == LANGUAGE_JPN) {
        doActionOffset = (LANGUAGE_JPN * DO_ACTION_MAX + DO_ACTION_ATTACK) * DO_ACTION_TEX_SIZE;
    } else {
        doActionOffset = (LANGUAGE_ENG * DO_ACTION_MAX + DO_ACTION_ATTACK) * DO_ACTION_TEX_SIZE;
    }
#else
    if (gSaveContext.language == LANGUAGE_ENG) {
        doActionOffset = (LANGUAGE_ENG * DO_ACTION_MAX + DO_ACTION_ATTACK) * DO_ACTION_TEX_SIZE;
    } else if (gSaveContext.language == LANGUAGE_GER) {
        doActionOffset = (LANGUAGE_GER * DO_ACTION_MAX + DO_ACTION_ATTACK) * DO_ACTION_TEX_SIZE;
    } else {
        doActionOffset = (LANGUAGE_FRA * DO_ACTION_MAX + DO_ACTION_ATTACK) * DO_ACTION_TEX_SIZE;
    }
#endif

    DMA_REQUEST_SYNC(interfaceCtx->doActionSegment, (uintptr_t)_do_action_staticSegmentRomStart + doActionOffset,
                     2 * DO_ACTION_TEX_SIZE, "../z_construct.c", 174);

#if OOT_NTSC
    if (gSaveContext.language == LANGUAGE_JPN) {
        doActionOffset = (LANGUAGE_JPN * DO_ACTION_MAX + DO_ACTION_RETURN) * DO_ACTION_TEX_SIZE;
    } else {
        doActionOffset = (LANGUAGE_ENG * DO_ACTION_MAX + DO_ACTION_RETURN) * DO_ACTION_TEX_SIZE;
    }
#else
    if (gSaveContext.language == LANGUAGE_ENG) {
        doActionOffset = (LANGUAGE_ENG * DO_ACTION_MAX + DO_ACTION_RETURN) * DO_ACTION_TEX_SIZE;
    } else if (gSaveContext.language == LANGUAGE_GER) {
        doActionOffset = (LANGUAGE_GER * DO_ACTION_MAX + DO_ACTION_RETURN) * DO_ACTION_TEX_SIZE;
    } else {
        doActionOffset = (LANGUAGE_FRA * DO_ACTION_MAX + DO_ACTION_RETURN) * DO_ACTION_TEX_SIZE;
    }
#endif

    DMA_REQUEST_SYNC(interfaceCtx->doActionSegment + 2 * DO_ACTION_TEX_SIZE,
                     (uintptr_t)_do_action_staticSegmentRomStart + doActionOffset, DO_ACTION_TEX_SIZE,
                     "../z_construct.c", 178);

    interfaceCtx->iconItemSegment = GAME_STATE_ALLOC(&play->state, ICON_ITEM_SEGMENT_SIZE, "../z_construct.c", 190);

    PRINTF(T("アイコンアイテム テクスチャ初期=%x\n", "Icon Item Texture Initialization = %x\n"),
           ICON_ITEM_SEGMENT_SIZE);
    PRINTF("parameter->icon_itemSegment=%x\n", interfaceCtx->iconItemSegment);

    ASSERT(interfaceCtx->iconItemSegment != NULL, "parameter->icon_itemSegment != NULL", "../z_construct.c", 193);

    PRINTF("Register_Item[%x, %x, %x, %x]\n", gSaveContext.save.info.equips.buttonItems[0],
           gSaveContext.save.info.equips.buttonItems[1], gSaveContext.save.info.equips.buttonItems[2],
           gSaveContext.save.info.equips.buttonItems[3]);

    if (gSaveContext.save.info.equips.buttonItems[0] < 0xF0) {
        DMA_REQUEST_SYNC(interfaceCtx->iconItemSegment + (0 * ITEM_ICON_SIZE),

                         GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[0]), ITEM_ICON_SIZE,
                         "../z_construct.c", 198);
    } else if (gSaveContext.save.info.equips.buttonItems[0] != 0xFF) {
        DMA_REQUEST_SYNC(interfaceCtx->iconItemSegment + (0 * ITEM_ICON_SIZE),

                         GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[0]), ITEM_ICON_SIZE,
                         "../z_construct.c", 203);
    }

    if (gSaveContext.save.info.equips.buttonItems[1] < 0xF0) {
        DMA_REQUEST_SYNC(interfaceCtx->iconItemSegment + (1 * ITEM_ICON_SIZE),
                         GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[1]), ITEM_ICON_SIZE,
                         "../z_construct.c", 209);
    }

    if (gSaveContext.save.info.equips.buttonItems[2] < 0xF0) {
        DMA_REQUEST_SYNC(interfaceCtx->iconItemSegment + (2 * ITEM_ICON_SIZE),
                         GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[2]), ITEM_ICON_SIZE,
                         "../z_construct.c", 214);
    }

    if (gSaveContext.save.info.equips.buttonItems[3] < 0xF0) {
        DMA_REQUEST_SYNC(interfaceCtx->iconItemSegment + (3 * ITEM_ICON_SIZE),
                         GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[3]), ITEM_ICON_SIZE,
                         "../z_construct.c", 219);
    }

    PRINTF("ＥＶＥＮＴ＝%d\n", ((void)0, gSaveContext.timerState));

    if ((gSaveContext.timerState == TIMER_STATE_ENV_HAZARD_TICK) ||
        (gSaveContext.timerState == TIMER_STATE_DOWN_TICK) ||
        (gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_TICK) ||
        (gSaveContext.subTimerState == SUBTIMER_STATE_UP_TICK)) {
        PRINTF("restart_flag=%d\n", ((void)0, gSaveContext.respawnFlag));

        if ((gSaveContext.respawnFlag == -1) || (gSaveContext.respawnFlag == 1)) {
            if (gSaveContext.timerState == TIMER_STATE_ENV_HAZARD_TICK) {
                gSaveContext.timerState = TIMER_STATE_ENV_HAZARD_INIT;
                gSaveContext.timerX[TIMER_ID_MAIN] = 140;
                gSaveContext.timerY[TIMER_ID_MAIN] = 80;
            }
        }

        if ((gSaveContext.timerState == TIMER_STATE_ENV_HAZARD_TICK) ||
            (gSaveContext.timerState == TIMER_STATE_DOWN_TICK)) {
            timerId = TIMER_ID_MAIN;
        } else {
            timerId = TIMER_ID_SUB;
        }

        gSaveContext.timerX[timerId] = 26;

        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
            gSaveContext.timerY[timerId] = 54; // two rows of hearts
        } else {
            gSaveContext.timerY[timerId] = 46; // one row of hearts
        }
    }
#if OOT_VERSION < PAL_1_0
    else if ((gSaveContext.timerState >= TIMER_STATE_UP_INIT) && (gSaveContext.timerState <= TIMER_STATE_UP_FREEZE))
#else
    // No "else"
    if ((gSaveContext.timerState >= TIMER_STATE_UP_INIT) && (gSaveContext.timerState <= TIMER_STATE_UP_FREEZE))
#endif
    {
        gSaveContext.timerState = TIMER_STATE_OFF;
        PRINTF(T("タイマー停止！！！！！！！！！！！！！！！！！！！！！  = %d\n",
                 "Timer Stop!!!!!!!!!!!!!!!!!!!!!  = %d\n"),
               gSaveContext.timerState);
    }

    PRINTF(T("ＰＡＲＡＭＥＴＥＲ領域＝%x\n", "Parameter Area = %x\n"), parameterSize + 0x5300);

    Health_InitMeter(play);
    Map_Init(play);

    interfaceCtx->unk_23C = interfaceCtx->unk_242 = 0;

    R_ITEM_BTN_X(0) = B_BUTTON_X;

    R_B_BTN_COLOR(0) = B_BUTTON_R;
    R_B_BTN_COLOR(1) = B_BUTTON_G;
    R_B_BTN_COLOR(2) = B_BUTTON_B;

    R_ITEM_ICON_X(0) = B_BUTTON_X;
    R_ITEM_AMMO_X(0) = B_BUTTON_X + 2;

    R_A_BTN_X = A_BUTTON_X;
    R_A_ICON_X = A_BUTTON_X;

    R_A_BTN_COLOR(0) = A_BUTTON_R;
    R_A_BTN_COLOR(1) = A_BUTTON_G;
    R_A_BTN_COLOR(2) = A_BUTTON_B;
}

#define TEXTBOX_SEGMENT_SIZE \
    (MESSAGE_STATIC_TEX_SIZE + MAX(MAX(ITEM_ICON_SIZE, QUEST_ICON_SIZE), 2 * MESSAGE_TEXTURE_STATIC_TEX_SIZE))

void Message_Init(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;
    Font* font = &msgCtx->font;

    Message_SetTables();

    play->msgCtx.ocarinaMode = OCARINA_MODE_00;

    msgCtx->msgMode = MSGMODE_NONE;
    msgCtx->msgLength = 0;
    msgCtx->textId = msgCtx->textboxEndType = msgCtx->choiceIndex = msgCtx->ocarinaAction = msgCtx->textUnskippable = 0;
    msgCtx->textColorAlpha = 255;

    View_Init(&msgCtx->view, play->state.gfxCtx);

    msgCtx->textboxSegment = GAME_STATE_ALLOC(&play->state, TEXTBOX_SEGMENT_SIZE, "../z_construct.c", 349);

    PRINTF("message->fukidashiSegment=%x\n", msgCtx->textboxSegment);

    PRINTF(T("吹き出しgame_alloc=%x\n", "Textbox game_alloc=%x\n"), TEXTBOX_SEGMENT_SIZE);
    ASSERT(msgCtx->textboxSegment != NULL, "message->fukidashiSegment != NULL", "../z_construct.c", 352);

    Font_LoadOrderedFont(font);

    YREG(31) = 0;
}

void Regs_InitDataImpl(void) {
    YREG(8) = 10;
    YREG(14) = 0;
    R_SCENE_CAM_TYPE = SCENE_CAM_TYPE_DEFAULT;
    R_TEXTBOX_TEXWIDTH = 0;
    R_TEXTBOX_TEXHEIGHT = 0;
    R_TEXTBOX_WIDTH = 50;
    R_TEXTBOX_HEIGHT = 0;
    YREG(24) = -60;
    YREG(25) = 13;
    YREG(26) = 15;
    YREG(27) = 41;
    YREG(28) = 15;
    YREG(32) = 265;
    YREG(33) = 55;
    YREG(34) = 0;
    YREG(35) = 20;
    YREG(36) = 0;
    YREG(37) = 0;
    YREG(38) = 0;
    YREG(40) = 2;
    YREG(41) = 1;
    YREG(42) = 2;
    YREG(43) = 1;
    YREG(44) = 0;
    YREG(45) = 236;
    YREG(46) = 36;
    YREG(47) = 0;

#if OOT_NTSC
    R_KALEIDO_UNK1(0) = -45;
    R_KALEIDO_UNK1(1) = -48;
    R_KALEIDO_UNK2(0) = 16;
    R_KALEIDO_UNK2(1) = 22;
    R_KALEIDO_UNK3(0) = -55;
    R_KALEIDO_UNK3(1) = -53;
    R_KALEIDO_UNK4(0) = 43;
    R_KALEIDO_UNK4(1) = 47;
    R_KALEIDO_UNK5(0) = -33;
    R_KALEIDO_UNK5(1) = -42;
    R_KALEIDO_UNK6(0) = -33;
    R_KALEIDO_UNK6(1) = -37;
#else
    // Same as above, although these regs are now unused for PAL versions
    YREG(48) = -45;
    YREG(49) = -48;
    YREG(50) = 16;
    YREG(51) = 22;
    YREG(52) = -55;
    YREG(53) = -53;
    YREG(54) = 43;
    YREG(55) = 47;
    YREG(56) = -33;
    YREG(57) = -42;
    YREG(58) = -33;
    YREG(59) = -37;
#endif

    YREG(60) = 14;
    YREG(61) = -2;
    YREG(62) = -2;
    YREG(63) = -18;
    YREG(64) = -18;
    YREG(67) = 0;
    YREG(68) = 0;
    YREG(69) = 0;
    YREG(70) = 0;
    R_TEXTBOX_ICON_XPOS = -6;
    R_TEXTBOX_ICON_YPOS = 10;
    YREG(73) = -8;
    YREG(74) = 8;
    R_TEXTBOX_ICON_DIMENSION = 24;
    YREG(76) = 32;
    YREG(77) = 0;
    R_MESSAGE_DEBUGGER_SELECT = 0;
    R_MESSAGE_DEBUGGER_TEXTID = 48;
    YREG(80) = 450;
    YREG(81) = 0;
    YREG(82) = -15;
    YREG(83) = 500;
    YREG(84) = 600;
    YREG(85) = 0;
    YREG(86) = -21;
    YREG(87) = 510;
    R_C_UP_ICON_X = C_UP_BUTTON_X - 7;
    R_C_UP_ICON_Y = C_UP_BUTTON_Y + 4;
    YREG(92) = 8;
    YREG(93) = 6;
    YREG(94) = 3;
    YREG(95) = 1;
    R_MAGIC_FILL_COLOR(0) = 0;
    R_MAGIC_FILL_COLOR(1) = 200;
    R_MAGIC_FILL_COLOR(2) = 0;
    ZREG(9) = 140;
    ZREG(10) = 200;
    ZREG(11) = 0;
    ZREG(12) = 200;
    R_PAUSE_PAGE_SWITCH_FRAME_ADVANCE_ON = false;
    ZREG(14) = 110;
    ZREG(15) = 56;
    ZREG(16) = 1;
    ZREG(17) = -50;
    ZREG(18) = -200;
    ZREG(19) = 0;
    ZREG(20) = 0;
    ZREG(21) = 50;
    ZREG(22) = -50;
    ZREG(23) = 20;
    ZREG(24) = 20;
    ZREG(25) = 4;
    ZREG(26) = 20;
    ZREG(27) = 10;
    ZREG(28) = 20;
    ZREG(29) = 4;
    ZREG(30) = 20;
    ZREG(31) = 10;
    ZREG(32) = 0;
    ZREG(33) = 0;
    ZREG(34) = 0;
    ZREG(36) = 0;
    ZREG(37) = 0;
    ZREG(38) = 0;
    R_C_BTN_COLOR(0) = 255;
    R_C_BTN_COLOR(1) = 160;
    R_C_BTN_COLOR(2) = 0;
    ZREG(46) = 1;
    ZREG(47) = 1;

#if OOT_NTSC
    R_START_LABEL_DD(0) = 86;
    R_START_LABEL_DD(1) = 100;
    R_START_LABEL_WIDTH = 0;
    R_START_LABEL_HEIGHT = 0;
    R_START_LABEL_Y(0) = 21;
    R_START_LABEL_Y(1) = 20;
    R_START_LABEL_X(0) = 122;
    R_START_LABEL_X(1) = 120;
#else
    R_START_LABEL_DD(0) = 100;
    R_START_LABEL_DD(1) = 89;
    R_START_LABEL_DD(2) = 92;
    R_START_LABEL_Y(0) = 20;
    R_START_LABEL_Y(1) = 20;
    R_START_LABEL_Y(2) = 20;
    R_START_LABEL_X(0) = 120;
    R_START_LABEL_X(1) = 119;
    R_START_LABEL_X(2) = 119;
#endif

    R_PAUSE_QUEST_MEDALLION_SHINE_TIME(0) = 1;
    //! @bug Overlapping reg usage
    R_C_UP_BTN_X = C_UP_BUTTON_X; // R_PAUSE_QUEST_MEDALLION_SHINE_TIME(1)
    R_C_UP_BTN_Y = C_UP_BUTTON_Y; // R_PAUSE_QUEST_MEDALLION_SHINE_TIME(2)
    R_PAUSE_QUEST_MEDALLION_SHINE_TIME(3) = 20;

    ZREG(65) = 21;
    ZREG(66) = 122;
#if OOT_VERSION < PAL_1_0
    R_START_BTN_X = 132;
    R_START_BTN_Y = 17;
#endif
    R_ITEM_BTN_X(1) = C_LEFT_BUTTON_X;
    R_ITEM_BTN_X(2) = C_DOWN_BUTTON_X;
    R_ITEM_BTN_X(3) = C_RIGHT_BUTTON_X;
    R_ITEM_BTN_Y(0) = B_BUTTON_Y;
    R_ITEM_BTN_Y(1) = C_LEFT_BUTTON_Y;
    R_ITEM_BTN_Y(2) = C_DOWN_BUTTON_Y;
    R_ITEM_BTN_Y(3) = C_RIGHT_BUTTON_Y;
    R_ITEM_BTN_DD(0) = 575;
    R_ITEM_BTN_DD(1) = 620;
    R_ITEM_BTN_DD(2) = 620;
    R_ITEM_BTN_DD(3) = 620;
    R_ITEM_ICON_X(1) = C_LEFT_BUTTON_X;
    R_ITEM_ICON_X(2) = C_DOWN_BUTTON_X;
    R_ITEM_ICON_X(3) = C_RIGHT_BUTTON_X;
    R_ITEM_ICON_Y(0) = B_BUTTON_Y;
    R_ITEM_ICON_Y(1) = C_LEFT_BUTTON_Y;
    R_ITEM_ICON_Y(2) = C_DOWN_BUTTON_Y;
    R_ITEM_ICON_Y(3) = C_RIGHT_BUTTON_Y;
    R_ITEM_ICON_DD(0) = 550;
    R_ITEM_ICON_DD(1) = 680;
    R_ITEM_ICON_DD(2) = 680;
    R_ITEM_ICON_DD(3) = 680;
    ZREG(94) = 1;
    ZREG(95) = 0;
    XREG(0) = 26;
    XREG(1) = 22;
    XREG(2) = -11;
    XREG(3) = -4;
    XREG(4) = 3;
    XREG(5) = 0;
    R_PAUSE_STICK_REPEAT_DELAY = 2;
    XREG(7) = 30;
    R_PAUSE_STICK_REPEAT_DELAY_FIRST = 10;
    XREG(9) = 0;
    XREG(10) = -9550;
    XREG(11) = 9950;
    XREG(12) = 68;
    XREG(13) = 36;
    XREG(14) = 4;
    XREG(15) = 1;
    R_A_BTN_Y = A_BUTTON_Y;
    XREG(18) = -380;
    R_A_ICON_Y = A_BUTTON_Y;
    XREG(21) = 48;
    XREG(25) = 0;
    XREG(26) = 0;
    XREG(27) = 0;
    XREG(28) = 16;
    XREG(29) = 50;
    XREG(30) = 15;
    XREG(31) = 8;
    XREG(32) = 4;
    XREG(33) = 2;
    XREG(34) = 100;
    XREG(35) = 7;
    XREG(36) = 20;
    XREG(37) = 10;
    XREG(38) = 2;
    XREG(39) = 140;
    XREG(40) = 20;
    XREG(41) = 300;
    XREG(42) = 100;
    XREG(43) = 70;
    XREG(44) = 50;
    XREG(45) = 36;
    XREG(46) = 16;
    XREG(47) = 8;
    R_MAGIC_METER_Y_HIGHER = 34;
    R_MAGIC_METER_X = 18;
    R_MAGIC_METER_Y_LOWER = 42;
    R_MAGIC_FILL_X = 26;
    XREG(52) = 0;
    XREG(53) = 1;
    R_TEXT_INIT_XPOS = 65;
    R_TEXT_INIT_YPOS = 60;
    R_TEXT_LINE_SPACING = 16;
    R_TEXT_CHAR_SCALE = 80;
    XREG(58) = 80;
    XREG(59) = 12;
    R_TEXT_DROP_SHADOW_OFFSET = 1;
    R_TEXTBOX_BG_YPOS = 3;
    XREG(62) = 0;
    XREG(63) = 100;
    R_TEXTBOX_END_XPOS = 158;
    R_TEXTBOX_END_YPOS = 102;
    R_TEXT_CHOICE_XPOS = 48;
    R_TEXT_CHOICE_YPOS(0) = 54;
    R_TEXT_CHOICE_YPOS(1) = 70;
    R_TEXT_CHOICE_YPOS(2) = 86;
    XREG(70) = -300;
    XREG(71) = 0;
    R_TEXTBOX_X_TARGET = 54;
    R_TEXTBOX_Y_TARGET = 48;
    R_TEXTBOX_WIDTH_TARGET = 128;
#if !PLATFORM_IQUE
    R_TEXTBOX_HEIGHT_TARGET = 64;
#else
    R_TEXTBOX_HEIGHT_TARGET = 74;
#endif
    R_TEXTBOX_TEXWIDTH_TARGET = 2048;
    R_TEXTBOX_TEXHEIGHT_TARGET = 512;
    XREG(78) = 96;
    XREG(79) = 98;
    XREG(80) = 0;
    XREG(81) = 50;
    XREG(82) = 25;
    XREG(83) = 100;
    XREG(84) = 100;
    XREG(85) = 0;
    XREG(86) = 0;
    XREG(87) = 0;
    XREG(88) = -50;
    XREG(89) = -100;
    XREG(90) = -500;
    XREG(91) = 0;
    XREG(92) = 100;
    XREG(93) = 100;
    XREG(94) = 160;
    XREG(95) = 200;
    R_PAUSE_PAGES_Y_ORIGIN_2 = -6080;
    R_PAUSE_DEPTH_OFFSET = 9355;
    WREG(4) = 8;
    WREG(5) = 3;
    WREG(6) = 8;
    WREG(7) = 0;

#if OOT_NTSC
    R_B_LABEL_SCALE(0) = 100;
    R_B_LABEL_SCALE(1) = 109;
    R_B_LABEL_X(0) = 151;
    R_B_LABEL_X(1) = 148;
    R_B_LABEL_Y(0) = 23;
    R_B_LABEL_Y(1) = 22;
    R_A_LABEL_Z(0) = -380;
    R_A_LABEL_Z(1) = -350;
#else
    // Same as above, although these regs are now unused in PAL versions
    WREG(8) = 100;
    WREG(9) = 109;
    WREG(10) = 151;
    WREG(11) = 148;
    WREG(12) = 23;
    WREG(13) = 22;
    WREG(14) = -380;
    WREG(15) = -350;
#endif

    WREG(16) = -175;
    WREG(17) = 155;
    WREG(18) = 10;
    WREG(19) = 10;
    WREG(20) = -50;
    WREG(21) = -54;
    WREG(22) = -32;
    WREG(23) = -38;
    WREG(24) = -36;
    WREG(25) = 40;
    WREG(26) = -40;
    WREG(27) = 0;
    WREG(28) = 0;
    R_OW_MINIMAP_X = 238;
    R_OW_MINIMAP_Y = 164;
    R_MINIMAP_DISABLED = false;
    WREG(32) = 122;
    WREG(33) = 60;
    WREG(35) = 0;
    WREG(36) = 0;

#if OOT_PAL
    R_B_LABEL_SCALE(0) = 100;
    R_B_LABEL_SCALE(1) = 99;
    R_B_LABEL_SCALE(2) = 109;
    R_B_LABEL_X(0) = B_BUTTON_X - 9;
    R_B_LABEL_X(1) = B_BUTTON_X - 11;
    R_B_LABEL_X(2) = B_BUTTON_X - 12;
    R_B_LABEL_Y(0) = B_BUTTON_Y + 6;
    R_B_LABEL_Y(1) = B_BUTTON_Y + 5;
    R_B_LABEL_Y(2) = B_BUTTON_Y + 5;
    R_A_LABEL_Z(0) = -380;
    R_A_LABEL_Z(1) = -360;
    R_A_LABEL_Z(2) = -350;
    R_KALEIDO_UNK1(0) = -48;
    R_KALEIDO_UNK1(1) = 16;
    R_KALEIDO_UNK1(2) = -62;
    R_KALEIDO_UNK2(0) = 22;
    R_KALEIDO_UNK2(1) = -84;
    R_KALEIDO_UNK2(2) = 20;
    R_KALEIDO_UNK3(0) = -53;
    R_KALEIDO_UNK3(1) = 40;
    R_KALEIDO_UNK3(2) = -64;
    R_KALEIDO_UNK4(0) = 47;
    R_KALEIDO_UNK4(1) = -84;
    R_KALEIDO_UNK4(2) = 44;
    R_KALEIDO_UNK5(0) = -42;
    R_KALEIDO_UNK5(1) = 32;
    R_KALEIDO_UNK5(2) = -45;
    R_KALEIDO_UNK6(0) = -37;
    R_KALEIDO_UNK6(1) = 30;
    R_KALEIDO_UNK6(2) = -50;
#endif

    R_DGN_MINIMAP_X = 204;
    R_DGN_MINIMAP_Y = 140;
    WREG(87) = 80;
    WREG(88) = 70;
    WREG(89) = 40;
    WREG(90) = 320;
    WREG(91) = 40;
    WREG(92) = 3;
    WREG(93) = 6;
    WREG(94) = 3;
    WREG(95) = 6;

    if (gSaveContext.gameMode == GAMEMODE_NORMAL) {
        R_TEXTBOX_X = 52;
        R_TEXTBOX_Y = 36;
        VREG(2) = 214;
        VREG(3) = 76;
        VREG(4) = 304;
        VREG(5) = 430;
        VREG(6) = 1;
        R_TEXTBOX_CLEF_XPOS = 78;
        R_TEXTBOX_CLEF_YPOS = 166;
        VREG(9) = 40;
        R_COMPASS_SCALE_X = 32;
        R_COMPASS_SCALE_Y = 32;
        R_COMPASS_OFFSET_X = 110;
        R_COMPASS_OFFSET_Y = -740;
        R_MINIMAP_COLOR(0) = 0;
        R_MINIMAP_COLOR(1) = 255;
        R_MINIMAP_COLOR(2) = 255;
    }

    R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_A) = 0;
    R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_DOWN) = 0;
    R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_RIGHT) = 0;
    R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_LEFT) = 0;
    R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_UP) = 0;

    VREG(26) = 0;
    VREG(27) = 0;
    R_OCARINA_BUTTONS_XPOS = 98;
    R_OCARINA_BUTTONS_XPOS_OFFSET = 18;
    VREG(30) = 0;
    VREG(31) = 0;
    VREG(32) = 0;

    R_TEXT_ADJUST_COLOR_1_R = 70;
    R_TEXT_ADJUST_COLOR_1_G = 255;
    R_TEXT_ADJUST_COLOR_1_B = 80;

    R_TEXT_ADJUST_COLOR_2_R = 70;
    R_TEXT_ADJUST_COLOR_2_G = 255;
    R_TEXT_ADJUST_COLOR_2_B = 80;

    VREG(40) = 9;
    VREG(42) = 250;
    VREG(43) = 440;
    VREG(44) = 10;
    R_OCARINA_BUTTONS_YPOS(0) = 190;
    R_OCARINA_BUTTONS_YPOS(1) = 184;
    R_OCARINA_BUTTONS_YPOS(2) = 176;
    R_OCARINA_BUTTONS_YPOS(3) = 172;
    R_OCARINA_BUTTONS_YPOS(4) = 170;
    R_OCARINA_BUTTONS_APPEAR_ALPHA_STEP = 30;
    R_OCARINA_BUTTONS_YPOS_OFFSET = 0;
    VREG(52) = -16;
    VREG(53) = 230;
    VREG(54) = 230;
    VREG(55) = 120;
    VREG(56) = -720;
    VREG(57) = 255;
    VREG(58) = 255;
    VREG(59) = 255;
    R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER_BASE = 20;
    R_KALEIDO_PROMPT_CURSOR_ALPHA = 100;
    R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE = 0;
    R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER = 10;
    R_ITEM_AMMO_X(1) = C_LEFT_BUTTON_X + 1;
    R_ITEM_AMMO_X(2) = C_DOWN_BUTTON_X + 1;
    R_ITEM_AMMO_X(3) = C_RIGHT_BUTTON_X + 1;
    R_ITEM_AMMO_Y(0) = B_BUTTON_Y + 18;
    R_ITEM_AMMO_Y(1) = C_LEFT_BUTTON_Y + 17;
    R_ITEM_AMMO_Y(2) = C_DOWN_BUTTON_Y + 17;
    R_ITEM_AMMO_Y(3) = C_RIGHT_BUTTON_Y + 17;
    VREG(72) = 0;
    VREG(73) = 0;
    VREG(74) = 0;
    VREG(75) = 0;
    R_ITEM_ICON_WIDTH(0) = 30;
    R_ITEM_ICON_WIDTH(1) = 24;
    R_ITEM_ICON_WIDTH(2) = 24;
    R_ITEM_ICON_WIDTH(3) = 24;
    R_ITEM_BTN_WIDTH(0) = 29;
    R_ITEM_BTN_WIDTH(1) = 27;
    R_ITEM_BTN_WIDTH(2) = 27;
    R_ITEM_BTN_WIDTH(3) = 27;
    VREG(84) = 0;
    VREG(85) = 50;
    VREG(86) = 0;
    VREG(87) = 64;
    VREG(88) = 66;
    VREG(89) = 0;
    R_GAME_OVER_RUMBLE_STRENGTH = 126;
    R_GAME_OVER_RUMBLE_DURATION = 124;
    //! @bug This is eventually cast to a u8 after some scaling in `GameOver_Update`, negative numbers typically
    //! become large (fast) decrease rates
    R_GAME_OVER_RUMBLE_DECREASE_RATE = -63;
}

void Regs_InitData(PlayState* play) {
    Regs_InitDataImpl();
}
