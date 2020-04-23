/*
 * File: z_bg_toki_swd.c
 * Overlay: ovl_Bg_Toki_Swd
 * Description: Master Sword (Contains Cutscenes)
 */

#include "z_bg_toki_swd.h"

#define FLAGS 0x00000010

void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_SetupAction(BgTokiSwd* this, ActorFunc actionFunc);
void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx);

extern u32 D_06001BD0;

static u32 D_808BB2F0[] = {
    0x00000009, 0x000001A9, 0x0000000A, 0x00000001, 0x000C0000, 0x01000000, 0x00000000, 0x00000000, 0x00000036,
    0x00000034, 0x00000000, 0x00000036, 0x00000034, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000001,
    0x0002006E, 0x006F0000, 0x00000000, 0x00000000, 0xFFFFFFE3, 0xFFFFFFC5, 0x00000000, 0xFFFFFFE3, 0xFFFFFFC5,
    0x00000000, 0x00000000, 0x00000000, 0x00000003, 0x00000001, 0x000A006E, 0x006F0000, 0x00000000, 0x00000000,
    0x0000002E, 0xFFFFFFE6, 0x00000000, 0x0000002E, 0xFFFFFFE6, 0x00000000, 0x00000000, 0x00000000, 0x000003E8,
    0x00000001, 0x000800E6, 0x00E700E7, 0x0000002D, 0x00000001, 0x000100D2, 0x00E600E6, 0x00000001, 0x00010000,
    0x00F10000, 0x00000000, 0x42700000, 0xFFD60048, 0xFFD9018C, 0x00000000, 0x42700000, 0xFFD60048, 0xFFD9019D,
    0x00000000, 0x42700000, 0xFFD60048, 0xFFD901AE, 0x00000000, 0x42700000, 0xFFD60048, 0xFFD902A8, 0x00000000,
    0x42700000, 0xFFD60048, 0xFFD90000, 0x00000000, 0x42700000, 0xFFD60048, 0xFFD9007A, 0x00000000, 0x42700000,
    0xFFD60048, 0xFFD90064, 0x00000000, 0x42700000, 0xFFD60048, 0xFFD90074, 0xFF000000, 0x42700000, 0xFFD60048,
    0xFFD9005F, 0x00000001, 0x00010050, 0x01960000, 0x00000000, 0x42700000, 0xFFFF005F, 0xFFED2F73, 0x00000000,
    0x42700000, 0xFFFF005F, 0xFFED6B2F, 0x00000000, 0x42700000, 0xFFFF005F, 0xFFED6169, 0x00000000, 0x42700000,
    0xFFFF005F, 0xFFED0000, 0x00000000, 0x42700000, 0xFFFF005F, 0xFFED0005, 0x00000000, 0x42700000, 0xFFFF0081,
    0xFFDE7961, 0x00000000, 0x42700000, 0xFFFF00AD, 0xFFED742F, 0x00000000, 0x42700000, 0xFFEF00D9, 0xFFEC2E64,
    0x00000000, 0x42700000, 0xFFE80148, 0xFFF40000, 0x00000000, 0x42700000, 0xFFE501FD, 0xFFFE2F73, 0x00000000,
    0x42700000, 0xFFD7032D, 0x000A6B2F, 0x00000000, 0x42700000, 0xFFC40505, 0x00266D61, 0x00000000, 0x42700000,
    0xFFC60776, 0x005B0000, 0x00000000, 0x42700000, 0xFFCB09DE, 0x00850005, 0x00000000, 0x42700000, 0xFFDF0D75,
    0x00C17961, 0x00000000, 0x42700000, 0x00000F78, 0x00E1742F, 0x00000000, 0x42700000, 0x000710DD, 0x00F56565,
    0x00000000, 0x42700000, 0x000710DC, 0x00F50000, 0x00000000, 0x42700000, 0x000710DC, 0x00F52F73, 0xFF000000,
    0x42700000, 0x000710DC, 0x00F56B2F, 0x00000002, 0x00010000, 0x010E0000, 0x0000001E, 0x42700000, 0xFFEC0055,
    0xFFF72F73, 0x0000001E, 0x42700000, 0xFFEC0055, 0xFFF76B2F, 0x0000001E, 0x42700000, 0xFFEC0055, 0xFFF76169,
    0x0000001E, 0x42700000, 0xFFEC0055, 0xFFF70000, 0x0000001E, 0x42700000, 0xFFEC0055, 0xFFF70005, 0x0000001E,
    0x42700000, 0xFFEC0055, 0xFFF77961, 0x0000001E, 0x42700000, 0xFFEC0055, 0xFFF7742F, 0x0000001E, 0x42700000,
    0xFFEC0055, 0xFFF72E64, 0xFF00001E, 0x42700000, 0xFFEC0055, 0xFFF70000, 0x00000002, 0x00010050, 0x01A90000,
    0x00000005, 0x42700000, 0xFFFF0070, 0x00072F73, 0x00000005, 0x42700000, 0xFFFF0070, 0x00076B2F, 0x00000005,
    0x42700000, 0xFFFF0070, 0x00076169, 0x00000005, 0x42700000, 0xFFFF0070, 0x00070000, 0x0000000F, 0x42700000,
    0xFFFF0070, 0x00070005, 0x00000014, 0x42700000, 0xFFFF0075, 0x00077961, 0x00000019, 0x42700000, 0xFFFF0075,
    0x0007742F, 0x00000019, 0x42700000, 0xFFFF0075, 0x00072E64, 0x00000014, 0x42700000, 0xFFFF0075, 0x00070000,
    0x00000014, 0x42700000, 0xFFFF0075, 0x00072F73, 0x00000014, 0x42700000, 0xFFFF0075, 0x00076B2F, 0x00000014,
    0x42700000, 0xFFFF0075, 0x00076D61, 0x00000014, 0x42700000, 0xFFFF0075, 0x00070000, 0x00000014, 0x42700000,
    0xFFFF0075, 0x00070005, 0x00000014, 0x42700000, 0xFFFF0075, 0x00077961, 0x00000014, 0x42700000, 0xFFFF0075,
    0x0007742F, 0x00000014, 0x42700000, 0xFFFF0075, 0x00076565, 0x00000014, 0x42700000, 0xFFFF0075, 0x00070000,
    0x00000014, 0x42700000, 0xFFFF0075, 0x00072F73, 0xFF000014, 0x42700000, 0xFFFF0075, 0x00076B2F, 0xFFFFFFFF,
    0x00000000, 0x00000000, 0x00000000,
};

static u32 D_808BB7A0[] = {
    0x00000009, 0x00000170, 0x00000001, 0x00010000, 0x007E0000, 0x00000000, 0x42700000, 0xFFFF0065, 0xFF92616D,
    0x00000000, 0x42200000, 0xFFFF0065, 0xFF926964, 0x00000000, 0x42200000, 0xFFFF0065, 0xFF9200FB, 0x00000000,
    0x42200000, 0xFFFF0065, 0xFF920111, 0x00000000, 0x42200000, 0xFFFF0065, 0xFF93012D, 0x00000000, 0x42200000,
    0xFFFF0047, 0xFF920033, 0x00000000, 0x42200000, 0xFFFF0048, 0xFF9200FB, 0x00000000, 0x42200000, 0xFFFF0048,
    0xFF9200FB, 0x00000000, 0x42200000, 0xFFFF0048, 0xFF922F68, 0xFF000000, 0x42200000, 0xFFFF0048, 0xFF92612F,
    0x00000001, 0x0001003A, 0x01530000, 0x00000000, 0x42700001, 0xFFF7006A, 0xFFFDA1BC, 0x00000000, 0x42700000,
    0xFFF7006A, 0xFFFDA5F3, 0x00000000, 0x42700000, 0xFFF7006A, 0xFFFDA5EB, 0x00000000, 0x42700000, 0xFFF7006A,
    0xFFFDA5A2, 0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBBAEE, 0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBC9B8,
    0x00000000, 0x42700000, 0xFFBD006C, 0xFFCB0020, 0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBA5A4, 0x00000000,
    0x42700000, 0xFFBD006C, 0xFFCB0020, 0x00000000, 0x42700000, 0xFFAD0066, 0xFFD6A5E1, 0x00000000, 0x42700000,
    0xFF8C0051, 0xFFEDA5D0, 0x00000000, 0x42700000, 0xFF8A0051, 0x00360020, 0x00000000, 0x42700000, 0xFF96004E,
    0x0074A5A6, 0x00000000, 0x42700000, 0xFFE5004B, 0x00E2A5E5, 0x00000000, 0x42700000, 0x00790052, 0x0138C0AE,
    0x00000000, 0x42700000, 0x0128004C, 0x0176A5E5, 0x00000000, 0x42700000, 0x02350050, 0x01010020, 0x00000000,
    0x42700000, 0x02660050, 0xFFFFA5EB, 0x00000000, 0x42700000, 0x02520050, 0xFF6FA5E1, 0x00000000, 0x42700000,
    0x01DB0050, 0xFE840020, 0x00000000, 0x42700000, 0x01430050, 0xFDFFA5E1, 0x00000000, 0x42700000, 0x00C00050,
    0xFDC2A5D0, 0x00000000, 0x42700000, 0xFFD30050, 0xFDA40020, 0x00000000, 0x42700000, 0xFF720050, 0xFDB3A5A6,
    0x00000000, 0x42700000, 0xFF1C0050, 0xFDCEA5E5, 0x00000000, 0x42700000, 0xFE88005D, 0xFE23C0AE, 0x00000000,
    0x42700000, 0xFDB8005F, 0xFF49A5E5, 0x00000000, 0x42700000, 0xFD9B005F, 0xFFDE0020, 0xFF000000, 0x42700000,
    0xFDAD005F, 0x00A1A5EB, 0x00000002, 0x00010000, 0x009B0000, 0x00000005, 0x4221999A, 0xFFFF006F, 0x0005A1BC,
    0x00000005, 0x42200000, 0xFFFF006F, 0x0005A5F3, 0x00000005, 0x42200000, 0xFFFF006F, 0x0005A5EB, 0x0000000F,
    0x42200000, 0xFFFF006F, 0x0005A5A2, 0x0000000F, 0x42200000, 0xFFFF006F, 0x0005BAEE, 0x0000000F, 0x42200000,
    0xFFFF0068, 0x0008C9B8, 0x00000005, 0x42200000, 0xFFFF0068, 0x00080020, 0x0000001E, 0x42200000, 0xFFFF0068,
    0x0008A5A4, 0x0000001E, 0x42200000, 0xFFFF0068, 0x00080020, 0xFF00001E, 0x42200000, 0xFFFF0068, 0x0008A5E1,
    0x00000002, 0x0001003A, 0x01700000, 0x00000005, 0x42700001, 0x00000078, 0x000CA1BC, 0x00000005, 0x42700000,
    0x00000078, 0x000CA5F3, 0x00000005, 0x42700000, 0x00000078, 0x000CA5EB, 0x0000000A, 0x42700000, 0x00000078,
    0x000CA5A2, 0x00000005, 0x42700000, 0xFFFF005F, 0x000BBAEE, 0x00000005, 0x42700000, 0xFFFF005F, 0x000BC9B8,
    0x00000005, 0x42700000, 0xFFFF005F, 0x000B0020, 0x00000005, 0x42700000, 0xFFFF005F, 0x000BA5A4, 0x00000005,
    0x42700000, 0xFFFF005F, 0x000B0020, 0x0000000A, 0x42700000, 0xFFFD005F, 0x0008A5E1, 0x0000000A, 0x42700000,
    0xFFFD005F, 0x0008A5D0, 0x0000000A, 0x42700000, 0xFFFD005F, 0x00080020, 0x0000000A, 0x42700000, 0xFFFD005F,
    0x0008A5A6, 0x0000000A, 0x42700000, 0xFFFD005F, 0x0008A5E5, 0x0000000A, 0x42700000, 0xFFFD005F, 0x0008C0AE,
    0x0000000A, 0x42700000, 0xFFFD005F, 0x0008A5E5, 0x0000000A, 0x42700000, 0xFFFD005F, 0x00080020, 0x0000000A,
    0x42700000, 0xFFFD005F, 0x0008A5EB, 0x0000000A, 0x42700000, 0xFFFD005F, 0x0008A5E1, 0x0000000A, 0x42700000,
    0xFFFD005F, 0x00080020, 0x0000000F, 0x42700000, 0xFFFD005F, 0x0008A5E1, 0x0000000F, 0x42700000, 0xFFFD005F,
    0x0008A5D0, 0x0000000F, 0x42700000, 0xFFFD005F, 0x00080020, 0x0000000F, 0x42700000, 0xFFFD005F, 0x0008A5A6,
    0x0000000F, 0x42700000, 0xFFFD005F, 0x0008A5E5, 0x0000000F, 0x42700000, 0xFFFD005F, 0x0008C0AE, 0x0000000F,
    0x42700000, 0xFFFD005F, 0x0008A5E5, 0x0000000F, 0x42700000, 0xFFFD005F, 0x00080020, 0xFF00001E, 0x42700000,
    0xFFFD005F, 0x0008A5EB, 0x0000000A, 0x00000001, 0x000C0000, 0x00B40000, 0x00000000, 0x00000000, 0x0000001C,
    0xFFFFFFF6, 0x00000000, 0xFFFFFFF2, 0x00000009, 0x00000000, 0xBE6EEEEF, 0x00000000, 0x00000004, 0x00000001,
    0x0002005A, 0x005B0000, 0x00000000, 0x00000000, 0xFFFFFFF2, 0x00000024, 0x00000000, 0xFFFFFFF2, 0x00000024,
    0x00000000, 0x00000000, 0x00000000, 0x00000003, 0x00000001, 0x000A005A, 0x005B0000, 0x00000000, 0x00000000,
    0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0x00000000, 0x00000000, 0x0000002D,
    0x00000001, 0x000100BE, 0x00D200D2, 0x000003E8, 0x00000001, 0x000800D2, 0x00D300D3, 0xFFFFFFFF, 0x00000000,
    0x00000000, 0x00000000,
};

static u32 D_808BBD90[] = {
    0x0000000B, 0x00000BB8, 0x00000021, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFF8,
    0xFFFFFFFF, 0x00000000, 0xFFFFFFF8, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x0000000A, 0x00000003,
    0x00050000, 0x00010000, 0x80000000, 0x00000000, 0x00000000, 0x00000334, 0x00000000, 0x00000000, 0x00000334,
    0x00000000, 0x00000000, 0x00000001, 0x00020001, 0x00100000, 0x80000000, 0x00000000, 0x00000000, 0x00000334,
    0x00000000, 0x00000000, 0x000002D0, 0x00000000, 0x00000000, 0x00000001, 0x00050010, 0x00B00000, 0x80000000,
    0x00000000, 0x00000000, 0x000002D0, 0x00000000, 0x00000000, 0x000002D0, 0x00000000, 0x00000000, 0x00000001,
    0x0000003E, 0x00000003, 0x00040028, 0x00467D74, 0x00000000, 0xFFFFFFFF, 0x00000031, 0x000002CF, 0x00000001,
    0x0000002F, 0x000002AF, 0x3D888889, 0xBD888889, 0xBD888889, 0x00040046, 0x00DC8010, 0x00000000, 0x00000001,
    0x0000002F, 0x000002AF, 0x00000000, 0x00000086, 0x00000015, 0xBBDA740E, 0x3F147AE1, 0x3BDA740E, 0x000200DC,
    0x01108000, 0x00000000, 0x00000000, 0x00000086, 0x00000015, 0x00000000, 0x00000065, 0x00000002, 0x00000000,
    0xBF227627, 0x00000000, 0x00000003, 0x00000001, 0x000C0154, 0x01550000, 0x00000000, 0xFFFFFFFF, 0x00000000,
    0xFFFFFFFD, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFD, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000006,
    0xFFFF0000, 0x0032FFFF, 0xFFFFFFFF, 0x70E60032, 0x003C0000, 0x00000000, 0xFFFF003C, 0x00FAFFFF, 0xFFFFFFFF,
    0x70E700FA, 0x01040000, 0x00000000, 0xFFFF0104, 0x0122FFFF, 0xFFFFFFFF, 0x70E80122, 0x01400000, 0x00000000,
    0x00000001, 0x00010000, 0x00FB0000, 0x00000000, 0x42700000, 0xFFC5000C, 0x02B20222, 0x00000000, 0x42700000,
    0xFFC5000C, 0x02B200FA, 0x00000000, 0x42700000, 0xFFC5000C, 0x02B20000, 0x00000000, 0x42700000, 0xFFC5000C,
    0x02B20000, 0x00000000, 0x42700000, 0xFFC5000C, 0x02B20000, 0x00000000, 0x42700000, 0xFFE10018, 0x02BD0000,
    0x00000000, 0x42700000, 0xFFE10018, 0x02BD0000, 0x00000000, 0x42700000, 0xFFE10018, 0x02BD0000, 0x00000000,
    0x42700000, 0xFFE10018, 0x02BD2D70, 0x00000000, 0x42700000, 0xFFE10018, 0x02BD0085, 0x00000000, 0x42700000,
    0xFFE10018, 0x02BD01E6, 0xFF000000, 0x42700000, 0xFFE10018, 0x02BD0000, 0x00000001, 0x0001005A, 0x014B0000,
    0x00000000, 0x42700000, 0xFF66005C, 0x00EC0222, 0x00000000, 0x42700000, 0xFF66005C, 0x00EC00FA, 0x00000000,
    0x42700000, 0xFF66005C, 0x00EC0000, 0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, 0x00000000, 0x42700000,
    0xFF66005C, 0x00EC0000, 0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, 0x00000000, 0x42700000, 0xFF66005C,
    0x00EC0000, 0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, 0xFF000000, 0x42700000, 0xFF66005C, 0x00EC2D70,
    0x00000001, 0x000100DC, 0x01EB0000, 0x00000000, 0x42700001, 0xFFFE007A, 0x00270222, 0x00000000, 0x42700001,
    0xFFFE007A, 0x002700FA, 0x00000000, 0x42700001, 0xFFFE0066, 0x00270000, 0x00000000, 0x42700001, 0xFFFE005A,
    0x00270000, 0x00000000, 0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, 0x42700001, 0xFFFE0051, 0x003E0000,
    0x00000000, 0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, 0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000,
    0x42700001, 0xFFFE0051, 0x003E2D70, 0xFF000000, 0x42700001, 0xFFFE0051, 0x003E0085, 0x00000002, 0x00010000,
    0x01180000, 0x0000001E, 0x42700000, 0x002B0034, 0x02CC0222, 0x0000001E, 0x42700000, 0x002B0034, 0x02CC00FA,
    0x0000000A, 0x42700000, 0x002B0034, 0x02CC0000, 0x0000000A, 0x42700000, 0x002B0034, 0x02CC0000, 0x0000000A,
    0x42700000, 0x002B0034, 0x02CC0000, 0x0000000A, 0x42700000, 0x003F0056, 0x02D20000, 0x0000001E, 0x42700000,
    0x003F0056, 0x02D20000, 0x0000001E, 0x42700000, 0x003F0056, 0x02D20000, 0x0000001E, 0x42700000, 0x003F0056,
    0x02D22D70, 0x0000001E, 0x42700000, 0x003F0055, 0x02D10085, 0x0000001E, 0x42700000, 0x003F0055, 0x02D101E6,
    0xFF00001E, 0x42700000, 0x003E0055, 0x02D10000, 0x00000002, 0x0001005A, 0x01680000, 0x0000001E, 0x42700000,
    0xFF970053, 0x016E0222, 0x0000001E, 0x42700000, 0xFF980053, 0x016C00FA, 0x0000001E, 0x42700000, 0xFFC10053,
    0x01530000, 0x0000001E, 0x42700000, 0xFFF00063, 0x00FF0000, 0x0000001E, 0x42700000, 0xFFE2006F, 0x00B10000,
    0x0000001E, 0x42700000, 0xFFB00070, 0x00790000, 0x0000001E, 0x42700000, 0xFFB00070, 0x00790000, 0x0000001E,
    0x42700000, 0xFFB00070, 0x00790000, 0xFF00001E, 0x42700000, 0xFFB00070, 0x00792D70, 0x00000002, 0x000100DC,
    0x02080000, 0x0000001E, 0x42700001, 0x00000089, 0xFFC90222, 0x0000001E, 0x42700001, 0x00000089, 0xFFC900FA,
    0x0000001E, 0x42700001, 0x00000075, 0xFFC90000, 0x0000001E, 0x42700001, 0x00000069, 0xFFC90000, 0x0000001E,
    0x42700001, 0x00000062, 0xFFE10000, 0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, 0x0000001E, 0x42700001,
    0x00000062, 0xFFE10000, 0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, 0x0000001E, 0x42700001, 0x00000062,
    0xFFE12D70, 0xFF00001E, 0x42700001, 0x00000062, 0xFFE10085, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000,
};

const ActorInit Bg_Toki_Swd_InitVars = {
    ACTOR_BG_TOKI_SWD,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiSwd),
    (ActorFunc)BgTokiSwd_Init,
    (ActorFunc)BgTokiSwd_Destroy,
    (ActorFunc)BgTokiSwd_Update,
    (ActorFunc)BgTokiSwd_Draw,
};

static ColliderCylinderInit colliderInit = {
    0x0A, 0x00, 0x00,       0x39, 0x12, 0x01, 0x00, 0x00, 0x00,   0x00,   0x00,   0x00,   0xFFCFFFFF, 0x00,   0x00,
    0x00, 0x00, 0xFFCFFFFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0000, 0x0001, 0x0000, 0x000A, 0x0046,     0x0000,
};

static Sub98Init4 sub98Init = {
    0x0A,
    0x0023,
    0x0064,
    0xFF,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0x19, ICHAIN_STOP),
};

void BgTokiSwd_SetupAction(BgTokiSwd* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collision;
    Actor* thisx = &this->actor;

    Actor_ProcessInitChain(thisx, initChain);
    this->actor.shape.unk_08 = 800.0f;
    BgTokiSwd_SetupAction(thisx, func_808BAF40);
    collision = &this->collider;
    if (LINK_IS_ADULT) {
        thisx->draw = NULL;
    }

    if (gSaveContext.sceneSetupIndex == 5) {
        globalCtx->unk_11D30[0] = 0xFF;
    }

    ActorCollider_AllocCylinder(globalCtx, collision);
    ActorCollider_InitCylinder(globalCtx, collision, thisx, &colliderInit);
    ActorCollider_Cylinder_Update(thisx, collision);
    func_80061ED4(&thisx->sub_98, 0, &sub98Init);
}

void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    ActorCollider_FreeCylinder(globalCtx, collider);
}

void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx) {
    if (((gSaveContext.eventChkInf[4] & 0x8000) == 0) && (gSaveContext.sceneSetupIndex < 4) &&
        (func_8002E12C(&this->actor, 800.0f, 0x7530) != 0) && !Gameplay_InCsMode(globalCtx)) {
        gSaveContext.eventChkInf[4] |= 0x8000;
        globalCtx->csCtx.segment = D_808BBD90;
        gSaveContext.cutsceneTrigger = 1;
    }
    if (LINK_IS_CHILD || ((gSaveContext.eventChkInf[5] & 0x20) != 0)) {
        if (func_8002F410(&this->actor, globalCtx) != 0) {
            if (LINK_IS_CHILD) {
                Item_Give(globalCtx, ITEM_SWORD_MASTER);
                globalCtx->csCtx.segment = D_808BB2F0;
            } else {
                globalCtx->csCtx.segment = D_808BB7A0;
            }
            Audio_SetBGM(NA_BGM_STOP);
            Audio_SetBGM(NA_SE_PL_BOUND_DIRT);
            gSaveContext.cutsceneTrigger = 1;
            this->actor.attachedA = 0;
            BgTokiSwd_SetupAction(this, func_808BB0AC);
        } else {
            if (func_8002E084(&this->actor, 0x2000) != 0) {
                func_8002F580(&this->actor, globalCtx);
            }
        }
    }
    if (gSaveContext.sceneSetupIndex == 5) {
        if (globalCtx->unk_11D30[0] > 0) {
            globalCtx->unk_11D30[0]--;
        } else {
            globalCtx->unk_11D30[0] = 0;
        }
    }
}

void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx) {
    Player* player;

    // if attached is set, sword has been pulled/placed from the pedestal
    if (func_8002F410(&this->actor, globalCtx) != 0) {
        if (LINK_IS_CHILD) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_PUTAWAY_STN);
            this->actor.draw = NULL; // sword has been pulled, dont draw sword
        } else {
            this->actor.draw = BgTokiSwd_Draw; // sword has been placed, draw the master sword
        }
        BgTokiSwd_SetupAction(this, func_808BB128);
    } else {
        player = PLAYER;
        player->interactRangeActor = &this->actor;
    }
}

void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx) {
    if ((func_8006C4A4(globalCtx, 1) != 0) && (globalCtx->unk_11D30[0] < 0xFF)) {
        globalCtx->unk_11D30[0] += 5;
    }
}

void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx) {
    this->actionFunc(&this->actor, globalCtx);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
}

void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx) {
    s32 pad[4];
    GameState* state;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];
    state = &globalCtx->state;
    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, state->gfxCtx, "../z_bg_toki_swd.c", 727);
    func_80093D18(globalCtx->state.gfxCtx);

    func_8002EBCC(&this->actor, globalCtx, 0);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 0, -(globalCtx->gameplayFrames % 0x80), 32, 32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_swd.c", 742),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06001BD0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_toki_swd.c", 776);
}
