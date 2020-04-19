#include <global.h>

OSThread* __osGetActiveQueue() {
    return __osActiveQueue;
}
