#include "z_en_okarina_tag.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData D_80ABF9D0[] = {
    CS_BEGIN_CUTSCENE(4, 360),
    CS_TERMINATOR(KAKARIKO_VILLAGE_DRAIN_WELL, 200, 201),
    CS_CAM_EYE_LIST(0, 331),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3100, 201, -100, 0x3235),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3100, 201, -100, 0x3336),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3100, 201, -100, 0x392C),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3178, 201, 113, 0x2C20),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3178, 201, 113, 0x3235),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3178, 201, 113, 0x3238),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 3178, 201, 113, 0x3639),
        CS_CAM_EYE(CS_CMD_STOP, 0x00, 0, 60.0f, 3178, 201, 113, 0x2C20),
    CS_CAM_LOOK_AT_LIST(0, 360),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 3054, 137, -64, 0x3235),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 3054, 137, -64, 0x3336),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 90, 60.0f, 3054, 137, -64, 0x392C),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 90, 60.0f, 3118, 142, 96, 0x2C20),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 3118, 142, 96, 0x3235),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 3118, 142, 96, 0x3238),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 3118, 142, 96, 0x3639),
        CS_CAM_LOOK_AT(CS_CMD_STOP, 0x00, 30, 60.0f, 3118, 142, 96, 0x2C20),
    CS_MISC_LIST(1),
        CS_MISC(0x0013, 30, 31, 0x0000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000002, 0xFFFFFFFE, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};

CutsceneData D_80ABFB40[] = {
    CS_BEGIN_CUTSCENE(18, 3000),
    CS_UNK_DATA_LIST(0x00000021, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFAA, 0xFFFFFFAE, 0x00000000, 0xFFFFFFAA, 0xFFFFFFAE, 0x00000000, 0x00000000, 0x00000000),
    CS_PLAYER_ACTION_LIST(3),
        CS_PLAYER_ACTION(0x0011, 0, 80, 0x0000, 0x8000, 0x0000, 0, -40, 1400, 0, -40, 1400, 0.0f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0012, 80, 201, 0x0000, 0x8000, 0x0000, 0, -40, 1400, 0, -40, 1400, 0.0f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0005, 201, 662, 0x0000, 0x8000, 0x0000, 0, -40, 1400, 0, -40, 1400, 0.0f, 0.0f, 1.401298464324817e-45f),
    CS_MISC_LIST(1),
        CS_MISC(0x000D, 510, 611, 0x0000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000),
    CS_NPC_ACTION_LIST(48, 1),
        CS_NPC_ACTION(0x0003, 160, 289, 0x0000, 0x0000, 0x0000, 0, 20, 1400, 0, 60, 1400, 0.0f, 0.31007752f, 0.0f),
    CS_NPC_ACTION_LIST(48, 3),
        CS_NPC_ACTION(0x0004, 340, 420, 0x0000, 0x0000, 0x0000, 0, 120, 1335, 0, 40, 1335, 0.0f, -1.0f, 0.0f),
        CS_NPC_ACTION(0x0004, 420, 465, 0x0000, 0x0000, 0x0000, 0, 40, 1335, 0, 16, 1335, 0.0f, -0.53333336f, 0.0f),
        CS_NPC_ACTION(0x0002, 465, 519, 0x0000, 0x0000, 0x0000, 0, 16, 1335, 0, 16, 1335, 0.0f, 0.0f, 0.0f),
    CS_MISC_LIST(1),
        CS_MISC(0x0003, 620, 621, 0x0000, 0x00000000, 0x00000001, 0x00000000, 0xFFFFFFFF, 0x00000001, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000),
    CS_SCENE_TRANS_FX(0x0001, 338, 341),
    CS_SCENE_TRANS_FX(0x0005, 344, 349),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 790, 791, 0x0000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_SCENE_TRANS_FX(0x0001, 157, 160),
    CS_SCENE_TRANS_FX(0x0005, 159, 166),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x005A, 560, 561, 0x0000, 0x00000000, 0x00000003, 0x00000000, 0x00000004, 0x00000003, 0x00000000, 0x00000004),
    CS_CAM_EYE_LIST(0, 451),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 2, 11, 1397, 0xA220),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 2, 11, 1397, 0xB820),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 2, 11, 1397, 0xD0A1),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 27, 1445, 0xBAEE),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 56, 27, 1385, 0xA5AF),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -19, 27, 1341, 0xAE0A),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA8A5),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA5ED),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA220),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA5A4),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0x20BA),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xC9A5),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA5A2),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xA5BB),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -44, -4, 1429, 0xAE0A),
        CS_CAM_EYE(CS_CMD_STOP, 0x00, 0, 60.0f, -44, -4, 1429, 0xB3A5),
    CS_CAM_EYE_LIST(340, 1461),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -6, 15, 1560, 0xA220),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -6, 15, 1560, 0xB820),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -6, 15, 1560, 0xD0A1),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -6, 15, 1560, 0xBAEE),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -6, 15, 1560, 0xA5AF),
        CS_CAM_EYE(CS_CMD_STOP, 0x00, 0, 60.0f, -6, 15, 1560, 0xAE0A),
    CS_CAM_EYE_LIST(490, 941),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 264, 1379, 0xA220),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 264, 1379, 0xB820),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 264, 1379, 0xD0A1),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 264, 1379, 0xBAEE),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 0, 153, 1379, 0xA5AF),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 55, 32, 1398, 0xAE0A),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xA8A5),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xA5ED),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xA220),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xA5A4),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0x20BA),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xC9A5),
        CS_CAM_EYE(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 111, -38, 1511, 0xA5A2),
        CS_CAM_EYE(CS_CMD_STOP, 0x00, 0, 60.0f, 111, -38, 1511, 0xA5BB),
    CS_CAM_LOOK_AT_LIST(0, 480),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 2, 36, 1335, 0xA220),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 2, 36, 1335, 0xB820),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 2, 36, 1335, 0xD0A1),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 0, -8, 1391, 0xBAEE),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 1, -5, 1398, 0xA5AF),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -2, -3, 1394, 0xAE0A),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 5, 0, 1399, 0xA8A5),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 1, 14, 1399, 0xA5ED),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -9, 33, 1402, 0xA220),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0xA5A4),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0x20BA),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0xC9A5),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0xA5A2),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0xA5BB),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -14, 41, 1409, 0xAE0A),
        CS_CAM_LOOK_AT(CS_CMD_STOP, 0x00, 30, 60.0f, -14, 41, 1409, 0xB3A5),
    CS_CAM_LOOK_AT_LIST(340, 1490),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -3, 48, 1414, 0xA220),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -3, 48, 1414, 0xB820),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 1000, 60.0f, -3, 48, 1414, 0xD0A1),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -3, 48, 1414, 0xBAEE),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -3, 47, 1414, 0xA5AF),
        CS_CAM_LOOK_AT(CS_CMD_STOP, 0x00, 30, 60.0f, -3, 47, 1414, 0xAE0A),
    CS_CAM_LOOK_AT_LIST(490, 970),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 0, 264, 1274, 0xA220),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 60, 60.0f, 0, 264, 1274, 0xB820),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 60, 60.0f, 0, 264, 1274, 0xD0A1),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 0, 264, 1274, 0xBAEE),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 0, 170, 1275, 0xA5AF),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 10, 51, 1306, 0xAE0A),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xA8A5),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xA5ED),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xA220),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xA5A4),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0x20BA),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xC9A5),
        CS_CAM_LOOK_AT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, 68, -2, 1424, 0xA5A2),
        CS_CAM_LOOK_AT(CS_CMD_STOP, 0x00, 30, 60.0f, 68, -2, 1424, 0xA5BB),
    CS_END(),
};
// clang-format on
