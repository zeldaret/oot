#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"

// clang-format off
CutsceneData gAdultWarpInCS[] = {
    CS_HEADER(2, 164),
    CS_CAM_EYE_SPLINE_REL_TO_PLAYER(0, 135),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 31, 79, 59, 0x010F),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 31, 78, 60, 0x0120),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 32, 78, 60, 0x0131),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 30, 79, 59, 0x01F4),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 30, 78, 60, 0x01F6),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 30, 78, 60, 0x0207),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 0, CS_FLOAT(0x42714CA7, 60.324856f), 30, 78, 60, 0x0000),
    CS_CAM_AT_SPLINE_REL_TO_PLAYER(0, 164),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42714CA7, 60.324856f), 11, 50, 23, 0x010F),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42714CA7, 60.324856f), 11, 48, 22, 0x0120),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 7, CS_FLOAT(0x42714CA7, 60.324856f), 11, 48, 22, 0x0131),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 7, CS_FLOAT(0x42714CA7, 60.324856f), 57, 101, 21, 0x01F4),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42714CA7, 60.324856f), 57, 101, 21, 0x01F6),
        CS_CAM_POINT(CS_CAM_CONTINUE, 0x00, 30, CS_FLOAT(0x42714CA7, 60.324856f), 57, 101, 21, 0x0207),
        CS_CAM_POINT(CS_CAM_STOP, 0x00, 30, CS_FLOAT(0x42714CA7, 60.324856f), 57, 101, 21, 0x0000),
    CS_END_SCRIPT(),
};
// clang-format on
