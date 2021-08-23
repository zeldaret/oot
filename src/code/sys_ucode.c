#include "global.h"

u32 D_8012DBA0 = (u32)&D_80155F50;
u32 D_8012DBA4 = (u32)&D_80157580;

u32 SysUcode_GetUCodeBoot(void) {
    return &D_80009320;
}

u32 SysUcode_GetUCodeBootSize(void) {
    return (u32)&D_800093F0 - (u32)&D_80009320;
}

u32 SysUcode_GetUCode(void) {
    return D_8012DBA0;
}

u32 SysUcode_GetUCodeData(void) {
    return D_8012DBA4;
}
