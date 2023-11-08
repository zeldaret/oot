#ifndef STDIO_H
#define STDIO_H

#include "stdarg.h"

int sprintf(char* dst, const char* fmt, ...);
int vsprintf(char* dst, const char* fmt, va_list args);

#endif
