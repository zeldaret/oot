#ifndef ULTRA64_LEO_H
#define ULTRA64_LEO_H

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "pi.h"
#include "leoappli.h"

#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

typedef u32 LEOError;

typedef u8 LEOSpdlMode;

typedef u8 LEOStatus;

typedef struct LEOVersion {
    /* 0x0 */ u8 driver;     // version of sw
    /* 0x1 */ u8 drive;      // version of hw
    /* 0x2 */ u8 deviceType; // dev type, always 00
    /* 0x3 */ u8 nDevices;   // # of devices, always 01
} LEOVersion; // size = 0x4

typedef struct LEOCapacity {
    /* 0x0 */ u32 startLBA;
    /* 0x4 */ u32 endLBA;
    /* 0x8 */ u32 nbytes;
} LEOCapacity; // size = 0xC

typedef struct LEODiskTime {
    /* 0x0 */ u8 pad;
    /* 0x1 */ u8 yearhi;
    /* 0x2 */ u8 yearlo;
    /* 0x3 */ u8 month;
    /* 0x4 */ u8 day;
    /* 0x5 */ u8 hour;
    /* 0x6 */ u8 minute;
    /* 0x7 */ u8 second;
} LEODiskTime; // size = 0x8

typedef struct LEOSerialNum {
    /* 0x0 */ u64 lineNumber;
    /* 0x8 */ LEODiskTime time;
} LEOSerialNum; // size = 0x10

typedef struct LEODiskID {
    /* 0x0 */ u8 gameName[4];
    /* 0x4 */ u8 gameVersion;
    /* 0x5 */ u8 diskNumber;
    /* 0x6 */ u8 ramUsage;
    /* 0x7 */ u8 diskUsage;
    /* 0x8 */ LEOSerialNum serialNumber;
    /* 0x18 */ u8 company[2];
    /* 0x1A */ u8 freeArea[6];
} LEODiskID; // size = 0x20

// Not attempting to number this struct until required since it's scary
typedef struct LEOCmd {
    /* 0x00 */ LEOCmdHeader header;
    union {
        struct {
            /* 0x0C */ u32 lba;
            /* 0x10 */ u32 transferBlks;
            /* 0x14 */ void* buffPtr;
            /* 0x18 */ u32 rwBytes;
#ifdef _LONGCMD
            /* 0x1C */ u32 size;
#endif
        } readWrite;
        struct {
            /* 0x0C */ u32 lba;
        } seek;
        struct {
            /* 0x0C */ void* bufferPointer;
        } readdiskid;
        /* 0x0C */ LEODiskTime time;
        struct {
            /* 0x0C */ u8 reserve1;
            /* 0x0D */ u8 reserve2;
            /* 0x0E */ u8 standbyTime;
            /* 0x0F */ u8 sleepTime;
            /* 0x10 */ u32 reserve3;
        } modeSelect;
    } data;
} LEOCmd; // size = 0x1C


#define _nbytes readwrite.rwBytes
#define _result header.status

#endif // defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)


#define LEO_SW_VERSION 6 // This will be returned by LeoInquiry command

#define OS_PRIORITY_LEOMGR OS_PRIORITY_PIMGR

#define DDROM_FONT_START     0x000A0000
#define DDROM_WAVEDATA_START 0x00140000

/*
 * Definition for osLeoSpdlMotor()
 */
#define ACTIVE  0
#define STANDBY 1
#define SLEEP   2
#define BRAKE   4

#define LEO_MOTOR_ACTIVE  0
#define LEO_MOTOR_STANDBY 1
#define LEO_MOTOR_SLEEP   2
#define LEO_MOTOR_BRAKE   4

#define NUM_LBAS 4292

#define BLK_SIZE_ZONE0 19720
#define BLK_SIZE_ZONE1 18360
#define BLK_SIZE_ZONE2 17680
#define BLK_SIZE_ZONE3 16320
#define BLK_SIZE_ZONE4 14960
#define BLK_SIZE_ZONE5 13600
#define BLK_SIZE_ZONE6 12240
#define BLK_SIZE_ZONE7 10880
#define BLK_SIZE_ZONE8  9520

#define MAX_BLK_SIZE BLK_SIZE_ZONE0
#define MIN_BLK_SIZE BLK_SIZE_ZONE8

#define LEO_ERROR_GOOD                              0
#define LEO_ERROR_DRIVE_NOT_READY                   1
#define LEO_ERROR_DIAGNOSTIC_FAILURE                2
#define LEO_ERROR_COMMAND_PHASE_ERROR               3
#define LEO_ERROR_DATA_PHASE_ERROR                  4
#define LEO_ERROR_REAL_TIME_CLOCK_FAILURE           5
#define LEO_ERROR_BUSY                              8
#define LEO_ERROR_INCOMPATIBLE_MEDIUM_INSTALLED    11
#define LEO_ERROR_UNKNOWN_FORMAT                   11
#define LEO_ERROR_NO_SEEK_COMPLETE                 21
#define LEO_ERROR_WRITE_FAULT                      22
#define LEO_ERROR_UNRECOVERED_READ_ERROR           23
#define LEO_ERROR_NO_REFERENCE_POSITION_FOUND      24
#define LEO_ERROR_TRACK_FOLLOWING_ERROR            25
#define LEO_ERROR_TRACKING_OR_SPDL_SERVO_FAILURE   25
#define LEO_ERROR_INVALID_COMMAND_OPERATION_CODE   31
#define LEO_ERROR_LBA_OUT_OF_RANGE                 32
#define LEO_ERROR_WRITE_PROTECT_ERROR              33
#define LEO_ERROR_COMMAND_CLEARED_BY_HOST          34
#define LEO_ERROR_COMMAND_TERMINATED               34
#define LEO_ERROR_QUEUE_FULL                       35
#define LEO_ERROR_ILLEGAL_TIMER_VALUE              36
#define LEO_ERROR_WAITING_NMI                      37
#define LEO_ERROR_DEVICE_COMMUNICATION_FAILURE     41
#define LEO_ERROR_MEDIUM_NOT_PRESENT               42
#define LEO_ERROR_POWERONRESET_DEVICERESET_OCCURED 43
#define LEO_ERROR_RAMPACK_NOT_CONNECTED            44
#define LEO_ERROR_MEDIUM_MAY_HAVE_CHANGED          47
#define LEO_ERROR_EJECTED_ILLEGALLY_RESUME         49

#define LEO_ERROR_NOT_BOOTED_DISK                  45
#define LEO_ERROR_DIDNOT_CHANGED_DISK_AS_EXPECTED  46

#define LEO_ERROR_RTC_NOT_SET_CORRECTLY            48
#define LEO_ERROR_DIAGNOSTIC_FAILURE_RESET         50
#define LEO_ERROR_EJECTED_ILLEGALLY_RESET          51

#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

#define GET_ERROR(x) ((x).header.sense)

extern LEODiskID leoBootID;
extern OSPiHandle* __osDiskHandle; // For exceptasm to get disk info

// Initialize routine
s32 LeoCreateLeoManager(OSPri comPri, OSPri intPri, OSMesg* cmdBuf, s32 cmdMsgCnt);
s32 LeoCJCreateLeoManager(OSPri comPri, OSPri intPri, OSMesg* cmdBuf, s32 cmdMsgCnt);
s32 LeoCACreateLeoManager(OSPri comPri, OSPri intPri, OSMesg* cmdBuf, s32 cmdMsgCnt);
u32 LeoDriveExist(void);

// Synchronous functions
s32 LeoClearQueue(void);
s32 LeoByteToLBA(s32 startlba, u32 nbytes, s32* lba);
s32 LeoLBAToByte(s32 startlba, u32 nlbas, s32* bytes);
s32 LeoReadCapacity(LEOCapacity* cap, s32 dir);
s32 LeoInquiry(LEOVersion* ver);
s32 LeoTestUnitReady(LEOStatus* status);

// Asynchronous functions
s32 LeoSpdlMotor(LEOCmd* cmdBlock, LEOSpdlMode mode, OSMesgQueue* mq);
s32 LeoSeek(LEOCmd* cmdBlock, u32 lba, OSMesgQueue* mq);
s32 LeoRezero(LEOCmd* cmdBlock, OSMesgQueue* mq);
s32 LeoReadWrite(LEOCmd* cmdBlock, s32 direction, u32 LBA, void* vAddr, u32 nLBAs, OSMesgQueue* mq);
s32 LeoReadDiskID(LEOCmd* cmdBlock, LEODiskID* vaddr, OSMesgQueue* mq);
s32 LeoSetRTC(LEOCmd* cmdBlock, LEODiskTime* RTCdata, OSMesgQueue* mq);
s32 LeoReadRTC(LEOCmd* cmdBlock, OSMesgQueue* mq);
s32 LeoModeSelectAsync(LEOCmd* cmdBlock, u32 standby, u32 sleep, OSMesgQueue* mq);

// Font routines
int LeoGetKAdr(int sjis);
int LeoGetAAdr(int code, int* dx, int* dy, int* cy);
int LeoGetAAdr2(u32 ccode, int* dx, int* dy, int* cy);

// Boot function
void LeoBootGame(void* entry);

#endif  // defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif

