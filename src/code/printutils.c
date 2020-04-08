#include <global.h>

void PrintUtils_VPrintf(char** arg0, const char* fmt, va_list args)
{
    _Printf(*arg0, arg0, fmt, args);
}

void PrintUtils_Printf(void* arg0, const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    PrintUtils_VPrintf(arg0, fmt, args);
}
