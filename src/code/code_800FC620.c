#include "global.h"
#include "osMalloc.h"

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

#if OOT_DEBUG
char sNew[] = "new";
#else
char sNew[] = "";
#endif

#if !PLATFORM_N64
char D_80134488[0x18] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x80, 0x00, 0x00,
    0xFF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
#endif

// possibly some kind of new() function
void* func_800FC800(u32 size) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();

    if (size == 0) {
        size = 1;
    }

#if OOT_DEBUG
    ptr = __osMallocDebug(&gSystemArena, size, sNew, 0);
#else
    ptr = __osMalloc(&gSystemArena, size);
#endif

    RESTORE_INTERRUPTS();
    return ptr;
}

// possibly some kind of delete() function
void func_800FC83C(void* ptr) {
    DECLARE_INTERRUPT_MASK

    DISABLE_INTERRUPTS();
    if (ptr != NULL) {
        __osFree(&gSystemArena, ptr);
    }
    RESTORE_INTERRUPTS();
}

void func_800FC868(void* blk, u32 nBlk, u32 blkSize, arg3_800FC868 arg3) {
    DECLARE_INTERRUPT_MASK
    u32 pos;

    DISABLE_INTERRUPTS();
    for (pos = ((u32)blk & ~0); pos < (u32)blk + (nBlk * blkSize); pos = (u32)pos + (blkSize & ~0)) {
        arg3((void*)pos);
    }
    RESTORE_INTERRUPTS();
}

void func_800FC8D8(void* blk, u32 nBlk, s32 blkSize, arg3_800FC8D8 arg3) {
    DECLARE_INTERRUPT_MASK
    u32 pos;

    DISABLE_INTERRUPTS();
    for (pos = ((u32)blk & ~0); pos < (u32)blk + (nBlk * blkSize); pos = (u32)pos + (blkSize & ~0)) {
        arg3((void*)pos, 2);
    }
    RESTORE_INTERRUPTS();
}

void* func_800FC948(void* blk, u32 nBlk, u32 blkSize, arg3_800FC948 arg3) {
    DECLARE_INTERRUPT_MASK
    u32 pos;

    DISABLE_INTERRUPTS();

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

    RESTORE_INTERRUPTS();
    return blk;
}

void func_800FCA18(void* blk, u32 nBlk, u32 blkSize, arg3_800FCA18 arg3, s32 arg4) {
    DECLARE_INTERRUPT_MASK
    u32 pos;
    u32 end;

    DISABLE_INTERRUPTS();

    if (blk != NULL) {
        if (arg3 != NULL) {
            end = (u32)blk;
            pos = (u32)end + (nBlk * blkSize);

            while (pos > end) {
                pos -= (s32)(blkSize & ~0);
                arg3((void*)pos, 2);
            }
        }

        if (arg4 != 0) {
            func_800FC83C(blk);
        }
    }

    RESTORE_INTERRUPTS();
}

void func_800FCB34(void) {
    InitFunc* initFunc = (InitFunc*)&sInitFuncs;
    u32 nextOffset = initFunc->nextOffset;
    InitFunc* prev = NULL;

    while (nextOffset != 0) {
        initFunc = (InitFunc*)((s32)initFunc + nextOffset);

        if (initFunc->func != NULL) {
            initFunc->func();
        }

        nextOffset = initFunc->nextOffset;
        initFunc->nextOffset = (s32)prev;
        prev = initFunc;
    }

    sInitFuncs = prev;
}

void SystemHeap_Init(void* start, u32 size) {
#if PLATFORM_N64
    __osMallocInit(&gSystemArena, start, size);
#else
    SystemArena_Init(start, size);
#endif

    func_800FCB34();
}
