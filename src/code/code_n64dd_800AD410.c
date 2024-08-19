#include "ultra64.h"
#include "z64dma.h"
#include "n64dd.h"

s8 func_801C7740_unknown(void);

void func_800ADA80(void) {
    if (!B_80121AE0) {
        DmaMgr_RequestSync(func_801C7740_unknown, (uintptr_t)D_00B8ADA0, D_00B9DA70 - D_00B8ADA0);
        bzero(&D_801DA410, &D_801E8090 - &D_801DA410);
        B_80121AE0 = true;
        B_80121AE1 = func_801C7740_unknown();
        if (B_80121AE1) {}
    }
}

void func_800ADAF8(void) {
    if (B_80121AE0 && (B_80121AE2 == 0)) {
        B_80121AE0 = false;
    }
}
