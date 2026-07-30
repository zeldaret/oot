#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoClr_queue(void) {
    OSMesg clr_cmd;

    while (osRecvMesg(&LEOcommand_que, &clr_cmd, OS_MESG_NOBLOCK) == 0) {
        ((LEOCmdHeader*)clr_cmd)->sense = LEO_SENSE_COMMAND_TERMINATED;
        ((LEOCmdHeader*)clr_cmd)->status = LEO_STATUS_CHECK_CONDITION;
        if (((LEOCmdHeader*)clr_cmd)->control & LEO_CONTROL_POST) {
            osSendMesg(((LEOCmdHeader*)clr_cmd)->post, (OSMesg)0x22, OS_MESG_BLOCK);
        }
    }
}

void leoClr_reset(void) {
    u32 code;

    code = leoAnalize_asic_status();
    if (code == LEO_SENSE_COMMAND_PHASE_ERROR || code == LEO_SENSE_DEVICE_COMMUNICATION_FAILURE ||
        code == LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED) {
        LEOcur_command->header.sense = code;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
    } else {
        LEOcur_command->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
        LEOcur_command->header.status = LEO_STATUS_GOOD;
    }
}
