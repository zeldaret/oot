#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

void leoInquiry(void) {
    u32 asic_id;
    u32 asic_data;

    osEPiReadIo(LEOPiInfo, ASIC_ID_REG, &asic_id);
    if (leoSend_asic_cmd_w(0x1B0000, 0) == 0) {
        osEPiReadIo(LEOPiInfo, ASIC_DATA, &asic_data);
        if (asic_data & 0x10000) {
            asic_id |= 0x100000;
        }
    }

    ((LEOCmdInquiry*)LEOcur_command)->devType = 0;
    ((LEOCmdInquiry*)LEOcur_command)->version = asic_id >> 0x10;
    ((LEOCmdInquiry*)LEOcur_command)->devNum = 1;
    ((LEOCmdInquiry*)LEOcur_command)->leoBiosVer = 0;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
