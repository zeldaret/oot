#include <global.h>

void *Overlay_AllocateAndLoad(u32 vRomStart, u32 vRomEnd, void *vRamStart, void *vRamEnd)
{
    void *allocatedVRamAddr;

    allocatedVRamAddr = SystemArena_MallocRDebug((s32)vRamEnd - (s32)vRamStart, "../loadfragment2.c", 31);

    if(gOverlayLogSeverity >= 3)
    {
        osSyncPrintf("OVL:SPEC(%08x-%08x) REAL(%08x-%08x) OFFSET(%08x)\n", vRamStart, vRamEnd, allocatedVRamAddr, ((u32)vRamEnd - (u32)vRamStart) + (u32)allocatedVRamAddr, (u32)vRamStart - (u32)allocatedVRamAddr);
    }

    if(allocatedVRamAddr != NULL)
    {
        Overlay_Load(vRomStart, vRomEnd, vRamStart, vRamEnd, allocatedVRamAddr);
    }

    return allocatedVRamAddr;
}