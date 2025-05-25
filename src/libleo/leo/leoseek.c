#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

void leoSeek(void) {
    u32 tgt_tk; // Unused
    u8 sense_code;
    u8 retry_cntr = 20;

    if (LEOcur_command->data.seek.lba > LEO_LBA_MAX) {
        LEOcur_command->header.sense = LEO_SENSE_LBA_OUT_OF_RANGE;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }

    leoLba_to_phys(LEOcur_command->data.seek.lba + 0x18);

    do {
        sense_code = leoSeek_w();
        if (sense_code == LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
            LEOcur_command->header.status = LEO_STATUS_GOOD;
            return;
        }

        if (leoChk_err_retry(sense_code) != 0) {
            break;
        }
    } while (retry_cntr--);

    LEOcur_command->header.sense = sense_code;
    LEOcur_command->header.status = LEO_SENSE_DIAGNOSTIC_FAILURE;
}
