#ifndef ULTRA64_LIBC_H
#define ULTRA64_LIBC_H

#include "stddef.h"

void osSyncPrintf(const char* fmt, ...);

void bzero(void* __s, int __n);
int bcmp(const void* __sl, const void* __s2, int __n);
void bcopy(const void* __src, void* __dest, int __n);

#endif
