#include "global.h"
#include "ultra64/viint.h"

void osViSetMode(OSViMode* mode) {
    register u32 prevInt = __osDisableInt();

    __osViNext->modep = mode;
    __osViNext->state = VI_STATE_MODE_SET;
    __osViNext->features = __osViNext->modep->comRegs.ctrl;

    __osRestoreInt(prevInt);
}
