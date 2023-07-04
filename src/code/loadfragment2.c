#include "global.h"

void* Overlay_AllocateAndLoad(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd) {
    void* allocatedRamAddr =
        SystemArena_MallocRDebug((intptr_t)vramEnd - (intptr_t)vramStart, "../loadfragment2.c", 31);

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("OVL:SPEC(%08x-%08x) REAL(%08x-%08x) OFFSET(%08x)\n", vramStart, vramEnd, allocatedRamAddr,
                     ((uintptr_t)vramEnd - (uintptr_t)vramStart) + (uintptr_t)allocatedRamAddr,
                     (uintptr_t)vramStart - (uintptr_t)allocatedRamAddr);
    }

    if (allocatedRamAddr != NULL) {
        Overlay_Load(vromStart, vromEnd, vramStart, vramEnd, allocatedRamAddr);
    }

    return allocatedRamAddr;
}
