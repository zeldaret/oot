#include "global.h"
#include "libc64/os_malloc.h"

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

Arena sZeldaArena;

#if DEBUG_FEATURES
s32 gZeldaArenaLogSeverity = LOG_SEVERITY_ERROR;

void ZeldaArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action) {
    if (ptr == NULL) {
        if (gZeldaArenaLogSeverity >= LOG_SEVERITY_ERROR) {
            PRINTF(T("%s: %u バイトの%sに失敗しました\n", "%s: %u bytes %s failed\n"), name, size, action);
#if PLATFORM_GC
            __osDisplayArena(&sZeldaArena);
#endif
        }
    } else if (gZeldaArenaLogSeverity >= LOG_SEVERITY_VERBOSE) {
        PRINTF(T("%s: %u バイトの%sに成功しました\n", "%s: %u bytes %s succeeded\n"), name, size, action);
    }
}

#define ZELDA_ARENA_CHECK_POINTER(ptr, size, name, action) ZeldaArena_CheckPointer(ptr, size, name, action)
#else
#define ZELDA_ARENA_CHECK_POINTER(ptr, size, name, action) (void)0
#endif

void* ZeldaArena_Malloc(u32 size) {
    void* ptr = __osMalloc(&sZeldaArena, size);

    // TODO re-evaluate "secure" as a translation (in this file and others using "確保")
    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc", T("確保", "Secure"));
    return ptr;
}

#if DEBUG_FEATURES
void* ZeldaArena_MallocDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocDebug(&sZeldaArena, size, file, line);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_DEBUG", T("確保", "Secure"));
    return ptr;
}
#endif

void* ZeldaArena_MallocR(u32 size) {
    void* ptr = __osMallocR(&sZeldaArena, size);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_r", T("確保", "Secure"));
    return ptr;
}

#if DEBUG_FEATURES
void* ZeldaArena_MallocRDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocRDebug(&sZeldaArena, size, file, line);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_r_DEBUG", T("確保", "Secure"));
    return ptr;
}
#endif

void* ZeldaArena_Realloc(void* ptr, u32 newSize) {
    ptr = __osRealloc(&sZeldaArena, ptr, newSize);
    ZELDA_ARENA_CHECK_POINTER(ptr, newSize, "zelda_realloc", T("再確保", "Re-securing"));
    return ptr;
}

#if DEBUG_FEATURES
void* ZeldaArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line) {
    ptr = __osReallocDebug(&sZeldaArena, ptr, newSize, file, line);
    ZELDA_ARENA_CHECK_POINTER(ptr, newSize, "zelda_realloc_DEBUG", T("再確保", "Re-securing"));
    return ptr;
}
#endif

void ZeldaArena_Free(void* ptr) {
    __osFree(&sZeldaArena, ptr);
}

#if DEBUG_FEATURES
void ZeldaArena_FreeDebug(void* ptr, const char* file, int line) {
    __osFreeDebug(&sZeldaArena, ptr, file, line);
}
#endif

void* ZeldaArena_Calloc(u32 num, u32 size) {
    void* ret;
    u32 n = num * size;

    ret = __osMalloc(&sZeldaArena, n);
    if (ret != NULL) {
        bzero(ret, n);
    }

    ZELDA_ARENA_CHECK_POINTER(ret, n, "zelda_calloc", T("確保", "Secure"));
    return ret;
}

#if PLATFORM_GC && DEBUG_FEATURES
void ZeldaArena_Display(void) {
    PRINTF(T("ゼルダヒープ表示\n", "Zelda heap display\n"));
    __osDisplayArena(&sZeldaArena);
}
#endif

void ZeldaArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc) {
    ArenaImpl_GetSizes(&sZeldaArena, outMaxFree, outFree, outAlloc);
}

void ZeldaArena_Check(void) {
    __osCheckArena(&sZeldaArena);
}

void ZeldaArena_Init(void* start, u32 size) {
#if DEBUG_FEATURES
    gZeldaArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocInit(&sZeldaArena, start, size);
}

void ZeldaArena_Cleanup(void) {
#if DEBUG_FEATURES
    gZeldaArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocCleanup(&sZeldaArena);
}

s32 ZeldaArena_IsInitialized(void) {
    return __osMallocIsInitialized(&sZeldaArena);
}
