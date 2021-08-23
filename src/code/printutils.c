#include "global.h"

void PrintUtils_VPrintf(PrintCallback* pfn, const char* fmt, va_list args) {
    _Printf(*pfn, pfn, fmt, args);
}

void PrintUtils_Printf(PrintCallback* pfn, const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    PrintUtils_VPrintf(pfn, fmt, args);
}
