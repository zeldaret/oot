#include "ultra64.h"
#include "ultra64/leo_internal.h"
#include "attributes.h"

u8 leoRecv_event_mesg(s32 control);

u32 asic_cur_status;
u32 unit_atten;

u8 leoAnalize_asic_status(void) {
    u32 curr_stat;

    osEPiReadIo(LEOPiInfo, 0x05000508, &asic_cur_status);
    curr_stat = asic_cur_status ^ 0x01000000;
    if (curr_stat & 0x01C3FFFF) {
        if (curr_stat & 0x01C1FFFF) {
            LEOdrive_flag = 0;
        }
        if (curr_stat & 0xFFFF) {
            return LEO_SENSE_DEVICE_COMMUNICATION_FAILURE;
        }
        if ((curr_stat & 0xC00000) == 0x800000) {
            return LEO_SENSE_COMMAND_PHASE_ERROR;
        }
        if (curr_stat & 0x400000) {
            unit_atten |= 2;
            return LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED;
        }
        if (curr_stat & 0x01000000) {
            return LEO_SENSE_EJECTED_ILLEGALLY_RESUME;
        }
        if (curr_stat & 0x10000) {
            unit_atten |= 1;
            return LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED;
        }
        if (curr_stat & 0x20000) {
            return LEO_SENSE_NO_SEEK_COMPLETE;
        }
    }
    return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
}

u8 leoChk_asic_ready(u32 asic_cmd) {
    u32 sense_code;

    sense_code = leoAnalize_asic_status();
    switch (sense_code) {
        case LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED:
            if (asic_cmd == 0x80000) {
                return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
            }
            FALLTHROUGH;
        case LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED:
            if (!(asic_cur_status & 0x800000)) {
                if (asic_cmd == 0x90000) {
                    return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
                }
                if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                    return LEO_SENSE_WAITING_NMI;
                }
                osEPiWriteIo(LEOPiInfo, 0x05000508, 0x90000);
                if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                    return LEO_SENSE_WAITING_NMI;
                }
            }
            break;
        case LEO_SENSE_EJECTED_ILLEGALLY_RESUME:
            if (asic_cmd & 1) {
                break;
            }
            FALLTHROUGH;
        case LEO_SENSE_NO_SEEK_COMPLETE:
            return 0;
        default:
            break;
    }
    return sense_code;
}

u8 leoChk_done_status(u32 asic_cmd) {
    u32 asic_data;
    u32 code;

    code = leoAnalize_asic_status();
    switch (code) {
        case LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED:
        case LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED:
            if (!(asic_cur_status & 0x800000)) {
                if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                    return LEO_SENSE_WAITING_NMI;
                }
                osEPiWriteIo(LEOPiInfo, 0x05000508, 0x90000);
                if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                    return LEO_SENSE_WAITING_NMI;
                }
            }
            break;
        default:
            break;
        case LEO_SENSE_EJECTED_ILLEGALLY_RESUME:
            if (!(asic_cmd & 1)) {
                return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
            }
            break;
        case LEO_SENSE_NO_SEEK_COMPLETE:
            osEPiWriteIo(LEOPiInfo, 0x05000500, 0);
            if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
                return LEO_SENSE_WAITING_NMI;
            }
            osEPiWriteIo(LEOPiInfo, 0x05000508, 0xC0000);
            if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
                return LEO_SENSE_WAITING_NMI;
            }
            osEPiReadIo(LEOPiInfo, 0x05000500, &asic_data);
            code = leoChk_asic_ready(0xC0000);
            if (code != 0) {
                return code;
            }
            if (asic_data & 0x10000) {
                return LEO_SENSE_DIAGNOSTIC_FAILURE;
            }
            if (asic_data & 0x20000) {
                return LEO_SENSE_NO_REFERENCE_POSITION_FOUND;
            }
            if (asic_data & 0x40000) {
                return LEO_SENSE_DRIVE_NOT_READY;
            }
            if (asic_data & 0x80000) {
                return LEO_SENSE_NO_SEEK_COMPLETE;
            }
            if (asic_data & 0x200000) {
                return 11;
            }
            return LEO_SENSE_DEVICE_COMMUNICATION_FAILURE;
    }
    return code;
}

u8 leoSend_asic_cmd_i(u32 asic_cmd, u32 asic_data) {
    u8 status;

    status = leoChk_asic_ready(asic_cmd);
    if (status != 0) {
        LEOcur_command->header.sense = status;
        return LEOcur_command->header.sense;
    }
    osEPiWriteIo(LEOPiInfo, 0x05000500, asic_data);
    if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
        LEOcur_command->header.sense = LEO_SENSE_WAITING_NMI;
        return LEOcur_command->header.sense;
    }
    osEPiWriteIo(LEOPiInfo, 0x05000508, asic_cmd);
    return 0;
}

u8 leoWait_mecha_cmd_done(u32 asic_cmd) {
    u32 done_stat;

    if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
        return LEO_SENSE_WAITING_NMI;
    }
    done_stat = leoChk_done_status(asic_cmd);
    if (done_stat != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION) {
        return done_stat;
    }
    return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
}

u8 leoSend_asic_cmd_w(u32 asic_cmd, u32 asic_data) {
    u32 wstatus;

    wstatus = leoSend_asic_cmd_i(asic_cmd, asic_data);
    if (wstatus != 0) {
        return wstatus;
    }
    return leoWait_mecha_cmd_done(asic_cmd);
}

u8 leoSend_asic_cmd_w_nochkDiskChange(u32 asic_cmd, u32 asic_data) {
    u8 status;
    u32 done_stat;

    status = leoChk_asic_ready(asic_cmd);
    if ((status != LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED) && (status != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION)) {
        LEOcur_command->header.sense = status;
        return LEOcur_command->header.sense;
    }
    osEPiWriteIo(LEOPiInfo, 0x05000500, asic_data);
    if (leoRecv_event_mesg(OS_MESG_NOBLOCK) != 0) {
        LEOcur_command->header.sense = LEO_SENSE_WAITING_NMI;
        return LEOcur_command->header.sense;
    }
    osEPiWriteIo(LEOPiInfo, 0x05000508, asic_cmd);
    if (leoRecv_event_mesg(OS_MESG_BLOCK) != 0) {
        return LEO_SENSE_WAITING_NMI;
    }
    done_stat = leoChk_done_status(asic_cmd);
    if ((done_stat != LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED) && (done_stat != LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION)) {
        return done_stat;
    }
    return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
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
    s32 tgt_tk;

    tgt_tk = ((LEOtgt_param.head << 12) + LEOtgt_param.cylinder) << 16;
    if (!rwmode) {
        return leoSend_asic_cmd_i(0x10001, tgt_tk);
    }
    return leoSend_asic_cmd_i(0x20001, tgt_tk);
}

u8 leoSeek_w(void) {
    u8 sksense;

    sksense = leoSeek_i(0);
    if (sksense != 0) {
        return sksense;
    }
    return leoWait_mecha_cmd_done(0x10001);
}

u8 leoRecv_event_mesg(s32 control) {
    OSMesg done_mesg;

    if ((osRecvMesg(&LEOevent_que, &done_mesg, control) == 0) && (done_mesg == (OSMesg)0xA0000)) {
        leoDrive_reset();
        return 0xFF;
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
                return -1U;
            default:
                break;
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
                return -1U;
            default:
                break;
        }
    }
    return 0;
}

u8 leoChk_cur_drvmode(void) {
    u8 devstat;

    devstat = 0;
    if (!(asic_cur_status & 0x01000000)) {
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

void leoDrive_reset(void) {
    osEPiWriteIo(LEOPiInfo, 0x05000520, 0xAAAA0000);
}

u32 leoChkUnit_atten(void) {
    return (u32)unit_atten;
}

u32 leoRetUnit_atten(void) {
    if (unit_atten & 2) {
        return LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED;
    }
    if (unit_atten & 1) {
        return LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED;
    }
    return LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION;
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
