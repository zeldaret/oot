#include "internal.h"
#include "rcp.h"

void osSpTaskYield(void) {
    __osSpSetStatus(SP_SET_SIG0);
}
