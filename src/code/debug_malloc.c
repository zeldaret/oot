#include "global.h"

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

s32 gDebugArenaLogSeverity = LOG_SEVERITY_ERROR;
Arena sDebugArena;

void DebugArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action) {
    if (ptr == NULL) {
        if (gDebugArenaLogSeverity >= LOG_SEVERITY_ERROR) {
            // "%s: %u bytes %s failed\n"
            osSyncPrintf("%s: %u バイトの%sに失敗しました\n", name, size, action);
            __osDisplayArena(&sDebugArena);
            return;
        }
    } else if (gDebugArenaLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "%s: %u bytes %s succeeded\n"
        osSyncPrintf("%s: %u バイトの%sに成功しました\n", name, size, action);
    }
}

void* DebugArena_Malloc(u32 size) {
    void* ptr = __osMalloc(&sDebugArena, size);

    DebugArena_CheckPointer(ptr, size, "debug_malloc", "確保"); // "Secure"
    return ptr;
}

void* DebugArena_MallocDebug(u32 size, const char* file, s32 line) {
    void* ptr = __osMallocDebug(&sDebugArena, size, file, line);

    DebugArena_CheckPointer(ptr, size, "debug_malloc_DEBUG", "確保"); // "Secure"
    return ptr;
}

void* DebugArena_MallocR(u32 size) {
    void* ptr = __osMallocR(&sDebugArena, size);

    DebugArena_CheckPointer(ptr, size, "debug_malloc_r", "確保"); // "Secure"
    return ptr;
}

void* DebugArena_MallocRDebug(u32 size, const char* file, s32 line) {
    void* ptr = __osMallocRDebug(&sDebugArena, size, file, line);

    DebugArena_CheckPointer(ptr, size, "debug_malloc_r_DEBUG", "確保"); // "Secure"
    return ptr;
}

void* DebugArena_Realloc(void* ptr, u32 newSize) {
    ptr = __osRealloc(&sDebugArena, ptr, newSize);
    DebugArena_CheckPointer(ptr, newSize, "debug_realloc", "再確保"); // "Re-securing"
    return ptr;
}

void* DebugArena_ReallocDebug(void* ptr, u32 newSize, const char* file, s32 line) {
    ptr = __osReallocDebug(&sDebugArena, ptr, newSize, file, line);
    DebugArena_CheckPointer(ptr, newSize, "debug_realloc_DEBUG", "再確保"); // "Re-securing"
    return ptr;
}

void DebugArena_Free(void* ptr) {
    __osFree(&sDebugArena, ptr);
}

void DebugArena_FreeDebug(void* ptr, const char* file, s32 line) {
    __osFreeDebug(&sDebugArena, ptr, file, line);
}

void* DebugArena_Calloc(u32 num, u32 size) {
    void* ret;
    u32 n = num * size;

    ret = __osMalloc(&sDebugArena, n);
    if (ret != NULL) {
        bzero(ret, n);
    }

    DebugArena_CheckPointer(ret, n, "debug_calloc", "確保");
    return ret;
}

void DebugArena_Display(void) {
    // "Zelda heap display" ("Zelda" should probably have been changed to "Debug")
    osSyncPrintf("ゼルダヒープ表示\n");
    __osDisplayArena(&sDebugArena);
}

void DebugArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc) {
    ArenaImpl_GetSizes(&sDebugArena, outMaxFree, outFree, outAlloc);
}

void DebugArena_Check(void) {
    __osCheckArena(&sDebugArena);
}

void DebugArena_Init(void* start, u32 size) {
    gDebugArenaLogSeverity = LOG_SEVERITY_NOLOG;
    __osMallocInit(&sDebugArena, start, size);
}

void DebugArena_Cleanup(void) {
    gDebugArenaLogSeverity = LOG_SEVERITY_NOLOG;
    __osMallocCleanup(&sDebugArena);
}

u8 DebugArena_IsInitialized(void) {
    return __osMallocIsInitialized(&sDebugArena);
}
