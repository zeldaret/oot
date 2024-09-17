#ifndef LIBC64_APRINTF_H
#define LIBC64_APRINTF_H

#include "ultra64.h"

#include "stdarg.h"

s32 PrintUtils_VPrintf(PrintCallback* pfn, const char* fmt, va_list args);
s32 PrintUtils_Printf(PrintCallback* pfn, const char* fmt, ...);

#endif
