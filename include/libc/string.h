#ifndef STRING_H
#define STRING_H

#include "stddef.h"

char* strchr(const char*, int);
size_t strlen(const char*);

void* memcpy(void*, const void*, size_t);
#ifdef BBPLAYER
#define func_80106860 memset
#endif
void* func_80106860(void* ptr, int val, size_t size);
void* func_801068B0(void* dst, void* src, size_t size);

#endif
