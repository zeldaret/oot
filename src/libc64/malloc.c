#include "libc64/malloc.h"
#include "ultra64.h"
#include "macros.h"
#include "libc64/os_malloc.h"

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

Arena gSystemArena;

#if DEBUG_FEATURES
s32 gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;

void SystemArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action) {
    if (ptr == NULL) {
        if (gSystemArenaLogSeverity >= LOG_SEVERITY_ERROR) {
            PRINTF(T("%s: %u バイトの%sに失敗しました\n", "%s: %u bytes %s failed\n"), name, size, action);
#if PLATFORM_GC
            __osDisplayArena(&gSystemArena);
#endif
            return;
        }
    } else if (gSystemArenaLogSeverity >= LOG_SEVERITY_VERBOSE) {
        PRINTF(T("%s: %u バイトの%sに成功しました\n", "%s: %u bytes %s succeeded\n"), name, size, action);
    }
}

#define SYSTEM_ARENA_CHECK_POINTER(ptr, size, name, action) SystemArena_CheckPointer(ptr, size, name, action)
#else
#define SYSTEM_ARENA_CHECK_POINTER(ptr, size, name, action) (void)0
#endif

void* SystemArena_Malloc(u32 size) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();
    ptr = __osMalloc(&gSystemArena, size);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc", "確保"); // "Secure"
    return ptr;
}

#if DEBUG_FEATURES
void* SystemArena_MallocDebug(u32 size, const char* file, int line) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();
    ptr = __osMallocDebug(&gSystemArena, size, file, line);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* SystemArena_MallocR(u32 size) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();
    ptr = __osMallocR(&gSystemArena, size);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_r", "確保"); // "Secure"
    return ptr;
}

#if DEBUG_FEATURES
void* SystemArena_MallocRDebug(u32 size, const char* file, int line) {
    DECLARE_INTERRUPT_MASK
    void* ptr;

    DISABLE_INTERRUPTS();
    ptr = __osMallocRDebug(&gSystemArena, size, file, line);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_r_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* SystemArena_Realloc(void* ptr, u32 newSize) {
    DECLARE_INTERRUPT_MASK

    DISABLE_INTERRUPTS();
    ptr = __osRealloc(&gSystemArena, ptr, newSize);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, newSize, "realloc", "再確保"); // "Re-securing"
    return ptr;
}

#if DEBUG_FEATURES
void* SystemArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line) {
    DECLARE_INTERRUPT_MASK

    DISABLE_INTERRUPTS();
    ptr = __osReallocDebug(&gSystemArena, ptr, newSize, file, line);
    RESTORE_INTERRUPTS();

    SYSTEM_ARENA_CHECK_POINTER(ptr, newSize, "realloc_DEBUG", "再確保"); // "Re-securing"
    return ptr;
}
#endif

void SystemArena_Free(void* ptr) {
    DECLARE_INTERRUPT_MASK

    DISABLE_INTERRUPTS();
    __osFree(&gSystemArena, ptr);
    RESTORE_INTERRUPTS();
}

#if DEBUG_FEATURES
void SystemArena_FreeDebug(void* ptr, const char* file, int line) {
    DECLARE_INTERRUPT_MASK

    DISABLE_INTERRUPTS();
    __osFreeDebug(&gSystemArena, ptr, file, line);
    RESTORE_INTERRUPTS();
}
#endif

void* SystemArena_Calloc(u32 num, u32 size) {
    DECLARE_INTERRUPT_MASK
    void* ret;
    u32 n = num * size;

    DISABLE_INTERRUPTS();
    ret = __osMalloc(&gSystemArena, n);
    RESTORE_INTERRUPTS();

    if (ret != NULL) {
        bzero(ret, n);
    }

    SYSTEM_ARENA_CHECK_POINTER(ret, n, "calloc", "確保");
    return ret;
}

#if PLATFORM_GC && DEBUG_FEATURES
void SystemArena_Display(void) {
    PRINTF(T("システムヒープ表示\n", "System heap display\n"));
    __osDisplayArena(&gSystemArena);
}
#endif

void SystemArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc) {
    ArenaImpl_GetSizes(&gSystemArena, outMaxFree, outFree, outAlloc);
}

void SystemArena_Check(void) {
    __osCheckArena(&gSystemArena);
}

void SystemArena_Init(void* start, u32 size) {
#if DEBUG_FEATURES
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocInit(&gSystemArena, start, size);
}

void SystemArena_Cleanup(void) {
#if DEBUG_FEATURES
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocCleanup(&gSystemArena);
}

s32 SystemArena_IsInitialized(void) {
    return __osMallocIsInitialized(&gSystemArena);
}
