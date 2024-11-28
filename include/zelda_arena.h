#ifndef ZELDA_ARENA_H
#define ZELDA_ARENA_H

#include "ultra64.h"

void* ZeldaArena_Malloc(u32 size);
void* ZeldaArena_MallocR(u32 size);
void* ZeldaArena_Realloc(void* ptr, u32 newSize);
void ZeldaArena_Free(void* ptr);
void* ZeldaArena_Calloc(u32 num, u32 size);
void ZeldaArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc);
void ZeldaArena_Check(void);
void ZeldaArena_Init(void* start, u32 size);
void ZeldaArena_Cleanup(void);
s32 ZeldaArena_IsInitialized(void);

#if DEBUG_FEATURES
void ZeldaArena_CheckPointer(void* ptr, u32 size, const char* name, const char* action);
void* ZeldaArena_MallocDebug(u32 size, const char* file, int line);
void* ZeldaArena_MallocRDebug(u32 size, const char* file, int line);
void* ZeldaArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line);
void ZeldaArena_FreeDebug(void* ptr, const char* file, int line);
void ZeldaArena_Display(void);

#define ZELDA_ARENA_MALLOC(size, file, line) ZeldaArena_MallocDebug(size, file, line)
#define ZELDA_ARENA_MALLOC_R(size, file, line) ZeldaArena_MallocRDebug(size, file, line)
#define ZELDA_ARENA_FREE(size, file, line) ZeldaArena_FreeDebug(size, file, line)

#else

#define ZELDA_ARENA_MALLOC(size, file, line) ZeldaArena_Malloc(size)
#define ZELDA_ARENA_MALLOC_R(size, file, line) ZeldaArena_MallocR(size)
#define ZELDA_ARENA_FREE(size, file, line) ZeldaArena_Free(size)

#endif

#endif
