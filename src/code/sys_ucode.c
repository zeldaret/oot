#include "global.h"

u64* sDefaultGSPUCodeText = gspF3DZEX2_NoN_PosLight_fifoTextStart;
u64* sDefaultGSPUCodeData = gspF3DZEX2_NoN_PosLight_fifoDataStart;

u64* SysUcode_GetUCodeBoot(void) {
    return rspbootTextStart;
}

size_t SysUcode_GetUCodeBootSize(void) {
    return (size_t)((u8*)rspbootTextEnd - (u8*)rspbootTextStart);
}

u64* SysUcode_GetUCode(void) {
    return sDefaultGSPUCodeText;
}

u64* SysUcode_GetUCodeData(void) {
    return sDefaultGSPUCodeData;
}
