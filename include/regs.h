#ifndef REGS_H
#define REGS_H

#define REG_GROUPS 29 // number of REG groups, i.e. REG, SREG, OREG, etc.
#define REG_PAGES 6
#define REGS_PER_PAGE 16
#define REGS_PER_GROUP (REG_PAGES * REGS_PER_PAGE)

#define BASE_REG(n, r) gRegEditor->data[(n) * REGS_PER_GROUP + (r)]

#define  REG(r) BASE_REG(0, (r))
#define SREG(r) BASE_REG(1, (r))
#define OREG(r) BASE_REG(2, (r))
#define PREG(r) BASE_REG(3, (r))
#define QREG(r) BASE_REG(4, (r))
#define MREG(r) BASE_REG(5, (r))
#define YREG(r) BASE_REG(6, (r))
#define DREG(r) BASE_REG(7, (r))
#define UREG(r) BASE_REG(8, (r))
#define IREG(r) BASE_REG(9, (r))
#define ZREG(r) BASE_REG(10, (r))
#define CREG(r) BASE_REG(11, (r))
#define NREG(r) BASE_REG(12, (r))
#define KREG(r) BASE_REG(13, (r))
#define XREG(r) BASE_REG(14, (r))
#define cREG(r) BASE_REG(15, (r))
#define sREG(r) BASE_REG(16, (r))
#define iREG(r) BASE_REG(17, (r))
#define WREG(r) BASE_REG(18, (r))
#define AREG(r) BASE_REG(19, (r))
#define VREG(r) BASE_REG(20, (r))
#define HREG(r) BASE_REG(21, (r))
#define GREG(r) BASE_REG(22, (r))
#define mREG(r) BASE_REG(23, (r))
#define nREG(r) BASE_REG(24, (r))
#define BREG(r) BASE_REG(25, (r))
#define dREG(r) BASE_REG(26, (r))
#define kREG(r) BASE_REG(27, (r))
#define bREG(r) BASE_REG(28, (r))

#define R_ENV_AMBIENT_COLOR(i)                   REG(0 + (i))
#define R_ENV_LIGHT1_COLOR(i)                    REG(3 + (i))
#define R_ENV_LIGHT2_COLOR(i)                    REG(6 + (i))
#define R_ENV_DISABLE_DBG                        REG(9)
#define R_ENV_FOG_COLOR(i)                       REG(10 + (i))
#define R_ENV_Z_FAR                              REG(13)
#define R_ENV_FOG_NEAR                           REG(14)
#define R_ENV_TIME_SPEED_OLD                     REG(15) // Most likely used during development. Unused in the final game.
#define R_RUN_SPEED_LIMIT                        REG(45)
#define R_ENABLE_ARENA_DBG                       SREG(0)
#define R_ROOM_IMAGE_NODRAW_FLAGS                SREG(25)
#define R_ROOM_BG2D_FORCE_SCALEBG                SREG(26)
#define R_UPDATE_RATE                            SREG(30)
#define R_ENABLE_AUDIO_DBG                       SREG(36)
#define R_VI_MODE_EDIT_STATE                     SREG(48)
#define R_VI_MODE_EDIT_WIDTH                     SREG(49)
#define R_VI_MODE_EDIT_HEIGHT                    SREG(50)
#define R_VI_MODE_EDIT_ULY_ADJ                   SREG(51)
#define R_VI_MODE_EDIT_LRY_ADJ                   SREG(52)
#define R_VI_MODE_EDIT_ULX_ADJ                   SREG(53)
#define R_VI_MODE_EDIT_LRX_ADJ                   SREG(54)
#define R_FB_FILTER_TYPE                         SREG(80)
#define R_FB_FILTER_PRIM_COLOR(c)                SREG(81 + (c))
#define R_FB_FILTER_A                            SREG(84)
#define R_FB_FILTER_ENV_COLOR(c)                 SREG(85 + (c))
#define R_ENABLE_FB_FILTER                       SREG(88)
#define R_PAUSE_MENU_MODE                        SREG(94)
#define R_CAM_XZ_OFFSET_UPDATE_RATE              OREG(2)
#define R_CAM_Y_OFFSET_UPDATE_RATE               OREG(3)
#define R_CAM_FOV_UPDATE_RATE                    OREG(4)
#define R_CAM_MAX_PITCH                          OREG(5)
#define R_CAM_R_UPDATE_RATE_INV                  OREG(6)
#define R_CAM_PITCH_UPDATE_RATE_INV              OREG(7)
#define R_CAM_SLOPE_Y_ADJ_AMOUNT                 OREG(9)
#define R_CAM_PITCH_FLOOR_CHECK_NEAR_DIST_FAC    OREG(17)
#define R_CAM_PITCH_FLOOR_CHECK_FAR_DIST_FAC     OREG(18)
#define R_CAM_PITCH_FLOOR_CHECK_OFFSET_Y_FAC     OREG(19)
#define R_CAM_PITCH_FLOOR_CHECK_NEAR_WEIGHT      OREG(20)
#define R_CAM_DEFAULT_ANIM_TIME                  OREG(23)
#define R_CAM_UPDATE_RATE_STEP_SCALE_XZ          OREG(25) // also used as a step scale for other data
#define R_CAM_UPDATE_RATE_STEP_SCALE_Y           OREG(26) // also used as a step scale for other data
#define R_CAM_JUMP1_EYE_Y_STEP_SCALE             OREG(31)
#define R_CAM_MIN_PITCH_1                        OREG(34)
#define R_CAM_MIN_PITCH_2                        OREG(35)
#define R_CAM_BATTLE1_ROLL_TARGET_BASE           OREG(36)
#define R_CAM_BATTLE1_ROLL_STEP_SCALE            OREG(37)
#define R_CAM_BATTLE1_XYZ_OFFSET_UPDATE_RATE_TARGET OREG(40)
#define R_CAM_AT_LERP_STEP_SCALE_MIN             OREG(41)
#define R_CAM_AT_LERP_STEP_SCALE_FAC             OREG(42)
#define R_CAM_YOFFSET_NORM                       OREG(46)
#define R_CAM_DATA(type)                         PREG(0 + (type))
#define R_DBG_CAM_UPDATE                         PREG(80)
#define R_DBG_REG_UPDATE                         PREG(82)
#define R_RELOAD_CAM_PARAMS                      QREG(0)
#define R_SCENE_CAM_TYPE                         YREG(15)
#define R_TEXTBOX_TEXWIDTH                       YREG(16)
#define R_TEXTBOX_TEXHEIGHT                      YREG(17)
#define R_TEXTBOX_WIDTH                          YREG(22)
#define R_TEXTBOX_HEIGHT                         YREG(23)
#define R_TEXTBOX_ICON_XPOS                      YREG(71)
#define R_TEXTBOX_ICON_YPOS                      YREG(72)
#define R_TEXTBOX_ICON_SIZE                      YREG(75)
#define R_MESSAGE_DEBUGGER_SELECT                YREG(78)
#define R_MESSAGE_DEBUGGER_TEXTID                YREG(79)
#define R_C_UP_ICON_X                            YREG(88)
#define R_C_UP_ICON_Y                            YREG(89)
#define R_MAGIC_FILL_COLOR(i)                    ZREG(0 + (i))
#define R_C_BTN_COLOR(i)                         ZREG(39 + (i))
#define R_B_BTN_COLOR(i)                         ZREG(43 + (i))
#define R_START_LABEL_DD(i)                      ZREG(48 + (i))
#define R_START_LABEL_Y(i)                       ZREG(51 + (i))
#define R_START_LABEL_X(i)                       ZREG(54 + (i))
#define R_C_UP_BTN_X                             ZREG(62)
#define R_C_UP_BTN_Y                             ZREG(63)
#define R_START_BTN_X                            ZREG(68)
#define R_START_BTN_Y                            ZREG(69)
#define R_ITEM_BTN_X(i)                          ZREG(70 + (i))
#define R_ITEM_BTN_Y(i)                          ZREG(74 + (i))
#define R_ITEM_BTN_DD(i)                         ZREG(78 + (i))
#define R_ITEM_ICON_X(i)                         ZREG(82 + (i))
#define R_ITEM_ICON_Y(i)                         ZREG(86 + (i))
#define R_ITEM_ICON_DD(i)                        ZREG(90 + (i))
#define R_TRANS_DBG_ENABLED                      CREG(11)
#define R_TRANS_DBG_TYPE                         CREG(12)
#define R_ENV_WIND_DIR(i)                        CREG(16 + (i))
#define R_ENV_WIND_SPEED                         CREG(19)
#define R_PAUSE_STICK_REPEAT_DELAY               XREG(6)
#define R_PAUSE_STICK_REPEAT_DELAY_FIRST         XREG(8)
#define R_A_BTN_Y                                XREG(16)
#define R_A_BTN_X                                XREG(17)
#define R_A_ICON_Y                               XREG(19)
#define R_A_ICON_X                               XREG(20)
#define R_A_BTN_COLOR(i)                         XREG(22 + (i))
#define R_MAGIC_METER_Y_HIGHER                   XREG(48)
#define R_MAGIC_METER_X                          XREG(49)
#define R_MAGIC_METER_Y_LOWER                    XREG(50)
#define R_MAGIC_FILL_X                           XREG(51)
#define R_TEXT_INIT_XPOS                         XREG(54)
#define R_TEXT_INIT_YPOS                         XREG(55)
#define R_TEXT_LINE_SPACING                      XREG(56)
#define R_TEXT_CHAR_SCALE                        XREG(57)
#define R_TEXT_DROP_SHADOW_OFFSET                XREG(60)
#define R_TEXTBOX_BG_YPOS                        XREG(61)
#define R_TEXTBOX_END_XPOS                       XREG(64)
#define R_TEXTBOX_END_YPOS                       XREG(65)
#define R_TEXT_CHOICE_XPOS                       XREG(66)
#define R_TEXT_CHOICE_YPOS(choice)               XREG(67 + (choice))
#define R_TEXTBOX_X_TARGET                       XREG(72)
#define R_TEXTBOX_Y_TARGET                       XREG(73)
#define R_TEXTBOX_WIDTH_TARGET                   XREG(74)
#define R_TEXTBOX_HEIGHT_TARGET                  XREG(75)
#define R_TEXTBOX_TEXWIDTH_TARGET                XREG(76)
#define R_TEXTBOX_TEXHEIGHT_TARGET               XREG(77)
#define R_ENV_LIGHT1_DIR(i)                      cREG(3 + (i))
#define R_ENV_LIGHT2_DIR(i)                      cREG(6 + (i))
#define R_ROOM_CULL_DEBUG_MODE                   iREG(86)
#define R_ROOM_CULL_NUM_ENTRIES                  iREG(87)
#define R_ROOM_CULL_USED_ENTRIES                 iREG(88)
#define R_ROOM_CULL_DEBUG_TARGET                 iREG(89)
#define R_B_LABEL_DD                             WREG(0)
#define R_OW_MINIMAP_X                           WREG(29)
#define R_OW_MINIMAP_Y                           WREG(30)
#define R_MINIMAP_DISABLED                       WREG(31)
#define R_B_LABEL_X(i)                           WREG(40 + (i))
#define R_B_LABEL_Y(i)                           WREG(43 + (i))
#define R_DGN_MINIMAP_X                          WREG(68)
#define R_DGN_MINIMAP_Y                          WREG(69)
#define R_TEXTBOX_X                              VREG(0)
#define R_TEXTBOX_Y                              VREG(1)
#define R_TEXTBOX_CLEF_XPOS                      VREG(7)
#define R_TEXTBOX_CLEF_YPOS                      VREG(8)
#define R_MAP_INDEX                              VREG(11)
#define R_MAP_TEX_INDEX_BASE                     VREG(12)
#define R_MAP_TEX_INDEX                          VREG(13)
#define R_COMPASS_SCALE_X                        VREG(14)
#define R_COMPASS_SCALE_Y                        VREG(15)
#define R_COMPASS_OFFSET_X                       VREG(16)
#define R_COMPASS_OFFSET_Y                       VREG(17)
#define R_MINIMAP_COLOR(i)                       VREG(18 + (i))
#define R_OCARINA_BUTTONS_XPOS                   VREG(28)
#define R_OCARINA_BUTTONS_XPOS_OFFSET            VREG(29)
#define R_TEXT_ADJUST_COLOR_1_R                  VREG(33)
#define R_TEXT_ADJUST_COLOR_1_G                  VREG(34)
#define R_TEXT_ADJUST_COLOR_1_B                  VREG(35)
#define R_TEXT_ADJUST_COLOR_2_R                  VREG(36)
#define R_TEXT_ADJUST_COLOR_2_G                  VREG(37)
#define R_TEXT_ADJUST_COLOR_2_B                  VREG(38)
#define R_OCARINA_BUTTONS_YPOS(note)             VREG(45 + (note))
#define R_OCARINA_BUTTONS_YPOS_OFFSET            VREG(51)
#define R_ITEM_AMMO_X(i)                         VREG(64 + (i))
#define R_ITEM_AMMO_Y(i)                         VREG(68 + (i))
#define R_ITEM_ICON_WIDTH(i)                     VREG(76 + (i))
#define R_ITEM_BTN_WIDTH(i)                      VREG(80 + (i))
#define R_GAME_OVER_RUMBLE_STRENGTH              VREG(90)
#define R_GAME_OVER_RUMBLE_DURATION              VREG(91)
#define R_GAME_OVER_RUMBLE_DECREASE_RATE         VREG(92)
#define R_DISABLE_INPUT_DISPLAY                  HREG(47)
#define R_ENABLE_PLAY_LOGS                       HREG(63)
#define R_EN_GOROIWA_SPEED                       mREG(12)
#define R_NAVI_MSG_REGION_ALPHA                  nREG(87)


#define R_HREG_MODE  HREG(80) // see `HRegMode` for mode options

typedef enum {
    /*  6 */ HREG_MODE_PRINT_HILITE_INFO = 6, // print hilite information
    /*  7 */ HREG_MODE_UCODE_DISAS, // various controls for the ucode disas system
    /*  8 */ HREG_MODE_PRINT_MEMORY, // print memory at a specified address
    /*  9 */ HREG_MODE_UNUSED_9,
    /* 10 */ HREG_MODE_PLAY, // various debug controls for the Play state
    /* 11 */ HREG_MODE_PERSPECTIVE, // set various properties of the view perspective
    /* 12 */ HREG_MODE_INPUT_TEST, // displays inputs from the specified controller
    /* 13 */ HREG_MODE_SCHED, // toggle various vi special features
    /* 14 */ HREG_MODE_UNUSED_14,
    /* 15 */ HREG_MODE_PRERENDER,
    /* 16 */ HREG_MODE_SETUP_FRAME, // set the base screen color (and by extension, shrink window color too)
    /* 17 */ HREG_MODE_SCENE_CONFIG, // toggle drawing the scene config
    /* 18 */ HREG_MODE_PRINT_OBJECT_TABLE,
    /* 19 */ HREG_MODE_LETTERBOX, // toggle logging and view values for the letterbox system
    /* 20 */ HREG_MODE_HEAP_FREE_BLOCK_TEST, // enable or disable heap free block test
    /* 21 */ HREG_MODE_VI
} HRegMode;

// HREG_MODE_PRINT_HILITE_INFO
// This mode has no controls with other regs. Simply set HREG mode to `HREG_MODE_PRINT_HILITE_INFO`
// to print out the eye, object, and light direction vectors for hilite on every frame.

// HREG_MODE_UCODE_DISAS
#define R_UCODE_DISAS_TOGGLE      HREG(81) // < 0 enables and prints some hardware reg info for 1 frame, > 0 enables constant disas
#define R_UCODE_DISAS_LOG_MODE    HREG(82) // 1 and 2 print counts, 3 enables fault client, 4 disables open/close disps
#define R_UCODE_DISAS_LOG_LEVEL   HREG(83) // enables various logging within the dissasembler itself
#define R_UCODE_DISAS_TOTAL_COUNT HREG(84) // read-only
#define R_UCODE_DISAS_VTX_COUNT   HREG(85) // read-only
#define R_UCODE_DISAS_SPVTX_COUNT HREG(86) // read-only
#define R_UCODE_DISAS_TRI1_COUNT  HREG(87) // read-only
#define R_UCODE_DISAS_TRI2_COUNT  HREG(88) // read-only
#define R_UCODE_DISAS_QUAD_COUNT  HREG(89) // read-only
#define R_UCODE_DISAS_LINE_COUNT  HREG(90) // read-only
#define R_UCODE_DISAS_SYNC_ERROR_COUNT  HREG(91) // read-only
#define R_UCODE_DISAS_LOAD_COUNT  HREG(92) // read-only
#define R_UCODE_DISAS_DL_COUNT    HREG(93) // read-only

// HREG_MODE_PRINT_MEMORY
#define R_PRINT_MEMORY_INIT     HREG(94) // set to `HREG_MODE_PRINT_MEMORY` when init is complete
#define R_PRINT_MEMORY_TRIGGER  HREG(81) // set to a negative number to print memory
#define R_PRINT_MEMORY_ADDR     HREG(82) // middle 16 bits of the address to print from (80XXXX00)
#define R_PRINT_MEMORY_SIZE     HREG(83) // value * 0x10 = length of the log

// HREG_MODE_PLAY
#define R_PLAY_INIT                   HREG(94) // set to `HREG_MODE_PLAY` when init is complete
#define R_PLAY_RUN_UPDATE             HREG(81)
#define R_PLAY_RUN_DRAW               HREG(82)
#define R_PLAY_DRAW_SKYBOX            HREG(83)
#define R_PLAY_DRAW_ROOM_FLAGS        HREG(84) // also enables drawing the scene config and room bg cover
#define R_PLAY_DRAW_ACTORS            HREG(85)
#define R_PLAY_DRAW_LENS_FLARES       HREG(86)
#define R_PLAY_DRAW_SCREEN_FILLS      HREG(87)
#define R_PLAY_DRAW_SANDSTORM         HREG(88)
#define R_PLAY_DRAW_OVERLAY_ELEMENTS  HREG(89)
#define R_PLAY_DRAW_ENV_FLAGS         HREG(90) // see flags below
#define R_PLAY_DRAW_COVER_ELEMENTS    HREG(92) // draw transition instance and vismono
#define R_PLAY_DRAW_DEBUG_OBJECTS     HREG(93)

#define PLAY_ENV_DRAW_SKYBOX_FILTERS (1 << 0)
#define PLAY_ENV_DRAW_SUN_AND_MOON (1 << 1)
#define PLAY_ENV_DRAW_LIGHTNING (1 << 2)
#define PLAY_ENV_DRAW_LIGHTS (1 << 3)

#define R_PLAY_ENABLE_UCODE_DISAS    HREG(93) // set to 2 to switch to ucode disas mode and trigger it
#define R_PLAY_UCODE_DISAS_LOG_LEVEL HREG(92) // log level to use when switching to ucode disas

// HREG_MODE_PERSPECTIVE
#define R_PERSPECTIVE_INIT    HREG(94) // set to `HREG_MODE_PERSPECTIVE` when init is complete
#define R_PERSPECTIVE_FOVY    HREG(83) // value to use for `fovy`
#define R_PERSPECTIVE_ASPECT  HREG(84) // value to use for `aspect`, divided by 10000
#define R_PERSPECTIVE_NEAR    HREG(85) // value to use for `near`
#define R_PERSPECTIVE_FAR     HREG(86) // value to use for `far`
#define R_PERSPECTIVE_SCALE   HREG(87) // value to use for `scale`, divided by 100

// HREG_MODE_INPUT_TEST
#define R_INPUT_TEST_CONTROLLER_PORT      HREG(81) // controller to copy values from
#define R_INPUT_TEST_COMPARE_VALUE        HREG(82) // input value compared against for various tests
#define R_INPUT_TEST_BUTTON_CUR           HREG(83) // buttons held on the test controller
#define R_INPUT_TEST_BUTTON_PRESS         HREG(84) // buttons pressed on the test controller
#define R_INPUT_TEST_REL_STICK_X          HREG(85) // current stick value on the x axis (ignoring the deadzone)
#define R_INPUT_TEST_REL_STICK_Y          HREG(86) // current stick value on the y axis (ignoring the deadzone)
#define R_INPUT_TEST_REL_STICK_X_2        HREG(87) // same as R_INPUT_TEST_REL_STICK_X
#define R_INPUT_TEST_REL_STICK_Y_2        HREG(88) // same as R_INPUT_TEST_REL_STICK_Y
#define R_INPUT_TEST_CUR_STICK_X          HREG(89) // current stick value on the x axis
#define R_INPUT_TEST_CUR_STICK_Y          HREG(90) // current stick value on the y axis
#define R_INPUT_TEST_COMPARE_BUTTON_CUR   HREG(93) // set to 1 if cur.button exactly matches R_INPUT_TEST_COMPARE_VALUE
#define R_INPUT_TEST_COMPARE_COMBO_CUR    HREG(94) // set to 1 if cur.button contains R_INPUT_TEST_COMPARE_VALUE
#define R_INPUT_TEST_COMPARE_COMBO_PRESS  HREG(95) // set to 1 if press.button contains R_INPUT_TEST_COMPARE_VALUE

// HREG_MODE_SCHED
#define R_SCHED_INIT                     HREG(95) // set to `HREG_MODE_SCHED` when init is complete
#define R_SCHED_TOGGLE_SPECIAL_FEATURES  HREG(81) // set to 2 to allow special features to be applied
#define R_SCHED_GAMMA_ON                 HREG(82) // set OS_VI_GAMMA_ON
#define R_SCHED_DITHER_FILTER_ON         HREG(83) // set OS_VI_DITHER_FILTER_ON
#define R_SCHED_GAMMA_DITHER_ON          HREG(84) // set OS_VI_GAMMA_DITHER_ON
#define R_SCHED_DIVOT_ON                 HREG(85) // set OS_VI_DIVOT_ON

// HREG_MODE_PRERENDER
#define R_PRERENDER_DIVOT_CONTROL HREG(81)

#define PRERENDER_DIVOT_ALTERNATE_COLOR 1
#define PRERENDER_DIVOT_PRINT_COLOR 3
#define PRERENDER_DIVOT_PARTIAL_CVG_RED 5

// HREG_MODE_SETUP_FRAME
#define R_SETUP_FRAME_INIT            HREG(95) // set to `HREG_MODE_SETUP_FRAME` when init is complete
#define R_SETUP_FRAME_GET             HREG(81) // get the current values and store them in appropriate regs
#define R_SETUP_FRAME_SET             HREG(82) // use the value from regs as the current value
#define R_SETUP_FRAME_LETTERBOX_SIZE  HREG(83)
#define R_SETUP_FRAME_BASE_COLOR_R    HREG(84)
#define R_SETUP_FRAME_BASE_COLOR_G    HREG(85)
#define R_SETUP_FRAME_BASE_COLOR_B    HREG(86)

#define SETUP_FRAME_LETTERBOX_SIZE_FLAG (1 << 0) // used with R_SETUP_FRAME_GET and R_SETUP_FRAME_SET
#define SETUP_FRAME_BASE_COLOR_FLAG (1 << 1)     // used with R_SETUP_FRAME_GET and R_SETUP_FRAME_SET

// HREG_MODE_SCENE_CONFIG
#define R_SCENE_CONFIG_INIT                HREG(95) // set to `HREG_MODE_SCENE_CONFIG` when init is complete
#define R_SCENE_CONFIG_DRAW_DEFAULT_DLIST  HREG(81) // set to 1 to draw the default display list
#define R_SCENE_CONFIG_DRAW_SCENE_CONFIG   HREG(82) // set to 1 to draw the scene config

// HREG_MODE_PRINT_OBJECT_TABLE
#define R_PRINT_OBJECT_TABLE_TRIGGER  HREG(81) // set to a negative number to print out the whole object table

// HREG_MODE_LETTERBOX
#define R_LETTERBOX_INIT         HREG(94) // set to `HREG_MODE_LETTERBOX` when init is complete
#define R_LETTERBOX_ENABLE_LOGS  HREG(81) // set to 1 to enable logging
#define R_LETTERBOX_STATE        HREG(83) // read-only
#define R_LETTERBOX_SIZE         HREG(84) // read-only
#define R_LETTERBOX_TARGET_SIZE  HREG(85) // read-only
#define R_LETTERBOX_STEP         HREG(86) // read-only

// HREG_MODE_HEAP_FREE_BLOCK_TEST
#define R_HEAP_FREE_BLOCK_TEST_TOGGLE  HREG(82) // 0 = disabled, 1 = enabled

// HREG_MODE_VI
#define R_VI_INIT                  HREG(95) // set to `HREG_MODE_VI` when init is complete
#define R_VI_NEXT_Y_SCALE_MODE     HREG(81) // set to 0 to scale yScale with additional scan lines, else use 1.0
#define R_VI_NEXT_ADDI_SCAN_LINES  HREG(82)
#define R_VI_CUR_ADDI_SCAN_LINES   HREG(83)
#define R_VI_CUR_Y_SCALE_MODE      HREG(84)

#endif
