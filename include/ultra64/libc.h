#ifndef ULTRA64_LIBC_H
#define ULTRA64_LIBC_H

#include "stddef.h"

void osSyncPrintf(const char* fmt, ...);

#ifdef __GNUC__
void bzero(void* __s, unsigned int __n);
int bcmp(const void* __sl, const void* __s2, unsigned int __n);
void bcopy(const void* __src, void* __dest, unsigned int __n);
#else
void bzero(void* __s, int __n);
int bcmp(const void* __sl, const void* __s2, int __n);
void bcopy(const void* __src, void* __dest, int __n);
#endif

#endif
