#include "z_en_ru2.h"

static s32 D_80AF411C[] = {
    // clang-format off
    CS_BEGIN_CUTSCENE(35, 3338),
    CS_UNK_DATA_LIST(0x00000020, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_ACTOR_ACTION_LIST(31, 5),
        CS_ACTOR_ACTION(0x0001, 0, 829, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0002, 829, 830, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0004, 830, 898, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0002, 898, 948, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 82, 0, 0, 0xC02B851F, 0),
        CS_ACTOR_ACTION(0x0003, 948, 3338, 0x0000, 0x0000, 0x0000, 0, 82, 0, 0, 82, 0, 0, 0, 0),
    CS_ACTOR_ACTION_LIST(10, 5),
        CS_ACTOR_ACTION(0x000D, 0, 240, 0x0000, 0x0000, 0x0000, 0, 6, 0, 0, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0005, 240, 520, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0003, 520, 550, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0005, 550, 801, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0013, 801, 1956, 0x0000, 0xC000, 0x0000, 0, 6, 0, 0, 6, 0, 0, 0, 0),
    CS_ACTOR_ACTION_LIST(49, 1),
        CS_ACTOR_ACTION(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, -16, -121, 0, -16, -121, 0, 0, 0),
    CS_LIGHTING_LIST(5),
        CS_LIGHTING(0x0005, 0, 384, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000),
        CS_LIGHTING(0x0006, 384, 454, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000),
        CS_LIGHTING(0x0005, 454, 554, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000),
        CS_LIGHTING(0x0006, 554, 624, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000),
        CS_LIGHTING(0x0005, 624, 3001, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000),
    CS_ACTOR_ACTION_LIST(39, 1),
        CS_ACTOR_ACTION(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, 0, -2, 0, 0, -2, 0, 0, 0),
    CS_ACTOR_ACTION_LIST(42, 3),
        CS_ACTOR_ACTION(0x0001, 0, 146, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0002, 146, 754, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, 0, 0, 0),
        CS_ACTOR_ACTION(0x0003, 754, 2628, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, 0, 0, 0),
    CS_SCENE_TRANS_FX(0x0001, 810, 823),
    CS_SCENE_TRANS_FX(0x0005, 825, 855),
    CS_SCENE_TRANS_FX(0x0001, 1090, 1121),
    CS_CAM_POS_LIST(0, 301),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0x1F98),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x432F65F8, -617, 30, 71, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4311CC7C, -456, 107, 56, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42726667, -76, 54, 71, 0x0164),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42726667, 116, 54, 96, 0x2100),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42726667, 236, 11, 64, 0x0049),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42726667, 236, 11, 64, 0x204C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42726667, 236, 11, 64, 0xE990),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x42726667, 236, 11, 64, 0x0000),
    CS_CAM_POS_LIST(263, 1484),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 161, 53, 26, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 161, 53, 26, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 161, 53, 26, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 130, 9, 96, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 130, 9, 96, 0x1F98),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 130, 9, 96, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4228E87B, 130, 9, 96, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x4228E87B, 130, 9, 96, 0x0164),
    CS_CAM_POS_LIST(383, 1474),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x428C743C, 207, 45, 34, 0x1F98),
    CS_CAM_POS_LIST(453, 1544),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42341BB1, -58, 90, 70, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42341BB1, -58, 90, 70, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42341BB1, -58, 90, 70, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42341BB1, -58, 90, 70, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x42341BB1, -58, 90, 70, 0x1F98),
    CS_CAM_POS_LIST(553, 1644),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428C743C, 207, 45, 34, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x428C743C, 207, 45, 34, 0x1F98),
    CS_CAM_POS_LIST(623, 1714),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 161, 59, 0, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 161, 59, 0, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 161, 59, 0, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 161, 59, 0, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x4271B55A, 161, 59, 0, 0x1F98),
    CS_CAM_POS_LIST(693, 1784),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 151, 82, 35, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 151, 82, 35, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 151, 82, 35, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 151, 82, 35, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x4271B55A, 151, 82, 35, 0x1F98),
    CS_CAM_POS_LIST(763, 944),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 230, 7, 24, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 230, 7, 24, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 230, 7, 24, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x4271B55A, 207, 62, 15, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428CDAA2, 230, 240, 24, 0x1F98),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428CDAA2, 230, 240, 24, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x428CDAA2, 230, 240, 24, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x428CDAA2, 230, 240, 24, 0x0164),
    CS_CAM_POS_LIST(823, 1165),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, 13, 854, 2, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, 9, 853, 5, 0x1FBC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, -3, 853, 5, 0xD5E0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, -9, 853, -6, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, -2, 852, -17, 0x1F98),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, 9, 852, -17, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, 16, 852, -6, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 0x42700000, 9, 852, 5, 0x0164),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 0x42700000, -3, 851, 5, 0x2100),
    CS_CAM_POS_PLAYER_LIST(899, 2080),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 33, -27, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 33, -27, 0x1FBC),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 68, -26, 0xD5E0),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 103, -26, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 103, -26, 0x1F98),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 103, -26, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 0x4289332C, 0, 103, -26, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 0x4289332C, 0, 103, -26, 0x0164),
    CS_CAM_FOCUS_POINT_LIST(0, 330),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x1E, 20, 0x432F65F8, -649, -75, 101, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xE2, 20, 0x432F65F8, -652, -75, 98, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x1E, 20, 0x432F65F8, -658, -75, 87, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0xE2, 20, 0x432F65F8, -678, 127, 71, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 0x432F65F8, -727, 0, 71, 0x1F98),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 0x4311CC7C, -513, 0, 43, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, -349, 89, 47, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, 6, 61, 1, 0x0164),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, 33, 66, 28, 0x2100),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, 158, 42, 1, 0x0049),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, 158, 42, 1, 0x204C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42726667, 158, 42, 1, 0xE990),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x42726667, 158, 42, 1, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(263, 1513),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4228E87B, 322, 62, -122, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4228E87B, 322, 62, -122, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x4228E87B, 322, 62, -122, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x4228E87B, 232, 63, -83, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4228E87B, 232, 63, -83, 0x1F98),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x4228E87B, 232, 63, -83, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4228E87B, 232, 63, -83, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x4228E87B, 232, 63, -83, 0x0164),
    CS_CAM_FOCUS_POINT_LIST(383, 1503),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x428C743C, 51, 62, -105, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x428C743C, 51, 62, -105, 0x1F98),
    CS_CAM_FOCUS_POINT_LIST(453, 1573),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42341BB1, 102, 22, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42341BB1, 102, 22, -31, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x42341BB1, 102, 22, -31, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x42341BB1, 102, 22, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x42341BB1, 102, 22, -31, 0x1F98),
    CS_CAM_FOCUS_POINT_LIST(553, 1673),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x428C743C, 51, 62, -105, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428C743C, 51, 62, -105, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x428C743C, 51, 62, -105, 0x1F98),
    CS_CAM_FOCUS_POINT_LIST(623, 1743),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 347, 22, 0, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 347, 22, 0, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x4271B55A, 347, 22, 0, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 347, 22, 0, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x4271B55A, 347, 22, 0, 0x1F98),
    CS_CAM_FOCUS_POINT_LIST(693, 1813),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 258, -30, -54, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 258, -30, -54, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 0x4271B55A, 258, -30, -54, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 258, -30, -54, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x4271B55A, 258, -30, -54, 0x1F98),
    CS_CAM_FOCUS_POINT_LIST(763, 973),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x4271B55A, 96, 105, -29, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 40, 0x4271B55A, 96, 105, -29, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 0x4271B55A, 96, 105, -29, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 0x42701BC0, 110, 196, -26, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 0x428CDAA2, 185, 399, 6, 0x1F98),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428CDAA2, 185, 399, 6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x428CDAA2, 185, 399, 6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 0x428CDAA2, 185, 399, 6, 0x0164),
    CS_CAM_FOCUS_POINT_LIST(823, 1214),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x42700000, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 40, 0x42700000, 3, 6, -6, 0x1FBC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 0x424BFFF7, 3, 6, -6, 0xD5E0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 0x41A4CC7E, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 51, 0x412CCC23, 3, 6, -6, 0x1F98),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x412665BD, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x412665BD, 3, 6, -6, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 0x4123328A, 3, 6, -6, 0x0164),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 50, 0x412FFF56, 3, 6, -6, 0x2100),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(899, 2109),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 0, 100, 5, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 0, 101, 6, 0x1FBC),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 1, 99, 41, 0xD5E0),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 0, 42, 16, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 0, 42, 16, 0x1F98),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 0x4289332C, 0, 42, 16, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 0x4289332C, 0, 42, 16, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 0x4289332C, 0, 42, 16, 0x0164),
    CS_ACTOR_ACTION_LIST(62, 1),
        CS_ACTOR_ACTION(0x0004, 0, 3000, 0xC10F, 0x0000, 0x0000, 77, 80, -2, 0, 80, 0, -1127071001, 0, 1020412647),
    CS_TEXT_LIST(14),
        CS_TEXT_NONE(0, 394),
        CS_TEXT_DISPLAY_TEXTBOX(0x4041, 394, 444, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(444, 464),
        CS_TEXT_DISPLAY_TEXTBOX(0x4046, 464, 543, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(543, 564),
        CS_TEXT_DISPLAY_TEXTBOX(0x4049, 564, 613, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(613, 634),
        CS_TEXT_DISPLAY_TEXTBOX(0x4047, 634, 684, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(684, 704),
        CS_TEXT_DISPLAY_TEXTBOX(0x404A, 704, 750, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(750, 1085),
        CS_TEXT_DISPLAY_TEXTBOX(0x003D, 1085, 1090, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(1090, 1150),
        CS_TEXT_DISPLAY_TEXTBOX(0x4042, 1150, 1160, 0x0000, 0x0000, 0x0000),
    CS_TERMINATOR(LAKE_HYLIA_WATER_RISES, 1190, 1213),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x0044, 900, 901, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC7, 0x00000034, 0x00000000, 0xFFFFFFC7, 0x00000034, 0x00000000, 0x00000000, 0x00000000),
    CS_FADE_BGM_LIST(1),
        CS_FADE_BGM(0x0004, 800, 850, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC6, 0x00000030, 0x00000000, 0xFFFFFFC6, 0x00000030, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
    CS_PAD(),
    // clang-format on
};
