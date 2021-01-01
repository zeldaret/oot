#include "z_en_zl1.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData D_80B4C5D0[] = {
    CS_BEGIN_CUTSCENE(28, 3000),
    CS_PLAYER_ACTION_LIST(3),
        CS_PLAYER_ACTION(0x0005, 400, 1211, 0x0000, 0xC000, 0x0000, -422, 84, 1, -422, 84, 1, 1.1266861702801002e-29f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0001, 1211, 1241, 0x0000, 0xC000, 0x0000, -422, 84, 1, -483, 84, 0, 1.1266861702801002e-29f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0029, 1241, 1311, 0x0000, 0xC000, 0x0000, -483, 84, 0, -483, 84, 0, 1.1266861702801002e-29f, 0.0f, 1.401298464324817e-45f),
    CS_NPC_ACTION_LIST(18, 1),
        CS_NPC_ACTION(0x0007, 1170, 1316, 0x7477, 0x0000, 0x0000, -485, 84, 0, -469, 85, -55, 0.10958904027938843f, 0.006849315017461777f, -0.10958904027938843f),
    CS_UNK_DATA_LIST(0x00000049, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFE8, 0x00000003, 0x00000000, 0xFFFFFFE8, 0x00000003, 0x00000000, 0x00000000, 0x00000000),
    CS_NPC_ACTION_LIST(16, 3),
        CS_NPC_ACTION(0x0009, 1220, 1310, 0x8000, 0x0000, 0x0000, -890, 90, 150, -890, 90, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x000A, 1310, 1449, 0x0000, 0x0000, 0x0000, -890, 90, 0, -890, 90, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0004, 1449, 1457, 0x0000, 0x0000, 0x0000, -890, 90, 0, -890, 90, 0, 0.0f, 0.0f, 0.0f),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 1460, 1461, 0x0000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000002, 0xFFFFFFFF, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_NPC_ACTION_LIST(29, 1),
        CS_NPC_ACTION(0x0002, 330, 763, 0x0000, 0x0000, 0x0000, -1250, 150, 0, -1250, 150, 0, 0.0f, 0.0f, 0.0f),
    CS_SCENE_TRANS_FX(0x0001, 200, 231),
    CS_SCENE_TRANS_FX(0x0005, 230, 271),
    CS_SCENE_TRANS_FX(0x0001, 860, 870),
    CS_SCENE_TRANS_FX(0x0005, 875, 900),
    CS_CAM_POS_LIST(0, 331),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -447, 128, 1, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -447, 128, 1, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -447, 128, 1, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -447, 128, 1, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -392, 145, 1, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -318, 168, 1, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -222, 198, 1, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -146, 221, 1, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -132, 222, 1, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x3632),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x3533),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.80000305175781f, -66, 267, 1, 0x3336),
    CS_CAM_POS_LIST(230, 1631),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 445, 24, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 259, 24, 0x3632),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1220, 189, 24, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1135, 198, 81, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -1132, 119, 84, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1199, 137, 36, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3336),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x332C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3231),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3232),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x2034),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3331),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3434),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x312C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3136),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3336),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x332C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x200A),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3136),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.60000228881836f, -1218, 127, 22, 0x3336),
    CS_CAM_POS_LIST(810, 1041),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1218, 127, 22, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1218, 127, 22, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1218, 127, 22, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1218, 88, 21, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1208, -52, 23, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x3632),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.600006103515625f, -1201, -114, 26, 0x3639),
    CS_CAM_POS_LIST(870, 1261),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 80.27444458007812f, -59, 160, 320, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -59, 160, 320, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -59, 160, 320, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -59, 160, 320, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -115, 148, 249, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -190, 126, 192, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -286, 105, 135, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -357, 108, 87, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x3632),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x392C),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x2031),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.074676513671875f, -394, 104, 53, 0x3533),
    CS_CAM_POS_LIST(1160, 1401),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x3639),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -459, 175, 80, 0x392C),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -459, 175, 80, 0x2032),
    CS_CAM_POS_LIST(1260, 1411),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x2032),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 45.19994354248047f, -461, 133, 0, 0x3533),
    CS_CAM_POS_LIST(1320, 1531),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x2031),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x3833),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x2C20),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x2032),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x3533),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x3639),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 10.999837875366211f, -488, 124, -6, 0x392C),
    CS_CAM_FOCUS_POINT_LIST(0, 360),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -506, 110, 1, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.80000305175781f, -506, 110, 1, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.80000305175781f, -506, 110, 1, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.80000305175781f, -506, 110, 1, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 25, 60.80000305175781f, -451, 127, 1, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 25, 60.80000305175781f, -380, 149, 1, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -291, 177, 1, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -224, 210, 1, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -213, 230, 1, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -143, 291, 1, 0x3632),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -135, 308, 1, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -127, 319, 1, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -120, 326, 1, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.80000305175781f, -120, 326, 1, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.80000305175781f, -120, 326, 1, 0x3336),
    CS_CAM_FOCUS_POINT_LIST(230, 1710),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1246, 413, 5, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1245, 227, 5, 0x3632),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1245, 158, 5, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -1180, 178, 50, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.0f, -1178, 131, 51, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1240, 146, 6, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1253, 153, -3, 0x3336),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1253, 153, -3, 0x332C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1253, 153, -3, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1253, 153, -3, 0x3231),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1253, 153, -3, 0x3232),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1252, 152, -2, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1252, 152, -2, 0x2034),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1252, 152, -2, 0x3331),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1252, 152, -2, 0x3434),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1252, 152, -2, 0x312C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x3136),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x3336),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x332C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x200A),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.60000228881836f, -1251, 151, -1, 0x3136),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 80, 60.60000228881836f, -1251, 151, -1, 0x3336),
    CS_CAM_FOCUS_POINT_LIST(810, 1070),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1251, 151, -1, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1251, 151, -1, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 60.600006103515625f, -1250, 150, 0, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.600006103515625f, -1241, 125, 5, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.600006103515625f, -1226, -13, 10, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 10, 60.600006103515625f, -1218, -73, 26, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1218, -73, 26, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1218, -73, 26, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1218, -73, 26, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.600006103515625f, -1218, -73, 26, 0x3632),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.600006103515625f, -1218, -73, 26, 0x3639),
    CS_CAM_FOCUS_POINT_LIST(870, 1290),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -45, 240, 241, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -45, 240, 241, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -56, 219, 224, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -85, 183, 212, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -204, 134, 183, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -280, 116, 125, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -376, 104, 69, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -440, 107, 13, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x3632),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.074676513671875f, -467, 110, -25, 0x3533),
    CS_CAM_FOCUS_POINT_LIST(1160, 1430),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.0f, -456, 138, 16, 0x392C),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 60.0f, -456, 138, 16, 0x2032),
    CS_CAM_FOCUS_POINT_LIST(1260, 1440),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 45.19994354248047f, -535, 133, 0, 0x3533),
    CS_CAM_FOCUS_POINT_LIST(1320, 1560),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x2031),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x3833),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x2C20),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x2032),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x3533),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x3639),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 10.999837875366211f, -1349, 124, -6, 0x392C),
    CS_TEXT_LIST(10),
        CS_TEXT_NONE(0, 50),
        CS_TEXT_DISPLAY_TEXTBOX(0x7035, 50, 190, 0x0000, 0xFFFF, 0xFFFF),
        CS_TEXT_NONE(190, 300),
        CS_TEXT_DISPLAY_TEXTBOX(0x7036, 300, 800, 0x0000, 0xFFFF, 0xFFFF),
        CS_TEXT_NONE(800, 970),
        CS_TEXT_DISPLAY_TEXTBOX(0x7037, 970, 1150, 0x0000, 0xFFFF, 0x7038),
        CS_TEXT_NONE(1150, 1190),
        CS_TEXT_DISPLAY_TEXTBOX(0x7005, 1190, 1200, 0x0000, 0xFFFF, 0x700B),
        CS_TEXT_NONE(1200, 1340),
        CS_TEXT_DISPLAY_TEXTBOX(0x7009, 1340, 1420, 0x0000, 0xFFFF, 0xFFFF),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x004E, 230, 231, 0x0000, 0x00000000, 0x00000003, 0x00000000, 0x00000000, 0x00000003, 0x00000000, 0x00000000),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x002A, 870, 871, 0x0000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0xFFFFFFFD, 0xFFFFFFFE, 0x00000000, 0xFFFFFFFD),
    CS_STOP_BGM_LIST(1),
        CS_STOP_BGM(0x0001, 110, 111, 0x0000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000001, 0xFFFFFFFE, 0x00000000, 0x00000001),
    CS_END(),
};
// clang-format on

CutsceneCameraAngle D_80B4D5C0[] = {
    {{-440.0f, 117.0f, 0.0f}, {-490.0f, 120.0f, 0.0f}, 0,45},
    {{-484.0f, 122.0f, -29.0f}, {-480.0f, 116.0f, 18.0f}, 0,80},
    {{-413.0f, 136.0f, -72.0f}, {-403.0f, 141.0f, -89.0f}, 0,25},
    {{-454.0f, 120.0f, 0.0f}, {-434.0f, 121.0f, 0.0f}, 0,20},
    {{-454.0f, 120.0f, 0.0f}, {-430.0f, 103.0f, -37.0f}, 0,20},
    {{-454.0f, 105.0f, 50.0f}, {-453.0f, 105.0f, 66.0f}, 0,60},
    {{-501.0f, 122.0f, 0.0f}, {-449.0f, 119.0f, 0.0f}, 0,45},
    {{-462.0f, 121.0f, 0.0f}, {-419.0f, 125.0f, 0.0f}, 0,20},
    {{-551.0f, 119.0f, 7.0f}, {-587.0f, 115.0f, 14.0f}, 0,20},
    {{-489.0f, 129.0f, 0.0f}, {-470.0f, 128.0f, 0.0f}, 0,40},
    {{-525.0f, 126.0f, 0.0f}, {-509.0f, 126.0f, 0.0f}, 0,10},
    {{-491.0f, 120.0f, -7.0f}, {-509.0f, 115.0f, -7.0f}, 0,75},
    {{-485.0f, 120.0f, -42.0f}, {-484.0f, 120.0f, 10.0f}, 0,45},
};
CutsceneCameraPoint D_80B4D72C[] = {
    {0, 0, 20, 80.79987f, {-484, 122, -29}},
    {0, 0, 20, 80.79987f, {-484, 122, -29}},
    {0, 0, 20, 80.79987f, {-484, 122, -29}},
    {0, 0, 20, 80.79987f, {-452, 121, -21}},
    {0, 0, 20, 80.79987f, {-452, 121, -21}},
    {0, 0, 20, 80.79987f, {-452, 121, -21}},
    {-1, 0, 20, 80.79987f, {-452, 121, -21}},
    {-1, 0, 30, 80.79987f, {-452, 121, -21}},
};
CutsceneCameraPoint D_80B4D7AC[] = {
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {0, 0, 0, 80.79987f, {-480, 116, 18}},
    {-1, 0, 0, 80.79987f, {-480, 116, 18}},
    {-1, 0, 0, 80.79987f, {-480, 116, 18}},
};
CutsceneCameraPoint D_80B4D82C[] = {
    {0, 0, 20, 45.200058f, {-439, 116, 0}},
    {0, 0, 20, 45.200058f, {-439, 116, 0}},
    {0, 0, 20, 50.60008f, {-433, 116, 0}},
    {0, 0, 20, 55.600098f, {-431, 116, 0}},
    {0, 0, 20, 60.000114f, {-427, 116, 0}},
    {0, 0, 20, 65.000114f, {-424, 116, 0}},
    {0, 0, 20, 70.800026f, {-422, 116, 0}},
    {0, 0, 20, 75.59995f, {-419, 115, 0}},
    {-1, 0, 20, 75.59995f, {-419, 116, 0}},
    {-1, 0, 30, 75.59995f, {-419, 115, 0}},
};
CutsceneCameraPoint D_80B4D8CC[] = {
    {0, 0, 0, 60.400116f, {-480, 114, 0}},
    {0, 0, 0, 45.200058f, {-480, 114, 0}},
    {0, 0, 0, 45.200058f, {-474, 114, 0}},
    {0, 0, 0, 50.60008f, {-472, 114, 0}},
    {0, 0, 0, 55.600098f, {-468, 114, 0}},
    {0, 0, 0, 60.000114f, {-465, 114, 0}},
    {0, 0, 0, 65.000114f, {-463, 114, 0}},
    {0, 0, 0, 70.800026f, {-460, 114, 0}},
    {-1, 0, 0, 75.59995f, {-460, 114, 0}},
    {-1, 0, 0, 75.59995f, {-460, 114, 0}},
};
CutsceneCameraPoint D_80B4D96C[] = {
    {0, 0, 25, 60.000114f, {-116, 50, 469}},
    {0, 0, 25, 60.000114f, {-116, 50, 469}},
    {0, 0, 25, 60.000114f, {-118, 50, 467}},
    {0, 0, 25, 60.000114f, {-120, 50, 465}},
    {0, 0, 25, 60.000114f, {-123, 50, 464}},
    {0, 0, 25, 60.000114f, {-126, 50, 463}},
    {0, 0, 25, 60.000114f, {-129, 50, 462}},
    {0, 0, 25, 60.000114f, {-131, 50, 462}},
    {0, 0, 25, 60.000114f, {-134, 50, 463}},
    {0, 0, 25, 60.000114f, {-137, 50, 464}},
    {0, 0, 25, 60.000114f, {-140, 50, 466}},
    {0, 0, 25, 60.000114f, {-140, 50, 466}},
    {-1, 0, 25, 60.000114f, {-140, 50, 466}},
    {-1, 0, 25, 60.000114f, {-140, 50, 466}},
};
CutsceneCameraPoint D_80B4DA4C[] = {
    {0, 0, 0, 20.399963f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {0, 0, 0, 60.000114f, {-130, 50, 480}},
    {-1, 0, 0, 60.000114f, {-130, 50, 480}},
    {-1, 0, 0, 60.000114f, {-130, 50, 480}},
};
CutsceneCameraPoint D_80B4DB2C[] = {
    {0, 0, 30, 20.799965f, {-427, 116, 4}},
    {0, 0, 30, 20.799965f, {-426, 115, 4}},
    {0, 0, 30, 20.799965f, {-429, 115, 7}},
    {0, 0, 30, 20.799965f, {-428, 114, 12}},
    {0, 0, 30, 20.799965f, {-430, 114, 14}},
    {0, 0, 30, 20.799965f, {-430, 114, 14}},
    {0, 0, 30, 20.799965f, {-430, 114, 14}},
    {-1, 0, 30, 20.799965f, {-430, 112, 14}},
    {-1, 0, 30, 20.799965f, {-430, 112, 14}},
};
CutsceneCameraPoint D_80B4DBBC[] = {
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {0, 0, 0, 20.799965f, {-389, 109, 36}},
    {-1, 0, 0, 20.799965f, {-389, 109, 36}},
    {-1, 0, 0, 20.799965f, {-389, 109, 36}},
};
CutsceneCameraPoint D_80B4DC4C[] = {
    {0, 0, 30, 45.0f, {-496, 119, 0}},
    {0, 0, 30, 45.0f, {-496, 119, 0}},
    {0, 0, 30, 45.0f, {-496, 119, 0}},
    {0, 0, 15, 45.0f, {-496, 119, 0}},
    {0, 0, 15, 45.80006f, {-471, 122, 0}},
    {0, 0, 15, 45.80006f, {-395, 139, 0}},
    {0, 0, 15, 45.80006f, {-193, 183, 0}},
    {0, 0, 15, 45.80006f, {29, 232, 0}},
    {0, 0, 30, 45.80006f, {360, 304, 0}},
    {0, 0, 30, 45.80006f, {429, 328, 0}},
    {0, 0, 30, 45.80006f, {429, 328, 0}},
    {0, 0, 30, 45.80006f, {429, 328, 0}},
    {0, 0, 30, 45.80006f, {429, 328, 0}},
    {-1, 0, 30, 45.80006f, {429, 328, 0}},
    {-1, 0, 30, 45.80006f, {429, 328, 0}},
};
CutsceneCameraPoint D_80B4DD3C[] = {
    {0, 0, 0, 45.0f, {-443, 115, 0}},
    {0, 0, 0, 45.0f, {-443, 115, 0}},
    {0, 0, 0, 45.0f, {-443, 115, 0}},
    {0, 0, 0, 45.0f, {-443, 115, 0}},
    {0, 0, 0, 45.80006f, {-420, 133, 0}},
    {0, 0, 0, 45.80006f, {-344, 150, 0}},
    {0, 0, 0, 45.80006f, {-143, 194, 0}},
    {0, 0, 0, 45.80006f, {80, 243, 0}},
    {0, 0, 0, 45.80006f, {412, 315, 0}},
    {0, 0, 0, 45.80006f, {482, 332, 0}},
    {0, 0, 0, 45.80006f, {482, 332, 0}},
    {0, 0, 0, 45.80006f, {482, 332, 0}},
    {0, 0, 0, 45.80006f, {482, 332, 0}},
    {-1, 0, 0, 45.80006f, {482, 332, 0}},
    {-1, 0, 0, 45.80006f, {482, 332, 0}},
};
CutsceneCameraPoint D_80B4DE2C[] = {
    {0, 0, 25, 60.600117f, {66, 404, 425}},
    {0, 0, 25, 60.400116f, {66, 404, 425}},
    {0, 0, 25, 55.600098f, {66, 404, 426}},
    {0, 0, 25, 55.200096f, {63, 373, 413}},
    {0, 0, 25, 50.400078f, {26, 353, 408}},
    {0, 0, 25, 50.400078f, {17, 325, 397}},
    {0, 0, 25, 45.40006f, {17, 326, 397}},
    {0, 0, 25, 45.200058f, {-136, 177, 259}},
    {0, 0, 25, 40.40004f, {-258, 111, 169}},
    {0, 0, 25, 40.20004f, {-377, 108, 65}},
    {0, 0, 25, 35.20002f, {-377, 108, 65}},
    {0, 0, 25, 35.20002f, {-377, 108, 65}},
    {-1, 0, 30, 30.2f, {-376, 108, 65}},
    {-1, 0, 30, 30.2f, {-376, 108, 65}},
};
CutsceneCameraPoint D_80B4DF0C[] = {
    {0, 0, 0, 45.80006f, {29, 383, 445}},
    {0, 0, 0, 45.80006f, {29, 383, 445}},
    {0, 0, 0, 45.80006f, {29, 383, 445}},
    {0, 0, 0, 45.80006f, {29, 383, 445}},
    {0, 0, 0, 45.80006f, {29, 383, 445}},
    {0, 0, 0, 45.80006f, {49, 347, 424}},
    {0, 0, 0, 45.80006f, {49, 347, 424}},
    {0, 0, 0, 30.2f, {-103, 192, 286}},
    {0, 0, 0, 30.2f, {-224, 113, 198}},
    {0, 0, 0, 30.2f, {-345, 109, 96}},
    {0, 0, 0, 30.2f, {-345, 109, 96}},
    {0, 0, 0, 30.2f, {-345, 109, 96}},
    {-1, 0, 0, 30.2f, {-345, 109, 96}},
    {-1, 0, 0, 30.2f, {-345, 109, 96}},
};
CutsceneCameraPoint D_80B4DFEC[] = {
    {0, 0, 10, 30.0f, {-482, 119, 0}},
    {0, 0, 10, 30.0f, {-482, 119, 0}},
    {0, 0, 10, 30.0f, {-482, 119, 0}},
    {0, 0, 10, 30.800003f, {-482, 119, 0}},
    {0, 0, 10, 30.800003f, {-482, 119, 0}},
    {0, 0, 10, 30.800003f, {-462, 126, 0}},
    {0, 0, 30, 30.800003f, {-395, 150, 0}},
    {0, 0, 30, 30.800003f, {-395, 150, 0}},
    {-1, 0, 30, 30.800003f, {-395, 150, 0}},
    {-1, 0, 30, 30.800003f, {-395, 150, 0}},
};
CutsceneCameraPoint D_80B4E08C[] = {
    {0, 0, 0, 30.0f, {-440, 115, 0}},
    {0, 0, 0, 30.0f, {-440, 115, 0}},
    {0, 0, 0, 30.0f, {-440, 115, 0}},
    {0, 0, 0, 30.800003f, {-440, 115, 0}},
    {0, 0, 0, 30.800003f, {-440, 115, 0}},
    {0, 0, 0, 30.800003f, {-423, 142, 0}},
    {0, 0, 0, 30.800003f, {-358, 171, 0}},
    {0, 0, 0, 30.800003f, {-358, 171, 0}},
    {-1, 0, 0, 30.800003f, {-358, 171, 0}},
    {-1, 0, 0, 30.800003f, {-358, 171, 0}},
};
CutsceneCameraPoint D_80B4E12C[] = {
    {0, 0, 30, 25.0f, {-551, 119, 7}},
    {0, 0, 30, 25.0f, {-551, 119, 7}},
    {0, 0, 15, 25.0f, {-551, 119, 7}},
    {0, 0, 15, 60.0f, {-485, 120, -7}},
    {0, 0, 30, 60.0f, {-485, 120, -7}},
    {0, 0, 30, 60.0f, {-485, 120, -7}},
    {0, 0, 30, 60.0f, {-485, 118, -5}},
    {-1, 0, 30, 60.0f, {-485, 119, -6}},
    {-1, 0, 30, 60.0f, {-485, 119, -6}},
};
CutsceneCameraPoint D_80B4E1BC[] = {
    {0, 0, 0, 45.200058f, {-587, 115, 14}},
    {0, 0, 0, 25.400097f, {-587, 115, 14}},
    {0, 0, 0, 25.400097f, {-587, 115, 14}},
    {0, 0, 0, 60.20023f, {-521, 117, -1}},
    {0, 0, 0, 60.20023f, {-521, 117, -1}},
    {0, 0, 0, 60.20023f, {-521, 117, -1}},
    {0, 0, 0, 60.20023f, {-521, 117, -1}},
    {-1, 0, 0, 60.20023f, {-521, 116, 0}},
    {-1, 0, 0, 60.19925f, {-521, 116, 0}},
};
CutsceneCameraPoint D_80B4E24C[] = {
    {0, 0, 30, 60.000114f, {75, 52, 50}},
    {0, 0, 30, 60.000114f, {75, 52, 48}},
    {0, 0, 60, 60.000114f, {74, 52, 45}},
    {0, 0, 60, 60.000114f, {49, 51, -43}},
    {0, 0, 30, 60.000114f, {49, 51, -43}},
    {0, 0, 30, 60.000114f, {49, 51, -43}},
    {-1, 0, 30, 60.000114f, {49, 51, -43}},
    {-1, 0, 30, 60.000114f, {49, 51, -43}},
};
CutsceneCameraPoint D_80B4E2CC[] = {
    {0, 0, 0, 60.000114f, {90, 52, 53}},
    {0, 0, 0, 60.000114f, {90, 52, 50}},
    {0, 0, 0, 60.000114f, {90, 52, 45}},
    {0, 0, 0, 60.000114f, {65, 51, -44}},
    {0, 0, 0, 60.000114f, {65, 51, -44}},
    {0, 0, 0, 60.000114f, {65, 51, -44}},
    {-1, 0, 0, 60.000114f, {65, 51, -44}},
    {-1, 0, 0, 60.000114f, {65, 51, -44}},
};
CutsceneCameraPoint D_80B4E34C[] = {
    {0, 0, 31, 60.000114f, {-449, 121, -19}},
    {0, 0, 30, 60.000114f, {-449, 121, -19}},
    {0, 0, 30, 60.000114f, {-449, 121, -19}},
    {0, 0, 30, 60.000114f, {-456, 110, -17}},
    {0, 0, 30, 60.000114f, {-456, 110, -17}},
    {0, 0, 30, 60.000114f, {-456, 110, -17}},
    {-1, 0, 30, 60.000114f, {-456, 110, -17}},
    {-1, 0, 30, 60.000114f, {-456, 110, -17}},
};
CutsceneCameraPoint D_80B4E3CC[] = {
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {0, 0, 0, 60.000114f, {-441, 107, -22}},
    {-1, 0, 0, 60.000114f, {-441, 107, -22}},
    {-1, 0, 0, 60.000114f, {-441, 107, -22}},
};
CutsceneCameraPoint D_80B4E44C[] = {
    {0, 0, 30, 20.799965f, {-331, 110, -91}},
    {0, 0, 30, 20.799965f, {-331, 110, -91}},
    {0, 0, 30, 20.799965f, {-331, 110, -91}},
    {0, 0, 30, 20.799965f, {-511, 121, 7}},
    {0, 0, 30, 20.799965f, {-511, 121, 7}},
    {0, 0, 30, 20.799965f, {-511, 121, 7}},
    {-1, 0, 30, 20.799965f, {-511, 121, 7}},
    {-1, 0, 30, 20.799965f, {-511, 121, 7}},
};
CutsceneCameraPoint D_80B4E4CC[] = {
    {0, 0, 0, 20.799965f, {-369, 110, -70}},
    {0, 0, 0, 20.799965f, {-369, 110, -70}},
    {0, 0, 0, 20.799965f, {-369, 110, -70}},
    {0, 0, 0, 20.799965f, {-549, 124, 29}},
    {0, 0, 0, 20.799965f, {-549, 124, 29}},
    {0, 0, 0, 20.799965f, {-549, 124, 29}},
    {-1, 0, 0, 20.799965f, {-549, 124, 29}},
    {-1, 0, 0, 20.799965f, {-549, 124, 29}},
};
CutsceneCameraMove D_80B4E54C[] = {
    {D_80B4D72C, D_80B4D7AC, 0}, {D_80B4D82C, D_80B4D8CC, 0}, {D_80B4D96C, D_80B4DA4C, 0},
    {D_80B4DB2C, D_80B4DBBC, 0}, {D_80B4DC4C, D_80B4DD3C, 0}, {D_80B4DE2C, D_80B4DF0C, 0},
    {D_80B4DFEC, D_80B4E08C, 0}, {D_80B4E12C, D_80B4E1BC, 0}, {D_80B4E24C, D_80B4E2CC, 0},
    {D_80B4E34C, D_80B4E3CC, 0}, {D_80B4E44C, D_80B4E4CC, 0},
};
