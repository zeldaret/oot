#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoTest_unit_rdy(void) {
    LEOcur_command->data.time.pad = leoChk_cur_drvmode();
    LEOcur_command->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
