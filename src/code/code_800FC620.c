#include <global.h>

typedef void (*arg3_800FC868)(void*);
typedef void (*arg3_800FC8D8)(void*, u32);
typedef void (*arg3_800FC948)(void*, u32, u32, u32, u32, u32, u32, u32, u32);
typedef void (*arg3_800FCA18)(void*, u32);

typedef struct InitFunc {
    s32 nextOffset;
    void (*func)(void);
} InitFunc;

// .data
void* sInitFuncs = NULL;

char sNew[] = { 'n', 'e', 'w' };

char D_80134488[0x18] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x80, 0x00, 0x00,
    0xFF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};

s32 Overlay_Load(u32 vRomStart, u32 vRomEnd, void* vRamStart, void* vRamEnd, void* allocatedVRamAddr) {
    s32 pad;
    u32 end;
    u32 bssSize;
    OverlayRelocationSection* ovl;
    u32 relocCnt;
    u32 ovlOffset;
    u32 size;

    if (gOverlayLogSeverity >= 3) {
        // Start loading dynamic link function
        osSyncPrintf("\nダイナミックリンクファンクションのロードを開始します\n");
    }

    if (gOverlayLogSeverity >= 3) {
        size = vRomEnd - vRomStart;
        // DMA transfer of TEXT, DATA, RODATA + rel (%08x-%08x)
        osSyncPrintf("TEXT,DATA,RODATA+relをＤＭＡ転送します(%08x-%08x)\n", allocatedVRamAddr,
                     (u32)allocatedVRamAddr + size);
    }

    size = vRomEnd - vRomStart;
    end = (u32)allocatedVRamAddr + size;
    DmaMgr_SendRequest0((u32)allocatedVRamAddr, vRomStart, size);

    ovlOffset = ((s32*)end)[-1];

    ovl = (OverlayRelocationSection*)((u32)end - ovlOffset);
    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("TEXT(%08x), DATA(%08x), RODATA(%08x), BSS(%08x)\n", ovl->textSize, ovl->dataSize, ovl->rodataSize,
                     ovl->bssSize);
    }

    if (gOverlayLogSeverity >= 3) {
        // Relocate
        osSyncPrintf("リロケーションします\n");
    }

    Overlay_Relocate(allocatedVRamAddr, ovl, vRamStart);

    bssSize = ovl->bssSize;
    if (bssSize != 0) {
        if (gOverlayLogSeverity >= 3) {
            // Clear BSS area (% 08x-% 08x)
            osSyncPrintf("BSS領域をクリアします(%08x-%08x)\n", end, end + ovl->bssSize);
        }

        size = ovl->bssSize;
        bssSize = size;
        bzero((void*)end, bssSize);
        relocCnt = ovl->nRelocations;
    }

    size = (u32)&ovl->relocations[ovl->nRelocations] - (u32)ovl;
    if (gOverlayLogSeverity >= 3) {
        // Clear REL area (%08x-%08x)
        osSyncPrintf("REL領域をクリアします(%08x-%08x)\n", ovl, (u32)ovl + size);
    }

    bzero(ovl, size);

    size = (u32)vRamEnd - (u32)vRamStart;
    osWritebackDCache(allocatedVRamAddr, size);
    osInvalICache(allocatedVRamAddr, size);

    if (gOverlayLogSeverity >= 3) {
        // Finish loading dynamic link function
        osSyncPrintf("ダイナミックリンクファンクションのロードを終了します\n\n");
    }
    return size;
}

// possibly some kind of new() function
void* func_800FC800(u32 size) {
    if (size == 0) {
        size = 1;
    }

    return __osMallocDebug(&gSystemArena, size, sNew, 0);
}

// possible some kind of delete() function
void func_800FC83C(void* ptr) {
    if (ptr != NULL) {
        __osFree(&gSystemArena, ptr);
    }
}

void func_800FC868(void* blk, u32 nBlk, u32 blkSize, arg3_800FC868 arg3) {
    u32 pos;

    for (pos = (u32)blk; pos < (u32)blk + (nBlk * blkSize); pos = (u32)pos + (blkSize & ~0)) {
        arg3((void*)pos);
    }
}

void func_800FC8D8(void* blk, u32 nBlk, s32 blkSize, arg3_800FC8D8 arg3) {
    u32 pos;

    for (pos = (u32)blk; pos < (u32)blk + (nBlk * blkSize); pos = (u32)pos + (blkSize & ~0)) {
        arg3((void*)pos, 2);
    }
}

void* func_800FC948(void* blk, u32 nBlk, u32 blkSize, arg3_800FC948 arg3) {
    u32 pos;
    if (blk == NULL) {
        blk = func_800FC800(nBlk * blkSize);
    }

    if (blk != NULL && arg3 != NULL) {
        pos = (u32)blk;
        while (pos < (u32)blk + (nBlk * blkSize)) {
            arg3((void*)pos, 0, 0, 0, 0, 0, 0, 0, 0);
            pos = (u32)pos + (blkSize & ~0);
        }
    }
    return blk;
}

void func_800FCA18(void* blk, u32 nBlk, u32 blkSize, arg3_800FCA18 arg3, s32 arg4) {
    u32 pos;
    u32 end;
    s32 masked_arg2;

    if (blk == 0) {
        return;
    }
    if (arg3 != 0) {
        end = (u32)blk;
        masked_arg2 = (s32)(blkSize & ~0);
        pos = (u32)end + (nBlk * blkSize);

        if (masked_arg2) {}

        while (pos > end) {
            do {
                pos -= masked_arg2;
                arg3((void*)pos, 2);
            } while (0);
        }

        if (!masked_arg2) {}
    }

    if (arg4 != 0) {
        func_800FC83C(blk);
    }
}

void func_800FCB34(void) {
    InitFunc* initFunc;
    u32 nextOffset;
    InitFunc* prev;

    initFunc = (InitFunc*)&sInitFuncs;
    nextOffset = initFunc->nextOffset;
    prev = NULL;

    while (nextOffset != 0) {
        initFunc = (InitFunc*)((s32)initFunc + nextOffset);

        if (initFunc->func != NULL) {
            (*initFunc->func)();
        }

        nextOffset = initFunc->nextOffset;
        initFunc->nextOffset = (s32)prev;
        prev = initFunc;
    }

    sInitFuncs = prev;
}

void SystemHeap_Init(void* start, u32 size) {
    SystemArena_Init(start, size);
    func_800FCB34();
}
