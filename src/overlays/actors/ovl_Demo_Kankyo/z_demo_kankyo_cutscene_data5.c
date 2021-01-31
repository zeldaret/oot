#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData gChildWarpInCS[] = {
    CS_BEGIN_CUTSCENE(2, 1164),
    CS_CAM_POS_PLAYER_LIST(0, 1135),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 68, 59, 0x010F),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 32, 68, 60, 0x0120),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 69, 59, 0x0131),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x01F4),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x01F6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x0207),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0xB46C),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x05BC),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1164),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 12, 40, 22, 0x010F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 11, 38, 22, 0x0120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 11, 39, 22, 0x0131),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 57, 86, 21, 0x01F4),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0x01F6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.32485580444336f, 57, 86, 21, 0x0207),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0xB46C),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0x05BC),
    CS_END(),
};
// clang-format on
