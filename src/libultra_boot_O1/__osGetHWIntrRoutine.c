#include "global.h"
#include "ultra64/internal.h"

void __osGetHWIntrRoutine(OSHWIntr interrupt, s32 (**handlerOut)(void), void** spOut) {
    *handlerOut = __osHwIntTable[interrupt].handler;
    *spOut = __osHwIntTable[interrupt].sp;
}
