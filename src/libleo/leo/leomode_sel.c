#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoMode_sel(void) {
    u8 sense;

    sense = leoSend_asic_cmd_w_nochkDiskChange(0x60000, LEOcur_command->data.time.yearlo << 16);
    if ((sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) ||
        (sense = leoSend_asic_cmd_w_nochkDiskChange(0x70000, LEOcur_command->data.time.month << 16),
         (sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION)) ||
        (sense = leoSend_asic_cmd_w_nochkDiskChange(0x150000, LEOcur_command->data.readwrite.xfer_blks),
         (sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION))) {
        LEOcur_command->header.sense = sense;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    LEOcur_command->header.sense = sense;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
