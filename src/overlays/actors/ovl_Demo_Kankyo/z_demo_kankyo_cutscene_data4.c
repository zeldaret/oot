#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData gAdultWarpOutToTCS[] = {
    CS_BEGIN_CUTSCENE(5, 1120),
    CS_TRANSITION(0x0005, 36, 46),
    CS_TRANSITION(0x0001, 30, 35),
    CS_CAM_EYE_POINTS_REL_TO_PLAYER_LIST(0, 1091),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 0, 60.32486f, 42, 89, 50, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 0, 60.32486f, 42, 89, 50, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 0, 60.32486f, 42, 89, 50, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 0, 60.32486f, 42, 89, 50, 0x0000),
        CS_CAM_POINT(CS_CMD_STOP, 0x00, 0, 60.32486f, 42, 89, 50, 0x29D0),
    CS_CAM_AT_POINTS_REL_TO_PLAYER_LIST(0, 1120),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.32486f, 24, 66, 29, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.32486f, 24, 66, 29, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 1000, 60.32486f, 24, 66, 29, 0x0000),
        CS_CAM_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.32486f, 24, 66, 29, 0x0000),
        CS_CAM_POINT(CS_CMD_STOP, 0x00, 30, 60.32486f, 24, 66, 29, 0x29D0),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 95, 96, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, 0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};
// clang-format on
