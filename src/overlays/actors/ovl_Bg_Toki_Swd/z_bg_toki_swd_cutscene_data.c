#include "z_bg_toki_swd.h"
#include <z64cutscene_commands.h>

// clang-format off
static CutsceneData D_808BB2F0[] = {
    CS_BEGIN_CUTSCENE(9, 425),
    CS_PLAYER_ACTION_LIST(1),
        CS_PLAYER_ACTION(0x000C, 0, 256, 0x0000, 0x0000, 0x0000, 0, 54, 52, 0, 54, 52, 0.0f, 0.0f, 0.0f),
    CS_LIGHTING_LIST(1),
        CS_LIGHTING(0x0002, 110, 111, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFE3, 0xFFFFFFC5, 0x00000000, 0xFFFFFFE3, 0xFFFFFFC5),
    CS_MISC_LIST(1),
        CS_MISC(0x000A, 110, 111, 0x0000, 0x00000000, 0x00000000, 0x0000002E, 0xFFFFFFE6, 0x00000000, 0x0000002E, 0xFFFFFFE6, 0x00000000, 0x00000000, 0x00000000),
    CS_TERMINATOR(TEMPLE_OF_TIME_AFTER_USE_MS, 230, 231),
    CS_SCENE_TRANS_FX(0x0001, 210, 230),
    CS_CAM_POS_LIST(0, 241),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x018C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x019D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x01AE),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x02A8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x007A),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x0064),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -42, 72, -39, 0x0074),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -42, 72, -39, 0x005F),
    CS_CAM_POS_LIST(80, 406),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 95, -19, 0x2F73),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 95, -19, 0x6B2F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 95, -19, 0x6169),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 95, -19, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 95, -19, 0x0005),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 129, -34, 0x7961),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 173, -19, 0x742F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -17, 217, -20, 0x2E64),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -24, 328, -12, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -27, 509, -2, 0x2F73),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -41, 813, 10, 0x6B2F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -60, 1285, 38, 0x6D61),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -58, 1910, 91, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -53, 2526, 133, 0x0005),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -33, 3445, 193, 0x7961),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 3960, 225, 0x742F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 7, 4317, 245, 0x6565),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 7, 4316, 245, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 7, 4316, 245, 0x2F73),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, 7, 4316, 245, 0x6B2F),
    CS_CAM_FOCUS_POINT_LIST(0, 270),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x2F73),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x6B2F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x6169),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x0005),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x7961),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x742F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -20, 85, -9, 0x2E64),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.0f, -20, 85, -9, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(80, 425),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 112, 7, 0x2F73),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 112, 7, 0x6B2F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 112, 7, 0x6169),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 112, 7, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -1, 112, 7, 0x0005),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x7961),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 25, 60.0f, -1, 117, 7, 0x742F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 25, 60.0f, -1, 117, 7, 0x2E64),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x2F73),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x6B2F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x6D61),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x0005),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x7961),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x742F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x6565),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.0f, -1, 117, 7, 0x2F73),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 20, 60.0f, -1, 117, 7, 0x6B2F),
    CS_END(),
    CS_PAD(),
    CS_PAD(),
    CS_PAD(),
};

static CutsceneData D_808BB7A0[] = {
    CS_BEGIN_CUTSCENE(9, 368),
    CS_CAM_POS_LIST(0, 126),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1, 101, -110, 0x616D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x6964),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x00FB),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -110, 0x0111),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 101, -109, 0x012D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 71, -110, 0x0033),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x00FB),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x00FB),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.0f, -1, 72, -110, 0x2F68),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 40.0f, -1, 72, -110, 0x612F),
    CS_CAM_POS_LIST(58, 339),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -9, 106, -3, 0xA1BC),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5F3),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5EB),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 106, -3, 0xA5A2),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xBAEE),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xC9B8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0xA5A4),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -67, 108, -53, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -83, 102, -42, 0xA5E1),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -116, 81, -19, 0xA5D0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -118, 81, 54, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -106, 78, 116, 0xA5A6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -27, 75, 226, 0xA5E5),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 121, 82, 312, 0xC0AE),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 296, 76, 374, 0xA5E5),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 565, 80, 257, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 614, 80, -1, 0xA5EB),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 594, 80, -145, 0xA5E1),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 475, 80, -380, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 323, 80, -513, 0xA5E1),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 192, 80, -574, 0xA5D0),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -45, 80, -604, 0x0020),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -142, 80, -589, 0xA5A6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -228, 80, -562, 0xA5E5),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -376, 93, -477, 0xC0AE),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -584, 95, -183, 0xA5E5),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -613, 95, -34, 0x0020),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -595, 95, 161, 0xA5EB),
    CS_CAM_FOCUS_POINT_LIST(0, 155),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 40.4f, -1, 111, 5, 0xA1BC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 111, 5, 0xA5F3),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 111, 5, 0xA5EB),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 111, 5, 0xA5A2),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 111, 5, 0xBAEE),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 40.0f, -1, 104, 8, 0xC9B8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 40.0f, -1, 104, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 40.0f, -1, 104, 8, 0xA5A4),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 40.0f, -1, 104, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 40.0f, -1, 104, 8, 0xA5E1),
    CS_CAM_FOCUS_POINT_LIST(58, 368),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.000004f, 0, 120, 12, 0xA1BC),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, 0, 120, 12, 0xA5F3),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, 0, 120, 12, 0xA5EB),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 0, 120, 12, 0xA5A2),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xBAEE),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xC9B8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0xA5A4),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 5, 60.0f, -1, 95, 11, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5D0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5A6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xC0AE),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5EB),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E1),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5D0),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5A6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xC0AE),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0xA5E5),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 15, 60.0f, -3, 95, 8, 0x0020),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.0f, -3, 95, 8, 0xA5EB),
    CS_PLAYER_ACTION_LIST(1),
        CS_PLAYER_ACTION(0x000C, 0, 180, 0x0000, 0x0000, 0x0000, 0, 28, -10, 0, -14, 9, 0.0f, -0.23333333f, 0.0f),
    CS_LIGHTING_LIST(1),
        CS_LIGHTING(0x0002, 90, 91, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFF2, 0x00000024, 0x00000000, 0xFFFFFFF2, 0x00000024),
    CS_MISC_LIST(1),
        CS_MISC(0x000A, 90, 91, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0x00000000, 0x00000000),
    CS_SCENE_TRANS_FX(0x0001, 190, 210),
    CS_TERMINATOR(TEMPLE_OF_TIME_AFTER_USE_MS, 210, 211),
    CS_END(),
    CS_PAD(),
    CS_PAD(),
    CS_PAD(),
};

static CutsceneData D_808BBD90[] = {
    CS_BEGIN_CUTSCENE(11, 3000),
    CS_UNK_DATA_LIST(0x00000021, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFF8, 0xFFFFFFFF, 0x00000000, 0xFFFFFFF8, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000),
    CS_PLAYER_ACTION_LIST(3),
        CS_PLAYER_ACTION(0x0005, 0, 1, 0x0000, 0x8000, 0x0000, 0, 0, 820, 0, 0, 820, 0.0f, 0.0f, 1.4E-45f),
        CS_PLAYER_ACTION(0x0002, 1, 16, 0x0000, 0x8000, 0x0000, 0, 0, 820, 0, 0, 720, 0.0f, 0.0f, 1.4E-45f),
        CS_PLAYER_ACTION(0x0005, 16, 176, 0x0000, 0x8000, 0x0000, 0, 0, 720, 0, 0, 720, 0.0f, 0.0f, 1.4E-45f),
    CS_NPC_ACTION_LIST(62, 3),
        CS_NPC_ACTION(0x0004, 40, 70, 0x7D74, 0x0000, 0x0000, -1, 49, 719, 1, 47, 687, 0.06666667f, -0.06666667f, -0.06666667f),
        CS_NPC_ACTION(0x0004, 70, 220, 0x8010, 0x0000, 0x0000, 1, 47, 687, 0, 134, 21, -0.006666667f, 0.58f, 0.006666667f),
        CS_NPC_ACTION(0x0002, 220, 272, 0x8000, 0x0000, 0x0000, 0, 134, 21, 0, 101, 2, 0.0f, -0.63461536f, 0.0f),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 340, 341, 0x0000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFD, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFD, 0x00000000, 0x00000000, 0x00000000),
    CS_TEXT_LIST(6),
        CS_TEXT_NONE(0, 50),
        CS_TEXT_DISPLAY_TEXTBOX(0x70E6, 50, 60, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(60, 250),
        CS_TEXT_DISPLAY_TEXTBOX(0x70E7, 250, 260, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(260, 290),
        CS_TEXT_DISPLAY_TEXTBOX(0x70E8, 290, 320, 0x0000, 0x0000, 0x0000),
    CS_CAM_POS_LIST(0, 251),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -59, 12, 690, 0x0222),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -59, 12, 690, 0x00FA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -59, 12, 690, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -59, 12, 690, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -59, 12, 690, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x2D70),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x0085),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -31, 24, 701, 0x01E6),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -31, 24, 701, 0x0000),
    CS_CAM_POS_LIST(90, 331),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0222),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x00FA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -154, 92, 236, 0x0000),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -154, 92, 236, 0x2D70),
    CS_CAM_POS_LIST(220, 491),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 122, 39, 0x0222),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 122, 39, 0x00FA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 102, 39, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 90, 39, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 81, 62, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 81, 62, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 81, 62, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 81, 62, 0x0000),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.000004f, -2, 81, 62, 0x2D70),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.000004f, -2, 81, 62, 0x0085),
    CS_CAM_FOCUS_POINT_LIST(0, 280),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 43, 52, 716, 0x0222),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 43, 52, 716, 0x00FA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 43, 52, 716, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 43, 52, 716, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 43, 52, 716, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.0f, 63, 86, 722, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 63, 86, 722, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 63, 86, 722, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 63, 86, 722, 0x2D70),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 63, 85, 721, 0x0085),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 63, 85, 721, 0x01E6),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.0f, 62, 85, 721, 0x0000),
    CS_CAM_FOCUS_POINT_LIST(90, 360),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -105, 83, 366, 0x0222),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -104, 83, 364, 0x00FA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -63, 83, 339, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -16, 99, 255, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -30, 111, 177, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -80, 112, 121, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -80, 112, 121, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -80, 112, 121, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.0f, -80, 112, 121, 0x2D70),
    CS_CAM_FOCUS_POINT_LIST(220, 520),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 137, -55, 0x0222),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 137, -55, 0x00FA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 117, -55, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 105, -55, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 98, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 98, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 98, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 98, -31, 0x0000),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.000004f, 0, 98, -31, 0x2D70),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.000004f, 0, 98, -31, 0x0085),
    CS_END(),
    CS_PAD(),
    CS_PAD(),
    CS_PAD(),
};
// clang-format on
