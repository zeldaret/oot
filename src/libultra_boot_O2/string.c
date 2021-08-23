#include "global.h"

const char* strchr(const char* str, s32 ch) {
    u8 c = ch;

    while (*str != c) {
        if (*str == 0) {
            return NULL;
        }
        str++;
    }
    return str;
}

u32 strlen(const char* str) {
    const char* ptr = str;

    while (*ptr) {
        ptr++;
    }
    return ptr - str;
}

void* memcpy(void* dst, const void* src, u32 size) {
    u8* _dst = dst;
    const u8* _src = src;

    while (size > 0) {
        *_dst++ = *_src++;
        size--;
    }
    return dst;
}
