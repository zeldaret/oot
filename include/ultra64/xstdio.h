#ifndef ULTRA64_PRINTF_H
#define ULTRA64_PRINTF_H

#include "stdarg.h"

// IDO doesn't support long double types, improve portability for compilers supporting them
#ifdef __sgi
#define LONG_DOUBLE_TYPE double
#else
#define LONG_DOUBLE_TYPE long double
#endif

typedef struct {
    /* 0x00 */ union {
        long long ll;
        LONG_DOUBLE_TYPE ld;
    } v;
    /* 0x08 */ char* s;
    /* 0x0C */ int n0;
    /* 0x10 */ int nz0;
    /* 0x14 */ int n1;
    /* 0x18 */ int nz1;
    /* 0x1C */ int n2;
    /* 0x20 */ int nz2;
    /* 0x24 */ int prec;
    /* 0x28 */ int width;
    /* 0x2C */ size_t nchar;
    /* 0x30 */ unsigned int flags;
    /* 0x34 */ char qual;
} _Pft; // size = 0x38

typedef void* (*PrintCallback)(void*, const char*, size_t);

int _Printf(PrintCallback, void* arg, const char* fmt, va_list ap);
void _Litob(_Pft* args, char code);
void _Ldtob(_Pft* args, char code);

#define FLAGS_SPACE (1 << 0)
#define FLAGS_PLUS  (1 << 1)
#define FLAGS_MINUS (1 << 2)
#define FLAGS_HASH  (1 << 3)
#define FLAGS_ZERO  (1 << 4)

#endif
