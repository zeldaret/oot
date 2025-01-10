#include "global.h"
#include "ultra64/bcp.h"

typedef struct __osExceptionVector {
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

#if LIBULTRA_VERSION < LIBULTRA_VERSION_K

#define OSINITIALIZE_FUNC osInitialize
#define SPEED_PARAM_FUNC createSpeedParam

#if (LIBULTRA_VERSION == LIBULTRA_VERSION_I && LIBULTRA_PATCH == 1) || (LIBULTRA_VERSION == LIBULTRA_VERSION_J)
static void SPEED_PARAM_FUNC(void);
#endif

#else

#define OSINITIALIZE_FUNC __osInitialize_common
#define SPEED_PARAM_FUNC __createSpeedParam

void SPEED_PARAM_FUNC(void) {
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

#endif

void OSINITIALIZE_FUNC(void) {
    u32 pifdata;
#if LIBULTRA_VERSION < LIBULTRA_VERSION_K
    u32 clock = 0;
#endif

    __osFinalrom = true;
    __osSetSR(__osGetSR() | SR_CU1);
    __osSetFpcCsr(FPCSR_FS | FPCSR_EV);
#if LIBULTRA_VERSION >= LIBULTRA_VERSION_K
    __osSetWatchLo(0x04900000);
#endif

#ifdef BBPLAYER
    {
        u32 x, y;

        // Check for iQue Player hardware by enabling and disabling FLASH and IDE interrupts and checking if the
        // register gives the correct response.
        IO_WRITE(MI_EX_INTR_MASK_REG, MI_EX_INTR_MASK_SET_FLASH | MI_EX_INTR_MASK_SET_IDE);
        x = IO_READ(MI_EX_INTR_MASK_REG);
        IO_WRITE(MI_EX_INTR_MASK_REG, MI_EX_INTR_MASK_CLR_FLASH | MI_EX_INTR_MASK_CLR_IDE);
        y = IO_READ(MI_EX_INTR_MASK_REG);

        __osBbIsBb =
            ((x & (MI_EX_INTR_MASK_FLASH | MI_EX_INTR_MASK_IDE)) == (MI_EX_INTR_MASK_FLASH | MI_EX_INTR_MASK_IDE)) &&
            ((y & (MI_EX_INTR_MASK_FLASH | MI_EX_INTR_MASK_IDE)) == 0);
    }

    //! @bug Most games do not have permission to use GPIO, so they often cannot correctly tell if they are running on
    //! HW V1 or V2.
    if (__osBbIsBb && PI_GPIO_IS_HW_V2(IO_READ(PI_GPIO_REG))) {
        __osBbIsBb = 2;
    }

    if (__osBbIsBb) {
        // Set IPL boot parameters
        osTvType = OS_TV_NTSC;
        osRomType = 0;
        osResetType = 0;
        osVersion = 1;
        osMemSize = 0x400000;
    }

    if (!__osBbIsBb) {
        // The PIF doesn't exist on iQue, no need to enable NMI from PIF
#endif
        while (__osSiRawReadIo((void*)(PIF_RAM_END - 3), &pifdata)) {
            ;
        }
        while (__osSiRawWriteIo((void*)(PIF_RAM_END - 3), pifdata | 8)) {
            ;
        }
#ifdef BBPLAYER
    }
#endif

    *(__osExceptionVector*)UT_VEC = __osExceptionPreamble;  // TLB miss
    *(__osExceptionVector*)XUT_VEC = __osExceptionPreamble; // XTLB miss
    *(__osExceptionVector*)ECC_VEC = __osExceptionPreamble; // cache errors
    *(__osExceptionVector*)E_VEC = __osExceptionPreamble;   // general exceptions

    osWritebackDCache((void*)K0BASE, E_VEC - K0BASE + sizeof(__osExceptionVector));
    osInvalICache((void*)K0BASE, E_VEC - K0BASE + sizeof(__osExceptionVector));
#if (LIBULTRA_VERSION == LIBULTRA_VERSION_I && LIBULTRA_PATCH == 1) || (LIBULTRA_VERSION > LIBULTRA_VERSION_I)
    SPEED_PARAM_FUNC();
    osUnmapTLBAll();
    osMapTLBRdb();
#endif

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

#if (LIBULTRA_VERSION == LIBULTRA_VERSION_I && LIBULTRA_PATCH == 1) || (LIBULTRA_VERSION >= LIBULTRA_VERSION_J)
    // If PreNMI is pending, loop until reset
    if (__osGetCause() & CAUSE_IP5) {
        while (true) {
            ;
        }
    }
#endif

#ifdef BBPLAYER
    if (!__osBbIsBb) {
        // In a real iQue Player environment (that is, real hardware + app launched from the system menu)
        // these are set on app launch by the system menu based on the contents of the game's associated
        // ticket. Set some dummy values if not running on iQue Player hardware.
        __osBbEepromSize = 0x200;
        __osBbPakSize = 0x8000;
        __osBbFlashSize = 0x20000;
        __osBbEepromAddress = 0x80400000 - 0x200;
        __osBbPakAddress[0] = 0x80400000 - 0x8200;
        __osBbPakAddress[1] = 0;
        __osBbPakAddress[2] = 0;
        __osBbPakAddress[3] = 0;
        __osBbFlashAddress = 0x80400000 - 0x20000;
        __osBbSramSize = __osBbFlashSize;
        __osBbSramAddress = __osBbFlashAddress;
    }
    if (__osBbIsBb) {
        IO_WRITE(PI_64_REG, IO_READ(PI_64_REG) & ~0x80000000);
        IO_WRITE(MI_EX_INTR_MASK_REG, MI_EX_INTR_MASK_SET_IDE);
        IO_WRITE(SI_0C_REG, 0);
        IO_WRITE(SI_1C_REG, (IO_READ(SI_1C_REG) & ~0x7F000000) | 0x2F400000);
    }
#endif

    IO_WRITE(AI_CONTROL_REG, AI_CONTROL_DMA_ON);
    IO_WRITE(AI_DACRATE_REG, AI_MAX_DAC_RATE - 1);
    IO_WRITE(AI_BITRATE_REG, AI_MAX_BIT_RATE - 1);
}

#if (LIBULTRA_VERSION == LIBULTRA_VERSION_I && LIBULTRA_PATCH == 1) || (LIBULTRA_VERSION == LIBULTRA_VERSION_J)
static void SPEED_PARAM_FUNC(void) {
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
#else
void __osInitialize_autodetect(void) {
}
#endif
