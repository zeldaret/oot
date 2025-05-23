#include "libc/stddef.h"

int strcmp(const char* s, const char* t) {
    while (*s == *t) {
        if (*s == '\0') {
            return 0;
        }
        s++;
        t++;
    }

    return *s - *t;
}

void* memset(char* s, int c, size_t n) {
    size_t i;

    for (i = 0; i < n; i++) {
        s[i] = c;
    }

    return s;
}

int strncmp(const char* s, const char* t, int n) {
    int i;

    for (i = 0; (*s == *t) && (i < n); i++) {
        if (*s == '\0') {
            if (*t == '\0') {
                return 0;
            }
            break;
        }
        if (*t == '\0') {
            break;
        }
        s++;
        t++;
    }
    return (i != n) ? *s - *t : 0;
}
