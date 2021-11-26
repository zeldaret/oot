#include "global.h"

typedef struct {
    u32 ins_00; // lui     k0, 0x8000
    u32 ins_04; // addiu   k0, k0, 0x39E0
    u32 ins_08; // jr      k0 ; __osException
    u32 ins_0C; // nop
} struct_exceptionPreamble;

u64 osClockRate = OS_CLOCK_RATE;
s32 osViClock = VI_NTSC_CLOCK;
u32 __osShutdown = 0;
u32 __OSGlobalIntMask = 0x003FFF01;

u32 D_800145C0;

void __createSpeedParam(void) {
    __Dom1SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom1SpeedParam.latency = HW_REG(PI_BSD_DOM1_LAT_REG, u32);
    __Dom1SpeedParam.pulse = HW_REG(PI_BSD_DOM1_PWD_REG, u32);
    __Dom1SpeedParam.pageSize = HW_REG(PI_BSD_DOM1_PGS_REG, u32);
    __Dom1SpeedParam.relDuration = HW_REG(PI_BSD_DOM1_RLS_REG, u32);

    __Dom2SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom2SpeedParam.latency = HW_REG(PI_BSD_DOM2_LAT_REG, u32);
    __Dom2SpeedParam.pulse = HW_REG(PI_BSD_DOM2_PWD_REG, u32);
    __Dom2SpeedParam.pageSize = HW_REG(PI_BSD_DOM2_PGS_REG, u32);
    __Dom2SpeedParam.relDuration = HW_REG(PI_BSD_DOM2_RLS_REG, u32);
}

void __osInitialize_common(void) {
    u32 sp2C;

    D_800145C0 = 1;
    __osSetSR(__osGetSR() | 0x20000000);
    __osSetFpcCsr(0x1000800);
    __osSetWatchLo(0x4900000);

    while (__osSiRawReadIo((void*)0x1fc007fc, &sp2C)) {
        ;
    }

    while (__osSiRawWriteIo((void*)0x1fc007fc, sp2C | 8)) {
        ;
    }

    *(struct_exceptionPreamble*)0x80000000 = *(struct_exceptionPreamble*)__osExceptionPreamble; // TLB miss
    *(struct_exceptionPreamble*)0x80000080 = *(struct_exceptionPreamble*)__osExceptionPreamble; // XTLB miss
    *(struct_exceptionPreamble*)0x80000100 = *(struct_exceptionPreamble*)__osExceptionPreamble; // cache errors
    *(struct_exceptionPreamble*)0x80000180 = *(struct_exceptionPreamble*)__osExceptionPreamble; // general exceptions

    osWritebackDCache(0x80000000, 0x190);
    osInvalICache(0x80000000, 0x190);
    __createSpeedParam();
    osUnmapTLBAll();
    osMapTLBRdb();

    osClockRate = (u64)((osClockRate * 3ll) / 4ull);

    if (!osResetType) {
        bzero(osAppNmiBuffer, 0x40);
    }

    if (osTvType == OS_TV_PAL) {
        osViClock = VI_PAL_CLOCK;
    } else if (osTvType == OS_TV_MPAL) {
        osViClock = VI_MPAL_CLOCK;
    } else {
        osViClock = VI_NTSC_CLOCK;
    }

    if (__osGetCause() & 0x1000) {
        while (true) {
            ;
        }
    }

    HW_REG(AI_CONTROL_REG, u32) = 1;
    HW_REG(AI_DACRATE_REG, u32) = 0x3FFF;
    HW_REG(AI_BITRATE_REG, u32) = 0xF;
}

void __osInitialize_autodetect(void) {
}
