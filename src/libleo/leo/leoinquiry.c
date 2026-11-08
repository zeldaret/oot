#include "ultra64.h"
#include "ultra64/leo_internal.h"
#include "ultra64/leodrive.h"

void leoInquiry(void) {
    u32 asic_id;
    u32 asic_data;

    osEPiReadIo(LEOPiInfo, ASIC_ID_REG, &asic_id);
    if (leoSend_asic_cmd_w(0x1B0000, 0) == LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
        osEPiReadIo(LEOPiInfo, ASIC_DATA, &asic_data);
        if (asic_data & 0x10000) {
            asic_id |= 0x100000;
        }
    }
    LEOcur_command->data.time.pad = 0;
    LEOcur_command->data.time.yearhi = (u8)(asic_id >> 16);
    LEOcur_command->data.time.yearlo = 1;
    LEOcur_command->data.time.month = 0;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
