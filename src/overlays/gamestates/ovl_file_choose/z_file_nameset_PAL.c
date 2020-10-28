#include "ultra64.h"
#include "global.h"

void func_8080B40C(FileChooseContext* this);
void func_8080B494(FileChooseContext* this);
void func_8080B52C(FileChooseContext* this);
void func_80803D40(FileChooseContext* this);
void func_80803ED8(FileChooseContext* this);
void func_80804248(FileChooseContext* this);
void func_808043D8(FileChooseContext* this);
void func_808044A0(FileChooseContext* this);
void func_80804858(FileChooseContext* this);
void func_80804924(FileChooseContext* this);
void func_80804A50(FileChooseContext* this);
void func_80804C74(FileChooseContext* this);
void func_80804CD0(FileChooseContext* this);
void func_80804ED8(FileChooseContext* this);
void func_8080510C(FileChooseContext* this);
void func_808051C8(FileChooseContext* this);
void func_80805318(FileChooseContext* this);
void func_80805434(FileChooseContext* this);
void func_80805524(FileChooseContext* this);
void func_80805824(FileChooseContext* this);
void func_8080595C(FileChooseContext* this);
void func_80805B2C(FileChooseContext* this);
void func_80805EB8(FileChooseContext* this);
void func_80806180(FileChooseContext* this);
void func_8080625C(FileChooseContext* this);
void func_80806444(FileChooseContext* this);
void func_808064F4(FileChooseContext* this);
void func_80806710(FileChooseContext* this);
void func_808068F0(FileChooseContext* this);
void func_808069B4(FileChooseContext* this);
void func_80806C20(FileChooseContext* this);
void func_8080BE28(FileChooseContext* this);
void func_8080BE84(FileChooseContext* this);
void func_80809038(FileChooseContext* this);
void func_80808F84(FileChooseContext* this);
void func_8080BF6C(FileChooseContext* this);
void func_8080BEF8(FileChooseContext* this);
void func_8080969C(FileChooseContext* this);
void func_8080960C(FileChooseContext* this);
void func_8080BF6C(FileChooseContext* this);
void func_8080BE30(FileChooseContext* this);

void func_8080FE2C(FileChooseContext* this);
void func_8080FF98(FileChooseContext* this);
void func_8081009C(FileChooseContext* this);
void func_8081017C(FileChooseContext* this);
void func_80810354(FileChooseContext* this);
void func_80810440(FileChooseContext* this);
void func_80810698(FileChooseContext* this);
void func_808106F4(FileChooseContext* this);

void func_8080B224(FileChooseContext* this);
void func_8080F560(FileChooseContext* this);
void func_808109B8(FileChooseContext* this);

void func_8080B1A8(FileChooseContext* this);
void func_8080C2F4(FileChooseContext* this);
void func_8081097C(FileChooseContext* this);

s32 D_808124C0[] = { 0x00020003, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010002, 0x00000001,
                     0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002, 0x00000001,
                     0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003,
                     0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003,
                     0x00020002, 0x00000002, 0x00020002, 0x00000003, 0x00010000 };
s32 D_80812544[] = { 0x00010002, 0x00000001, 0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002,
                     0x00000001, 0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003,
                     0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003, 0x00020002,
                     0x00000002, 0x00020002, 0x00030002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010003 };
s32 D_808125C4[] = { 0x01033480, 0x01033480, 0x01033B80 };
s32 D_808125D0[] = { 0x01015280, 0x01014200, 0x01015280, 0x01014780, 0x01015280, 0x01014D00 };
s32 D_808125E8[] = { 0x001C002C };
s32 D_808125EC[] = { 0xFFE2FFF0, 0xFFFA0004, 0x000E0018, 0x0022002C, 0x0036FFF0, 0xFFF00000 };
s32 D_80812604[] = { 0x00480045, 0x00450045, 0x00450045, 0x00450045, 0x00450045, 0x00450000 };
s32 D_8081261C[] = { 0x01032480, 0x01032C80, 0x01032480, 0x00800080, 0x00800010, 0x01041100, 0x01041100,
                     0x01041500, 0x00400040, 0x00400010, 0x01041F00, 0x01042300, 0x01042C00, 0x00400090,
                     0x00400010, 0x01044600, 0x01044E00, 0x01045600, 0x00800080, 0x00800010 };
s32 D_8081266C[] = { 0x01041900, 0x01041900, 0x01041C00, 0x00300030, 0x00300010, 0x01040E00, 0x01040E00, 0x01040E00,
                     0x00300030, 0x00300010, 0x01040500, 0x01040800, 0x01040B00, 0x00300030, 0x00300010, 0x01040200,
                     0x01040200, 0x01040200, 0x00300030, 0x00300010, 0x01043000, 0x01043300, 0x01043800, 0x00300050,
                     0x00300010, 0x01043B00, 0x01043E00, 0x01044300, 0x00300050, 0x00300010 };
s32 D_808126E4[] = { 0x00FF0000 };
s32 D_808126E8[] = { 0x00FF0000 };
s32 D_808126EC[] = { 0x00FF0000 };
s32 D_808126F0[] = { 0x00000000 };
s32 D_808126F4[] = { 0x00000000 };
s32 D_808126F8[] = { 0x00000000 };
s32 D_808126FC[] = { 0x00010000 };
s32 D_80812700[] = { 0x00140000 };
s32 D_80812704[] = { 0x00FF00FF, 0x00FF0000, 0x00FF00FF };
s32 D_80812710[] = { 0x00000000, 0x00000000, 0x00960096, 0x00000000, 0x006A0000 };
s16 D_80812724 = 0x00FF;
s32 D_80812728[] = { 0xE7000000, 0x00000000, 0xD9C0F9FA, 0x00000000, 0xEF802C30,
                     0x00504340, 0xFCFFFFFF, 0xFFFDF6FB, 0xDF000000, 0x00000000 };
s32 D_80812750[] = { 0x00240024, 0x00240024, 0x00180000 };
s32 D_8081275C[] = { 0x00640096, 0x00FF0064, 0x00640064 };
u8 sEmptyName[] = { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E };

void* D_80812770[] = { // update funcs for menuIndex 1
    func_8080B40C, func_8080B494, func_8080B52C, func_80803D40, func_80803ED8, func_80804248, func_808043D8,
    func_808044A0, func_80804858, func_80804924, func_80804A50, func_80804C74, func_80804CD0, func_80804ED8,
    func_8080510C, func_808051C8, func_80805318, func_80805434, func_80805524, func_80805824, func_8080595C,
    func_80805B2C, func_80805EB8, func_80806180, func_8080625C, func_80806444, func_808064F4, func_80806710,
    func_808068F0, func_808069B4, func_80806C20, func_8080BE28, func_8080BE84, func_80809038, func_80808F84,
    func_8080BF6C, func_8080BEF8, func_8080969C, func_8080960C, func_8080BF6C, func_8080BE30,
};
s16 D_80812814[] = { 0x0046, 0x00C8 }; // used for calculating alpha for the flashing cursor
s32 D_80812818[] = { 0x001A000A, 0x000A000A };
s32 D_80812820[] = { 0x0020000C, 0x000C000C };
s32 D_80812828[] = { 0x0010000C, 0x000C000C };
s32 D_80812830[] = { 0x00400054, 0x00680274, 0x0278027C };
s32 D_8081283C[] = { 0x00400054, 0x00680278 };
s32 D_80812844[] = { 0x02740278 };
s32 D_80812848[] = { 0x02740278 };
s32 D_8081284C[] = { 0x007C0124, 0x01CC0000 };
s32 D_80812854[] = { 0x0101C880, 0x0101CC80, 0x0101D080, 0x01000180, 0x01000280,
                     0x01000380, 0x01000480, 0x01000580, 0x01000680 };
s32 D_80812878[] = { 0x00FF00FF, 0x00FF0000, 0x00FF0000, 0x00FF00C8, 0x00C80000 };
s32 D_8081288C[] = { 0x00FF00FF, 0x00FF00FF, 0x003C0064, 0x00820032, 0x00C80000 };
s32 D_808128A0[] = { 0x00FF00FF, 0x00FF0000, 0x000000FF, 0x000000FF, 0x00000000 };
s32 D_808128B4[] = { 0x00120013, 0x00140000, 0x00010002, 0x00030004, 0x00050000 };
s32 D_808128C8[] = { 0x00FF00FF, 0x00FF0064, 0x00640064 };
s32 D_808128D4[] = { 0x02000400, 0x02000900 };
s32 D_808128DC[] = { 0x00FF0046, 0x003200C8, 0x00000000 };
s32 D_808128E8[] = { 0x00320028, 0x003C00FF, 0x00FF00FF };
s32 D_808128F4[] = { 0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280 };
s32 D_80812908[] = { 0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80,
                     0x0102E480, 0x0102EC80, 0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80,
                     0x01028480, 0x0102F480, 0x0102FC80, 0x01030480, 0x0102CC80, 0x0102D480, 0x01028C80,
                     0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80 };
s32 D_80812974[] = { 0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480, 0x0101FC80, 0x01020480, 0x01020C80,
                     0x01021480, 0x01021C80, 0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480 };
s32 D_808129B0[] = { 0x01037200, 0x01037A00, 0x01038200, 0x01038A00, 0x01039200,
                     0x01039A00, 0x0103A200, 0x0103AA00, 0x0103B200 };
s32 D_808129D4[] = { 0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00, 0x01036200, 0x0103DA00,
                     0x0103C200, 0x0103F200, 0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00 };
s32 D_80812A04[] = { 0x01045E00, 0x01046600, 0x01045E00 };
s32 D_80812A10[] = { 0x00000010, 0x00200000 };
void* D_80812A18[] = {
    func_8080FE2C, func_8080FF98, func_8081009C, func_8081017C,
    func_80810354, func_80810440, func_80810698, func_808106F4,
};
void* gFileSelectDrawFuncs[] = {
    func_8080B224,
    func_8080F560,
    func_808109B8,
};
void* gFileSelectUpdateFuncs[] = {
    func_8080B1A8,
    func_8080C2F4,
    func_8081097C,
};
s32 D_80812A50[] = { 0x01033F00, 0x01034800, 0x01035100, 0x00000000 };

u8 D_80813810;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080723C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80807DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80809038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080960C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080969C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808099C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF30.s")
