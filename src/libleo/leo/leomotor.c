#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

void leoStart_stop(void) {
    u32 send_cmd;
    u8 sense_code;
    u8 retry_cntr = 8;
    u32 send_data;

    do {
        send_data = 0;
        if ((LEOcur_command->header.control & 1)) {
            send_cmd = 0x50001;
        } else if ((LEOcur_command->header.control & 2)) {
            send_cmd = 0xD0000;
        } else {
            if ((LEOcur_command->header.control & 4)) {
                send_data = 0x10000;
            }
            send_cmd = 0x40000;
        }
        sense_code = leoSend_asic_cmd_w_nochkDiskChange(send_cmd, send_data);
        if (sense_code == 0) {
            LEOcur_command->header.status = 0;
            return;
        }
        if (leoChk_err_retry(sense_code)) {
            break;
        }
    } while (retry_cntr--);

    LEOcur_command->header.sense = sense_code;
    LEOcur_command->header.status = 2;
}
