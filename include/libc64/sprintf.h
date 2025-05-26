#ifndef LIBC64_SPRINTF_H
#define LIBC64_SPRINTF_H

#include "stdarg.h"

int vsprintf(char* dst, const char* fmt, va_list args);
int sprintf(char* dst, const char* fmt, ...);

#endif
