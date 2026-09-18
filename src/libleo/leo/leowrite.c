#include "ultra64.h"
#include "ultra64/leo_internal.h"

extern u16 LEOrw_flags;

void leoWrite(void) {
    u32 message;
    u32 start_lba;
    u32 xfer_blk;
    u32 temp_v1;

    start_lba = LEOcur_command->data.readwrite.lba;
    xfer_blk = LEOcur_command->data.readwrite.xfer_blks;
    if ((((u32)(LEOcur_command->data.readwrite.lba | xfer_blk) >> 16) != 0)) {
        goto invalid_lba;
    }
    temp_v1 = start_lba + 0x18;
    if ((temp_v1 >= 0x10DC) || ((u32)(temp_v1 + xfer_blk) >= 0x10DD)) {
    invalid_lba:
        LEOcur_command->header.sense = LEO_SENSE_LBA_OUT_OF_RANGE;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    if (temp_v1 < (u16)LEORAM_START_LBA[LEOdisk_type]) {
        LEOcur_command->header.sense = LEO_SENSE_WRITE_PROTECT_ERROR;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    if (xfer_blk == 0) {
        LEOcur_command->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
        LEOcur_command->header.status = LEO_STATUS_GOOD;
        return;
    }
    LEOrw_flags = 0x8000;
    LEOtgt_param.lba = temp_v1;
    osStartThread(&LEOinterruptThread);
    osRecvMesg(&LEOcontrol_que, (OSMesg*)&message, OS_MESG_BLOCK);
    if (message != 0x90000) {
        LEOcur_command->header.sense = (u8)message;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    LEOcur_command->header.sense = LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}
