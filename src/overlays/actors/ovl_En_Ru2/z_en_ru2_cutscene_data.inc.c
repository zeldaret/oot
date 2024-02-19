#include "z_en_ru2.h"
#include "z64cutscene_commands.h"

// clang-format off
static CutsceneData D_80AF411C[] = {
    CS_BEGIN_CUTSCENE(35, 3338),
    CS_UNK_DATA_LIST(0x00000020, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_ACTOR_CUE_LIST(31, 5),
        CS_ACTOR_CUE(0x0001, 0, 829, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0002, 829, 830, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0004, 830, 898, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0002, 898, 948, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 82, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0xC02B851F, -2.68f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0003, 948, 3338, 0x0000, 0x0000, 0x0000, 0, 82, 0, 0, 82, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
    CS_PLAYER_CUE_LIST(5),
        CS_PLAYER_CUE(PLAYER_CUEID_13, 0, 240, 0x0000, 0x0000, 0x0000, 0, 6, 0, 0, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_PLAYER_CUE(PLAYER_CUEID_5, 240, 520, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_PLAYER_CUE(PLAYER_CUEID_3, 520, 550, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_PLAYER_CUE(PLAYER_CUEID_5, 550, 801, 0x0000, 0x4000, 0x0000, 0, 6, 0, 0, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_PLAYER_CUE(PLAYER_CUEID_19, 801, 1956, 0x0000, 0xC000, 0x0000, 0, 6, 0, 0, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
    CS_ACTOR_CUE_LIST(49, 1),
        CS_ACTOR_CUE(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, -16, -121, 0, -16, -121, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
    CS_LIGHT_SETTING_LIST(5),
        CS_LIGHT_SETTING(0x0004, 0, 384, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058),
        CS_LIGHT_SETTING(0x0005, 384, 454, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058),
        CS_LIGHT_SETTING(0x0004, 454, 554, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058),
        CS_LIGHT_SETTING(0x0005, 554, 624, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058),
        CS_LIGHT_SETTING(0x0004, 624, 3001, 0x0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058),
    CS_ACTOR_CUE_LIST(39, 1),
        CS_ACTOR_CUE(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, 0, -2, 0, 0, -2, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
    CS_ACTOR_CUE_LIST(42, 3),
        CS_ACTOR_CUE(0x0001, 0, 146, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0002, 146, 754, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
        CS_ACTOR_CUE(0x0003, 754, 2628, 0x0000, 0x0000, 0x0000, 195, 6, 0, 195, 6, 0, CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x0, 0.0f)),
    CS_TRANSITION(CS_TRANS_GRAY_FILL_IN, 810, 823),
    CS_TRANSITION(CS_TRANS_GRAY_FILL_OUT, 825, 855),
    CS_TRANSITION(CS_TRANS_GRAY_FILL_IN, 1090, 1121),
    CS_CAM_EYE_SPLINE(0, 301),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x432F65F8, 175.39832f), -617, 30, 71, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4311CC7C, 145.79877f), -456, 107, 56, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), -76, 54, 71, 0x0164),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), 116, 54, 96, 0x2100),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), 236, 11, 64, 0x0049),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), 236, 11, 64, 0x204C),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), 236, 11, 64, 0xE990),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x42726667, 60.600002f), 236, 11, 64, 0x0000),
    CS_CAM_EYE_SPLINE(263, 1484),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 161, 53, 26, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 161, 53, 26, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 161, 53, 26, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 130, 9, 96, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 130, 9, 96, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 130, 9, 96, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 130, 9, 96, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x4228E87B, 42.22703f), 130, 9, 96, 0x0164),
    CS_CAM_EYE_SPLINE(383, 1474),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x1F98),
    CS_CAM_EYE_SPLINE(453, 1544),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42341BB1, 45.027042f), -58, 90, 70, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42341BB1, 45.027042f), -58, 90, 70, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42341BB1, 45.027042f), -58, 90, 70, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42341BB1, 45.027042f), -58, 90, 70, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x42341BB1, 45.027042f), -58, 90, 70, 0x1F98),
    CS_CAM_EYE_SPLINE(553, 1644),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x428C743C, 70.22702f), 207, 45, 34, 0x1F98),
    CS_CAM_EYE_SPLINE(623, 1714),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 161, 59, 0, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 161, 59, 0, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 161, 59, 0, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 161, 59, 0, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 161, 59, 0, 0x1F98),
    CS_CAM_EYE_SPLINE(693, 1784),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 151, 82, 35, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 151, 82, 35, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 151, 82, 35, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 151, 82, 35, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 151, 82, 35, 0x1F98),
    CS_CAM_EYE_SPLINE(763, 944),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 230, 7, 24, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 230, 7, 24, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 230, 7, 24, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4271B55A, 60.4271f), 207, 62, 15, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428CDAA2, 70.42702f), 230, 240, 24, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428CDAA2, 70.42702f), 230, 240, 24, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x428CDAA2, 70.42702f), 230, 240, 24, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x428CDAA2, 70.42702f), 230, 240, 24, 0x0164),
    CS_CAM_EYE_SPLINE(823, 1165),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), 13, 854, 2, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), 9, 853, 5, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), -3, 853, 5, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), -9, 853, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), -2, 852, -17, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), 9, 852, -17, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), 16, 852, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), 9, 852, 5, 0x0164),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x42700000, 60.0f), -3, 851, 5, 0x2100),
    CS_CAM_EYE_SPLINE_REL_TO_PLAYER(899, 2080),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 33, -27, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 33, -27, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 68, -26, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 103, -26, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 103, -26, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 103, -26, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 103, -26, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x4289332C, 68.599945f), 0, 103, -26, 0x0164),
    CS_CAM_AT_SPLINE(0, 330),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x1E, 20, CS_FLOAT(0x432F65F8, 175.39832f), -649, -75, 101, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0xE2, 20, CS_FLOAT(0x432F65F8, 175.39832f), -652, -75, 98, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x1E, 20, CS_FLOAT(0x432F65F8, 175.39832f), -658, -75, 87, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0xE2, 20, CS_FLOAT(0x432F65F8, 175.39832f), -678, 127, 71, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 20, CS_FLOAT(0x432F65F8, 175.39832f), -727, 0, 71, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 20, CS_FLOAT(0x4311CC7C, 145.79877f), -513, 0, 43, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), -349, 89, 47, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 6, 61, 1, 0x0164),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 33, 66, 28, 0x2100),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 158, 42, 1, 0x0049),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 158, 42, 1, 0x204C),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 158, 42, 1, 0xE990),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x42726667, 60.600002f), 158, 42, 1, 0x0000),
    CS_CAM_AT_SPLINE(263, 1513),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4228E87B, 42.22703f), 322, 62, -122, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4228E87B, 42.22703f), 322, 62, -122, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x4228E87B, 42.22703f), 322, 62, -122, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x4228E87B, 42.22703f), 232, 63, -83, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4228E87B, 42.22703f), 232, 63, -83, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x4228E87B, 42.22703f), 232, 63, -83, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4228E87B, 42.22703f), 232, 63, -83, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x4228E87B, 42.22703f), 232, 63, -83, 0x0164),
    CS_CAM_AT_SPLINE(383, 1503),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x1F98),
    CS_CAM_AT_SPLINE(453, 1573),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42341BB1, 45.027042f), 102, 22, -31, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42341BB1, 45.027042f), 102, 22, -31, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x42341BB1, 45.027042f), 102, 22, -31, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42341BB1, 45.027042f), 102, 22, -31, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x42341BB1, 45.027042f), 102, 22, -31, 0x1F98),
    CS_CAM_AT_SPLINE(553, 1673),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x428C743C, 70.22702f), 51, 62, -105, 0x1F98),
    CS_CAM_AT_SPLINE(623, 1743),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 347, 22, 0, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 347, 22, 0, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x4271B55A, 60.4271f), 347, 22, 0, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 347, 22, 0, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 347, 22, 0, 0x1F98),
    CS_CAM_AT_SPLINE(693, 1813),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 258, -30, -54, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 258, -30, -54, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x4271B55A, 60.4271f), 258, -30, -54, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 258, -30, -54, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 258, -30, -54, 0x1F98),
    CS_CAM_AT_SPLINE(763, 973),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4271B55A, 60.4271f), 96, 105, -29, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 40, CS_FLOAT(0x4271B55A, 60.4271f), 96, 105, -29, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 15, CS_FLOAT(0x4271B55A, 60.4271f), 96, 105, -29, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 15, CS_FLOAT(0x42701BC0, 60.0271f), 110, 196, -26, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 20, CS_FLOAT(0x428CDAA2, 70.42702f), 185, 399, 6, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428CDAA2, 70.42702f), 185, 399, 6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x428CDAA2, 70.42702f), 185, 399, 6, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x428CDAA2, 70.42702f), 185, 399, 6, 0x0164),
    CS_CAM_AT_SPLINE(823, 1214),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x42700000, 60.0f), 3, 6, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 40, CS_FLOAT(0x42700000, 60.0f), 3, 6, -6, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x424BFFF7, 50.999966f), 3, 6, -6, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 20, CS_FLOAT(0x41A4CC7E, 20.59985f), 3, 6, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 51, CS_FLOAT(0x412CCC23, 10.799838f), 3, 6, -6, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x412665BD, 10.399838f), 3, 6, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x412665BD, 10.399838f), 3, 6, -6, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 50, CS_FLOAT(0x4123328A, 10.199839f), 3, 6, -6, 0x0164),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 50, CS_FLOAT(0x412FFF56, 10.999838f), 3, 6, -6, 0x2100),
    CS_CAM_AT_SPLINE_REL_TO_PLAYER(899, 2109),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 100, 5, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 101, 6, 0x1FBC),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 1, 99, 41, 0xD5E0),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 42, 16, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 42, 16, 0x1F98),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 1000, CS_FLOAT(0x4289332C, 68.599945f), 0, 42, 16, 0x0000),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 42, 16, 0x0000),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x4289332C, 68.599945f), 0, 42, 16, 0x0164),
    CS_ACTOR_CUE_LIST(62, 1),
        CS_ACTOR_CUE(0x0004, 0, 3000, 0xC10F, 0x0000, 0x0000, 77, 80, -2, 0, 80, 0, CS_FLOAT(0xBCD242E7, -0.025666667f), CS_FLOAT(0x0, 0.0f), CS_FLOAT(0x3CD242E7, 0.025666667f)),
    CS_TEXT_LIST(14),
        CS_TEXT_NONE(0, 394),
        CS_TEXT(0x4041, 394, 444, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(444, 464),
        CS_TEXT(0x4046, 464, 543, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(543, 564),
        CS_TEXT(0x4049, 564, 613, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(613, 634),
        CS_TEXT(0x4047, 634, 684, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(684, 704),
        CS_TEXT(0x404A, 704, 750, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(750, 1085),
        CS_TEXT(0x003D, 1085, 1090, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(1090, 1150),
        CS_TEXT(0x4042, 1150, 1160, 0x0000, 0x0000, 0x0000),
    CS_DESTINATION(CS_DEST_LAKE_HYLIA_WATER_RESTORED, 1190, 1213),
    CS_START_SEQ_LIST(1),
        CS_START_SEQ(NA_BGM_MEDALLION_GET, 900, 901, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC7, 0x00000034, 0x00000000, 0xFFFFFFC7, 0x00000034),
    CS_FADE_OUT_SEQ_LIST(1),
        CS_FADE_OUT_SEQ(CS_FADE_OUT_BGM_MAIN, 800, 850, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC6, 0x00000030, 0x00000000, 0xFFFFFFC6, 0x00000030),
    CS_END(),
};
// clang-format on
