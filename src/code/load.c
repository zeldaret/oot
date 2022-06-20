#include "global.h"

s32 Overlay_Load(uintptr_t vRomStart, uintptr_t vRomEnd, void* vRamStart, void* vRamEnd, void* allocatedVRamAddr) {
    s32 pad[3];
    uintptr_t end;
    OverlayRelocationSection* ovl;
    u32 ovlOffset;
    size_t size;

    size = vRomEnd - vRomStart;
    end = (uintptr_t)allocatedVRamAddr + size;

    if (gOverlayLogSeverity >= 3) {
        // "Start loading dynamic link function"
        osSyncPrintf("\nダイナミックリンクファンクションのロードを開始します\n");
    }

    if (gOverlayLogSeverity >= 3) {
        // "DMA transfer of TEXT, DATA, RODATA + rel (%08x-%08x)"
        osSyncPrintf("TEXT,DATA,RODATA+relをＤＭＡ転送します(%08x-%08x)\n", allocatedVRamAddr, end);
    }

    DmaMgr_SendRequest0(allocatedVRamAddr, vRomStart, size);

    ovlOffset = ((s32*)end)[-1];

    ovl = (OverlayRelocationSection*)(end - ovlOffset);
    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("TEXT(%08x), DATA(%08x), RODATA(%08x), BSS(%08x)\n", ovl->textSize, ovl->dataSize, ovl->rodataSize,
                     ovl->bssSize);
    }

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("リロケーションします\n"); // "Relocate"
    }

    Overlay_Relocate(allocatedVRamAddr, ovl, vRamStart);

    if (ovl->bssSize != 0) {
        if (gOverlayLogSeverity >= 3) {
            // "Clear BSS area (% 08x-% 08x)"
            osSyncPrintf("BSS領域をクリアします(%08x-%08x)\n", end, end + ovl->bssSize);
        }
        bzero((void*)end, ovl->bssSize);
    }

    size = (uintptr_t)&ovl->relocations[ovl->nRelocations] - (uintptr_t)ovl;
    if (gOverlayLogSeverity >= 3) {
        // "Clear REL area (%08x-%08x)"
        osSyncPrintf("REL領域をクリアします(%08x-%08x)\n", ovl, (uintptr_t)ovl + size);
    }

    bzero(ovl, size);

    size = (uintptr_t)vRamEnd - (uintptr_t)vRamStart;
    osWritebackDCache(allocatedVRamAddr, size);
    osInvalICache(allocatedVRamAddr, size);

    if (gOverlayLogSeverity >= 3) {
        // "Finish loading dynamic link function"
        osSyncPrintf("ダイナミックリンクファンクションのロードを終了します\n\n");
    }
    return size;
}
