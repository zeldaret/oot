#include <global.h>

u32 SysUcode_GetUCodeBoot() {
    return &D_80009320;
}

u32 SysUcode_GetUcodeBootSize() {
    return (u32)&D_800093F0 - (u32)&D_80009320;
}

u32 SysUcode_GetUcode() {
    return D_8012DBA0;
}

u32 SysUcode_GetUcodeData() {
    return D_8012DBA4;
}
