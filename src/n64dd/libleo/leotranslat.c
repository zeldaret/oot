#include "ultra64.h"
#include "ultra64/leo_internal.h"

void leoTranslate(void) {
    u32 lba;
    u32 calc_bytes;
    u32 calc_blks;
    u32 byte_p_blk;
    u16 zone;
    u16 vzone;
    u8 flag;

    if (LEOcur_command->data.readwrite.lba >= 0x10C4) {
        LEOcur_command->header.sense = LEO_SENSE_LBA_OUT_OF_RANGE;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    lba = LEOcur_command->data.readwrite.lba + 0x18;
    calc_blks = 0;
    calc_bytes = 0;
    flag = vzone = 1;
    if (LEOcur_command->header.control & 1) {
        calc_bytes = LEOcur_command->data.readwrite.xfer_blks;
        while (calc_bytes != 0) {
            if ((flag != 0) || (LEOVZONE_TBL[LEOdisk_type][vzone] == lba)) {
                vzone = leoLba_to_vzone(lba);
                zone = LEOVZONE_PZONEHD_TBL[LEOdisk_type][vzone];
                if (zone > 7) {
                    zone -= 7;
                }
                byte_p_blk = LEOBYTE_TBL2[zone];
            }
            if (calc_bytes < byte_p_blk) {
                calc_bytes = 0;
            } else {
                calc_bytes -= byte_p_blk;
            }
            calc_blks++;
            lba++;
            if ((calc_bytes != 0) && (lba >= 0x10DC)) {
                LEOcur_command->header.sense = LEO_SENSE_LBA_OUT_OF_RANGE;
                LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
                return;
            }
            flag = 0;
        }
        LEOcur_command->data.readwrite.buff_ptr = BADCASTP calc_blks;
    } else {
        calc_blks = LEOcur_command->data.readwrite.xfer_blks;
        while (calc_blks != 0) {
            if ((flag != 0) || (LEOVZONE_TBL[LEOdisk_type][vzone] == lba)) {
                vzone = leoLba_to_vzone(lba);
                zone = LEOVZONE_PZONEHD_TBL[LEOdisk_type][vzone];
                if (zone > 7) {
                    zone -= 7;
                }
                byte_p_blk = LEOBYTE_TBL2[zone];
            }
            calc_bytes += byte_p_blk;
            calc_blks--;
            lba++;
            if ((calc_blks != 0) && (lba >= 0x10DC)) {
                LEOcur_command->header.sense = LEO_SENSE_LBA_OUT_OF_RANGE;
                LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
                return;
            }
            flag = 0;
        }
        LEOcur_command->data.readwrite.buff_ptr = BADCASTP calc_bytes;
    }
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
