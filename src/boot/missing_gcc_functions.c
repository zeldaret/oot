#include "global.h"

// Define functions needed for the GCC build here.

void *memset(void *s, int c, size_t n) {
    u8 *ptr = s;
    int i;

    for (i = 0; i < n; i++) {
        ptr[i] = c;
    }
    return s;
}

f32 __floatundisf(u32 c) {
    return (f32)c;    
}

f64 __floatundidf(u32 c) {
    return (f64)c;
}
