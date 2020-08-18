#include "global.h"

void osSpTaskYield() {
    __osSpSetStatus(SP_STATUS_SIG3);
}
