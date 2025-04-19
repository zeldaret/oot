#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoLBAToByte(s32 startlba, u32 nlbas, s32* bytes) {
    u32 resbytes;
    u32 byte_p_blk;
    u16 zone;
    u16 vzone;
    u8 flag;

    if (!__leoActive) {
        return -1;
    }

    resbytes = 0;
    flag = vzone = 1;
    startlba += 0x18;
    while (nlbas > 0) {
        if ((flag != 0) || (LEOVZONE_TBL[LEOdisk_type][vzone] == startlba)) {
            vzone = leoLba_to_vzone(startlba);
            zone = LEOVZONE_PZONEHD_TBL[LEOdisk_type][vzone];
            if (zone >= 8) {
                zone -= 7;
            }
            byte_p_blk = LEOBYTE_TBL2[zone];
        }
        resbytes += byte_p_blk;
        nlbas--;
        startlba++;
        if ((nlbas > 0) && ((u32)startlba >= NUM_LBAS + 0x18)) {
            return LEO_ERROR_LBA_OUT_OF_RANGE;
        }
        flag = 0;
    }

    *bytes = resbytes;
    return LEO_ERROR_GOOD;
}
