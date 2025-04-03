#include "libu64/runtime.h"

#include "libc64/malloc.h"
#include "libc64/os_malloc.h"

typedef void (*arg3_800FC868)(void*);
typedef void (*arg3_800FC8D8)(void*, u32);
typedef void (*arg3_800FC948)(void*, u32, u32, u32, u32, u32, u32, u32, u32);
typedef void (*arg3_800FCA18)(void*, u32);

typedef struct CtorEntry {
    s32 nextOffset;
    void (*func)(void);
} CtorEntry;

void* sGlobalCtorEntries = NULL;

#if DEBUG_FEATURES
char sNew[] = "new";
#else
char sNew[] = "";
#endif

void* Runtime_New(u32 size) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();

    if (size == 0) {
        size = 1;
    }

#if DEBUG_FEATURES
    ptr = __osMallocDebug(&gSystemArena, size, sNew, 0);
#else
    ptr = __osMalloc(&gSystemArena, size);
#endif

    RESTORE_INTERRUPTS();
    return ptr;
}

void Runtime_Delete(void* ptr) {
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
        blk = Runtime_New(nBlk * blkSize);
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
            Runtime_Delete(blk);
        }
    }

    RESTORE_INTERRUPTS();
}

void Runtime_ExecuteGlobalCtors(void) {
    CtorEntry* ctorEntry = (CtorEntry*)&sGlobalCtorEntries;
    u32 nextOffset = ctorEntry->nextOffset;
    CtorEntry* prevEntry = NULL;

    while (nextOffset != 0) {
        ctorEntry = (CtorEntry*)((s32)ctorEntry + nextOffset);

        if (ctorEntry->func != NULL) {
            ctorEntry->func();
        }

        nextOffset = ctorEntry->nextOffset;
        ctorEntry->nextOffset = (s32)prevEntry;
        prevEntry = ctorEntry;
    }

    sGlobalCtorEntries = prevEntry;
}

void Runtime_Init(void* start, u32 size) {
#if PLATFORM_N64
    __osMallocInit(&gSystemArena, start, size);
#else
    SystemArena_Init(start, size);
#endif

    Runtime_ExecuteGlobalCtors();
}
