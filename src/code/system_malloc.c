#include "global.h"

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

Arena gSystemArena;

#if OOT_DEBUG
s32 gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;

void SystemArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action) {
    if (ptr == NULL) {
        if (gSystemArenaLogSeverity >= LOG_SEVERITY_ERROR) {
            // "%s: %u bytes %s failed\n"
            PRINTF("%s: %u バイトの%sに失敗しました\n", name, size, action);
            __osDisplayArena(&gSystemArena);
            return;
        }
    } else if (gSystemArenaLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "%s: %u bytes %s succeeded\n"
        PRINTF("%s: %u バイトの%sに成功しました\n", name, size, action);
    }
}

#define SYSTEM_ARENA_CHECK_POINTER(ptr, size, name, action) SystemArena_CheckPointer(ptr, size, name, action)
#else
#define SYSTEM_ARENA_CHECK_POINTER(ptr, size, name, action) (void)0
#endif

void* SystemArena_Malloc(u32 size) {
    void* ptr = __osMalloc(&gSystemArena, size);

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc", "確保"); // "Secure"
    return ptr;
}

#if OOT_DEBUG
void* SystemArena_MallocDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocDebug(&gSystemArena, size, file, line);

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* SystemArena_MallocR(u32 size) {
    void* ptr = __osMallocR(&gSystemArena, size);

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_r", "確保"); // "Secure"
    return ptr;
}

#if OOT_DEBUG
void* SystemArena_MallocRDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocRDebug(&gSystemArena, size, file, line);

    SYSTEM_ARENA_CHECK_POINTER(ptr, size, "malloc_r_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* SystemArena_Realloc(void* ptr, u32 newSize) {
    ptr = __osRealloc(&gSystemArena, ptr, newSize);
    SYSTEM_ARENA_CHECK_POINTER(ptr, newSize, "realloc", "再確保"); // "Re-securing"
    return ptr;
}

#if OOT_DEBUG
void* SystemArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line) {
    ptr = __osReallocDebug(&gSystemArena, ptr, newSize, file, line);
    SYSTEM_ARENA_CHECK_POINTER(ptr, newSize, "realloc_DEBUG", "再確保"); // "Re-securing"
    return ptr;
}
#endif

void SystemArena_Free(void* ptr) {
    __osFree(&gSystemArena, ptr);
}

#if OOT_DEBUG
void SystemArena_FreeDebug(void* ptr, const char* file, int line) {
    __osFreeDebug(&gSystemArena, ptr, file, line);
}
#endif

void* SystemArena_Calloc(u32 num, u32 size) {
    void* ret;
    u32 n = num * size;

    ret = __osMalloc(&gSystemArena, n);
    if (ret != NULL) {
        bzero(ret, n);
    }

    SYSTEM_ARENA_CHECK_POINTER(ret, n, "calloc", "確保");
    return ret;
}

#if OOT_DEBUG
void SystemArena_Display(void) {
    PRINTF("システムヒープ表示\n"); // "System heap display"
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
#if OOT_DEBUG
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocInit(&gSystemArena, start, size);
}

void SystemArena_Cleanup(void) {
#if OOT_DEBUG
    gSystemArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocCleanup(&gSystemArena);
}

u8 SystemArena_IsInitialized(void) {
    return __osMallocIsInitialized(&gSystemArena);
}
