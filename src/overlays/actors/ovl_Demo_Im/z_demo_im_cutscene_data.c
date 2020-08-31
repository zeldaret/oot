#include "z_demo_im.h"
#include <z64cutscene_commands.h>

// clang-format off
CutsceneData D_8098786C[] = {
    CS_BEGIN_CUTSCENE(32, 3000),
    CS_UNK_DATA_LIST(0x00000020, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_NPC_ACTION_LIST(31, 5),
        CS_NPC_ACTION(0x0001, 0, 697, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 697, 698, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0004, 698, 768, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 768, 817, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 82, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0003, 817, 2666, 0x0000, 0x0000, 0x0000, 0, 82, 0, 0, 82, 0, 0.0f, 0.0f, 0.0f),
    CS_PLAYER_ACTION_LIST(3),
        CS_PLAYER_ACTION(0x000D, 0, 300, 0x0000, 0x0000, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 0.0f),
        CS_PLAYER_ACTION(0x0005, 300, 661, 0x0000, 0xEAAA, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 0.0f),
        CS_PLAYER_ACTION(0x0013, 661, 1934, 0x0000, 0x6AAA, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 0.0f),
    CS_NPC_ACTION_LIST(44, 3),
        CS_NPC_ACTION(0x0001, 0, 145, 0x0000, 0x0000, 0x0000, -97, 6, 169, -97, 6, 169, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 145, 615, 0x0000, 0x0000, 0x0000, -97, 6, 169, -97, 6, 169, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0003, 615, 1906, 0x0000, 0x0000, 0x0000, -97, 6, 169, -97, 6, 169, 0.0f, 0.0f, 0.0f),
    CS_NPC_ACTION_LIST(49, 1),
        CS_NPC_ACTION(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, -22, 0, -55, -22, 0, -55, 0.0f, 0.0f, 0.0f),
    CS_LIGHTING_LIST(2),
        CS_LIGHTING(0x0002, 0, 10, 0x0000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x0000000D, 0xFFFFFFFE, 0x00000000, 0x0000000D),
        CS_LIGHTING(0x0002, 10, 3000, 0x0000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x0000000D, 0xFFFFFFFE, 0x00000000, 0x0000000D),
    CS_SCENE_TRANS_FX(0x0005, 694, 724),
    CS_SCENE_TRANS_FX(0x0001, 960, 990),
    CS_SCENE_TRANS_FX(0x0001, 683, 692),
    CS_NPC_ACTION_LIST(62, 2),
        CS_NPC_ACTION(0x0001, 0, 10, 0x0000, 0x0000, 0x0000, 64, 80, 130, 64, 80, 130, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0004, 10, 3000, 0x0000, 0x0000, 0x0000, 64, 80, 130, 64, 80, 130, 0.0f, 0.0f, 0.0f),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x0044, 770, 771, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC9, 0x0000005C, 0x00000000, 0xFFFFFFC9, 0x0000005C),
    CS_TEXT_LIST(14),
        CS_TEXT_NONE(0, 340),
        CS_TEXT_DISPLAY_TEXTBOX(0x5022, 340, 353, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(353, 374),
        CS_TEXT_DISPLAY_TEXTBOX(0x5025, 374, 404, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(404, 424),
        CS_TEXT_DISPLAY_TEXTBOX(0x502B, 424, 474, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(474, 494),
        CS_TEXT_DISPLAY_TEXTBOX(0x502C, 494, 543, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(543, 564),
        CS_TEXT_DISPLAY_TEXTBOX(0x5026, 564, 613, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(613, 955),
        CS_TEXT_DISPLAY_TEXTBOX(0x0041, 955, 959, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(959, 1020),
        CS_TEXT_DISPLAY_TEXTBOX(0x5023, 1020, 1029, 0x0000, 0x0000, 0x0000),
    CS_TERMINATOR(GRAVEYARD_AFTER_SHADOW_BLUE_WARP, 1060, 1061),
    CS_FADE_BGM_LIST(1),
        CS_FADE_BGM(0x0004, 673, 723, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC1, 0x00000058, 0x00000000, 0xFFFFFFC1, 0x00000058),
    CS_CAM_POS_LIST(0, 341),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 33, 225, -58, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 33, 225, -58, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 33, 225, -58, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 33, 106, -58, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 33, 23, -58, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 11, 10, -18, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 11, 10, -18, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, 11, 10, -18, 0xE6A0),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.60000228881836f, 11, 10, -18, 0x7C53),
    CS_CAM_POS_LIST(263, 504),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 22.626956939697266f, -49, 13, 158, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 22.626956939697266f, -49, 13, 158, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 22.626956939697266f, -49, 13, 158, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 22.626956939697266f, -21, 22, 150, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 33.22699737548828f, -21, 22, 150, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 33.22699737548828f, -21, 22, 150, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 33.22699737548828f, -21, 22, 150, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 33.22699737548828f, -21, 22, 150, 0xE6A0),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 33.22699737548828f, -21, 22, 150, 0x7C53),
    CS_CAM_POS_LIST(363, 824),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -67, 8, 117, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.79991149902344f, -67, 8, 117, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.79991149902344f, -67, 8, 117, 0xE6A0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.79991149902344f, -67, 8, 117, 0x7C53),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.79991149902344f, -67, 8, 117, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 70.79991149902344f, -67, 8, 117, 0x0000),
    CS_CAM_POS_PLAYER_LIST(413, 1504),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 19.999849319458008f, -53, 28, 45, 0x20BA),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 19.999849319458008f, -53, 28, 45, 0xD5E0),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 19.999849319458008f, -53, 28, 45, 0x0950),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 19.999849319458008f, -53, 28, 45, 0x7C50),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 19.999849319458008f, -53, 28, 45, 0x0000),
    CS_CAM_POS_LIST(483, 1684),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -67, 8, 117, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -67, 8, 117, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -67, 8, 117, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -71, 15, 124, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -73, 29, 131, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -78, 40, 140, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -78, 40, 140, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 68.91905975341797f, -78, 40, 140, 0xE6A0),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 68.91905975341797f, -78, 40, 140, 0x7C53),
    CS_CAM_POS_LIST(553, 1644),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945068359375f, -39, 34, 201, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945068359375f, -39, 34, 201, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945068359375f, -39, 34, 201, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945068359375f, -39, 34, 201, 0x7C50),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 45.599945068359375f, -39, 34, 201, 0x0000),
    CS_CAM_POS_LIST(623, 819),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 9, 13, -17, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 9, 13, -17, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 9, 13, -17, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 9, 71, -17, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 126.99905395507812f, 9, 385, -17, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 126.99905395507812f, 9, 385, -17, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 126.99905395507812f, 9, 385, -17, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 126.99905395507812f, 9, 385, -17, 0xE6A0),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 126.99905395507812f, 9, 385, -17, 0x7C53),
    CS_CAM_POS_LIST(693, 1035),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 13, 854, 2, 0x20BA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 853, 5, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -3, 853, 5, 0x0950),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 853, -6, 0x7C50),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -2, 852, -17, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 852, -17, 0xFFFF),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 16, 852, -6, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 852, 5, 0xE6A0),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -3, 851, 5, 0x7C53),
    CS_CAM_POS_PLAYER_LIST(769, 1950),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 33, -27, 0x20BA),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 33, -27, 0xD5E0),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 68, -26, 0x0950),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 103, -26, 0x7C50),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 103, -26, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 103, -26, 0xFFFF),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.59994506835938f, 0, 103, -26, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 68.59994506835938f, 0, 103, -26, 0xE6A0),
    CS_CAM_FOCUS_POINT_LIST(0, 370),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -21, 21, 42, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.60000228881836f, -21, 21, 42, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.60000228881836f, -21, 21, 42, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.60000228881836f, -78, 86, 144, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.60000228881836f, -80, 21, 142, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.60000228881836f, -99, 31, 177, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -99, 31, 177, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -99, 31, 177, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.60000228881836f, -99, 31, 177, 0x7C53),
    CS_CAM_FOCUS_POINT_LIST(263, 533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 22.626956939697266f, -309, 11, 229, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 22.626956939697266f, -309, 11, 229, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 22.626956939697266f, -309, 11, 229, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 33.22699737548828f, -258, 133, 191, 0x7C53),
    CS_CAM_FOCUS_POINT_LIST(363, 853),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 68.79994201660156f, 68, 109, -103, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 68.99993896484375f, 68, 109, -103, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 68.79994201660156f, 67, 109, -103, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 68.59994506835938f, 189, 109, 92, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 68.59994506835938f, 57, 108, 341, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 70.79991149902344f, -186, 107, 341, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 70.79991149902344f, -186, 107, 341, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 70.79991149902344f, -186, 107, 341, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.79991149902344f, -186, 107, 341, 0x7C53),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.79991149902344f, -186, 107, 341, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 70.79991149902344f, -186, 107, 341, 0x0000),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(413, 1533),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 19.999849319458008f, 171, 122, -106, 0x20BA),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 19.999849319458008f, 171, 122, -106, 0xD5E0),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 19.999849319458008f, 171, 122, -106, 0x0950),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 19.999849319458008f, 170, 122, -106, 0x7C50),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 19.999849319458008f, 170, 122, -106, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(483, 1713),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x01, 20, 68.91905975341797f, -191, 132, 327, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 68.91905975341797f, -191, 132, 327, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xFF, 30, 68.91905975341797f, -190, 131, 326, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 40, 68.91905975341797f, -189, 154, 324, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x01, 30, 68.91905975341797f, -194, 162, 331, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 68.91905975341797f, -199, 172, 339, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 68.91905975341797f, -199, 172, 339, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 68.91905975341797f, -199, 172, 339, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 68.91905975341797f, -199, 172, 339, 0x7C53),
    CS_CAM_FOCUS_POINT_LIST(553, 1673),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.599945068359375f, -234, 123, 37, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.599945068359375f, -234, 123, 37, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 45.599945068359375f, -234, 123, 37, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.599945068359375f, -234, 123, 37, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 45.599945068359375f, -233, 123, 37, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(623, 848),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, -52, 17, 91, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, -52, 17, 91, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 70.59991455078125f, -52, 17, 91, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 70.59991455078125f, -52, 75, 91, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 126.99905395507812f, -5, 503, 9, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 126.99905395507812f, -5, 503, 9, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 126.99905395507812f, -5, 503, 9, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 126.99905395507812f, -5, 503, 9, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 126.99905395507812f, -5, 503, 9, 0x7C53),
    CS_CAM_FOCUS_POINT_LIST(693, 1084),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.0f, 3, 6, -6, 0x20BA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 40, 60.0f, 3, 6, -6, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 50.99996566772461f, 3, 6, -6, 0x0950),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 20.599849700927734f, 3, 6, -6, 0x7C50),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 51, 10.799838066101074f, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.3998384475708f, 3, 6, -6, 0xFFFF),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.3998384475708f, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.199838638305664f, 3, 6, -6, 0xE6A0),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 50, 10.999837875366211f, 3, 6, -6, 0x7C53),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(769, 1979),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 0, 100, 5, 0x20BA),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 0, 101, 6, 0xD5E0),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 1, 99, 41, 0x0950),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 0, 42, 16, 0x7C50),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 0, 42, 16, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 68.59994506835938f, 0, 42, 16, 0xFFFF),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.59994506835938f, 0, 42, 16, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 68.59994506835938f, 0, 42, 16, 0xE6A0),
    CS_END(),
};
// clang-format on
