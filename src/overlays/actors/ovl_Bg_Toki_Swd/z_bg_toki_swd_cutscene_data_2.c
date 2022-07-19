#include "z_bg_toki_swd.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData D_808BB7A0[] = {
    CS_BEGIN_CUTSCENE(9, 368),
    CS_CAM_EYE_POINTS_LIST(0, 126),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 101, -110, 0x616D),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x6964),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x00FB),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x0111),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -109, 0x012D),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 71, -110, 0x0033),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x00FB),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x00FB),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x2F68),
        CS_CAM_EYE_POINTS(CS_CMD_STOP, 0x00, 0, 40.0f, -1, 72, -110, 0x612F),
    CS_CAM_EYE_POINTS_LIST(58, 339),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -9, 106, -3, 0xA1BC),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5F3),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5EB),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5A2),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xBAEE),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xC9B8),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xA5A4),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -83, 102, -42, 0xA5E1),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -116, 81, -19, 0xA5D0),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -118, 81, 54, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -106, 78, 116, 0xA5A6),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -27, 75, 226, 0xA5E5),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 121, 82, 312, 0xC0AE),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 296, 76, 374, 0xA5E5),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 565, 80, 257, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 614, 80, -1, 0xA5EB),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 594, 80, -145, 0xA5E1),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 475, 80, -380, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 323, 80, -513, 0xA5E1),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 192, 80, -574, 0xA5D0),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -45, 80, -604, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -142, 80, -589, 0xA5A6),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -228, 80, -562, 0xA5E5),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -376, 93, -477, 0xC0AE),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -584, 95, -183, 0xA5E5),
        CS_CAM_EYE_POINTS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -613, 95, -34, 0x0020),
        CS_CAM_EYE_POINTS(CS_CMD_STOP, 0x00, 0, 60.0f, -595, 95, 161, 0xA5EB),
    CS_CAM_AT_POINTS_LIST(0, 155),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 40.4f, -1, 111, 5, 0xA1BC),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 111, 5, 0xA5F3),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 111, 5, 0xA5EB),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 111, 5, 0xA5A2),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 111, 5, 0xBAEE),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 104, 8, 0xC9B8),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 104, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 30, 40.0f, -1, 104, 8, 0xA5A4),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 30, 40.0f, -1, 104, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_STOP, 0x00, 30, 40.0f, -1, 104, 8, 0xA5E1),
    CS_CAM_AT_POINTS_LIST(58, 368),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.000004f, 0, 120, 12, 0xA1BC),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, 0, 120, 12, 0xA5F3),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, 0, 120, 12, 0xA5EB),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 0, 120, 12, 0xA5A2),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xBAEE),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xC9B8),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xA5A4),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5D0),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5A6),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xC0AE),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5EB),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5D0),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5A6),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xC0AE),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_AT_POINTS(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_AT_POINTS(CS_CMD_STOP, 0x00, 30, 60.0f, -3, 95, 8, 0xA5EB),
    CS_PLAYER_CUE_LIST(1),
        CS_PLAYER_CUE(0x000C, 0, 180, 0x0000, 0x0000, 0x0000, 0, 28, -10, 0, -14, 9, 0.0f, -0.23333333f, 0.0f),
    CS_LIGHT_SETTING_LIST(1),
        CS_LIGHT_SETTING(0x0002, 90, 91, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFF2, 0x00000024, 0x00000000, 0xFFFFFFF2, 0x00000024),
    CS_MISC_LIST(1),
        CS_MISC(0x000A, 90, 91, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0x00000000, 0x00000000),
    CS_TRANSITION(0x0001, 190, 210),
    CS_DESTINATION(CS_DEST_TEMPLE_OF_TIME_FROM_MASTER_SWORD, 210, 211),
    CS_END(),
};
// clang-format on
