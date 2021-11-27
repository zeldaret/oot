#include "global.h"
#include "ultra64/internal.h"

void __osSetHWIntrRoutine(OSHWIntr interrupt, s32 (*handler)(void), void* sp) {
    register u32 prevInt = __osDisableInt();

    __osHwIntTable[interrupt].handler = handler;
    __osHwIntTable[interrupt].sp = sp;

    __osRestoreInt(prevInt);
}
