#include "global.h"

size_t Overlay_Load(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd, void* allocatedRamAddr) {
    s32 pad[3];
    uintptr_t end;
    OverlayRelocationSection* ovlRelocs;
    u32 relocSectionOffset = 0;
    s32 size = vromEnd - vromStart;

    if (gOverlayLogSeverity >= 3) {
        // "Start loading dynamic link function"
        PRINTF("\nダイナミックリンクファンクションのロードを開始します\n");
    }

    size = vromEnd - vromStart;
    end = (uintptr_t)allocatedRamAddr + size;

    if (gOverlayLogSeverity >= 3) {
        // "DMA transfer of TEXT, DATA, RODATA + rel (%08x-%08x)"
        PRINTF("TEXT,DATA,RODATA+relをＤＭＡ転送します(%08x-%08x)\n", allocatedRamAddr, end);
    }

    // DMA the overlay, wait until transfer completes
    DmaMgr_RequestSync(allocatedRamAddr, vromStart, size);

    // The overlay file is expected to contain a 32-bit offset from the end of the file to the start of the
    // relocation section.
    relocSectionOffset = ((s32*)end)[-1];
    ovlRelocs = (OverlayRelocationSection*)(end - relocSectionOffset);

    if (gOverlayLogSeverity >= 3) {
        PRINTF("TEXT(%08x), DATA(%08x), RODATA(%08x), BSS(%08x)\n", ovlRelocs->textSize, ovlRelocs->dataSize,
               ovlRelocs->rodataSize, ovlRelocs->bssSize);
    }

    if (gOverlayLogSeverity >= 3) {
        PRINTF("リロケーションします\n"); // "Relocate"
    }

    // Relocate pointers in overlay code and data
    Overlay_Relocate(allocatedRamAddr, ovlRelocs, vramStart);

    // Clear bss if present, bss is located immediately following the relocations
    if (ovlRelocs->bssSize != 0) {
        if (gOverlayLogSeverity >= 3) {
            // "Clear BSS area (% 08x-% 08x)"
            PRINTF("BSS領域をクリアします(%08x-%08x)\n", end, end + ovlRelocs->bssSize);
        }
        bzero((void*)end, ovlRelocs->bssSize);
    }

    size = (uintptr_t)(ovlRelocs->relocations + ovlRelocs->nRelocations) - (uintptr_t)ovlRelocs;

    if (gOverlayLogSeverity >= 3) {
        // "Clear REL area (%08x-%08x)"
        PRINTF("REL領域をクリアします(%08x-%08x)\n", ovlRelocs, (uintptr_t)ovlRelocs + size);
    }

    // Clear relocations, this space remains allocated and goes unused
    bzero(ovlRelocs, size);

    // Manually flush caches
    size = (uintptr_t)vramEnd - (uintptr_t)vramStart;
    osWritebackDCache(allocatedRamAddr, size);
    osInvalICache(allocatedRamAddr, size);

    if (gOverlayLogSeverity >= 3) {
        // "Finish loading dynamic link function"
        PRINTF("ダイナミックリンクファンクションのロードを終了します\n\n");
    }

    return size;
}
