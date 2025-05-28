#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

void leoClr_queue(void) {
    OSMesg clr_cmd;

    while (osRecvMesg(&LEOcommand_que, &clr_cmd, OS_MESG_NOBLOCK) == 0) {
        ((LEOCmd*)clr_cmd)->header.sense = LEO_SENSE_COMMAND_TERMINATED;
        ((LEOCmd*)clr_cmd)->header.status = LEO_STATUS_CHECK_CONDITION;
        if (((LEOCmd*)clr_cmd)->header.control & LEO_CONTROL_POST) {
            osSendMesg(((LEOCmd*)clr_cmd)->header.post, (OSMesg)LEO_SENSE_COMMAND_TERMINATED, OS_MESG_BLOCK);
        }
    }
}

void leoClr_reset(void) {
    u32 code = leoAnalize_asic_status();

    if ((code == LEO_SENSE_COMMAND_PHASE_ERROR) || (code == LEO_SENSE_DEVICE_COMMUNICATION_FAILURE) ||
        (code == LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED)) {
        LEOcur_command->header.sense = code;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
    } else {
        LEOcur_command->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
        LEOcur_command->header.status = LEO_STATUS_GOOD;
    }
}
