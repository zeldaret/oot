#ifndef STRING_H
#define STRING_H

#include "stddef.h"

char* strchr(const char*, int);
size_t strlen(const char*);

void* memcpy(void*, const void*, size_t);

// TODO move
void bzero(void* __s, size_t __n);
int bcmp(const void* __sl, const void* __s2, size_t __n);
void bcopy(const void* __src, void* __dest, size_t __n);

#endif
