#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

extern s32 currentCommand;

static u32 asic_cur_status;
static u32 unit_atten;

u8 leoAnalize_asic_status(void) {
    u32 curr_stat;

    osEPiReadIo(LEOPiInfo, ASIC_STATUS, &asic_cur_status);
    curr_stat = asic_cur_status ^ 0x1000000;

    // 0xFE3C0000?
    if (curr_stat & 0x1C3FFFF) {
        // 0xFE3E0000?
        if (curr_stat & 0x1C1FFFF) {
            LEOdrive_flag = 0;
        }
        if (curr_stat & 0xFFFF) {
            return 41;
        }
        if ((curr_stat & 0xC00000) == 0x800000) {
            return 3;
        }
        if (curr_stat & 0x400000) {
            unit_atten |= 2;
            return 43;
        }
        if (curr_stat & 0x1000000) {
            return 49;
        }
        if (curr_stat & 0x10000) {
            unit_atten |= 1;
            return 47;
        }
        if (curr_stat & 0x20000) {
            return 21;
        }
    }
    return 0;
}

u8 leoChk_asic_ready(u32 asic_cmd) {
    u32 sense_code = leoAnalize_asic_status();

    switch (sense_code) {
        case 47:
            if (asic_cmd == 0x80000) {
                return 0;
            }
            FALLTHROUGH;
        case 43:
            if (!(asic_cur_status & 0x800000)) {
                if (asic_cmd == 0x90000) {
                    return 0;
                }
                if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                    return 37;
                }
                osEPiWriteIo(LEOPiInfo, ASIC_CMD, 0x90000);
                if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                    return 37;
                }
            }
            FALLTHROUGH;
        default:
            break;

        case 49:
            if (asic_cmd & 1) {
                break;
            }
            FALLTHROUGH;
        case 21:
            return 0;
    }
    return sense_code;
}

// Which of LEO_ERROR or LEO_SENSE should be used where?
u8 leoChk_done_status(u32 asic_cmd) {
    u32 asic_data;
    u32 code = leoAnalize_asic_status();

    switch (code) {
        case 43:
        case 47:
            if (!(asic_cur_status & 0x800000)) {
                if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                    return 37;
                }

                osEPiWriteIo(LEOPiInfo, ASIC_CMD, 0x90000);
                if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                    return 37;
                }
            }
            break;

        case 49:
            if (asic_cmd & 1) {
                break;
            }
            return 0;

        case 21:
            osEPiWriteIo(LEOPiInfo, ASIC_DATA, 0);
            if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                return 37;
            }

            osEPiWriteIo(LEOPiInfo, ASIC_CMD, 0xC0000);
            if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                return 37;
            }

            osEPiReadIo(LEOPiInfo, ASIC_DATA, &asic_data);
            code = leoChk_asic_ready(0xC0000);
            if (code != 0) {
                return code;
            }

            if (asic_data & 0x10000) {
                return 2;
            }
            if (asic_data & 0x20000) {
                return 24;
            }
            if (asic_data & 0x40000) {
                return 1;
            }
            if (asic_data & 0x80000) {
                return 21;
            }
            if (asic_data & 0x200000) {
                return 11;
            }
            return 41;

        default:
            break;
    }

    return code;
}

u8 leoSend_asic_cmd_i(u32 asic_cmd, u32 asic_data) {
    u8 status = leoChk_asic_ready(asic_cmd);

    if (status != 0) {
        return LEOcur_command->header.sense = status;
    }

    osEPiWriteIo(LEOPiInfo, ASIC_DATA, asic_data);
    if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
        return LEOcur_command->header.sense = 37;
    }

    osEPiWriteIo(LEOPiInfo, ASIC_CMD, asic_cmd);
    return 0;
}

// Is this using the sense defines?
u8 leoWait_mecha_cmd_done(u32 asic_cmd) {
    u32 done_stat;

    if (leoRecv_event_mesg(OS_MESG_BLOCK)) {
        return 37;
    }

    done_stat = leoChk_done_status(asic_cmd);
    if (done_stat != 0) {
        return done_stat;
    }

    return 0;
}

u8 leoSend_asic_cmd_w(u32 asic_cmd, u32 asic_data) {
    u32 wstatus = leoSend_asic_cmd_i(asic_cmd, asic_data);

    if (wstatus != 0) {
        return wstatus;
    }

    return leoWait_mecha_cmd_done(asic_cmd);
}

u8 leoSend_asic_cmd_w_nochkDiskChange(u32 asic_cmd, u32 asic_data) {
    u8 status;
    u32 done_stat;

    status = leoChk_asic_ready(asic_cmd);
    if ((status != 0x2F) && (status != 0)) {
        return LEOcur_command->header.sense = status;
    }

    osEPiWriteIo(LEOPiInfo, ASIC_DATA, asic_data);
    if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
        return LEOcur_command->header.sense = 0x25;
    }

    osEPiWriteIo(LEOPiInfo, ASIC_CMD, asic_cmd);
    if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
        return 0x25;
    }

    done_stat = leoChk_done_status(asic_cmd);
    if ((done_stat != 0x2F) && (done_stat != 0)) {
        return done_stat;
    }

    return 0;
}

u8 leoDetect_index_w(void) {
    return leoSend_asic_cmd_w(0xE0001, 0);
}

u8 leoRecal_i(void) {
    return leoSend_asic_cmd_i(0x30001, 0);
}

u8 leoRecal_w(void) {
    return leoSend_asic_cmd_w(0x30001, 0);
}

u8 leoSeek_i(u16 rwmode) {
    u32 tgt_tk = ((LEOtgt_param.head << 0xC) + LEOtgt_param.cylinder) << 0x10;

    if (rwmode == 0) {
        return leoSend_asic_cmd_i(0x10001, tgt_tk);
    } else {
        return leoSend_asic_cmd_i(0x20001, tgt_tk);
    }
}

u8 leoSeek_w(void) {
    u8 sksense = leoSeek_i(0);

    if (sksense != 0) {
        return sksense;
    }

    return leoWait_mecha_cmd_done(0x10001);
}

u8 leoRecv_event_mesg(s32 control) {
    u32 done_mesg;

    if (osRecvMesg(&LEOevent_que, (OSMesg*)&done_mesg, control) == 0) {
        if (done_mesg == 0xA0000) {
            leoDrive_reset();
            return -1;
        }
    }

    return 0;
}

u32 leoChk_err_retry(u32 sense) {
    if ((currentCommand == LEO_COMMAND_READ_DISK_ID) || (currentCommand == LEO_COMMAND_START_STOP)) {
        switch (sense) {
            case LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED:
                unit_atten |= 2;
                FALLTHROUGH;
            case LEO_SENSE_DIAGNOSTIC_FAILURE:
            case LEO_SENSE_COMMAND_PHASE_ERROR:
            case LEO_SENSE_WAITING_NMI:
            case LEO_SENSE_DEVICE_COMMUNICATION_FAILURE:
            case LEO_SENSE_MEDIUM_NOT_PRESENT:
            case LEO_SENSE_EJECTED_ILLEGALLY_RESUME:
                LEOdrive_flag = 0;
                return -1;
        }
    } else {
        switch (sense) {
            case LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED:
                unit_atten |= 2;
                FALLTHROUGH;
            case LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED:
                unit_atten |= 1;
                FALLTHROUGH;
            case LEO_SENSE_DIAGNOSTIC_FAILURE:
            case LEO_SENSE_COMMAND_PHASE_ERROR:
            case LEO_SENSE_WAITING_NMI:
            case LEO_SENSE_DEVICE_COMMUNICATION_FAILURE:
            case LEO_SENSE_MEDIUM_NOT_PRESENT:
            case LEO_SENSE_EJECTED_ILLEGALLY_RESUME:
                LEOdrive_flag = 0;
                return -1;
        }
    }

    return 0;
}

u8 leoChk_cur_drvmode(void) {
    u8 devstat = 0;

    if (!(asic_cur_status & 0x1000000)) {
        devstat |= 1;
    }
    if (asic_cur_status & 0x80000) {
        devstat |= 2;
    }
    if (asic_cur_status & 0x100000) {
        devstat |= 4;
    }
    return devstat;
}

void leoDrive_reset() {
    osEPiWriteIo(LEOPiInfo, ASIC_HARD_RESET, 0xAAAA0000);
}

u32 leoChkUnit_atten(void) {
    return unit_atten;
}

u32 leoRetUnit_atten(void) {
    if (unit_atten & 2) {
        return 43;
    }
    if (unit_atten & 1) {
        return 47;
    }
    return 0;
}

void leoClrUA_RESET(void) {
    unit_atten &= ~2;
}

void leoClrUA_MEDIUM_CHANGED(void) {
    unit_atten &= ~1;
}

void leoSetUA_MEDIUM_CHANGED(void) {
    unit_atten |= 1;
}

void leoInitUnit_atten(void) {
    unit_atten = 1;
}
