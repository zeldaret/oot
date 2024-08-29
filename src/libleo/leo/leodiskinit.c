#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

extern OSPiHandle* __osPiTable;

OSPiHandle __LeoDiskHandle;
OSPiHandle* __osDiskHandle;

OSPiHandle* osLeoDiskInit(void) {
    u32 saveMask;

    __LeoDiskHandle.type = DEVICE_TYPE_64DD;
    __LeoDiskHandle.baseAddress = (u32)OS_PHYSICAL_TO_K1(ASIC_C2_BUFF);
    __LeoDiskHandle.latency = 3;
    __LeoDiskHandle.pulse = 6;
    __LeoDiskHandle.pageSize = 6;
    __LeoDiskHandle.relDuration = 2;
    __LeoDiskHandle.domain = PI_DOMAIN2;
    __LeoDiskHandle.speed = 0;

    bzero(&__LeoDiskHandle.transferInfo, sizeof(__OSTranxInfo));
    saveMask = __osDisableInt();

    __LeoDiskHandle.next = __osPiTable;
    __osPiTable = &__LeoDiskHandle;
    __osDiskHandle = &__LeoDiskHandle;

    __osRestoreInt(saveMask);

    return &__LeoDiskHandle;
}
