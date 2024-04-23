#include "global.h"

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

Arena sZeldaArena;

#if OOT_DEBUG
s32 gZeldaArenaLogSeverity = LOG_SEVERITY_ERROR;

void ZeldaArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action) {
    if (ptr == NULL) {
        if (gZeldaArenaLogSeverity >= LOG_SEVERITY_ERROR) {
            // "%s: %u bytes %s failed\n"
            PRINTF("%s: %u バイトの%sに失敗しました\n", name, size, action);
            __osDisplayArena(&sZeldaArena);
        }
    } else if (gZeldaArenaLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "%s: %u bytes %s succeeded\n"
        PRINTF("%s: %u バイトの%sに成功しました\n", name, size, action);
    }
}

#define ZELDA_ARENA_CHECK_POINTER(ptr, size, name, action) ZeldaArena_CheckPointer(ptr, size, name, action)
#else
#define ZELDA_ARENA_CHECK_POINTER(ptr, size, name, action) (void)0
#endif

void* ZeldaArena_Malloc(u32 size) {
    void* ptr = __osMalloc(&sZeldaArena, size);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc", "確保"); // "Secure"
    return ptr;
}

#if OOT_DEBUG
void* ZeldaArena_MallocDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocDebug(&sZeldaArena, size, file, line);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* ZeldaArena_MallocR(u32 size) {
    void* ptr = __osMallocR(&sZeldaArena, size);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_r", "確保"); // "Secure"
    return ptr;
}

#if OOT_DEBUG
void* ZeldaArena_MallocRDebug(u32 size, const char* file, int line) {
    void* ptr = __osMallocRDebug(&sZeldaArena, size, file, line);

    ZELDA_ARENA_CHECK_POINTER(ptr, size, "zelda_malloc_r_DEBUG", "確保"); // "Secure"
    return ptr;
}
#endif

void* ZeldaArena_Realloc(void* ptr, u32 newSize) {
    ptr = __osRealloc(&sZeldaArena, ptr, newSize);
    ZELDA_ARENA_CHECK_POINTER(ptr, newSize, "zelda_realloc", "再確保"); // "Re-securing"
    return ptr;
}

#if OOT_DEBUG
void* ZeldaArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line) {
    ptr = __osReallocDebug(&sZeldaArena, ptr, newSize, file, line);
    ZELDA_ARENA_CHECK_POINTER(ptr, newSize, "zelda_realloc_DEBUG", "再確保"); // "Re-securing"
    return ptr;
}
#endif

void ZeldaArena_Free(void* ptr) {
    __osFree(&sZeldaArena, ptr);
}

#if OOT_DEBUG
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

    ZELDA_ARENA_CHECK_POINTER(ret, n, "zelda_calloc", "確保"); // "Secure"
    return ret;
}

#if OOT_DEBUG
void ZeldaArena_Display(void) {
    PRINTF("ゼルダヒープ表示\n"); // "Zelda heap display"
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
#if OOT_DEBUG
    gZeldaArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocInit(&sZeldaArena, start, size);
}

void ZeldaArena_Cleanup(void) {
#if OOT_DEBUG
    gZeldaArenaLogSeverity = LOG_SEVERITY_NOLOG;
#endif
    __osMallocCleanup(&sZeldaArena);
}

u8 ZeldaArena_IsInitialized(void) {
    return __osMallocIsInitialized(&sZeldaArena);
}
