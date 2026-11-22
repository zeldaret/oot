#include "libaudio.h"
#include "synthInternals.h"
#include "stddef.h"
#include "attributes.h"

void* alHeapDBAlloc(UNUSED u8* file, UNUSED s32 line, ALHeap* hp, s32 num, s32 size) {
    s32 bytes;
    u8* ptr = NULL;

    bytes = (num * size + AL_CACHE_ALIGN) & ~AL_CACHE_ALIGN;

    if (hp->cur + bytes <= hp->base + hp->len) {
        ptr = hp->cur;
        hp->cur += bytes;
    }
    return ptr;
}
