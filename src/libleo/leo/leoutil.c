#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

#include "macros.h"

u16 leoLba_to_phys(u32 lba) {
    u16 vzone_num;
    u16 zone_slba;
    u16 zone_scyl;
    u16 zone_tk;
    u16 bad_tk_num;
    u32 counter;
    u16 def_offset;
    u16 defect;
    u8 def_zone_no;

    // A cylinder track is made of two blocks, so we may be able to only read one of it if the next block is on the next
    // cylinder
    LEOtgt_param.rdwr_blocks = 2 - (lba & 1);

    // Blocks are interleaved between cylinders
    switch (lba & 3) {
        case 0:
        case 3:
            LEOtgt_param.start_block = 0;
            break;
        default:
            LEOtgt_param.start_block = 1;
            break;
    }

    // Get Virtual & Physical Disk Zones from LBA
    vzone_num = leoLba_to_vzone(lba);

    // Set Parameter Disk Head & Zone
    LEOtgt_param.zone = def_zone_no = LEOVZONE_PZONEHD_TBL[LEOdisk_type][vzone_num];
    LEOtgt_param.head = 0;
    if (LEOtgt_param.zone > 7) {
        LEOtgt_param.zone -= 7;
        LEOtgt_param.head = 1;
    }

    // Get the start cylinder from current zone
    zone_scyl = LEOZONE_SCYL_TBL[def_zone_no];

    // Get Virtual Zone LBA start, if Zone 0, it's LBA 0
    if (vzone_num != 0) {
        zone_slba = LEOVZONE_TBL[LEOdisk_type][vzone_num - 1];
    } else {
        zone_slba = 0;
    }
    // Get Cylinder relative of the current Zone
    zone_tk = (lba - zone_slba) / 2;
    // Calculate Physical Cylinder
    if (LEOtgt_param.head != 0) {
        LEOtgt_param.cylinder = zone_scyl - zone_tk;
        zone_scyl = LEOZONE_OUTERCYL_TBL[LEOtgt_param.zone - 1];
    } else {
        LEOtgt_param.cylinder = zone_scyl + zone_tk;
    }

    // Get the relative offset to defect tracks for the current zone (if Zone 0, then it's 0)
    if ((u32)def_zone_no != 0) {
        def_offset = LEO_sys_data.param.defect_num[def_zone_no - 1];
    } else {
        def_offset = 0;
    }
    // Get amount of defect tracks for the current zone
    bad_tk_num = LEO_sys_data.param.defect_num[def_zone_no] - def_offset;

    // Skip defective cylinders
    while (bad_tk_num != 0) {
        defect = zone_scyl + LEO_sys_data.param.defect_data[def_offset];
        if (LEOtgt_param.cylinder < defect) {
            break;
        }

        LEOtgt_param.cylinder++;
        def_offset++;
        bad_tk_num--;
    }

    // Set sector and block size info
    LEOtgt_param.sec_bytes = LEOBYTE_TBL1[LEOtgt_param.zone];
    LEOtgt_param.blk_bytes = LEOBYTE_TBL2[LEOtgt_param.zone];

    // For development disks
    if (LEO_country_code == 0 && lba < 12) {
        LEOtgt_param.sec_bytes = 0xC0;
        LEOtgt_param.blk_bytes = 0x3FC0;
    }

    return 0;
}

u16 leoLba_to_vzone(u32 lba) {
    u16 i;
    const u16* ptr = LEOVZONE_TBL[LEOdisk_type];

    for (i = 0; i < ARRAY_COUNT(LEOVZONE_TBL[LEOdisk_type]); i++, ptr++) {
        if (lba < *ptr) {
            return i;
        }
    }

    return 0xFF;
}
