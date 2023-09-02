#include "global.h"

typedef struct {
    u32 inst1; // lui     $k0, %hi(__osException)
    u32 inst2; // addiu   $k0, $k0, %lo(__osException)
    u32 inst3; // jr      $k0
    u32 inst4; //  nop
} __osExceptionVector;

extern __osExceptionVector __osExceptionPreamble;

u64 osClockRate = OS_CLOCK_RATE;
s32 osViClock = VI_NTSC_CLOCK;
u32 __osShutdown = false;
OSHWIntr __OSGlobalIntMask = OS_IM_ALL;

u32 __osFinalrom;

void __createSpeedParam(void) {
    __Dom1SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom1SpeedParam.latency = IO_READ(PI_BSD_DOM1_LAT_REG);
    __Dom1SpeedParam.pulse = IO_READ(PI_BSD_DOM1_PWD_REG);
    __Dom1SpeedParam.pageSize = IO_READ(PI_BSD_DOM1_PGS_REG);
    __Dom1SpeedParam.relDuration = IO_READ(PI_BSD_DOM1_RLS_REG);

    __Dom2SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom2SpeedParam.latency = IO_READ(PI_BSD_DOM2_LAT_REG);
    __Dom2SpeedParam.pulse = IO_READ(PI_BSD_DOM2_PWD_REG);
    __Dom2SpeedParam.pageSize = IO_READ(PI_BSD_DOM2_PGS_REG);
    __Dom2SpeedParam.relDuration = IO_READ(PI_BSD_DOM2_RLS_REG);
}

void __osInitialize_common(void) {
    u32 pifdata;

    __osFinalrom = true;
    __osSetSR(__osGetSR() | SR_CU1);
    __osSetFpcCsr(FPCSR_FS | FPCSR_EV);
    __osSetWatchLo(0x04900000);

    while (__osSiRawReadIo((void*)(PIF_RAM_END - 3), &pifdata)) {
        ;
    }
    while (__osSiRawWriteIo((void*)(PIF_RAM_END - 3), pifdata | 8)) {
        ;
    }

    *(__osExceptionVector*)UT_VEC = __osExceptionPreamble;  // TLB miss
    *(__osExceptionVector*)XUT_VEC = __osExceptionPreamble; // XTLB miss
    *(__osExceptionVector*)ECC_VEC = __osExceptionPreamble; // cache errors
    *(__osExceptionVector*)E_VEC = __osExceptionPreamble;   // general exceptions

    osWritebackDCache((void*)K0BASE, E_VEC - K0BASE + sizeof(__osExceptionVector));
    osInvalICache((void*)K0BASE, E_VEC - K0BASE + sizeof(__osExceptionVector));
    __createSpeedParam();
    osUnmapTLBAll();
    osMapTLBRdb();

    osClockRate = osClockRate * 3 / 4;

    if (!osResetType) {
        bzero(osAppNMIBuffer, sizeof(osAppNMIBuffer));
    }

    if (osTvType == OS_TV_PAL) {
        osViClock = VI_PAL_CLOCK;
    } else if (osTvType == OS_TV_MPAL) {
        osViClock = VI_MPAL_CLOCK;
    } else {
        osViClock = VI_NTSC_CLOCK;
    }

    // If PreNMI is pending, loop until reset
    if (__osGetCause() & CAUSE_IP5) {
        while (true) {
            ;
        }
    }

    IO_WRITE(AI_CONTROL_REG, AI_CONTROL_DMA_ON);
    IO_WRITE(AI_DACRATE_REG, AI_MAX_DAC_RATE - 1);
    IO_WRITE(AI_BITRATE_REG, AI_MAX_BIT_RATE - 1);
}

void __osInitialize_autodetect(void) {
}
