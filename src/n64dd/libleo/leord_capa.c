#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoRd_capacity(void) {
    if (LEOcur_command->header.control & 1) {
        LEOcur_command->data.readwrite.lba = LEORAM_START_LBA[LEOdisk_type] - 0x18;
        LEOcur_command->data.readwrite.xfer_blks = 0x10C3;
        LEOcur_command->data.readwrite.buff_ptr = BADCASTP LEORAM_BYTE[LEOdisk_type];
    } else {
        LEOcur_command->data.readwrite.lba = 0;
        LEOcur_command->data.readwrite.xfer_blks = 0x10C3;
        LEOcur_command->data.readwrite.buff_ptr = (void*)0x03D78F40;
    }
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
