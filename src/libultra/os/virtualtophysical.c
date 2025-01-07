#include "global.h"

u32 osVirtualToPhysical(void* vaddr) {
    if (IS_KSEG0(vaddr)) {
        return K0_TO_PHYS(vaddr);
    } else if (IS_KSEG1(vaddr)) {
        return K1_TO_PHYS(vaddr);
    } else {
        return __osProbeTLB(vaddr);
    }
}
