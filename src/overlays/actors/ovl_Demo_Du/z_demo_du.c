#include "z_demo_du.h"

#define FLAGS 0x00000010

#define THIS ((DemoDu*)thisx)

void DemoDu_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoDu_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000800;
extern UNK_TYPE D_06000D00;
extern UNK_TYPE D_06001D70;
extern UNK_TYPE D_06002374;
extern UNK_TYPE D_0600288C;
extern UNK_TYPE D_06005458;
extern UNK_TYPE D_06006104;
extern AnimationHeader D_060067CC;
extern AnimationHeader D_06006EB0;
extern UNK_TYPE D_06007FC0;
extern FlexSkeletonHeader D_06011CA8;
extern AnimationHeader D_06012014;





/*
.word 0x00000000
glabel D_8096C1A4
 .word 0x0000001F, 0x00000BB8, 0x00000020, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x0000001F, 0x00000005, 0x00010000, 0x02220000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00020222, 0x02230000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00040223, 0x02680000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000000, 0x00000000, 0x00020268, 0x029B0000, 0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0xC0282828, 0x00000000, 0x0003029B, 0x0B120000, 0x00000000, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0x00000052, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000A, 0x00000003, 0x000D0000, 0x01180000, 0x6AAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00050118, 0x02130000, 0x6AAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00130213, 0x06B40000, 0xEAAA0000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000029, 0x00000003, 0x00010000, 0x00AA0000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x000200AA, 0x01D10000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x000301D1, 0x0B630000, 0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, 0x00000000, 0x00000000, 0x00000031, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0x00000000, 0x00000000, 0x0000002D, 0x00000001, 0x00010212, 0x021B021B, 0x0000002D, 0x00000001, 0x0005021C, 0x023A023A, 0x00000004, 0x00000002, 0x00010000, 0x000A0000, 0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, 0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, 0x00000000, 0x00000000, 0x0001000A, 0x0BB80000, 0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, 0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, 0x00000000, 0x00000000, 0x00000027, 0x00000001, 0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000000, 0x0000002D, 0x00000001, 0x00010325, 0x03430343, 0x0000003E, 0x00000001, 0x00040000, 0x0BB80000, 0x00000000, 0x00000020, 0x00000050, 0xFFFFFFCD, 0x00000020, 0x00000050, 0xFFFFFFCD, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000001, 0x00620389, 0x04060406, 0x00000056, 0x00000001, 0x00440267, 0x02680000, 0x00000000, 0xFFFFFF97, 0x00000000, 0x00000030, 0xFFFFFF97, 0x00000000, 0x00000030, 0x00000000, 0x00000000, 0x00000000, 0x0000007C, 0x00000001, 0x000401F4, 0x02260000, 0x00000000, 0x00000000, 0xFFFFFFC3, 0x0000006E, 0x00000000, 0xFFFFFFC3, 0x0000006E, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x0000000A, 0xFFFF0000, 0x0136FFFF, 0xFFFFFFFF, 0x303C0136, 0x01430000, 0x00000000, 0xFFFF0143, 0x0158FFFF, 0xFFFFFFFF, 0x30450158, 0x018A0000, 0x00000000, 0xFFFF018A, 0x019FFFFF, 0xFFFFFFFF, 0x3046019F, 0x01D10000, 0x00000000, 0xFFFF01D1, 0x0320FFFF, 0xFFFFFFFF, 0x003C0320, 0x03250000, 0x00000000, 0xFFFF0325, 0x0361FFFF, 0xFFFFFFFF, 0x303D0361, 0x036B0000, 0x00000000, 0x00000001, 0x00010000, 0x05510000, 0x00000000, 0x4271999A, 0xFFAB0C8B, 0x031B00C6, 0x00000000, 0x4271999A, 0xFFAB0C8B, 0x031B00C8, 0x00000000, 0x4271999A, 0xFFAB0B6D, 0x031B00D7, 0x00000000, 0x4271999A, 0x004603CE, 0x01F100E8, 0x00000000, 0x4271999A, 0x0140010C, 0x012800EA, 0x00000000, 0x4271999A, 0x013800BE, 0x0096013D, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF013F, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF014E, 0x00000000, 0x4271999A, 0x0105003D, 0xFFBF015F, 0xFF000000, 0x4271999A, 0x0105003D, 0xFFBF0161, 0x00000001, 0x00010107, 0x01FD0000, 0x00000000, 0x41EB32F7, 0x0059001E, 0xFF9900C6, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900C8, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900D7, 0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900E8, 0xFF000000, 0x4270CCCD, 0x0059001E, 0xFF9900EA, 0x00000001, 0x0001014D, 0x05900000, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00C6, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00C8, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00D7, 0x00000000, 0x4237FFF2, 0x00720032, 0xFF8C00E8, 0xFF000000, 0x4237FFF2, 0x00720032, 0xFF8C00EA, 0x00000001, 0x00010193, 0x05D60000, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600C6, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600C8, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600D7, 0x00000000, 0x42366658, 0x001A002D, 0xFFF600E8, 0xFF000000, 0x42366658, 0x001A002D, 0xFFF600EA, 0x00000001, 0x000101BB, 0x06580000, 0x00000000, 0x4235998B, 0x000B0017, 0xFFEF00C6, 0x00000000, 0x4235998B, 0x000B0017, 0xFFEF00C8, 0x00000000, 0x4235998B, 0x001B001F, 0xFFD300D7, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB400E8, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB400EA, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB4013D, 0x00000000, 0x4235998B, 0x002D0028, 0xFFB4013F, 0xFF000000, 0x4235998B, 0x002D0028, 0xFFB4002E, 0x00000001, 0x000101D9, 0x06440000, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C6, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C8, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00D7, 0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00E8, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A00EA, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013D, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013F, 0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A002E, 0xFF000000, 0x428CCCC2, 0x00C00116, 0xFF0A0063, 0x00000001, 0x0001021B, 0x03710000, 0x00000000, 0x42700000, 0x000D0356, 0x000200C6, 0x00000000, 0x42700000, 0x00090355, 0x000500C8, 0x00000000, 0x42700000, 0xFFFD0355, 0x000500D7, 0x00000000, 0x42700000, 0xFFF70355, 0xFFFA00E8, 0x00000000, 0x42700000, 0xFFFE0354, 0xFFEF00EA, 0x00000000, 0x42700000, 0x00090354, 0xFFEF013D, 0x00000000, 0x42700000, 0x00100354, 0xFFFA013F, 0x00000000, 0x42700000, 0x00090354, 0x0005002E, 0xFF000000, 0x42700000, 0xFFFD0353, 0x00050063, 0x00000005, 0x00010267, 0x07040000, 0x00000000, 0x4289332C, 0x00000021, 0xFFE500C6, 0x00000000, 0x4289332C, 0x00000021, 0xFFE500C8, 0x00000000, 0x4289332C, 0x00000044, 0xFFE600D7, 0x00000000, 0x4289332C, 0x00000067, 0xFFE600E8, 0x00000000, 0x4289332C, 0x00000067, 0xFFE600EA, 0x00000000, 0x4289332C, 0x00000067, 0xFFE6013D, 0x00000000, 0x4289332C, 0x00000067, 0xFFE6013F, 0xFF000000, 0x4289332C, 0x00000067, 0xFFE6002E, 0x00000002, 0x00010000, 0x056E0000, 0x0000003C, 0x4271999A, 0xFF8D0C5B, 0x024900C6, 0x0000003C, 0x4271999A, 0xFF8D0C5B, 0x024900C8, 0x0000003C, 0x4271999A, 0xFF8D0B3D, 0x024900D7, 0x0000001E, 0x4271999A, 0x001B0338, 0x015C00E8, 0x00000028, 0x4271999A, 0x00C5008F, 0x00AE00EA, 0x00000028, 0x4271999A, 0x00930064, 0x0037013D, 0x00000028, 0x4271999A, 0x00370023, 0xFFBF013F, 0x000003E8, 0x4271999A, 0x00370023, 0xFFBF014E, 0x0000001E, 0x4271999A, 0x00370023, 0xFFBF015F, 0xFF00001E, 0x4271999A, 0x00380023, 0xFFBF0161, 0x00000002, 0x00010107, 0x021A0000, 0x0000001E, 0x429DFFE4, 0x0057009D, 0xFE7900C6, 0x00000052, 0x429D997E, 0x0057009D, 0xFE7900C8, 0x00000067, 0x428D998E, 0x0057009D, 0xFE7900D7, 0x0000001E, 0x4270CCCD, 0x0057009D, 0xFE7900E8, 0xFF00001E, 0x4270CCCD, 0x0057009D, 0xFE7900EA, 0x00000002, 0x0001014D, 0x05AD0000, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00C6, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00C8, 0x000003E8, 0x4237FFF2, 0xFFCC007F, 0xFECB00D7, 0x0000001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00E8, 0xFF00001E, 0x4237FFF2, 0xFFCC007F, 0xFECB00EA, 0x00000002, 0x00010193, 0x05F30000, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00C6, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00C8, 0x000003E8, 0x42366658, 0xFEF300BA, 0x000D00D7, 0x0000001E, 0x42366658, 0xFEF300BA, 0x000D00E8, 0xFF00001E, 0x42366658, 0xFEF300BA, 0x000D00EA, 0x00000002, 0x000101BB, 0x06750000, 0x0000001E, 0x4235998B, 0x00A30046, 0xFEE500C6, 0x0000001E, 0x4235998B, 0x00A30046, 0xFEE500C8, 0x0000001E, 0x4235998B, 0x00B1004A, 0xFECB00D7, 0x0000001E, 0x4235998B, 0x00C1005C, 0xFEAF00E8, 0x0000001E, 0x4235998B, 0x00C1005C, 0xFEAF00EA, 0x000003E8, 0x4235998B, 0x00C0005B, 0xFEB0013D, 0x0000001E, 0x4235998B, 0x00C0005B, 0xFEB0013F, 0xFF00001E, 0x4235998B, 0x00C0005B, 0xFEB0002E, 0x00000002, 0x000101D9, 0x06610000, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C6, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C8, 0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCA00D7, 0x00000014, 0x4237FFF2, 0xFFF80039, 0xFFCA00E8, 0x0000000A, 0x428CCCC2, 0x00950223, 0xFF3300EA, 0x0000000A, 0x428CCCC2, 0x00950223, 0xFF33013D, 0x000003E8, 0x428CCCC2, 0x00950223, 0xFF33013F, 0x0000001E, 0x428CCCC2, 0x00950223, 0xFF33002E, 0xFF00001E, 0x428CCCC2, 0x00950223, 0xFF330063, 0x00000002, 0x0001021B, 0x03A20000, 0x00000032, 0x42700000, 0x00030006, 0xFFFA00C6, 0x00000028, 0x42700000, 0x00030006, 0xFFFA00C8, 0x0000001E, 0x424BFFF7, 0x00030006, 0xFFFA00D7, 0x00000014, 0x41A4CC7E, 0x00030006, 0xFFFA00E8, 0x00000033, 0x412CCC23, 0x00030006, 0xFFFA00EA, 0x00000032, 0x412665BD, 0x00030006, 0xFFFA013D, 0x00000032, 0x412665BD, 0x00030006, 0xFFFA013F, 0x00000032, 0x4123328A, 0x00030006, 0xFFFA002E, 0xFF000032, 0x412FFF56, 0x00030006, 0xFFFA0063, 0x00000006, 0x00010267, 0x07210000, 0x0000001E, 0x4289332C, 0x00000064, 0x000500C6, 0x0000001E, 0x4289332C, 0x00000065, 0x000600C8, 0x0000001E, 0x4289332C, 0x00010063, 0x002900D7, 0x0000001E, 0x4289332C, 0x0000002A, 0x001000E8, 0x0000001E, 0x4289332C, 0x0000002A, 0x001000EA, 0x000003E8, 0x4289332C, 0x0000002A, 0x0010013D, 0x0000001E, 0x4289332C, 0x0000002A, 0x0010013F, 0xFF00001E, 0x4289332C, 0x0000002A, 0x0010002E, 0xFFFFFFFF, 0x00000000
*/
extern UNK_TYPE D_8096C1A4[];

/*
glabel D_8096CE74
 .word 0x06008080, 0x06008480, 0x06008880, 0x0600A540
*/
extern UNK_TYPE D_8096CE74[4];

/*
glabel D_8096CE84
 .word 0x06008C80, 0x06009D40, 0x0600A940, 0x0600B180
*/
extern UNK_TYPE D_8096CE84[4];

/*
glabel D_8096CE94
 .word 0x00000000
*/
extern UNK_TYPE D_8096CE94;

/*
glabel D_8096CE98
 .word 0x00000000, 0x00000000, 0x00000000
*/
extern UNK_TYPE D_8096CE98[3];

/*
glabel D_8096CEA4
 .word 0x00000000, 0x3E99999A, 0x00000000
*/
extern UNK_TYPE D_8096CEA4[3];

/*
glabel D_8096CEB0
 .word 0xBE966EFF
*/
extern UNK_TYPE D_8096CEB0;

/*
glabel D_8096CEB4
 .word 0x785028FF
*/
extern UNK_TYPE D_8096CEB4;

/*
glabel D_8096CEB8
 .word 0x41300000, 0xC1300000, 0xC0C00000, 0x00000000, 0x41600000, 0xC1500000, 0x41600000, 0xC0000000, 0xC1200000, 0x41200000, 0xC0C00000, 0xC1000000
*/
extern UNK_TYPE D_8096CEB8;

/*
glabel D_8096CEE8
 .word 0x41000000, 0x40C00000, 0x41000000, 0x41500000, 0x41000000, 0xC1200000, 0xC1600000, 0x3F800000, 0xC1600000, 0x40A00000, 0x41400000, 0xC1100000, 0x41300000, 0x40C00000, 0xC0E00000, 0x41600000, 0x41600000, 0xC1600000
*/
extern UNK_TYPE D_8096CEE8;

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
extern UNK_TYPE D_8096CF30[];

/*
glabel D_8096CFA4
 .word func_8096BF54
.word func_8096BF60
.word func_8096B840
*/
extern UNK_TYPE D_8096CFA4[];


/*
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
*/

void DemoDu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoDu* this = THIS;

    SkelAnime_Free(&this->unk_14C, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969AF0.s")

void func_80969B78(DemoDu* this, s16 arg1) {
    this->unk_190 = arg1;
}

void func_80969B8C(DemoDu* this, s16 arg1) {
    this->unk_194 = arg1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969C58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969DDC.s")

void func_80969E6C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->unk_14C, &D_06011CA8, &D_06006EB0, NULL, NULL, 0);
    this->actor.shape.yOffset = -10000.0f;
    func_80969B78(this, 1);
    func_80969B8C(this, 3);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_80969FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A0D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A2CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A338.s")

void func_8096A360(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->unk_14C, &D_06011CA8, NULL, NULL, NULL, 0);
    this->unk_198 = 7;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A3B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A45C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A4D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A630.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A6E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096A970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AA4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AA5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AB54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AB8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096ABF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AC90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096ACFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AD90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AF00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AF6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096AFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B06C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B0C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B0F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B1DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B2D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B3A4.s")

void func_8096B3E4(DemoDu* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    SkelAnime* unk_14C = &this->unk_14C;

    s32 pad;

    f32 lastFrame;

    lastFrame = (f32) Animation_GetLastFrame(&D_06012014);
    SkelAnime_InitFlex(globalCtx2, unk_14C, &D_06011CA8, NULL, NULL, NULL, 0);
    Animation_Change(unk_14C, &D_06012014, 1.0f, 0.0f, lastFrame, 2, 0.0f);
    this->unk_198 = 0x15;
    this->actor.shape.shadowAlpha = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B57C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B6D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B7EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096B840.s")

void func_8096BA2C(DemoDu* this, GlobalContext* globalCtx) {
    SkelAnime_InitFlex(globalCtx, &this->unk_14C, &D_06011CA8, &D_060067CC, NULL, NULL, 0);
    this->unk_198 = 0x18;
    this->unk_19C = NULL;
    this->actor.shape.shadowAlpha = 0;
    func_80969B8C(this, (u16)3);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BA98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BB24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BB5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BBE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BD2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BD4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BE14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/DemoDu_Update.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BF54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/func_8096BF60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Du/DemoDu_Draw.s")
