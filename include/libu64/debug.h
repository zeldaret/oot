#ifndef LIBU64_DEBUG_H
#define LIBU64_DEBUG_H

#include "ultra64.h"

#if PLATFORM_N64 || DEBUG_FEATURES
f32 LogUtils_CheckFloatRange(const char* exp, int line, const char* valueName, f32 value, const char* minName, f32 min,
                             const char* maxName, f32 max);
#endif

#if DEBUG_FEATURES
s32 LogUtils_CheckIntRange(const char* exp, int line, const char* valueName, s32 value, const char* minName, s32 min,
                           const char* maxName, s32 max);
void LogUtils_LogHexDump(void* ptr, s32 size0);
void LogUtils_LogPointer(s32 value, u32 max, void* ptr, const char* name, const char* file, int line);
void LogUtils_CheckBoundary(const char* name, s32 value, s32 unk, const char* file, int line);
void LogUtils_CheckNullPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_CheckValidPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_LogThreadId(const char* name, int line);
#endif

void LogUtils_HungupThread(const char* name, int line);
void LogUtils_ResetHungup(void);

#endif
