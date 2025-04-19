#include "ultra64.h"

void osDpSetStatus(u32 status) {
    IO_WRITE(DPC_STATUS_REG, status);
}
