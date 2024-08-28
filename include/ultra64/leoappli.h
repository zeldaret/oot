#ifndef ULTRA64_LEOAPPLI_H
#define ULTRA64_LEOAPPLI_H

#include "thread.h"
#include "message.h"

#define LEO_DISK_TYPE_MIN 0
#define LEO_DISK_TYPE_MAX 6

#define LEO_LBA_MIN 0
#define LEO_LBA_MAX 4291

#define LEO_LBA_ROM_TOP  LEO_LBA_MIN
#define LEO_LBA_ROM_END0 1417
#define LEO_LBA_ROM_END1 1965
#define LEO_LBA_ROM_END2 2513
#define LEO_LBA_ROM_END3 3061
#define LEO_LBA_ROM_END4 3609
#define LEO_LBA_ROM_END5 4087
#define LEO_LBA_ROM_END6 LEO_LBA_MAX
#define LEO_LBA_RAM_TOP0 (LEO_LBA_ROM_END0+1)
#define LEO_LBA_RAM_TOP1 (LEO_LBA_ROM_END1+1)
#define LEO_LBA_RAM_TOP2 (LEO_LBA_ROM_END2+1)
#define LEO_LBA_RAM_TOP3 (LEO_LBA_ROM_END3+1)
#define LEO_LBA_RAM_TOP4 (LEO_LBA_ROM_END4+1)
#define LEO_LBA_RAM_TOP5 (LEO_LBA_ROM_END5+1)
#define LEO_LBA_RAM_TOP6 (LEO_LBA_ROM_END6+1)
#define LEO_LBA_RAM_END6 LEO_LBA_MAX

void leoInitialize(OSPri compri, OSPri intpri, OSMesg* command_que_buf, u32 cmd_buff_size);
void leoCommand(void* cmd_blk_addr);
void LeoReset(void);
s32 LeoResetClear(void);

#define LEO_PRIORITY_WRK (OS_PRIORITY_PIMGR-1)
#define LEO_PRIORITY_INT OS_PRIORITY_PIMGR

#define LEO_COMMAND_CLEAR_QUE       0x01
#define LEO_COMMAND_INQUIRY         0x02
#define LEO_COMMAND_TEST_UNIT_READY 0x03
#define LEO_COMMAND_REZERO          0x04
#define LEO_COMMAND_READ            0x05
#define LEO_COMMAND_WRITE           0x06
#define LEO_COMMAND_SEEK            0x07
#define LEO_COMMAND_START_STOP      0x08
#define LEO_COMMAND_READ_CAPACITY   0x09
#define LEO_COMMAND_TRANSLATE       0x0A
#define LEO_COMMAND_MODE_SELECT     0x0B
#define LEO_COMMAND_READ_DISK_ID    0x0C
#define LEO_COMMAND_READ_TIMER      0x0D
#define LEO_COMMAND_SET_TIMER       0x0E
// should be
// #define LEO_COMMAND_CLEAR_RESET 0x0F

#define LEO_CONTROL_POST            0x80   // ENABLE POST QUEUE
#define LEO_CONTROL_START           0x01   // START COMMAND
#define LEO_CONTROL_STBY            0x02   // STAND-BY MODE(NOT SLEEP MODE)
#define LEO_CONTROL_WRT             0x01   // READ RE-WRITE-ABLE CAPACITY
#define LEO_CONTROL_TBL             0x01   // TRANSLATE BYTE TO LBA
#define LEO_CONTROL_BRAKE           0x04   // SLEEP MODE(BRAKE ON)

#define LEO_TEST_UNIT_MR            0x01   // MEDIUM REMOVED
#define LEO_TEST_UNIT_RE            0x02   // HEAD RETRACTED
#define LEO_TEST_UNIT_SS            0x04   // SPINDLE STOPPED

#define LEO_STATUS_GOOD             0x00
#define LEO_STATUS_CHECK_CONDITION  0x02
#define LEO_STATUS_BUSY             0x08

#define LEO_SENSE_NO_ADDITIONAL_SENSE_INFOMATION   00
#define LEO_SENSE_DRIVE_NOT_READY                  01
#define LEO_SENSE_DIAGNOSTIC_FAILURE               02
#define LEO_SENSE_COMMAND_PHASE_ERROR              03
#define LEO_SENSE_DATA_PHASE_ERROR                 04
#define LEO_SENSE_REAL_TIME_CLOCK_FAILURE          05
#define LEO_SENSE_INCOMPATIBLE_MEDIUM_INSTALLED    11
#define LEO_SENSE_UNKNOWN_FORMAT                   11
#define LEO_SENSE_NO_SEEK_COMPLETE                 21
#define LEO_SENSE_WRITE_FAULT                      22
#define LEO_SENSE_UNRECOVERED_READ_ERROR           23
#define LEO_SENSE_NO_REFERENCE_POSITION_FOUND      24
#define LEO_SENSE_TRACK_FOLLOWING_ERROR            25
#define LEO_SENSE_TRACKING_OR_SPDL_SERVO_FAILURE   25
#define LEO_SENSE_INVALID_COMMAND_OPERATION_CODE   31
#define LEO_SENSE_LBA_OUT_OF_RANGE                 32
#define LEO_SENSE_WRITE_PROTECT_ERROR              33
#define LEO_SENSE_COMMAND_TERMINATED               34
#define LEO_SENSE_QUEUE_FULL                       35
#define LEO_SENSE_ILLEGAL_TIMER_VALUE              36
#define LEO_SENSE_WAITING_NMI                      37
#define LEO_SENSE_DEVICE_COMMUNICATION_FAILURE     41
#define LEO_SENSE_MEDIUM_NOT_PRESENT               42
#define LEO_SENSE_POWERONRESET_DEVICERESET_OCCURED 43
#define LEO_SENSE_MEDIUM_MAY_HAVE_CHANGED          47
#define LEO_SENSE_EJECTED_ILLEGALLY_RESUME         49

typedef struct LEOCmdHeader {
    /* 0x0 */ u8 command;
    /* 0x1 */ u8 reserve1;
    /* 0x2 */ u8 control;
    /* 0x3 */ u8 reserve3;
    /* 0x4 */ u8 status;
    /* 0x5 */ u8 sense;
    /* 0x6 */ u8 reserve6;
    /* 0x7 */ u8 reserve7;
    /* 0x8 */ OSMesgQueue* post;
} LEOCmdHeader; // 0xC

typedef struct LEOCmdClearQueue {
    /* 0x0 */ LEOCmdHeader header;
} LEOCmdClearQueue; // 0xC

typedef struct LEOCmdInquiry {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u8 devType;
    /* 0x0D */ u8 version;
    /* 0x0E */ u8 devNum;
    /* 0x0F */ u8 leoBiosVer;
    /* 0x10 */ u32 reserve5;
} LEOCmdInquiry; // size = 0x14

typedef struct LEOCmdTestUnitReady {
    /* 0x0 */ LEOCmdHeader header;
    /* 0xC */ u8 test;
    /* 0xD */ u8 reserve2;
    /* 0xE */ u8 reserve3;
    /* 0xF */ u8 reserve4;
} LEOCmdTestUnitReady; // size = 0x10

typedef struct LEOCmdRezero {
    /* 0x0 */ LEOCmdHeader header;
} LEOCmdRezero; // size = 0xC

typedef struct LEOCmdRead {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u32 lba;
    /* 0x10 */ u32 transferBlks;
    /* 0x14 */ void* buffPtr;
    /* 0x18 */ u32 rwBytes;
} LEOCmdRead; // size = 0x1C

typedef LEOCmdRead LEOCmdWrite;

typedef struct LEOCmdSeek {
    /* 0x0 */ LEOCmdHeader header;
    /* 0xC */ u32 lba;
} LEOCmdSeek; // size = 0x10

typedef struct LEOCmdStartStop {
    /* 0x0 */ LEOCmdHeader header;
} LEOCmdStartStop; // size = 0xC

typedef struct LEOCmdReadCapacity {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u32 startLba;
    /* 0x10 */ u32 endLba;
    /* 0x14 */ u32 capaBytes;
} LEOCmdReadCapacity; // size = 0x18

typedef struct LEOCmdTranslate {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u32 startLba;
    /* 0x10 */ u32 inParam;
    /* 0x14 */ u32 outParam;
} LEOCmdTranslate; // size = 0x18

typedef struct LEOCmdModeSelect {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u8 pageCode;
    /* 0x0D */ u8 reserve1;
    /* 0x0E */ u8 standbyTime;
    /* 0x0F */ u8 sleepTime;
    /* 0x10 */ u8 ledOnTime;
    /* 0x11 */ u8 ledOffTime;
    /* 0x12 */ u8 reserve18;
    /* 0x13 */ u8 reserve19;
} LEOCmdModeSelect; // size = 0x14

typedef struct LEOCmdReadDiskId {
    /* 0x0 */ LEOCmdHeader header;
    /* 0xC */ void* bufferPointer;
} LEOCmdReadDiskId; // size = 0x10

typedef struct LEOCmdReadTimer {
    /* 0x00 */ LEOCmdHeader header;
    /* 0x0C */ u8 reserve12;
    /* 0x0D */ u8 reserve13;
    /* 0x0E */ u8 year;
    /* 0x0F */ u8 month;
    /* 0x10 */ u8 day;
    /* 0x11 */ u8 hour;
    /* 0x12 */ u8 minute;
    /* 0x13 */ u8 second;
} LEOCmdReadTimer; // size = 0x14

typedef LEOCmdReadTimer LEOCmdSetTimer;

#endif
