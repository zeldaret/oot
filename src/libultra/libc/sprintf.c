#include "stdarg.h"
#include "stdio.h"
#include "string.h"
#include "ultra64/xstdio.h"

void* proutSprintf(void* dst, const char* fmt, size_t size) {
    return (char*)memcpy(dst, fmt, size) + size;
}

int vsprintf(char* dst, const char* fmt, va_list args) {
    int ret = _Printf(proutSprintf, dst, fmt, args);

    if (ret > -1) {
        dst[ret] = '\0';
    }
    return ret;
}

int sprintf(char* dst, const char* fmt, ...) {
    int ret;
    va_list args;
    va_start(args, fmt);

    ret = _Printf(proutSprintf, dst, fmt, args);
    if (ret > -1) {
        dst[ret] = '\0';
    }

    va_end(args);

    return ret;
}
