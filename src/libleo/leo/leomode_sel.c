#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

void leoMode_sel(void) {
    u32 sense;

    sense = leoSend_asic_cmd_w_nochkDiskChange(0x60000, LEOcur_command->data.time.yearlo << 0x10);
    if (sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
        goto mselerror;
    }
    sense = leoSend_asic_cmd_w_nochkDiskChange(0x70000, LEOcur_command->data.time.month << 0x10);
    if (sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
        goto mselerror;
    }
    sense = leoSend_asic_cmd_w_nochkDiskChange(0x150000, LEOcur_command->data.readWrite.transferBlks);
    if (sense != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
    mselerror:
        LEOcur_command->header.sense = sense;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }

    LEOcur_command->header.sense = sense;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
