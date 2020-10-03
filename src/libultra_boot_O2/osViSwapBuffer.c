#include "global.h"

void osViSwapBuffer(void* vaddr) {
    u32 int_disabled = __osDisableInt();
    __osViNext->buffer = vaddr;
    __osViNext->state |= 0x10; // TODO: figure out what this flag means
    __osRestoreInt(int_disabled);
}
