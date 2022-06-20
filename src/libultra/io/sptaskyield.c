#include "global.h"

void osSpTaskYield(void) {
    __osSpSetStatus(SP_SET_SIG0);
}
