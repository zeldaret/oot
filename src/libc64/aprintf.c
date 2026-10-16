#include "libc64/aprintf.h"
#include "ultra64.h"

s32 PrintUtils_VPrintf(PrintCallback* pfn, const char* fmt, va_list args) {
    return _Printf(*pfn, pfn, fmt, args);
}

s32 PrintUtils_Printf(PrintCallback* pfn, const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    return PrintUtils_VPrintf(pfn, fmt, args);
}
