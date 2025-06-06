#ifndef STRING_H
#define STRING_H

#include "stddef.h"

char* strchr(const char*, int);
size_t strlen(const char*);

void* memcpy(void*, const void*, size_t);
void* memmove(void* dest, const void* src, size_t len);
void* memset(void* dest, int val, size_t len);

#endif
