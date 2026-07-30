#include "ultra64.h"
#include "ultra64/leo_internal.h"

s32 LeoCJCreateLeoManager(s32 comPri, s32 intPri, void** cmdBuf, s32 cmdMsgCnt) {
    OSPiHandle* driveRomHandle;
    OSPiHandle* leoDiskHandle;
    volatile LEOCmdInquiry cmdBlockInq;
    volatile LEOCmd cmdBlockID;
    LEODiskID thisID;
    u32 stat;
    u32 data;

    if (__leoActive != 0) {
        return 0;
    }
    if (LeoDriveExist() == 0) {
        return 0x29;
    }
    osLeoDiskInit();
    driveRomHandle = osDriveRomInit();
    __leoActive = 1;
    __osSetHWIntrRoutine(OS_INTR_CART, __osLeoInterrupt, STACK_TOP(leoDiskStack) - 0x10);
    leoInitialize(comPri, intPri, cmdBuf, (u32)cmdMsgCnt);
    if (osResetType == 1) {
        __leoSetReset();
    }
    cmdBlockInq.header.command = LEO_COMMAND_INQUIRY;
    cmdBlockInq.header.reserve1 = 0;
    cmdBlockInq.header.control = 0;
    cmdBlockInq.header.reserve3 = 0;
    leoCommand((void*)&cmdBlockInq);
    {
        vs32 dummy = (u32)&cmdBlockInq & 0xFFFFFF;

        while (dummy > 0) {
            dummy -= ((s32)__leoSetReset & 0xFFFFFF) | 0x403DF4;
        }
    }
    while (cmdBlockInq.header.status == LEO_STATUS_BUSY) {}
    if (cmdBlockInq.header.status != 0) {
        return (s32)cmdBlockInq.header.sense;
    }
    __leoVersion.drive = cmdBlockInq.version;
    __leoVersion.driver = 6;
    __leoVersion.deviceType = cmdBlockInq.dev_type;
    __leoVersion.ndevices = cmdBlockInq.dev_num;
    if ((__leoVersion.drive & 0xF) == 4) {
        LEO_country_code = 0;
    } else if (((__leoVersion.drive & 0xF) == 3) || ((__leoVersion.drive & 0xF) == 1)) {
        vu32 dummy;

        osEPiReadIo(driveRomHandle, 0x9FF00, &data);
        data = ((u32)(data & 0xFF000000) >> 24);
        dummy = 0x3ED98F23;
        if (data != 0xC3) {
            while (true) {}
        }
        dummy *= data;
        dummy -= (u32)&cmdBlockInq;
        LEO_country_code = 0xE848D316;
    } else {
        while (true) {}
    }
    return 0;
}
