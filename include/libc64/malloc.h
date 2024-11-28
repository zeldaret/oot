#ifndef LIBC64_MALLOC_H
#define LIBC64_MALLOC_H

#include "ultra64.h"
#include "libc64/os_malloc.h"

void* SystemArena_Malloc(u32 size);
void* SystemArena_MallocR(u32 size);
void* SystemArena_Realloc(void* ptr, u32 newSize);
void SystemArena_Free(void* ptr);
void* SystemArena_Calloc(u32 num, u32 size);
void SystemArena_GetSizes(u32* outMaxFree, u32* outFree, u32* outAlloc);
void SystemArena_Check(void);
void SystemArena_Init(void* start, u32 size);
void SystemArena_Cleanup(void);
s32 SystemArena_IsInitialized(void);

#if DEBUG_FEATURES
void* SystemArena_MallocDebug(u32 size, const char* file, int line);
void* SystemArena_MallocRDebug(u32 size, const char* file, int line);
void* SystemArena_ReallocDebug(void* ptr, u32 newSize, const char* file, int line);
void SystemArena_FreeDebug(void* ptr, const char* file, int line);
void SystemArena_Display(void);
#endif

extern Arena gSystemArena;

#endif
