#include "z_demo_du.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((DemoDu*)thisx)

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx);

extern AnimationHeader D_06000800;
extern AnimationHeader D_06000D00;
extern AnimationHeader D_06001D70;
extern AnimationHeader D_06002374;
extern AnimationHeader D_0600288C;
extern UNK_TYPE D_06005458;
extern UNK_TYPE D_06006104;
extern AnimationHeader D_060067CC;
extern AnimationHeader D_06006EB0;
extern Gfx D_06007FC0;
extern FlexSkeletonHeader D_06011CA8;
extern AnimationHeader D_06012014;



static s32 sUnused = 0;


/*
.word 0x00000000
glabel D_8096C1A4
 .word 0x0000001F, 0x00000BB8, 0x00000020, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x0000001F, 0x00000005, 0x00010000, 0x02220000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00020222, 0x02230000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00040223, 0x02680000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00020268, 0x029B0000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0xC0282828, 0x00000000, 0x0003029B, 0x0B120000, 0x00000000, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000A, 0x00000003, 0x000D0000, 0x01180000, 0x6AAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00050118, 0x02130000, 0x6AAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00130213, 0x06B40000, 0xEAAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000029, 0x00000003, 0x00010000, 0x00AA0000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x000200AA, 0x01D10000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x000301D1, 0x0B630000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x00000031, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0x00000000, 0x00000000, 0x0000002D, 0x00000001, 0x00010212, 0x021B021B, 0x0000002D, 0x00000001, 0x0005021C, 0x023A023A, 0x00000004, 0x00000002, 0x00010000, 0x000A0000, 0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, 0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, 0x00000000, 0x00000000, 0x0001000A, 0x0BB80000, 0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, 0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, 0x00000000, 0x00000000, 0x00000027, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000000, 0x0000002D, 0x00000001, 0x00010325, 0x03430343, 0x0000003E, 0x00000001, 0x00040000, 0x0BB80000, 0x00000000, 0x00000020, 0x00000050, 0xFFFFFFCD, 0x00000020, 0x00000050, 0xFFFFFFCD, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000001, 0x00620389, 0x04060406, 0x00000056, 0x00000001, 0x00440267, 0x02680000, 0x00000000, 0xFFFFFF97, 0x00000000, 0x00000030, 0xFFFFFF97, 0x00000000, 0x00000030, 0x00000000, 0x00000000, 0x00000000, 0x0000007C, 0x00000001, 0x000401F4, 0x02260000, 0x00000000, 0x00000000, 0xFFFFFFC3, 0x0000006E, 0x00000000, 0xFFFFFFC3, 0x0000006E, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x0000000A, 0xFFFF0000, 0x0136FFFF, 0xFFFFFFFF, 0x303C0136, 0x01430000, 0x00000000, 0xFFFF0143, 0x0158FFFF, 0xFFFFFFFF, 0x30450158, 0x018A0000, 0x00000000, 0xFFFF018A, 0x019FFFFF, 0xFFFFFFFF, 0x3046019F, 0x01D10000, 0x00000000, 0xFFFF01D1, 0x0320FFFF, 0xFFFFFFFF, 0x003C0320, 0x03250000, 0x00000000, 0xFFFF0325, 0x0361FFFF, 0xFFFFFFFF, 0x303D0361, 0x036B0000, 0x00000000, 0x00000001, 0x00010000, 0x05510000, 0x00000000, 0x4271999A, 0xFFAB0C8B, 0x031B00C6, 0x00000000, 0x4271999A, 0xFFAB0C8B, 0x031B00C8, 0x00000000, 0x4271999A, 0xFFAB0B6D, 0x031B00D7, 0x00000000, 0x4271999A, 0x004603CE, 0x01F100E8, 0x00000000, 0x4271999A, 0x0140010C, 0x012800EA, 0x00000000, 0x4271999A, 0x013800BE, 0x0096013D, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF013F, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF014E, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF015F, 0xFF000000, 0x4271999A, 0x0105003D, 0xFFBF0161, 0x00000001, 0x00010107, 0x01FD0000, 0x00000000, 0x41EB32F7, 0x0059001E, 0xFF9900C6, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900C8, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900D7, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900E8, 0xFF000000, 0x4270CCCD, 0x0059001E, 0xFF9900EA, 0x00000001, 0x0001014D, 0x05900000, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00C6, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00C8, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00D7, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00E8, 0xFF000000, 0x4237FFF2, 0x00720032, 0xFF8C00EA, 0x00000001, 0x00010193, 0x05D60000, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600C6, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600C8, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600D7, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600E8, 0xFF000000, 0x42366658, 0x001A002D, 0xFFF600EA, 0x00000001, 0x000101BB, 0x06580000, 0x00000000, 0x4235998B, 0x000B0017, 0xFFEF00C6, 0x00000000, 0x4235998B, 0x000B0017, 0xFFEF00C8, 0x00000000, 0x4235998B, 0x001B001F, 0xFFD300D7, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB400E8, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB400EA, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB4013D, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB4013F, 0xFF000000, 0x4235998B, 0x002D0028, 0xFFB4002E, 0x00000001, 0x000101D9, 0x06440000, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C6, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C8, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00D7, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00E8, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A00EA, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013D, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013F, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A002E, 0xFF000000, 0x428CCCC2, 0x00C00116, 0xFF0A0063, 0x00000001, 0x0001021B, 0x03710000, 0x00000000, 0x42700000, 0x000D0356, 0x000200C6, 0x00000000, 0x42700000, 0x00090355, 0x000500C8, 0x00000000, 0x42700000, 0xFFFD0355, 0x000500D7, 0x00000000, 0x42700000, 0xFFF70355, 0xFFFA00E8, 0x00000000, 0x42700000, 0xFFFE0354, 0xFFEF00EA, 0x00000000, 0x42700000, 0x00090354, 0xFFEF013D, 0x00000000, 0x42700000, 0x00100354, 0xFFFA013F, 0x00000000, 0x42700000, 0x00090354, 0x0005002E, 0xFF000000, 0x42700000, 0xFFFD0353, 0x00050063, 0x00000005, 0x00010267, 0x07040000, 0x00000000, 0x4289332C, 0x00000021, 0xFFE500C6, 0x00000000, 0x4289332C, 0x00000021, 0xFFE500C8, 0x00000000, 0x4289332C, 0x00000044, 0xFFE600D7, 0x00000000, 0x4289332C, 0x00000067, 0xFFE600E8, 0x00000000, 0x4289332C, 0x00000067, 0xFFE600EA, 0x00000000, 0x4289332C, 0x00000067, 0xFFE6013D, 0x00000000, 0x4289332C, 0x00000067, 0xFFE6013F, 0xFF000000, 0x4289332C, 0x00000067, 0xFFE6002E, 0x00000002, 0x00010000, 0x056E0000, 0x0000003C, 0x4271999A, 0xFF8D0C5B, 0x024900C6, 0x0000003C, 0x4271999A, 0xFF8D0C5B, 0x024900C8, 0x0000003C, 0x4271999A, 0xFF8D0B3D, 0x024900D7, 0x0000001E, 0x4271999A, 0x001B0338, 0x015C00E8, 0x00000028, 0x4271999A, 0x00C5008F, 0x00AE00EA, 0x00000028, 0x4271999A, 0x00930064, 0x0037013D, 0x00000028, 0x4271999A, 0x00370023, 0xFFBF013F, 0x000003E8, 0x4271999A, 0x00370023, 0xFFBF014E, 0x0000001E, 0x4271999A, 0x00370023, 0xFFBF015F, 0xFF00001E, 0x4271999A, 0x00380023, 0xFFBF0161, 0x00000002, 0x00010107, 0x021A0000, 0x0000001E, 0x429DFFE4, 0x0057009D, 0xFE7900C6, 0x00000052, 0x429D997E, 0x0057009D, 0xFE7900C8, 0x00000067, 0x428D998E, 0x0057009D, 0xFE7900D7, 0x0000001E, 0x4270CCCD, 0x0057009D, 0xFE7900E8, 0xFF00001E, 0x4270CCCD, 0x0057009D, 0xFE7900EA, 0x00000002, 0x0001014D, 0x05AD0000, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00C6, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00C8, 0x000003E8, 0x4237FFF2, 0xFFCC007F, 0xFECB00D7, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00E8, 0xFF00001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00EA, 0x00000002, 0x00010193, 0x05F30000, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00C6, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00C8, 0x000003E8, 0x42366658, 0xFEF300BA, 0x000D00D7, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00E8, 0xFF00001E, 0x42366658, 0xFEF300BA, 0x000D00EA, 0x00000002, 0x000101BB, 0x06750000, 0x0000001E, 0x4235998B, 0x00A30046, 0xFEE500C6, 0x0000001E, 0x4235998B, 0x00A30046, 0xFEE500C8, 0x0000001E, 0x4235998B, 0x00B1004A, 0xFECB00D7, 0x0000001E, 0x4235998B, 0x00C1005C, 0xFEAF00E8, 0x0000001E, 0x4235998B, 0x00C1005C, 0xFEAF00EA, 0x000003E8, 0x4235998B, 0x00C0005B, 0xFEB0013D, 0x0000001E, 0x4235998B, 0x00C0005B, 0xFEB0013F, 0xFF00001E, 0x4235998B, 0x00C0005B, 0xFEB0002E, 0x00000002, 0x000101D9, 0x06610000, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C6, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C8, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCA00D7, 0x00000014, 0x4237FFF2, 0xFFF80039, 0xFFCA00E8, 0x0000000A, 0x428CCCC2, 0x00950223, 0xFF3300EA, 0x0000000A, 0x428CCCC2, 0x00950223, 0xFF33013D, 0x000003E8, 0x428CCCC2, 0x00950223, 0xFF33013F, 0x0000001E, 0x428CCCC2, 0x00950223, 0xFF33002E, 0xFF00001E, 0x428CCCC2, 0x00950223, 0xFF330063, 0x00000002, 0x0001021B, 0x03A20000, 0x00000032, 0x42700000, 0x00030006, 0xFFFA00C6, 0x00000028, 0x42700000, 0x00030006, 0xFFFA00C8, 0x0000001E, 0x424BFFF7, 0x00030006, 0xFFFA00D7, 0x00000014, 0x41A4CC7E, 0x00030006, 0xFFFA00E8, 0x00000033, 0x412CCC23, 0x00030006, 0xFFFA00EA, 0x00000032, 0x412665BD, 0x00030006, 0xFFFA013D, 0x00000032, 0x412665BD, 0x00030006, 0xFFFA013F, 0x00000032, 0x4123328A, 0x00030006, 0xFFFA002E, 0xFF000032, 0x412FFF56, 0x00030006, 0xFFFA0063, 0x00000006, 0x00010267, 0x07210000, 0x0000001E, 0x4289332C, 0x00000064, 0x000500C6, 0x0000001E, 0x4289332C, 0x00000065, 0x000600C8, 0x0000001E, 0x4289332C, 0x00010063, 0x002900D7, 0x0000001E, 0x4289332C, 0x0000002A, 0x001000E8, 0x0000001E, 0x4289332C, 0x0000002A, 0x001000EA, 0x000003E8, 0x4289332C, 0x0000002A, 0x0010013D, 0x0000001E, 0x4289332C, 0x0000002A, 0x0010013F, 0xFF00001E, 0x4289332C, 0x0000002A, 0x0010002E, 0xFFFFFFFF, 0x00000000
*/
//extern CutsceneData D_8096C1A4[];
#include "z_demo_du_cutscene_data.c" EARLY

/*
glabel D_8096CE74
 .word 0x06008080, 0x06008480, 0x06008880, 0x0600A540
*/
//extern Gfx* D_8096CE74[];
static Gfx* D_8096CE74[] = {0x06008080, 0x06008480, 0x06008880, 0x0600A540};

/*
glabel D_8096CE84
 .word 0x06008C80, 0x06009D40, 0x0600A940, 0x0600B180
*/
//extern Gfx* D_8096CE84[];
static Gfx* D_8096CE84[] = {0x06008C80, 0x06009D40, 0x0600A940, 0x0600B180};

/*
glabel D_8096CE94
 .word 0x00000000
*/
//extern UNK_TYPE D_8096CE94;
//extern s32 D_8096CE94;
static s32 D_8096CE94 = 0;

/*
glabel D_8096CE98
 .word 0x00000000, 0x00000000, 0x00000000
*/
//extern UNK_TYPE D_8096CE98[];
//extern Vec3f D_8096CE98;
static Vec3f D_8096CE98 = {0.0f, 0.0f, 0.0f};

/*
glabel D_8096CEA4
 .word 0x00000000, 0x3E99999A, 0x00000000
*/
//extern UNK_TYPE D_8096CEA4[];
//extern Vec3f D_8096CEA4;
static Vec3f D_8096CEA4 = {0.0f, 0.3f, 0.0f};

/*
glabel D_8096CEB0
 .word 0xBE966EFF
*/
//extern UNK_TYPE D_8096CEB0;
/*
glabel D_8096CEB0
 190, 150, 110, 255
*/
//extern Color_RGBA8 D_8096CEB0;
static Color_RGBA8 D_8096CEB0 = {190, 150, 110, 255};

/*
glabel D_8096CEB4
 .word 0x785028FF
*/
//extern UNK_TYPE D_8096CEB4;
/*
glabel D_8096CEB4
 120, 80, 40, 255
*/
//extern Color_RGBA8 D_8096CEB4;
static Color_RGBA8 D_8096CEB4 = {120, 80, 40, 255};

/*
glabel D_8096CEB8
 .word 
 0x41300000, 0xC1300000, 0xC0C00000, 
 0x00000000, 0x41600000, 0xC1500000, 
 0x41600000, 0xC0000000, 0xC1200000, 
 0x41200000, 0xC0C00000, 0xC1000000
*/
//extern UNK_TYPE D_8096CEB8[];
/*
glabel D_8096CEB8
 .word 
 11.0f, -11.0f, -6.0f, 
 0.0f, 14.0f, -13.0f, 
 14.0f, -2.0f, -10.0f, 
 10.0f, -6.0f, -8.0f
*/
//extern f32 D_8096CEB8[];
static Vec3f D_8096CEB8[] = {
 { 11.0f, -11.0f,  -6.0f },
 {  0.0f,  14.0f, -13.0f },
 { 14.0f,  -2.0f, -10.0f },
 { 10.0f,  -6.0f,  -8.0f }
};

/*
glabel D_8096CEE8
 .word 
 0x41000000, 0x40C00000, 0x41000000,
 0x41500000, 0x41000000, 0xC1200000, 
 0xC1600000, 0x3F800000, 0xC1600000, 
 0x40A00000, 0x41400000, 0xC1100000, 
 0x41300000, 0x40C00000, 0xC0E00000, 
 0x41600000, 0x41600000, 0xC1600000
*/
//extern UNK_TYPE D_8096CEE8[];
/*
glabel D_8096CEE8
 .word 
 8.0f, 6.0f, 8.0f,
 13.0f, 8.0f, -10.0f, 
 -14.0f, 1.0f, -14.0f, 
 5.0f, 12.0f, -9.0f, 
 11.0f, 6.0f, -7.0f, 
 14.0f, 14.0f, -14.0f
*/
//extern Vec3f D_8096CEE8[6];
//extern f32 D_8096CEE8[];
static Vec3f D_8096CEE8[] = {
 {   8.0f,  6.0f,   8.0f },
 {  13.0f,  8.0f, -10.0f },
 { -14.0f,  1.0f, -14.0f },
 {   5.0f, 12.0f,  -9.0f },
 {  11.0f,  6.0f,  -7.0f },
 {  14.0f, 14.0f, -14.0f },
};


typedef void (*DemoDuActionFunc)(DemoDu*, GlobalContext*);

void func_8096A224(DemoDu* this, GlobalContext* globalCtx);
void func_8096A244(DemoDu* this, GlobalContext* globalCtx);
void func_8096A264(DemoDu* this, GlobalContext* globalCtx);
void func_8096A294(DemoDu* this, GlobalContext* globalCtx);
void func_8096A2CC(DemoDu* this, GlobalContext* globalCtx);
void func_8096A300(DemoDu* this, GlobalContext* globalCtx);
void func_8096A338(DemoDu* this, GlobalContext* globalCtx);
void func_8096AFFC(DemoDu* this, GlobalContext* globalCtx);
void func_8096B030(DemoDu* this, GlobalContext* globalCtx);
void func_8096B06C(DemoDu* this, GlobalContext* globalCtx);
void func_8096B0C0(DemoDu* this, GlobalContext* globalCtx);
void func_8096B0F8(DemoDu* this, GlobalContext* globalCtx);
void func_8096B140(DemoDu* this, GlobalContext* globalCtx);
void func_8096B184(DemoDu* this, GlobalContext* globalCtx);
void func_8096B1DC(DemoDu* this, GlobalContext* globalCtx);
void func_8096B220(DemoDu* this, GlobalContext* globalCtx);
void func_8096B27C(DemoDu* this, GlobalContext* globalCtx);
void func_8096B2D4(DemoDu* this, GlobalContext* globalCtx);
void func_8096B318(DemoDu* this, GlobalContext* globalCtx);
void func_8096B360(DemoDu* this, GlobalContext* globalCtx);
void func_8096B3A4(DemoDu* this, GlobalContext* globalCtx);
void func_8096B768(DemoDu* this, GlobalContext* globalCtx);
void func_8096B798(DemoDu* this, GlobalContext* globalCtx);
void func_8096B7EC(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD2C(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD4C(DemoDu* this, GlobalContext* globalCtx);
void func_8096BD94(DemoDu* this, GlobalContext* globalCtx);
void func_8096BDD4(DemoDu* this, GlobalContext* globalCtx);
void func_8096BE14(DemoDu* this, GlobalContext* globalCtx);

/*
glabel D_8096CF30
.word func_8096A224
.word func_8096A244
.word func_8096A264
.word func_8096A294
.word func_8096A2CC
.word func_8096A300
.word func_8096A338
.word func_8096AFFC
.word func_8096B030
.word func_8096B06C
.word func_8096B0C0
.word func_8096B0F8
.word func_8096B140
.word func_8096B184
.word func_8096B1DC
.word func_8096B220
.word func_8096B27C
.word func_8096B2D4
.word func_8096B318
.word func_8096B360
.word func_8096B3A4
.word func_8096B768
.word func_8096B798
.word func_8096B7EC
.word func_8096BD2C
.word func_8096BD4C
.word func_8096BD94
.word func_8096BDD4
.word func_8096BE14
*/
//extern DemoDuActionFunc D_8096CF30[];
//extern DemoDuActionFunc sUpdateFuncs[];

static DemoDuActionFunc D_8096CF30[] = {
    func_8096A224, func_8096A244, func_8096A264, func_8096A294, func_8096A2CC, 
    func_8096A300, func_8096A338, func_8096AFFC, func_8096B030, func_8096B06C, 
    func_8096B0C0, func_8096B0F8, func_8096B140, func_8096B184, func_8096B1DC, 
    func_8096B220, func_8096B27C, func_8096B2D4, func_8096B318, func_8096B360, 
    func_8096B3A4, func_8096B768, func_8096B798, func_8096B7EC, func_8096BD2C, 
    func_8096BD4C, func_8096BD94, func_8096BDD4, func_8096BE14
};


typedef void (*DemoDuDrawFunc)(Actor*, GlobalContext*);

void func_8096BF54(Actor* thisx, GlobalContext* globalCtx2);
void func_8096BF60(Actor* thisx, GlobalContext* globalCtx2);
void func_8096B840(Actor* thisx, GlobalContext* globalCtx2);
/*
glabel D_8096CFA4
.word func_8096BF54
.word func_8096BF60
.word func_8096B840
*/
//extern DemoDuActionFunc D_8096CFA4[];
//extern DemoDuActionFunc sDrawFuncs[];
static DemoDuDrawFunc D_8096CFA4[] = {
    func_8096BF54, func_8096BF60, func_8096B840
};



const ActorInit Demo_Du_InitVars = {
    ACTOR_DEMO_DU,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_DU,
    sizeof(DemoDu),
    (ActorFunc)DemoDu_Init,
    (ActorFunc)DemoDu_Destroy,
    (ActorFunc)DemoDu_Update,
    (ActorFunc)DemoDu_Draw,
};



void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void DemoDu_UpdateEyes(DemoDu* this) {
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeTexIndex = &this->eyeTexIndex;
    s32 pad[3];

    if (DECR(*blinkTimer) == 0) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyeTexIndex = *blinkTimer;
    if (*eyeTexIndex >= 3) {
        *eyeTexIndex = 0;
    }
}

void func_80969B78(DemoDu* this, s16 eyeTexIndex) {
    this->eyeTexIndex = eyeTexIndex;
}

void func_80969B8C(DemoDu* this, s16 arg1) {
    this->unk_194 = arg1;
}

void func_80969BA0(DemoDu* this) {
    this->updateIndex = 21;
    this->drawIndex = 0;
    this->unk_1A8 = 0;
    this->unk_1AC = 0;
    this->actor.shape.shadowAlpha = 0;
    this->unk_1A4 = 0.0f;
}

void func_80969BC4(DemoDu* this, GlobalContext* globalCtx);
/*
void func_80969BC4(DemoDu* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        if (D_8096CE94 != 0) {
            if (this->actor.params == 2) {
                func_80969BA0(this);
            }
            D_8096CE94 = 0;
            return;
        }
    } else if (D_8096CE94 == 0) {
        D_8096CE94 = 1;
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969BC4.s")

s32 func_80969C38(DemoDu* this) {
    return SkelAnime_Update(&this->skelAnime);
}

void func_80969C58(DemoDu* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969DDC.s")

void func_80969E6C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, &D_06006EB0, NULL, NULL, 0);
    this->actor.shape.yOffset = -10000.0f;
    func_80969B78(this, 1);
    func_80969B8C(this, 3);
}

void func_80969EDC();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969EDC.s")

void func_80969F38();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969F38.s")

void func_80969FB4(DemoDu* this, GlobalContext* globalCtx) {
    this->actor.shape.yOffset = this->actor.shape.yOffset + (250.0f/3.0f);
}

void func_80969FD0(DemoDu* this, GlobalContext* globalCtx2) {
    s32 pad;
    GlobalContext* globalCtx = globalCtx2;
    Player* player;
    s16 rotY;

    if ((gSaveContext.chamberCutsceneNum == 1) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;

        this->updateIndex = 1;
        globalCtx->csCtx.segment = (void *) D_8096C1A4;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_FIRE);

        rotY = this->actor.world.rot.y + 0x8000;
        player->actor.shape.rot.y = rotY;
        player->actor.world.rot.y = rotY;
    }
}

void func_8096A05C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 1)) {
            this->updateIndex = 2;
            this->drawIndex = 1;
            func_80969EDC();
        }
    }
}

void func_8096A0AC(DemoDu *this) {
    if (this->actor.shape.yOffset >= 0.0f) {
        this->updateIndex = 3;
        this->actor.shape.yOffset = 0.0f;
    }
}

void func_8096A0D8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 2)) {
            Animation_Change(&this->skelAnime, &D_06000800, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000800), 2, 0.0f);
            this->updateIndex = 4;
        }
    }
}

void func_8096A16C(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06000D00, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000D00), 0, 0.0f);
        this->updateIndex = 5;
    }
}

void func_8096A1D8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *temp_v0;

    if (globalCtx->csCtx.state != 0) {
        temp_v0 = globalCtx->csCtx.npcActions[6];
        if ((temp_v0 != 0) && (temp_v0->action == 2)) {
            this->updateIndex = 6;
            func_80969F38();
        }
    }
}

void func_8096A224(DemoDu *this, GlobalContext *globalCtx) {
    func_80969FD0(this, globalCtx);
}

void func_8096A244(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A05C(this, globalCtx);
}

void func_8096A264(DemoDu *this, GlobalContext *globalCtx) {
    func_80969FB4(this, globalCtx);
    func_80969C38(this);
    func_8096A0AC(this);
}

void func_8096A294(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A0D8(this, globalCtx);
}

void func_8096A2CC(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A16C(this, aux);
}

void func_8096A300(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A1D8(this, globalCtx);
}

void func_8096A338(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
}

void func_8096A360(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, NULL, NULL, NULL, 0);
    this->updateIndex = 7;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A3B4.s")

void func_8096A3D8(GlobalContext *globalCtx);
void func_8096A3D8(GlobalContext *globalCtx) {
    if (globalCtx->csCtx.frames == 160) {
        func_800788CC(NA_SE_EV_OBJECT_FALL);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A408.s")

void func_8096A45C(DemoDu *this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EN_DARUNIA_HIT_BREAST - SFX_FLAG);
}

void func_8096A480(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 0x578) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_FALL_L_KID, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A4D4(GlobalContext *globalCtx) {
    Player* player;

    if (globalCtx->csCtx.frames == 0xAE) {
        player = PLAYER;
        Audio_PlaySoundGeneral(NA_SE_VO_LI_SURPRISE_KID, &player->actor.projectedPos, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8096A528(DemoDu *this, GlobalContext *globalCtx);
#ifdef NON_MATCHING
void func_8096A528(DemoDu *this, GlobalContext *globalCtx) {
    if (globalCtx->csCtx.frames < 0x104) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
    } else if (globalCtx->csCtx.frames < 0x14F) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
    } else if (globalCtx->csCtx.frames < 0x16D) {
        func_80969B78(this, 3);
        func_80969B8C(this, 1);
    } else if (globalCtx->csCtx.frames < 0x18B) {
        func_80969B78(this, 0);
        func_80969B8C(this, 3);
    } else if (globalCtx->csCtx.frames < 0x19A) {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 0);
    } else {
        DemoDu_UpdateEyes(this);
        func_80969B8C(this, 3);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A528.s")
#endif

void func_8096A630();
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A630.s")

void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx);
// maybe when i import the data this will be fixed, hopefully...
/*
void func_8096A6E0(DemoDu* this, GlobalContext* globalCtx2) {
    SkelAnime* skelAnime = &this->skelAnime;
    GlobalContext* globalCtx = globalCtx2;
    Vec3f spA4;
    //s32 pad2[2];
    //s32 pad3;
    //s32 pad2[1];
    //s32 pad;
    Vec3f* temp_s1;// = &player->bodyPartsPos[0x0B];
    //s32 pad;
    
    s32 temp_v0;
    Color_RGBA8 sp98;
    Color_RGBA8 sp9C;
    f32* phi_s0;
    Vec3f sp88;
    //Player* player;// = PLAYER;
    Vec3f spB0;

    if ((Animation_OnFrame(skelAnime, 31.0f)) || (Animation_OnFrame(skelAnime, 41.0f))) {
        temp_s1 = &PLAYER->bodyPartsPos[0x0B];

        spB0 = D_8096CE98;
        spA4 = D_8096CEA4;
            phi_s0 = D_8096CEE8;

        do {
        //for (; phi_s0 >= (f32*) &D_8096CEB8; phi_s0 -= 3) {
        loop_3: 
            sp9C = D_8096CEB0;
                *(s32*)0 = 0;
            sp98 = D_8096CEB4; 


            if (Animation_OnFrame(skelAnime, 31.0f)) {
                sp88.x = phi_s0[5*3] + temp_s1->x;
                sp88.y = phi_s0[5*3+1] + temp_s1->y;
                sp88.z = phi_s0[5*3+2] + temp_s1->z;
            } else {
                sp88.x = phi_s0[0] + temp_s1->x;
                sp88.y = phi_s0[0+1] + temp_s1->y;
                sp88.z = phi_s0[0+2] + temp_s1->z;
            }

            temp_v0 = (s32) ((Rand_ZeroOne() * 20.0f) - 10.0f);

            sp9C.r += temp_v0;
            sp9C.g += temp_v0;
            sp9C.b += temp_v0;
            sp98.r += temp_v0;
            sp98.g += temp_v0;
            sp98.b += temp_v0;
            
            func_8002829C(
                globalCtx, 
                &sp88, 
                &spB0, 
                &spA4, 
                &sp9C, 
                &sp98, 
                (s32) ((Rand_ZeroOne() * 40.0f) + 200.0f), 
                0
                );
                

            //D_8096CEE8--;
            phi_s0 -= 3;


        } while (phi_s0 >= D_8096CEB8);

        func_8096A408(globalCtx);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A6E0.s")

void func_8096A970(DemoDu *this, GlobalContext *globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* npcAction;
    Vec3f startPos;
    Vec3f endPos;
    Vec3f* pos = &this->actor.world.pos;
    f32 temp_f0;

    if (csCtx->state != 0) {
        npcAction = csCtx->npcActions[2];
        if (npcAction != NULL) {
            temp_f0 = func_8006F93C(npcAction->endFrame, npcAction->startFrame, csCtx->frames);

            startPos.x = npcAction->startPos.x;
            startPos.y = npcAction->startPos.y;
            startPos.z = npcAction->startPos.z;

            endPos.x = npcAction->endPos.x;
            endPos.y = npcAction->endPos.y;
            endPos.z = npcAction->endPos.z;

            pos->x = ((endPos.x - startPos.x) * temp_f0) + startPos.x;
            pos->y = ((endPos.y - startPos.y) * temp_f0) + startPos.y;
            pos->z = ((endPos.z - startPos.z) * temp_f0) + startPos.z;
        }
    }
}

void func_8096AA4C(DemoDu *this, GlobalContext *globalCtx) {
    this->updateIndex = 8;
}

void func_8096AA5C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 1)) {
            Animation_Change(&this->skelAnime, &D_0600288C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600288C), 2, 0.0f);
            this->updateIndex = 9;
            this->drawIndex = 1;
            func_8096A970(this, globalCtx);
        }
    }
}

void func_8096AB00(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;
    CutsceneContext *csCtx = &globalCtx->csCtx;

    if (csCtx->state != 0) {
        npcAction = csCtx->npcActions[2];
        if ((npcAction != NULL) && (csCtx->frames >= npcAction->endFrame)) {
            this->updateIndex = 0xA;
            func_8096A630();
        }
    }
}

void func_8096AB54(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 2)) {
            this->updateIndex = 11;
        }
    }
}

void func_8096AB8C(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 12;
    }
}

void func_8096ABF8(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 3)) {
            Animation_Change(&this->skelAnime, &D_06002374, 1.0f, 0.0f, Animation_GetLastFrame(&D_06002374), 2, -4.0f);
            this->updateIndex = 13;
        }
    }
}

void func_8096AC90(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 14;
    }
}

void func_8096ACFC(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 4)) {
            Animation_Change(&this->skelAnime, &D_06001D70, 1.0f, 0.0f, Animation_GetLastFrame(&D_06001D70), 2, 0.0f);
            this->updateIndex = 15;
        }
    }
}

void func_8096AD90(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06002374, 1.0f, 0.0f, Animation_GetLastFrame(&D_06002374), 2, 0.0f);
        this->updateIndex = 16;
    }
}

void func_8096AE00(DemoDu *this, s32 arg1) {
    if (arg1 != 0) {
        Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
        this->updateIndex = 17;
    }
}

void func_8096AE6C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 5)) {
            Animation_Change(&this->skelAnime, &D_06000800, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000800), 2, 0.0f);
            this->updateIndex = 18;
        }
    }
}

void func_8096AF00(DemoDu *this, s32 arg1) {
    if (arg1) {
        Animation_Change(&this->skelAnime, &D_06000D00, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000D00), 0, 0.0f);
        this->updateIndex = 19;
    }
}

void func_8096AF6C(DemoDu *this, GlobalContext *globalCtx) {
    CsCmdActorAction *npcAction;

    if (globalCtx->csCtx.state != 0) {
        npcAction = globalCtx->csCtx.npcActions[2];
        if ((npcAction != NULL) && (npcAction->action != 6)) {
            Animation_Change(&this->skelAnime, &D_06006EB0, 1.0f, 0.0f, Animation_GetLastFrame(&D_06006EB0), 0, 0.0f);
            this->updateIndex = 20;
        }
    }
}

void func_8096AFFC(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A3D8(globalCtx);
    func_8096AA4C(this, globalCtx);
}

void func_8096B030(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A3D8(globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AA5C(this, globalCtx);
}

void func_8096B06C(DemoDu *this, GlobalContext *globalCtx) {
    func_8096A970(this, globalCtx);
    func_80969C58(this, globalCtx);
    func_8096A3D8(globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AB00(this, globalCtx);
}

void func_8096B0C0(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_8096A4D4(globalCtx);
    func_8096AB54(this, globalCtx);
}

void func_8096B0F8(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AB8C(this, aux);
}

void func_8096B140(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096ABF8(this, globalCtx);
}

void func_8096B184(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A45C(this);
    func_8096A528(this, globalCtx);
    func_8096AC90(this, aux);
}

void func_8096B1DC(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096ACFC(this, globalCtx);
}

void func_8096B220(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096A6E0(this, globalCtx);
    func_8096AD90(this, aux);
}

void func_8096B27C(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A45C(this);
    func_8096A528(this, globalCtx);
    func_8096AE00(this, aux);
}

void func_8096B2D4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AE6C(this, globalCtx);
}

void func_8096B318(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AF00(this, aux);
}

void func_8096B360(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096AF6C(this, globalCtx);
}

void func_8096B3A4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    func_8096A528(this, globalCtx);
    func_8096A480(globalCtx);
}

void func_8096B3E4(DemoDu* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad;
    f32 lastFrame;

    lastFrame = (f32) Animation_GetLastFrame(&D_06012014);
    SkelAnime_InitFlex(globalCtx2, skelAnime, &D_06011CA8, NULL, NULL, NULL, 0);
    Animation_Change(skelAnime, &D_06012014, 1.0f, 0.0f, lastFrame, 2, 0.0f);
    this->updateIndex = 0x15;
    this->actor.shape.shadowAlpha = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B4A8.s")

void func_8096B528(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B528.s")

void func_8096B57C(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B57C.s")

void func_8096B6D0(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B6D0.s")

void func_8096B768(DemoDu *this, GlobalContext *globalCtx) {
    func_8096B528(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B798(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096B57C(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B7EC(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096B6D0(this, globalCtx);
    func_80969BC4(this, globalCtx);
}

void func_8096B840(Actor* thisx, GlobalContext *globalCtx2) {
    GlobalContext *globalCtx = globalCtx2;
    DemoDu* this = THIS;
    s16 eyeTexIndex = this->eyeTexIndex;
    Gfx* sp70 = D_8096CE74[eyeTexIndex];
    s32 pad;
    s16 unk_194 = this->unk_194;
    Gfx* sp64 = D_8096CE84[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_du_inKenjyanomaDemo02.c", 275);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp70));
    gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp64));

    gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06007FC0));

    gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0x00, 0x00, this->unk_1A8);

    gSPSegment(POLY_XLU_DISP++, 0x0C, &D_80116280[0]);

    POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, skelAnime->skeleton, skelAnime->jointTable, (s32) skelAnime->dListCount, 0, 0, 0, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_du_inKenjyanomaDemo02.c", 304);
}

void func_8096BA2C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011CA8, &D_060067CC, NULL, NULL, 0);
    this->updateIndex = 24;
    this->drawIndex = 0;
    this->actor.shape.shadowAlpha = 0;
    func_80969B8C(this, (u16)3);
}

void func_8096BA98(DemoDu *this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BA98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BB24.s")

void func_8096BB5C(DemoDu *this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BB5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBE8.s")

void func_8096BC28(DemoDu *this, s32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BC28.s")

void func_8096BC6C(DemoDu *this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BC6C.s")

void func_8096BD2C(DemoDu *this, GlobalContext *globalCtx) {
    func_8096BC6C(this, globalCtx);
}

void func_8096BD4C(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BA98(this);
    func_8096BB5C(this);
}

void func_8096BD94(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC6C(this, globalCtx);
}

void func_8096BDD4(DemoDu *this, GlobalContext *globalCtx) {
    func_80969C58(this, globalCtx);
    func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC6C(this, globalCtx);
}

void func_8096BE14(DemoDu *this, GlobalContext *globalCtx) {
    s32 aux;

    func_80969C58(this, globalCtx);
    aux = func_80969C38(this);
    DemoDu_UpdateEyes(this);
    func_8096BC28(this, aux);
}

void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;
    DemoDuActionFunc temp_v1;

    if (this->updateIndex < 0 || this->updateIndex >= 29 || D_8096CF30[this->updateIndex] == NULL) {
        // The main mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8096CF30[this->updateIndex](this, globalCtx);
}

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    switch (this->actor.params) {
    case 1:
        func_8096A360(this, globalCtx);
        return;
    
    case 2:
        func_8096B3E4(this, globalCtx);
        return;
    
    case 3:
        func_8096BA2C(this, globalCtx);
        return;
    
    default:
        func_80969E6C(this, globalCtx);
        return;
    }
}

void func_8096BF54(Actor *thisx, GlobalContext *globalCtx2) {
}

void func_8096BF60(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext *globalCtx = globalCtx2;
    DemoDu* this = THIS;
    s16 eyeTexIndex = this->eyeTexIndex;
    Gfx* sp68 = D_8096CE74[eyeTexIndex];
    s32 pad;
    s16 unk_194 = this->unk_194;
    Gfx* sp5C = D_8096CE84[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_du.c", 615);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp68));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp5C));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06007FC0));

    gDPSetEnvColor(POLY_OPA_DISP++, 0x00, 0x00, 0x00, 0xFF);

    gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_du.c", 638);
}

void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    if (this->drawIndex < 0 || this->drawIndex >= 3 || D_8096CFA4[this->drawIndex] == NULL) {
        // The drawing mode is abnormal!!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8096CFA4[this->drawIndex](thisx, globalCtx);
}
