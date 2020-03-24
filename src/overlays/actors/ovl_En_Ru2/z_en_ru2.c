#include "z_en_ru2.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnRu2_Init(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Destroy(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Update(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Draw(EnRu2* this, GlobalContext* globalCtx);

void func_80AF2CB4(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2CD4(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2CF4(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2D2C(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2D6C(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2DAC(EnRu2* this, GlobalContext* globalCtx);
void func_80AF2DEC(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3144(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3174(EnRu2* this, GlobalContext* globalCtx);
void func_80AF31C8(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3604(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3624(EnRu2* this, GlobalContext* globalCtx);
void func_80AF366C(EnRu2* this, GlobalContext* globalCtx);
void func_80AF36AC(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3BC8(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3C04(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3C64(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3CB8(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3D0C(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3D60(EnRu2* this, GlobalContext* globalCtx);

void func_80AF3F14(EnRu2* this, GlobalContext* globalCtx);
void func_80AF3F20(EnRu2* this, GlobalContext* globalCtx);
void func_80AF321C(EnRu2* this, GlobalContext* globalCtx);

void func_80AF2AB4(EnRu2* this, GlobalContext* globalCtx);

ColliderCylinderInit D_80AF40E0 = {
     { 0x0A, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00 }, 
     { 0x00, 0x00, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x00, 0x00, 0x00000080, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00 },
     { 0x001E, 0x0064, 0x0000, 0x0000, 0x0000, 0x0000},
};

u32 D_80AF410C[] = { 0x06000F20, 0x060022E0, 0x06002AE0, };

u32 D_80AF4118 = 0;
 
u32 D_80AF411C[] =
{
    0x00000023, 0x00000D0A, 0x00000020, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 
    0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x0000001F, 0x00000005, 0x00010000, 0x033D0000, 
    0x00000000, 0x00000000, 0x000000D8, 0x00000000, 0x00000000, 0x000000D8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
    0x0002033D, 0x033E0000, 0x00000000, 0x00000000, 0x000000D8, 0x00000000, 0x00000000, 0x000000D8, 0x00000000, 0x00000000, 
    0x00000000, 0x00000000, 0x0004033E, 0x03820000, 0x00000000, 0x00000000, 0x000000D8, 0x00000000, 0x00000000, 0x000000D8, 
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020382, 0x03B40000, 0x00000000, 0x00000000, 0x000000D8, 0x00000000, 
    0x00000000, 0x00000052, 0x00000000, 0x00000000, 0xC02B851F, 0x00000000, 0x000303B4, 0x0D0A0000, 0x00000000, 0x00000000, 
    0x00000052, 0x00000000, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000A, 0x00000005, 
    0x000D0000, 0x00F00000, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 
    0x00000000, 0x00000000, 0x000500F0, 0x02080000, 0x40000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00030208, 0x02260000, 0x40000000, 0x00000000, 0x00000006, 0x00000000, 
    0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00050226, 0x03210000, 0x40000000, 0x00000000, 
    0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00130321, 0x07A40000, 
    0xC0000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
    0x00000031, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0xFFFFFFF0, 
    0xFFFFFF87, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000005, 0x00050000, 0x01800000, 0x00000000, 0xFFFFFFA1, 
    0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00060180, 0x01C60000, 
    0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 
    0x000501C6, 0x022A0000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 
    0x00000000, 0x00000000, 0x0006022A, 0x02700000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, 
    0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00050270, 0x0BB90000, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000058, 
    0xFFFFFFA1, 0x00000000, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00000027, 0x00000001, 0x00010000, 0x0BB80000, 
    0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000000, 
    0x0000002A, 0x00000003, 0x00010000, 0x00920000, 0x00000000, 0x000000C3, 0x00000006, 0x00000000, 0x000000C3, 0x00000006, 
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020092, 0x02F20000, 0x00000000, 0x000000C3, 0x00000006, 0x00000000, 
    0x000000C3, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000302F2, 0x0A440000, 0x00000000, 0x000000C3, 
    0x00000006, 0x00000000, 0x000000C3, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000002D, 0x00000001, 
    0x0001032A, 0x03370337, 0x0000002D, 0x00000001, 0x00050339, 0x03570357, 0x0000002D, 0x00000001, 0x00010442, 0x04610461, 
    0x00000001, 0x00010000, 0x012D0000, 0x00000000, 0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, 0x432F65F8, 0xFD97001E, 
    0x00471FBC, 0x00000000, 0x432F65F8, 0xFD97001E, 0x0047D5E0, 0x00000000, 0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, 
    0x432F65F8, 0xFD97001E, 0x00471F98, 0x00000000, 0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, 0x4311CC7C, 0xFE38006B, 
    0x00380000, 0x00000000, 0x42726667, 0xFFB40036, 0x00470164, 0x00000000, 0x42726667, 0x00740036, 0x00602100, 0x00000000, 
    0x42726667, 0x00EC000B, 0x00400049, 0x00000000, 0x42726667, 0x00EC000B, 0x0040204C, 0x00000000, 0x42726667, 0x00EC000B, 
    0x0040E990, 0xFF000000, 0x42726667, 0x00EC000B, 0x00400000, 0x00000001, 0x00010107, 0x05CC0000, 0x00000000, 0x4228E87B, 
    0x00A10035, 0x001A0000, 0x00000000, 0x4228E87B, 0x00A10035, 0x001A1FBC, 0x00000000, 0x4228E87B, 0x00A10035, 0x001AD5E0, 
    0x00000000, 0x4228E87B, 0x00820009, 0x00600000, 0x00000000, 0x4228E87B, 0x00820009, 0x00601F98, 0x00000000, 0x4228E87B, 
    0x00820009, 0x00600000, 0x00000000, 0x4228E87B, 0x00820009, 0x00600000, 0xFF000000, 0x4228E87B, 0x00820009, 0x00600164, 
    0x00000001, 0x0001017F, 0x05C20000, 0x00000000, 0x428C743C, 0x00CF002D, 0x00220000, 0x00000000, 0x428C743C, 0x00CF002D, 
    0x00221FBC, 0x00000000, 0x428C743C, 0x00CF002D, 0x0022D5E0, 0x00000000, 0x428C743C, 0x00CF002D, 0x00220000, 0xFF000000, 
    0x428C743C, 0x00CF002D, 0x00221F98, 0x00000001, 0x000101C5, 0x06080000, 0x00000000, 0x42341BB1, 0xFFC6005A, 0x00460000, 
    0x00000000, 0x42341BB1, 0xFFC6005A, 0x00461FBC, 0x00000000, 0x42341BB1, 0xFFC6005A, 0x0046D5E0, 0x00000000, 0x42341BB1, 
    0xFFC6005A, 0x00460000, 0xFF000000, 0x42341BB1, 0xFFC6005A, 0x00461F98, 0x00000001, 0x00010229, 0x066C0000, 0x00000000, 
    0x428C743C, 0x00CF002D, 0x00220000, 0x00000000, 0x428C743C, 0x00CF002D, 0x00221FBC, 0x00000000, 0x428C743C, 0x00CF002D, 
    0x0022D5E0, 0x00000000, 0x428C743C, 0x00CF002D, 0x00220000, 0xFF000000, 0x428C743C, 0x00CF002D, 0x00221F98, 0x00000001, 
    0x0001026F, 0x06B20000, 0x00000000, 0x4271B55A, 0x00A1003B, 0x00000000, 0x00000000, 0x4271B55A, 0x00A1003B, 0x00001FBC, 
    0x00000000, 0x4271B55A, 0x00A1003B, 0x0000D5E0, 0x00000000, 0x4271B55A, 0x00A1003B, 0x00000000, 0xFF000000, 0x4271B55A, 
    0x00A1003B, 0x00001F98, 0x00000001, 0x000102B5, 0x06F80000, 0x00000000, 0x4271B55A, 0x00970052, 0x00230000, 0x00000000, 
    0x4271B55A, 0x00970052, 0x00231FBC, 0x00000000, 0x4271B55A, 0x00970052, 0x0023D5E0, 0x00000000, 0x4271B55A, 0x00970052, 
    0x00230000, 0xFF000000, 0x4271B55A, 0x00970052, 0x00231F98, 0x00000001, 0x000102FB, 0x03B00000, 0x00000000, 0x4271B55A, 
    0x00E60007, 0x00180000, 0x00000000, 0x4271B55A, 0x00E60007, 0x00181FBC, 0x00000000, 0x4271B55A, 0x00E60007, 0x0018D5E0, 
    0x00000000, 0x4271B55A, 0x00CF003E, 0x000F0000, 0x00000000, 0x428CDAA2, 0x00E600F0, 0x00181F98, 0x00000000, 0x428CDAA2, 
    0x00E600F0, 0x00180000, 0x00000000, 0x428CDAA2, 0x00E600F0, 0x00180000, 0xFF000000, 0x428CDAA2, 0x00E600F0, 0x00180164, 
    0x00000001, 0x00010337, 0x048D0000, 0x00000000, 0x42700000, 0x000D0356, 0x00020000, 0x00000000, 0x42700000, 0x00090355, 
    0x00051FBC, 0x00000000, 0x42700000, 0xFFFD0355, 0x0005D5E0, 0x00000000, 0x42700000, 0xFFF70355, 0xFFFA0000, 0x00000000, 
    0x42700000, 0xFFFE0354, 0xFFEF1F98, 0x00000000, 0x42700000, 0x00090354, 0xFFEF0000, 0x00000000, 0x42700000, 0x00100354, 
    0xFFFA0000, 0x00000000, 0x42700000, 0x00090354, 0x00050164, 0xFF000000, 0x42700000, 0xFFFD0353, 0x00052100, 0x00000005, 
    0x00010383, 0x08200000, 0x00000000, 0x4289332C, 0x00000021, 0xFFE50000, 0x00000000, 0x4289332C, 0x00000021, 0xFFE51FBC, 
    0x00000000, 0x4289332C, 0x00000044, 0xFFE6D5E0, 0x00000000, 0x4289332C, 0x00000067, 0xFFE60000, 0x00000000, 0x4289332C, 
    0x00000067, 0xFFE61F98, 0x00000000, 0x4289332C, 0x00000067, 0xFFE60000, 0x00000000, 0x4289332C, 0x00000067, 0xFFE60000, 
    0xFF000000, 0x4289332C, 0x00000067, 0xFFE60164, 0x00000002, 0x00010000, 0x014A0000, 0x001E0014, 0x432F65F8, 0xFD77FFB5, 
    0x00650000, 0x00E20014, 0x432F65F8, 0xFD74FFB5, 0x00621FBC, 0x001E0014, 0x432F65F8, 0xFD6EFFB5, 0x0057D5E0, 0x00E20014, 
    0x432F65F8, 0xFD5A007F, 0x00470000, 0x00000014, 0x432F65F8, 0xFD290000, 0x00471F98, 0x00000014, 0x4311CC7C, 0xFDFF0000, 
    0x002B0000, 0x0000001E, 0x42726667, 0xFEA30059, 0x002F0000, 0x0000001E, 0x42726667, 0x0006003D, 0x00010164, 0x0000001E, 
    0x42726667, 0x00210042, 0x001C2100, 0x0000001E, 0x42726667, 0x009E002A, 0x00010049, 0x0000001E, 0x42726667, 0x009E002A,
    0x0001204C, 0x0000001E, 0x42726667, 0x009E002A, 0x0001E990, 0xFF00001E, 0x42726667, 0x009E002A, 0x00010000, 0x00000002, 
    0x00010107, 0x05E90000, 0x0000001E, 0x4228E87B, 0x0142003E, 0xFF860000, 0x0000001E, 0x4228E87B, 0x0142003E, 0xFF861FBC,
    0x00000032, 0x4228E87B, 0x0142003E, 0xFF86D5E0, 0x00000032, 0x4228E87B, 0x00E8003F, 0xFFAD0000, 0x0000001E, 0x4228E87B, 
    0x00E8003F, 0xFFAD1F98, 0x000003E8, 0x4228E87B, 0x00E8003F, 0xFFAD0000, 0x0000001E, 0x4228E87B, 0x00E8003F, 0xFFAD0000, 
    0xFF00001E, 0x4228E87B, 0x00E8003F, 0xFFAD0164, 0x00000002, 0x0001017F, 0x05DF0000, 0x0000001E, 0x428C743C, 0x0033003E, 
    0xFF970000, 0x0000001E, 0x428C743C, 0x0033003E, 0xFF971FBC, 0x000003E8, 0x428C743C, 0x0033003E, 0xFF97D5E0, 0x0000001E, 
    0x428C743C, 0x0033003E, 0xFF970000, 0xFF00001E, 0x428C743C, 0x0033003E, 0xFF971F98, 0x00000002, 0x000101C5, 0x06250000, 
    0x0000001E, 0x42341BB1, 0x00660016, 0xFFE10000, 0x0000001E, 0x42341BB1, 0x00660016, 0xFFE11FBC, 0x000003E8, 0x42341BB1, 
    0x00660016, 0xFFE1D5E0, 0x0000001E, 0x42341BB1, 0x00660016, 0xFFE10000, 0xFF00001E, 0x42341BB1, 0x00660016, 0xFFE11F98, 
    0x00000002, 0x00010229, 0x06890000, 0x0000001E, 0x428C743C, 0x0033003E, 0xFF970000, 0x0000001E, 0x428C743C, 0x0033003E, 
    0xFF971FBC, 0x000003E8, 0x428C743C, 0x0033003E, 0xFF97D5E0, 0x0000001E, 0x428C743C, 0x0033003E, 0xFF970000, 0xFF00001E, 
    0x428C743C, 0x0033003E, 0xFF971F98, 0x00000002, 0x0001026F, 0x06CF0000, 0x0000001E, 0x4271B55A, 0x015B0016, 0x00000000, 
    0x0000001E, 0x4271B55A, 0x015B0016, 0x00001FBC, 0x000003E8, 0x4271B55A, 0x015B0016, 0x0000D5E0, 0x0000001E, 0x4271B55A, 
    0x015B0016, 0x00000000, 0xFF00001E, 0x4271B55A, 0x015B0016, 0x00001F98, 0x00000002, 0x000102B5, 0x07150000, 0x0000001E, 
    0x4271B55A, 0x0102FFE2, 0xFFCA0000, 0x0000001E, 0x4271B55A, 0x0102FFE2, 0xFFCA1FBC, 0x000003E8, 0x4271B55A, 0x0102FFE2, 
    0xFFCAD5E0, 0x0000001E, 0x4271B55A, 0x0102FFE2, 0xFFCA0000, 0xFF00001E, 0x4271B55A, 0x0102FFE2, 0xFFCA1F98, 0x00000002, 
    0x000102FB, 0x03CD0000, 0x0000001E, 0x4271B55A, 0x00600069, 0xFFE30000, 0x00000028, 0x4271B55A, 0x00600069, 0xFFE31FBC, 
    0x0000000F, 0x4271B55A, 0x00600069, 0xFFE3D5E0, 0x0000000F, 0x42701BC0, 0x006E00C4, 0xFFE60000, 0x00000014, 0x428CDAA2, 
    0x00B9018F, 0x00061F98, 0x0000001E, 0x428CDAA2, 0x00B9018F, 0x00060000, 0x0000001E, 0x428CDAA2, 0x00B9018F, 0x00060000, 
    0xFF00001E, 0x428CDAA2, 0x00B9018F, 0x00060164, 0x00000002, 0x00010337, 0x04BE0000, 0x00000032, 0x42700000, 0x00030006, 
    0xFFFA0000, 0x00000028, 0x42700000, 0x00030006, 0xFFFA1FBC, 0x0000001E, 0x424BFFF7, 0x00030006, 0xFFFAD5E0, 0x00000014, 
    0x41A4CC7E, 0x00030006, 0xFFFA0000, 0x00000033, 0x412CCC23, 0x00030006, 0xFFFA1F98, 0x00000032, 0x412665BD, 0x00030006, 
    0xFFFA0000, 0x00000032, 0x412665BD, 0x00030006, 0xFFFA0000, 0x00000032, 0x4123328A, 0x00030006, 0xFFFA0164, 0xFF000032, 
    0x412FFF56, 0x00030006, 0xFFFA2100, 0x00000006, 0x00010383, 0x083D0000, 0x0000001E, 0x4289332C, 0x00000064, 0x00050000, 
    0x0000001E, 0x4289332C, 0x00000065, 0x00061FBC, 0x0000001E, 0x4289332C, 0x00010063, 0x0029D5E0, 0x0000001E, 0x4289332C, 
    0x0000002A, 0x00100000, 0x0000001E, 0x4289332C, 0x0000002A, 0x00101F98, 0x000003E8, 0x4289332C, 0x0000002A, 0x00100000, 
    0x0000001E, 0x4289332C, 0x0000002A, 0x00100000, 0xFF00001E, 0x4289332C, 0x0000002A, 0x00100164, 0x0000003E, 0x00000001, 
    0x00040000, 0x0BB8C10F, 0x00000000, 0x0000004D, 0x00000050, 0xFFFFFFFE, 0x00000000, 0x00000050, 0x00000000, 0xBCD242E7, 
    0x00000000, 0x3CD242E7, 0x00000013, 0x0000000E, 0xFFFF0000, 0x018AFFFF, 0xFFFFFFFF, 0x4041018A, 0x01BC0000, 0x00000000, 
    0xFFFF01BC, 0x01D0FFFF, 0xFFFFFFFF, 0x404601D0, 0x021F0000, 0x00000000, 0xFFFF021F, 0x0234FFFF, 0xFFFFFFFF, 0x40490234, 
    0x02650000, 0x00000000, 0xFFFF0265, 0x027AFFFF, 0xFFFFFFFF, 0x4047027A, 0x02AC0000, 0x00000000, 0xFFFF02AC, 0x02C0FFFF, 
    0xFFFFFFFF, 0x404A02C0, 0x02EE0000, 0x00000000, 0xFFFF02EE, 0x043DFFFF, 0xFFFFFFFF, 0x003D043D, 0x04420000, 0x00000000, 
    0xFFFF0442, 0x047EFFFF, 0xFFFFFFFF, 0x4042047E, 0x04880000, 0x00000000, 0x000003E8, 0x00000001, 0x001504A6, 0x04BD04BD, 
    0x00000056, 0x00000001, 0x00440384, 0x03850000, 0x00000000, 0x00000000, 0xFFFFFFC7, 0x00000034, 0x00000000, 0xFFFFFFC7, 
    0x00000034, 0x00000000, 0x00000000, 0x00000000, 0x0000007C, 0x00000001, 0x00040320, 0x03520000, 0x00000000, 0x00000000, 
    0xFFFFFFC6, 0x00000030, 0x00000000, 0xFFFFFFC6, 0x00000030, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
};

ActorFunc D_80AF50BC[] =
{
    (ActorFunc)func_80AF2CB4,
    (ActorFunc)func_80AF2CD4,
    (ActorFunc)func_80AF2CF4,
    (ActorFunc)func_80AF2D2C,
    (ActorFunc)func_80AF2D6C,
    (ActorFunc)func_80AF2DAC,
    (ActorFunc)func_80AF2DEC,
    (ActorFunc)func_80AF3144,
    (ActorFunc)func_80AF3174,
    (ActorFunc)func_80AF31C8,
    (ActorFunc)func_80AF3604,
    (ActorFunc)func_80AF3624,
    (ActorFunc)func_80AF366C,
    (ActorFunc)func_80AF36AC,
    (ActorFunc)func_80AF3BC8,
    (ActorFunc)func_80AF3C04,
    (ActorFunc)func_80AF3C64,
    (ActorFunc)func_80AF3CB8,
    (ActorFunc)func_80AF3D0C,
    (ActorFunc)func_80AF3D60
};

ActorFunc D_80AF510C[] =
{
    (ActorFunc)func_80AF3F14,
    (ActorFunc)func_80AF3F20,
    (ActorFunc)func_80AF321C
};

const ActorInit En_Ru2_InitVars =
{
    ACTOR_EN_RU2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_RU2,
    sizeof(EnRu2),
    (ActorFunc)EnRu2_Init,
    (ActorFunc)EnRu2_Destroy,
    (ActorFunc)EnRu2_Update,
    (ActorFunc)EnRu2_Draw,
};

extern u32 D_060004CC;
extern u32 D_0600C700;
extern u32 D_0600D3DC;
extern u32 D_0600DCAC;
extern u32 D_06000DE8;
extern u32 D_0600E630;
extern u32 D_0600F03C;
extern u32 D_0600F8B8;
extern u32 D_80116280; // z_actor.c
extern u32 D_80116290;

void func_80AF2550(EnRu2* this, GlobalContext* globalCtx) {
    EnRu2* thisLocal = this;
    ActorCollider_AllocCylinder(globalCtx, &thisLocal->collider);
    func_8005C450(globalCtx, &thisLocal->collider, &this->actor, &D_80AF40E0);
}

void func_80AF259C(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad;
    ColliderCylinderMain* collider = &this->collider;
    Actor* thisx = &this->actor;
    s32 pad2[2];

    ActorCollider_Cylinder_Update(thisx, collider);
    Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, collider);
}

void EnRu2_Destroy(EnRu2* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    ActorCollider_FreeCylinder(globalCtx, collider);
}

void func_80AF2608(EnRu2* this) {
    s32 pad[3];
    s16* unk_2A6 = &this->unk_2A6;
    s16* unk_2A4 = &this->unk_2A4;

    if (!DECR(*unk_2A6)) {
        *unk_2A6 = Math_Rand_S16Offset(0x3C, 0x3C);
    }

    *unk_2A4 = *unk_2A6;
    if (*unk_2A4 >= 3) {
        *unk_2A4 = 0;
    }
}

s32 func_80AF2690(EnRu2* this) {
    s32 params_shift = this->actor.params >> 8;
    return params_shift & 0xFF;
}

s32 func_80AF26A0(EnRu2* this) {
    s16 params = this->actor.params;
    return params & 0xFF;
}

void func_80AF26AC(EnRu2* this) {
    this->action = 7;
    this->drawConfig = 0;
    this->unk_2B4 = 0;
    this->unk_2B8 = 0;
    this->actor.shape.unk_14 = 0;
    this->unk_2B0 = 0.0f;
}

void func_80AF26D0(EnRu2* this, GlobalContext* globalCtx) {
    s32 one;
    if (globalCtx->csCtx.state == 0) {
        if (D_80AF4118 != 0) {
            if (this->actor.params == 2) {
                func_80AF26AC(this);
            }
            D_80AF4118 = 0;
            return;
        }
    } 
    else {
        one = 1;
        if (D_80AF4118 == 0) {
            D_80AF4118 = one;
        }
    }
}

void func_80AF2744(EnRu2* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 EnRu2_FrameUpdateMatrix(EnRu2* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* func_80AF27AC(GlobalContext* globalCtx, s32 actorActionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.actorActions[actorActionIdx];
    }
    return 0;
}

s32 func_80AF27D0(EnRu2* this, GlobalContext* globalCtx, u16 arg2, s32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);

    if (csCmdActorAction != NULL && csCmdActorAction->action == arg2) {
        return 1;
    }
    return 0;
}

s32 func_80AF281C(EnRu2* this, GlobalContext* globalCtx, u16 arg2, s32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);

    if (csCmdActorAction != NULL && csCmdActorAction->action != arg2) {
        return 1;
    }
    return 0;
}

void func_80AF2868(EnRu2* this, GlobalContext* globalCtx, u32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdActorAction != NULL) {
        thisx->posRot.pos.x = csCmdActorAction->startPos.x;
        thisx->posRot.pos.y = csCmdActorAction->startPos.y;
        thisx->posRot.pos.z = csCmdActorAction->startPos.z;
        newRotY = csCmdActorAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

void func_80AF28E8(EnRu2* this, u32 animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(animation);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnimation(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_80AF2978(EnRu2* this, GlobalContext* globalCtx) {
    this->actor.shape.unk_08 += 83.333336f;
}

void func_80AF2994(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_06000DE8, 0, 0.0f, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

void func_80AF29DC(EnRu2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->posRot.pos.x;
    f32 posY = thisx->posRot.pos.y;
    f32 posZ = thisx->posRot.pos.z;
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void func_80AF2A38(EnRu2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.posRot.pos.x;
    f32 posY = player->actor.posRot.pos.y + 50.0f;
    f32 posZ = player->actor.posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0, 10);
    Item_Give(globalCtx, ITEM_MEDALLION_WATER);
}

void func_80AF2AB4(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if (gSaveContext.chamber_cutscene_num == 2 && gSaveContext.scene_setup_index < 4) {
        player = PLAYER;
        this->action = 1;
        globalCtx->csCtx.segment = &D_80AF411C;
        gSaveContext.cutscene_trigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_WATER);
        temp = this->actor.posRot.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.posRot.rot.y = temp;
    }
}

void func_80AF2B44(EnRu2* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* csCmdActorAction;
    if (csCtx->state != 0) {
        csCmdActorAction = csCtx->actorActions[3];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 2) {
            this->action = 2;
            this->drawConfig = 1;
            func_80AF29DC(this, globalCtx);
        }
    }
}

void func_80AF2B94(EnRu2* this) {
    if (this->actor.shape.unk_08 >= 0.0f) {
        this->action = 3;
        this->actor.shape.unk_08 = 0.0f;
    }
}

void func_80AF2BC0(EnRu2* this, GlobalContext* globalCtx) {
    UNK_PTR animation = &D_0600D3DC;
    CsCmdActorAction* csCmdActorAction;
    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.actorActions[3];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 3) {
            SkelAnime_ChangeAnimation(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(animation), 2, 0.0f);
            this->action = 4;
        }
    }
}

void func_80AF2C54(EnRu2* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        this->action = 5;
    }
}

void func_80AF2C68(EnRu2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdActorAction;
    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.actorActions[6];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 2) {
            this->action = 6;
            func_80AF2A38(this, globalCtx);
        }
    }
}

void func_80AF2CB4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2AB4(this, globalCtx);
}

void func_80AF2CD4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2B44(this, globalCtx);
}

void func_80AF2CF4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2978(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2B94(this);
}

void func_80AF2D2C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2BC0(this, globalCtx);
}

void func_80AF2D6C(EnRu2* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AF2744(this, globalCtx);
    something = EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2C54(this, something);
}

void func_80AF2DAC(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2C68(this, globalCtx);
}

void func_80AF2DEC(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
}

void func_80AF2E1C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_060004CC, 2, 0.0f, 0);
    this->action = 7;
    this->actor.shape.unk_14 = 0;
}

void func_80AF2E64() {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void func_80AF2E84(EnRu2* this, GlobalContext* globalCtx) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                        kREG(19) + 24.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 8);
}

void func_80AF2F04(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF27D0(this, globalCtx, 4, 3)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_2B4 = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_2B0 = 0.0f;
        func_80AF2E64();
    }
}

void func_80AF2F58(EnRu2* this, GlobalContext* globalCtx) {
    f32* unk_2B0 = &this->unk_2B0;
    s32 something;

    if (func_80AF27D0(this, globalCtx, 4, 3)) {
        *unk_2B0 += 1.0f;
        if (*unk_2B0 >= kREG(5) + 10.0f) {
            this->action = 9;
            this->drawConfig = 1;
            *unk_2B0 = kREG(5) + 10.0f;
            this->unk_2B4 = 0xFF;
            this->actor.shape.unk_14 = 0xFF;
            return;
        }
    } else {
        *unk_2B0 -= 1.0f;
        if (*unk_2B0 <= 0.0f) {
            this->action = 7;
            this->drawConfig = 0;
            *unk_2B0 = 0.0f;
            this->unk_2B4 = 0;
            this->actor.shape.unk_14 = 0;
            return;
        }
    }
    something = (*unk_2B0 / (kREG(5) + 10.0f)) * 255.0f;
    this->unk_2B4 = something;
    this->actor.shape.unk_14 = something;
}

void func_80AF30AC(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF281C(this, globalCtx, 4, 3)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_2B0 = kREG(5) + 10.0f;
        this->unk_2B4 = 0xFF;
        if (this->unk_2B8 == 0) {
            func_80AF2E84(this, globalCtx);
            this->unk_2B8 = 1;
        }
        this->actor.shape.unk_14 = 0xFF;
    }
}

void func_80AF3144(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2F04(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

void func_80AF3174(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2F58(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

void func_80AF31C8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF30AC(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF321C.s")
/*void func_80AF321C(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[3];
    u32 addr = D_80AF410C[this->unk_2A4];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 264);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0x00, this->unk_2B4);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280);

    gfxCtx->polyXlu.p = func_800A273C(globalCtx, skelAnime->limbIndex, skelAnime->actorDrawTbl, skelAnime->dListCount,
                                      0, 0, 0, gfxCtx->polyXlu.p);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 291);
}*/

void func_80AF3394(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_0600E630, 0, 0.0f, 0);
    this->action = 10;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80AF33E0(EnRu2* this) {
    f32* unk_2B0 = &this->unk_2B0;
    f32 temp_f0;
    s32 temp_f18;

    *unk_2B0 += 1.0f;

    temp_f0 = kREG(17) + 10.0f;
    if (temp_f0 <= *unk_2B0) {
        this->unk_2B4 = 0xFF;
        this->actor.shape.unk_14 = 0xFF;
    }
    else {
        temp_f18 = (*unk_2B0/ temp_f0) * 255.0f;
        this->unk_2B4 = temp_f18;
        this->actor.shape.unk_14 = temp_f18;
    }
}

void func_80AF346C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2868(this, globalCtx, 3);
    this->action = 11;
    this->drawConfig = 2;
}

void func_80AF34A4(EnRu2* this) {
    if (kREG(17) + 10.0f <= this->unk_2B0) {
        this->action = 12;
        this->drawConfig = 1;
    }
}

void func_80AF34F0(EnRu2* this) {
    func_80AF28E8(this, &D_0600DCAC, 2, 0.0f, 0);
    this->action = 13;
}

void func_80AF3530(EnRu2* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        func_80AF28E8(this, &D_0600F03C, 0, 0.0f, 0);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3564.s")
/*void func_80AF3564(EnRu2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, 3);
    s32 action;
    
    if (csCmdActorAction != NULL) {
        action = csCmdActorAction->action;
        if (action != this->unk_2BC) {
            switch (action) {
                case 7:
                    func_80AF346C(this, globalCtx);
                    break;
                case 8:
                    func_80AF34F0(this);
                    break;
                default:
                    osSyncPrintf("En_Ru2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_2BC = action;
        }
    }
}*/

void func_80AF3604(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF3564(this, globalCtx);
}

void func_80AF3624(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF33E0(this);
    func_80AF34A4(this);
}

void func_80AF366C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF3564(this, globalCtx);
}

void func_80AF36AC(EnRu2* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AF2744(this, globalCtx);
    something = EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF3530(this, something);
}

void func_80AF36EC(EnRu2* this, GlobalContext* globalCtx) {
    Flags_SetSwitch(globalCtx, func_80AF2690(this));
}

s32 func_80AF3718(EnRu2* this, GlobalContext* globalCtx) {
    return Flags_GetSwitch(globalCtx, func_80AF2690(this));
}

void func_80AF3744(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF3718(this, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }
    func_80AF28E8(this, &D_06000DE8, 0, 0.0f, 0);
    this->action = 14;
    this->drawConfig = 1;
}

void func_80AF37AC() {
    func_800F5C64(0x51);
}

void func_80AF37CC(EnRu2* this) {
    f32 funcFloat;
    this->unk_2C0 += 1;
    funcFloat = func_8006F9BC((kREG(2) + 0x96) & 0xFFFF, 0, this->unk_2C0, 8, 0);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (300.0f * funcFloat);
}

s32 func_80AF383C(EnRu2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 thisPosX = this->actor.posRot.pos.x;
    f32 playerPosX = player->actor.posRot.pos.x;
    if (playerPosX - thisPosX >= -202.0f) {
        return 1;
    }
    return 0;
}

void func_80AF3878(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF383C(this, globalCtx) && !func_800BFC84(globalCtx)) {
        this->action = 16;
        func_800800F8(globalCtx, 0xC3A, -0x63, &this->actor, 0);
    }
}

void func_80AF38D0(EnRu2* this, GlobalContext* globalCtx) {
    this->action = 16;
    func_800800F8(globalCtx, 0xC3A, -0x63, &this->actor, 0);
}


void func_80AF390C(EnRu2* this, GlobalContext* globalCtx) {
    f32* unk_2C4 = &this->unk_2C4;
    *unk_2C4 += 1.0f;
    if (*unk_2C4 == kREG(6) + 40.0f) {
        func_80AF37AC();
        return;
    }
    
    if (*unk_2C4 > kREG(4) + 50.0f) {
        this->actor.textId = 0x403E;
        func_8010B680(globalCtx, this->actor.textId, 0);
        this->action = 17;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF39DC.s")
/*void func_80AF39DC(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad;
    MessageContext* msgCtx;
    u8* unk_2C2;
    u8 dialogState;
    Player* player;
    s32 pad2;

    msgCtx = &globalCtx->msgCtx;
    dialogState = func_8010BDBC(msgCtx);

    if (dialogState == 3) {
        if (this->unk_2C3 != 3) {
            osSyncPrintf("おれが小松だ！ \n");
            unk_2C2 = &this->unk_2C2;
            *unk_2C2 += 1;
            *unk_2C2 = *unk_2C2 % 6;
            
            if (*unk_2C2 == 3) {
                player = PLAYER;
                osSyncPrintf("うおりゃー！ \n");
                func_8005B1A4(globalCtx->cameraCtx.activeCameraPtrs[0]);
                player->actor.posRot.pos.x = 820.0f;
                player->actor.posRot.pos.y = 0.0f;
                player->actor.posRot.pos.z = 180.0f;
            }
        }
    }

    this->unk_2C3 = dialogState;
    if (func_8010BDBC(msgCtx) == 2) {
        this->action = 18;
        func_8005B1A4(globalCtx->cameraCtx.activeCameraPtrs[0]);
    }
}*/

void func_80AF3ADC(EnRu2* this, GlobalContext* globalCtx) {
    this->unk_2C4 += 1.0f;
    if (this->unk_2C4 > kREG(5) + 100.0f) {
        func_80AF28E8(this, &D_0600F8B8, 0, -12.0f, 0);
        this->action = 0x13;
        func_80AF36EC(this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3B74.s")
/*void func_80AF3B74(EnRu2* this, GlobalContext* globalCtx) {
    u16 temp = (((u16)(kREG(3) + 0x28)) + ((u16)(kREG(2) + 0x96))) & 0xFFFFFFFFFFFFFFFF;

    if (this->unk_2C0 > temp) {
        Actor_Kill(&this->actor);
    }
}*/

void func_80AF3BC8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF3878(this, globalCtx);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF259C(this, globalCtx);
}

void func_80AF3C04(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    func_80AF259C(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF38D0(this, globalCtx);
}

void func_80AF3C64(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF390C(this, globalCtx);
}

void func_80AF3CB8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF39DC(this, globalCtx);
}

void func_80AF3D0C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF3ADC(this, globalCtx);
}

void func_80AF3D60(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF37CC(this);
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF3B74(this, globalCtx);
}

void EnRu2_Update(EnRu2* this, GlobalContext* globalCtx) {
    if (this->action < 0 || this->action >= 20 || D_80AF50BC[this->action] == 0) {
        osSyncPrintf("[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m");
        return;
    }
    D_80AF50BC[this->action](this, globalCtx);
}

void EnRu2_Init(EnRu2* this, GlobalContext* globalCtx) {
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    func_80AF2550(this, globalCtx);
    func_800A46F8(globalCtx, &this->skelAnime, &D_0600C700, 0, &this->unk_190, &this->unk_21A, 0x17);
    
    switch (func_80AF26A0(this)) {
        case 2:
            func_80AF2E1C(this, globalCtx);
            break;
        case 3:
            func_80AF3394(this, globalCtx);
            break;
        case 4:
            func_80AF3744(this, globalCtx);
            break;
        default:
            func_80AF2994(this, globalCtx);
            break;
    }

    this->unk_2C2 = 0;
    this->unk_2C3 = 3;
}

void func_80AF3F14(EnRu2* this, GlobalContext* globalCtx) {

}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3F20.s")
/*void func_80AF3F20(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[3];
    u32 something = D_80AF410C[this->unk_2A4];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_en_ru2.c", 642);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(something));  
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(something));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, &D_80116290);

    func_800A1AC8(globalCtx, skelAnime->limbIndex, skelAnime->actorDrawTbl, skelAnime->dListCount,
                  NULL, NULL, &this->actor);
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_en_ru2.c", 663);
}*/

void EnRu2_Draw(EnRu2* this, GlobalContext* globalCtx) {
if (this->drawConfig < 0 || this->drawConfig >= 3 || D_80AF510C[this->drawConfig] == 0)
    {
        osSyncPrintf("[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m");
        return;
    }
    D_80AF510C[this->drawConfig](this, globalCtx);
}
