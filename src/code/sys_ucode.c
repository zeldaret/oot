#include "global.h"

uintptr_t D_8012DBA0 = (uintptr_t)&D_80155F50;
uintptr_t D_8012DBA4 = (uintptr_t)&D_80157580;

u32 SysUcode_GetUCodeBoot(void) {
    return &D_80009320;
}

u32 SysUcode_GetUCodeBootSize(void) {
    return (uintptr_t)&D_800093F0 - (uintptr_t)&D_80009320;
}

u32 SysUcode_GetUCode(void) {
    return D_8012DBA0;
}

u32 SysUcode_GetUCodeData(void) {
    return D_8012DBA4;
}
