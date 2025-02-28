#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"
#include "attributes.h"

#include "global.h"

extern vu16 LEOrw_flags;

static void (*cmd_tbl[16])(void) = {
    NULL,          leoClr_queue, leoInquiry,    leoTest_unit_rdy, leoRezero,    leoRead,
    leoWrite,      leoSeek,      leoStart_stop, leoRd_capacity,   leoTranslate, leoMode_sel,
    leoReadDiskId, leoReadTimer, leoSetTimer,   leoClr_reset,
};

static LEOCmdRead system_read_cmd = {
    { LEO_COMMAND_READ, 0, 0, 0, 0, 0, 0, 0, 0 }, 12, 1, 0, 0,
};

static const u8 system_lba[8] = { 0, 1, 8, 9, 0, 0, 0, 0 };

OSPiHandle* LEOPiInfo;
OSIoMesg LEOPiDmaParam;
s32 currentCommand;

u8 leoRead_system_area(void);

void leomain(void* arg0) {
    u32 cur_status;
    u32 sense_code;
    u8 disktype_bak;

    ((u8*)&LEO_country_code)[0] = *(vu8*)OS_PHYSICAL_TO_K1(0x10);
    ((u8*)&LEO_country_code)[1] = *(vu8*)OS_PHYSICAL_TO_K1(0x90);
    ((u8*)&LEO_country_code)[2] = *(vu8*)OS_PHYSICAL_TO_K1(0x110);
    ((u8*)&LEO_country_code)[3] = *(vu8*)OS_PHYSICAL_TO_K1(0x190);

    LEOasic_seq_ctl_shadow = 0;
    LEOasic_bm_ctl_shadow = 0;
    LEOdrive_flag = 0;
    LEOclr_que_flag = 0;
    leoInitUnit_atten();
    LEOPiInfo = osLeoDiskInit();
    LEOPiDmaParam.hdr.pri = 1;
    LEOPiDmaParam.hdr.retQueue = &LEOdma_que;
    osEPiReadIo(LEOPiInfo, ASIC_STATUS, &cur_status);
    if (!(cur_status & 0x400000) && (cur_status & 0x06800000)) {
        leoDrive_reset();
    }

    while (true) {
        osRecvMesg(&LEOcommand_que, (OSMesg*)&LEOcur_command, OS_MESG_BLOCK);
        currentCommand = LEOcur_command->header.command;
        if (LEOcur_command->header.command == 0) {
            leoDrive_reset();
            osRecvMesg(&LEOevent_que, NULL, OS_MESG_NOBLOCK);
            continue;
        }

        sense_code = leoChk_asic_ready(0x10001);
        cur_status = leoChkUnit_atten();

        do {
            if (cur_status == 0) {
                if (sense_code == 0) {
                    continue;
                }
            } else {
                switch (sense_code) {
                    case 3:
                    case 37:
                    case 41:
                    case 43:
                        break;
                    case 49:
                        if (leoRetUnit_atten() == 43) {
                            sense_code = 43;
                        }
                        break;
                    default:
                        sense_code = leoRetUnit_atten();
                }
            }

            switch (sense_code) {
                case 47:
                    switch (LEOcur_command->header.command) {
                        case 2:
                        case 8:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                            continue;
                    }
                    break;
                case 49:
                    switch (LEOcur_command->header.command) {
                        case 2:
                        case 11:
                        case 13:
                        case 14:
                        case 15:
                            continue;
                        default:
                            sense_code = 42;
                    }
                    break;
                case 43:
                    switch (LEOcur_command->header.command) {
                        case 15:
                            leoClrUA_RESET();
                            FALLTHROUGH;
                        case 2:
                        case 13:
                        case 14:
                            continue;
                    }
                    break;
                default:
                    /* empty */;
            }

            if (LEOcur_command->header.command == 3) {
                LEOcur_command->data.modeSelect.reserve1 = leoChk_cur_drvmode();
            }
            LEOcur_command->header.sense = sense_code;
            LEOcur_command->header.status = 2;
            goto post_exe;
        } while (0);

        if (LEOdrive_flag == 0) {
            switch (LEOcur_command->header.command) {
                case 2:
                case 3:
                case 8:
                case 11:
                case 13:
                case 14:
                case 15:
                    break;
                default:
                    if (LEO_country_code == 0) {
                        osEPiReadIo(LEOPiInfo, ASIC_ID_REG, &cur_status);
                        if ((cur_status & 0x70000) != 0x40000) {
                            while (true) {}
                        }
                    }

                    if (leoRead_system_area() != 0) {
                        LEOcur_command->header.status = 2;
                        goto post_exe;
                    }

                    if ((LEOcur_command->header.sense =
                             leoSend_asic_cmd_w(0xB0001, LEO_sys_data.param.disk_type << 16)) != 0) {
                        LEOcur_command->header.status = 2;
                        goto post_exe;
                    }

                    if ((LEO_sys_data.param.disk_type & 0xF0) != 0x10) {
                        goto invalid_disktype;
                    }

                    LEOdisk_type = (LEO_sys_data.param.disk_type & 0xF);
                    if (LEOdisk_type >= 7) {
                    invalid_disktype:
                        LEOcur_command->header.sense = 0xBU;
                        LEOcur_command->header.status = 2;
                        goto post_exe;
                    }

                    LEOdrive_flag = -1;
            }
        }

        cmd_tbl[LEOcur_command->header.command]();

    post_exe:
        if (LEOcur_command->header.control & 0x80) {
            osSendMesg(LEOcur_command->header.post, (void*)(s32)LEOcur_command->header.sense, OS_MESG_BLOCK);
        }
        if (LEOclr_que_flag != 0) {
            leoClr_queue();
        }
    }
}

u8 leoRead_system_area(void) {
    LEOCmdRead dummy_cmd;
    void* backup_pointer;
    u32 retry_cntr;
    s32 read_mode;

    backup_pointer = LEOcur_command;
    LEOcur_command = (LEOCmd*)&dummy_cmd;
    read_mode = 0;
    retry_cntr = 0;

    while (true) {
        LEOdisk_type = 0;
        // For lba_to_phys to avoid dealing with alternative tracks on the disk
        LEO_sys_data.param.defect_num[0] = 0;
        LEOrw_flags = 0x3000;
        dummy_cmd = system_read_cmd;
        dummy_cmd.buffPtr = &LEO_sys_data;

        if (read_mode == 0) {
            // read System LBA 12 (+0, this is an offset value for leoRead_common)
            // see system_read_cmd premade struct
            leoRead_common(0);
            switch (dummy_cmd.header.sense) {
                case LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION:
                    do {
                        // if expecting a retail disk, LBA 12 is expected to do a read error, if not then freeze
                    } while (LEO_country_code != 0);
                    retry_cntr = 0;
                    read_mode--;
                    continue;
                case LEO_SENSE_UNRECOVERED_READ_ERROR:
                    do {
                        // if expecting a development disk, LBA 12 is expected to read correctly, if not then freeze
                    } while (LEO_country_code == 0);
                    retry_cntr = 0;
                    read_mode--;
                    continue;
            }
        } else {
            // read System LBA 0,1,8,9 (or 2,3,10,11 for dev)
            dummy_cmd.lba = system_lba[retry_cntr & 3];
            if (LEO_country_code == 0) {
                dummy_cmd.lba += 2;
            }
            leoRead_common(0);
            if (dummy_cmd.header.status == LEO_STATUS_GOOD) {
                do {
                    // if disk country and set country code in libleo mismatch, then freeze
                } while (LEO_sys_data.param.country != LEO_country_code);
                goto sys_read_end;
            }
        }

    system_retry:
        if (leoChk_err_retry(dummy_cmd.header.sense) != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
            break;
        }
        if (retry_cntr++ >= 0x40U) {
            break;
        }
        if ((retry_cntr & 7) == 0) {
            // Recalibrate drive every 8th tries
            if ((dummy_cmd.header.sense = leoSend_asic_cmd_w(0x30001, 0)) == LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
                continue;
            }
            goto system_retry;
        }
    }

sys_read_end:
    LEOcur_command = backup_pointer;
    LEOcur_command->header.sense = dummy_cmd.header.sense;
    return GET_ERROR(*LEOcur_command);
}
