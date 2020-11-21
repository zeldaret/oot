#include "ultra64.h"
#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/pad_800DACB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DACC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB03C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB2C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB330.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB480.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB4E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB680.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DB828.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBAE8.s")

void func_800DBB94(void) {

}

void func_800DBB9C(u64 *arg0, s32 arg1, s32 arg2) {
    aClearBuffer(arg0, arg1, arg2);
}

void func_800DBBBC(void) {

}

void func_800DBBC4(void) {

}

void func_800DBBCC(void) {

}

void func_800DBBD4(u64 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aMix(arg0, arg1, arg2, arg3, arg4);
}

void func_800DBC08(void) {

}

void func_800DBC10(void) {

}

void func_800DBC18(void) {

}

#ifdef NON_MATCHING
void func_800DBC20(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aSetBuffer(arg0, arg1, arg2, arg3, arg4);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBC20.s")
#endif

void func_800DBC54(void) {

}

void func_800DBC5C(void) {

}

#ifdef NON_MATCHING
void func_800DBC64(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    aDMEMMove(arg0, arg1, arg2, arg3);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBC64.s")
#endif

void func_800DBC90(void) {

}

void func_800DBC98(void) {

}

void func_800DBCA0(void) {

}

void func_800DBCA8(void) {

}

// need A_INTERL macro
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBCB0.s")


void func_800DBCD4(u64 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aEnvSetup1(arg0, arg1, arg2, arg3, arg4);
}

void func_800DBD08(void) {

}

void func_800DBD10(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    aLoadBuffer(arg0, arg3, arg1, arg2);
}

void func_800DBD38(u64 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    aSaveBuffer(arg0, arg1, arg3, arg2);
}

#ifdef NON_MATCHING
void func_800DBD60(void *arg0, s32 arg1, s32 arg2) {
    aEnvSetup2(arg0, arg1, arg2);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBD60.s")
#endif

void func_800DBD7C(void) {

}

void func_800DBD84(void) {

}

void func_800DBD8C(void) {

}

// unknown cmd 0x17?
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBD94.s")

// need macro for hilogain
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBDB0.s")

// unk command 0x19
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBDE4.s")

void func_800DBE18(void) {

}

void func_800DBE20(void) {

}

void func_800DBE28(void) {

}

void func_800DBE30(void) {

}

// unk command 0x03
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBE38.s")

void func_800DBE5C(void) {

}

void func_800DBE64(void) {

}

void func_800DBE6C(void) {

}

void func_800DBE74(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    aFilter(arg0, arg1, arg2, arg3);
}

void func_800DBE98(void *arg0, s32 arg1, s32 arg2) {
    aFilter(arg0, 2, arg1, arg2);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBEB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DBF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC008.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC074.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC0E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC124.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC164.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC2DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC384.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DC910.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DD62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DD6CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DD9F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800DACC0/func_800DDB64.s")
