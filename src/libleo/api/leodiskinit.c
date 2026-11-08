#include "ultra64.h"
#include "ultra64/leo_internal.h"
#include "ultra64/leodrive.h"

OSPiHandle __LeoDiskHandle;
OSPiHandle* __osDiskHandle;

OSPiHandle* osLeoDiskInit(void) {
    u32 saveMask;

    __LeoDiskHandle.type = DEVICE_TYPE_64DD;
    __LeoDiskHandle.baseAddress = PHYS_TO_K1(ASIC_BASE);
    __LeoDiskHandle.latency = 3;
    __LeoDiskHandle.pulse = 6;
    __LeoDiskHandle.pageSize = 6;
    __LeoDiskHandle.relDuration = 2;
    __LeoDiskHandle.domain = PI_DOMAIN2;
    __LeoDiskHandle.speed = 0;
    bzero(&__LeoDiskHandle.transferInfo, sizeof(__LeoDiskHandle.transferInfo));
    saveMask = __osDisableInt();
    __LeoDiskHandle.next = __osPiTable;
    __osPiTable = &__LeoDiskHandle;
    __osDiskHandle = &__LeoDiskHandle;
    __osRestoreInt(saveMask);
    return &__LeoDiskHandle;
}
