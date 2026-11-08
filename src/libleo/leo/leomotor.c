#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoStart_stop(void) {
    u32 send_cmd;
    u8 sense_code;
    u8 retry_cntr;
    u32 send_data;

    retry_cntr = 8;
    do {
        send_data = 0;
        if (LEOcur_command->header.control & 1) {
            send_cmd = 0x50001;
        } else if (LEOcur_command->header.control & LEO_CONTROL_STBY) {
            send_cmd = 0xD0000;
        } else {
            if (LEOcur_command->header.control & LEO_CONTROL_BRAKE) {
                send_data = 0x10000;
            }
            send_cmd = 0x40000;
        }
        sense_code = leoSend_asic_cmd_w_nochkDiskChange(send_cmd, send_data);
        if (sense_code == LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
            LEOcur_command->header.status = LEO_STATUS_GOOD;
            return;
        }
        if (leoChk_err_retry(sense_code) != 0) {
            break;
        }
    } while (retry_cntr--);
    LEOcur_command->header.sense = sense_code;
    LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
}
