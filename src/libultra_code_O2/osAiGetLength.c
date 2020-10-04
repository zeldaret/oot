#include "global.h"

u32 osAiGetLength() {
    return HW_REG(AI_LEN_REG, u32);
}
