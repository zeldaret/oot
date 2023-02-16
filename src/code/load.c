#include "global.h"

s32 Overlay_Load(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd, void* allocatedRamAddr) {
    s32 pad[3];
    uintptr_t end;
    OverlayRelocationSection* ovl;
    u32 ovlOffset;
    size_t size;

    size = vromEnd - vromStart;
    end = (uintptr_t)allocatedRamAddr + size;

    if (gOverlayLogSeverity >= 3) {
        // "Start loading dynamic link function"
        osSyncPrintf("\nダイナミックリンクファンクションのロードを開始します\n");
    }

    if (gOverlayLogSeverity >= 3) {
        // "DMA transfer of TEXT, DATA, RODATA + rel (%08x-%08x)"
        osSyncPrintf("TEXT,DATA,RODATA+relをＤＭＡ転送します(%08x-%08x)\n", allocatedRamAddr, end);
    }

    // DMA the overlay, wait until transfer completes
    DmaMgr_RequestSync(allocatedRamAddr, vromStart, size);

    // The overlay file is expected to contain a 32-bit offset from the end of the file to the start of the
    // relocation section.
    ovlOffset = ((s32*)end)[-1];
    ovl = (OverlayRelocationSection*)(end - ovlOffset);

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("TEXT(%08x), DATA(%08x), RODATA(%08x), BSS(%08x)\n", ovl->textSize, ovl->dataSize, ovl->rodataSize,
                     ovl->bssSize);
    }

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("リロケーションします\n"); // "Relocate"
    }

    // Relocate pointers in overlay code and data
    Overlay_Relocate(allocatedRamAddr, ovl, vramStart);

    // Clear bss if present, bss is located immediately following the relocations
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

    // Clear relocations, this space remains allocated and goes unused
    bzero(ovl, size);

    // Manually flush caches
    size = (uintptr_t)vramEnd - (uintptr_t)vramStart;
    osWritebackDCache(allocatedRamAddr, size);
    osInvalICache(allocatedRamAddr, size);

    if (gOverlayLogSeverity >= 3) {
        // "Finish loading dynamic link function"
        osSyncPrintf("ダイナミックリンクファンクションのロードを終了します\n\n");
    }
    return size;
}
