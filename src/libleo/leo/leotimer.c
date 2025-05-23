#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

typedef struct {
    /* 0x0 */ u8 year;
    /* 0x1 */ u8 month;
    /* 0x2 */ u8 day;
    /* 0x3 */ u8 hour;
    /* 0x4 */ u8 minute;
    /* 0x5 */ u8 second;
} __LOCTime;

u8 __locReadTimer(__LOCTime* time);
u8 __locSetTimer(__LOCTime* time);

static const u8 ymdupper[6] = { 99, 12, 31, 23, 59, 59 };
static const u8 dayupper[13] = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

void leoReadTimer(void) {
    u8* rdparam;
    u8 data[4];
    u8 sense_code;
    __LOCTime time;

    sense_code = __locReadTimer(&time);
    LEOcur_command->data.time.yearlo = time.year;
    LEOcur_command->data.time.month = time.month;
    LEOcur_command->data.time.day = time.day;
    LEOcur_command->data.time.hour = time.hour;
    LEOcur_command->data.time.minute = time.minute;
    LEOcur_command->data.time.second = time.second;
    if (sense_code != 0) {
        LEOcur_command->header.sense = sense_code;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    if ((u8)LEOcur_command->data.time.yearlo >= 0x96U) {
        LEOcur_command->data.time.yearhi = 0x19;
    } else {
        LEOcur_command->data.time.yearhi = 0x20;
    }
    LEOcur_command->header.status = 0;
}

void leoSetTimer(void) {
    LEOCmdReadTimer rd_timer;
    u8* p_tmp = &LEOcur_command->data.time.yearlo;
    u32 year;
    u32 month;
    u32 temp;
    u32 ymd;
    u8 result;
    __LOCTime time;

    // Verify values (if they're correct BCD or within limits)

    for (ymd = 0; ymd < 6; ymd++) {
        temp = *p_tmp;

        // Verify right nibble (only right nibble for some reason)
        if ((temp & 0xF) > 9) {
            // nibble is above 0x9 therefore the BCD value is invalid
            LEOcur_command->header.sense = LEO_SENSE_ILLEGAL_TIMER_VALUE;
            LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
            return;
        }

        // Convert BCD value to binary value
        temp = temp - ((temp >> 4) * 6);

        switch (ymd) {
            case 2:
                // Day value check
                if (dayupper[month] < temp && (temp != 0x1D || (year & 3))) {
                    LEOcur_command->header.sense = LEO_SENSE_ILLEGAL_TIMER_VALUE;
                    LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
                    return;
                }
                FALLTHROUGH;
            case 1:
                // Month value cannot be 0
                if (temp == 0) {
                    LEOcur_command->header.sense = LEO_SENSE_ILLEGAL_TIMER_VALUE;
                    LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
                    return;
                }
                FALLTHROUGH;
            default:
                // Verify max value of each time info
                if (ymdupper[ymd] < temp) {
                    LEOcur_command->header.sense = LEO_SENSE_ILLEGAL_TIMER_VALUE;
                    LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
                    return;
                }
        }

        year = month;
        month = temp;
        p_tmp++;
    }

    // Every value has been ymd good, now set the values in hardware

    // Prepare the time info to use
    time.year = LEOcur_command->data.time.yearlo;
    time.month = LEOcur_command->data.time.month;
    time.day = LEOcur_command->data.time.day;
    time.hour = LEOcur_command->data.time.hour;
    time.minute = LEOcur_command->data.time.minute;
    time.second = LEOcur_command->data.time.second;

    // Set the new time
    result = __locSetTimer(&time);
    if (result != 0) {
        LEOcur_command->header.sense = result;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    // Get the time
    result = __locReadTimer(&time);
    if (result != 0) {
        LEOcur_command->header.sense = result;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    // Check if the time is set correctly
    if (time.year != LEOcur_command->data.time.yearlo || time.month != LEOcur_command->data.time.month ||
        time.day != LEOcur_command->data.time.day || time.hour != LEOcur_command->data.time.hour ||
        time.minute != LEOcur_command->data.time.minute || time.second != LEOcur_command->data.time.second) {
        LEOcur_command->header.sense = LEO_SENSE_ILLEGAL_TIMER_VALUE;
        LEOcur_command->header.status = LEO_STATUS_CHECK_CONDITION;
        return;
    }
    LEOcur_command->header.status = LEO_STATUS_GOOD;
}

// static
u8 __locReadTimer(__LOCTime* time) {
    u32 data;
    u8 sense_code;

    sense_code = leoSend_asic_cmd_w_nochkDiskChange(0x140000, 0U);
    if (sense_code != 0) {
        return sense_code;
    }
    osEPiReadIo(LEOPiInfo, ASIC_DATA, &data);
    time->minute = (u8)((u32)(data & 0xFF000000) >> 0x18);
    time->second = (s8)((u32)(data & 0xFF0000) >> 0x10);
    sense_code = leoSend_asic_cmd_w_nochkDiskChange(0x130000, 0U);
    if (sense_code != 0) {
        time->minute = (u8)(time->minute & 0xFF7F);
        return sense_code;
    }
    osEPiReadIo(LEOPiInfo, ASIC_DATA, &data);
    time->day = (s8)((u32)(data & 0xFF000000) >> 0x18);
    time->hour = (s8)((u32)(data & 0xFF0000) >> 0x10);
    sense_code = leoSend_asic_cmd_w_nochkDiskChange(0x120000, 0U);
    if (sense_code != 0) {
        time->minute = (u8)(time->minute & 0xFF7F);
        return sense_code;
    }
    osEPiReadIo(LEOPiInfo, ASIC_DATA, &data);
    sense_code = time->minute;
    time->year = (s8)((u32)(data & 0xFF000000) >> 0x18);
    time->month = (s8)((u32)(data & 0xFF0000) >> 0x10);
    if (sense_code & 0x80) {
        time->minute = (u8)(sense_code & 0xFF7F);
        return 5;
    }
    return 0;
}

// static
u8 __locSetTimer(__LOCTime* time) {
    u32 YearMonthX10000h;
    u32 DayHourX10000h;
    u32 MinuteSecondX10000h;
    u8 result;

    YearMonthX10000h = (time->year << 0x18) + (time->month << 0x10);
    DayHourX10000h = (time->day << 0x18) + (time->hour << 0x10);
    MinuteSecondX10000h = (time->minute << 0x18) + (time->second << 0x10);
    if ((result = leoSend_asic_cmd_w_nochkDiskChange(0xF0000, YearMonthX10000h)) != 0 ||
        (result = leoSend_asic_cmd_w_nochkDiskChange(0x100000, DayHourX10000h)) != 0 ||
        (result = leoSend_asic_cmd_w_nochkDiskChange(0x110000, MinuteSecondX10000h)) != 0) {
        return result;
    }
    return 0;
}
