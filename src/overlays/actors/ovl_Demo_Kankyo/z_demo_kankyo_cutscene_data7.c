#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData gChildWarpInToTCS[] = {
    CS_BEGIN_CUTSCENE(2, 1118),
    CS_CAM_EYE_PLAYER_LIST(0, 1089),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 71.32476f, 53, 53, 40, 0x010F),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0120),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0131),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.599915f, 58, 89, 47, 0x01F4),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.599915f, 58, 89, 47, 0x01F6),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.599915f, 58, 89, 47, 0x0207),
        CS_CAM_EYE_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.599915f, 58, 89, 47, 0x0000),
        CS_CAM_EYE_PLAYER(CS_CMD_STOP, 0x00, 0, 70.599915f, 58, 89, 47, 0x0000),
    CS_CAM_LOOK_AT_PLAYER_LIST(0, 1118),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.52477f, 11, 29, 10, 0x010F),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.39992f, 11, 29, 10, 0x0120),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.599915f, 11, 29, 10, 0x0131),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.599915f, 29, 58, 25, 0x01F4),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.599915f, 29, 58, 25, 0x01F6),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 70.599915f, 29, 58, 25, 0x0207),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.599915f, 29, 58, 25, 0x0000),
        CS_CAM_LOOK_AT_PLAYER(CS_CMD_STOP, 0x00, 30, 70.599915f, 29, 58, 25, 0x0000),
    CS_END(),
};
// clang-format on
