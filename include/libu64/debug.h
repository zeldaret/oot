#ifndef LIBU64_DEBUG_H
#define LIBU64_DEBUG_H

#include "ultra64.h"

#if DEBUG_FEATURES
#define LOG(exp, value, format, file, line)         \
    do {                                            \
        LogUtils_LogThreadId(file, line);           \
        osSyncPrintf(exp " = " format "\n", value); \
    } while (0)
#else
#define LOG(exp, value, format, file, line) (void)(value)
#endif

#define LOG_STRING(string, file, line) LOG(#string, string, "%s", file, line)
#define LOG_ADDRESS(exp, value, file, line) LOG(exp, value, "%08x", file, line)
#define LOG_TIME(exp, value, file, line) LOG(exp, value, "%lld", file, line)
#define LOG_NUM(exp, value, file, line) LOG(exp, value, "%d", file, line)
#define LOG_HEX(exp, value, file, line) LOG(exp, value, "%x", file, line)
#define LOG_HEX32(exp, value, file, line) LOG(exp, value, "%08x", file, line)
#define LOG_FLOAT(exp, value, file, line) LOG(exp, value, "%f", file, line)

#if PLATFORM_N64 || DEBUG_FEATURES
f32 LogUtils_CheckFloatRange(const char* exp, int line, const char* valueName, f32 value, const char* minName, f32 min,
                             const char* maxName, f32 max);
#endif

#if DEBUG_FEATURES
#define LOG_UTILS_CHECK_NULL_POINTER(exp, ptr, file, line) LogUtils_CheckNullPointer(exp, ptr, file, line)
#define LOG_UTILS_CHECK_VALID_POINTER(exp, ptr, file, line) LogUtils_CheckValidPointer(exp, ptr, file, line)

s32 LogUtils_CheckIntRange(const char* exp, int line, const char* valueName, s32 value, const char* minName, s32 min,
                           const char* maxName, s32 max);
void LogUtils_LogHexDump(void* ptr, s32 size0);
void LogUtils_LogPointer(s32 value, u32 max, void* ptr, const char* name, const char* file, int line);
void LogUtils_CheckBoundary(const char* name, s32 value, s32 unk, const char* file, int line);
void LogUtils_CheckNullPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_CheckValidPointer(const char* exp, void* ptr, const char* file, int line);
void LogUtils_LogThreadId(const char* name, int line);
#else

#define LOG_UTILS_CHECK_NULL_POINTER(exp, ptr, file, line) (void)0
#define LOG_UTILS_CHECK_VALID_POINTER(exp, ptr, file, line) (void)0

#endif

void LogUtils_HungupThread(const char* name, int line);
void LogUtils_ResetHungup(void);

#endif
