#include "ultra64.h"

void osSetTime(OSTime time) {
    __osCurrentTime = time;
}
