#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038600.s")

void func_80038708(s16* puParm1, s16* puParm2, u16 uParm3) {
    *puParm1 = *puParm2;
    puParm1[1] = uParm3;
}

void func_8003871C(u16* puParm1) {
    *puParm1 = 0xFFFF;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038728.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038780.s")

void func_800387FC(u32 uParm1, u32* puParm2) {
    *puParm2 = 0;
    puParm2[1] = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003880C.s")

void func_80038870(s32 iParm1) {
    *(u32*)(iParm1 + 4) = 0;
}

u32 func_80038878(s32 iParm1) {
    u32 uVar1;

    uVar1 = *(u32*)(iParm1 + 4) & 0xffff;
    *(s32*)(iParm1 + 4) = *(u32*)(iParm1 + 4) + 1;

    if (*(s32*)(iParm1 + 8) <= (s32)uVar1) {
        return 0xffff;
    }

    return uVar1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800388A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800388E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038924.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800389D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038BE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038E78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039000.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800390A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003937C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039448.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003965C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003992C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A7D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AB28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AD00.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ADC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B04C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C078.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/T_BGCheck_getBGDataInfo.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C614.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C940.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CCA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D594.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D600.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E02C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E214.s")

void func_8003E398(u16* puParm1) {
    *puParm1 = 0;
    puParm1[1] = 0;
    *(u32*)(puParm1 + 2) = 0;
    *(u32*)(puParm1 + 4) = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E530.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E568.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E5B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E688.s")

void func_8003E6C4(u16* puParm1) {
    *puParm1 = 0;
    func_8003E688();
}

void func_8003E6E4(u16* a0) {
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E750.s")

void func_8003E804(s32 iParm1) {
    func_8003E5B4(iParm1 + 0x14, iParm1 + 0x34);
}

void func_8003E82C(u32* a0) {
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E834.s")

void func_8003E888(u32* a0) {
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E8EC.s")

/*
NON-MATCHING
void func_8003E8EC(u32 uParm1, u32* iParm2) {
    iParm2[0x06] = iParm2[0x0E];
    iParm2[0x05] = iParm2[0x0D];
    iParm2[0x07] = iParm2[0x0F];
    iParm2[0x08] = iParm2[0x10];
    iParm2[0x0A] = iParm2[0x12];
    iParm2[0x09] = iParm2[0x11];
    iParm2[0x0B] = iParm2[0x13];
    iParm2[0x0C] = iParm2[0x14];


   //s32 i;
   //for (i = 0; i < 4; i++) {
       //iParm2[0x06 + (i * 2)] = iParm2[0x0E + (i * 2)];
       //iParm2[0x07 + (i * 2)] = iParm2[0x0D + (i * 2)];
   //}
}
*/

u32 func_8003E934(s32 iParm1) {
    if (!((-1 < iParm1) && (iParm1 < 0x32))) {
        return 0;
    }

    return 1;
}

void func_8003E954(u32 uParm1, u8* puParm2) {
    *puParm2 = 1;
    func_8003E82C(puParm2 + 0x13f0);
    func_8003E888(puParm2 + 0x13f4);
    func_800387FC(uParm1, puParm2 + 0x13f8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E9A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EA74.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ECA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ED58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F984.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FB64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040284.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800409A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041240.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800413F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041510.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041648.s")

typedef struct {
    /* 0x00 */ char unk_00[0x10];
    /* 0x10 */ void* unk_10;
    /* 0x14 */ char unk_[0x04];
    /* 0x18 */ void* unk_18;
    /* 0x1C */ void* unk_1C;
    /* 0x20 */ void* unk_20;
    /* 0x24 */ char unk_24[4];
    /* 0x28 */ void* unk_28;
} Struct800417A0; // size = 0x32

// called by func_800418D0 with actorMesh->unk_08
void func_800417A0(Struct800417A0* arg0) {
    arg0->unk_10 = SEGMENTED_TO_VIRTUAL(arg0->unk_10);
    arg0->unk_18 = SEGMENTED_TO_VIRTUAL(arg0->unk_18);
    arg0->unk_1C = SEGMENTED_TO_VIRTUAL(arg0->unk_1C);
    arg0->unk_20 = SEGMENTED_TO_VIRTUAL(arg0->unk_20);
    arg0->unk_28 = SEGMENTED_TO_VIRTUAL(arg0->unk_28);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041880.s")

void func_800418D0(CollisionContext* colCtx, GlobalContext* globalCtx) {
    ActorMesh* actorMesh;
    DynaCollisionContext* dynaColCtx;
    s32 i;
    u16 flag;

    dynaColCtx = &colCtx->dyna;
    for (i = 0; i < 50; i++) {
        flag = dynaColCtx->flags[i];
        if ((flag & 1) && !(flag & 2)) {
            actorMesh = &dynaColCtx->actorMeshArr[i];
            Actor_SetObjectDependency(globalCtx, actorMesh->actor);
            func_800417A0(actorMesh->unk_08);
        }
    }
}

#ifdef NON_MATCHING
void func_80041978(s32 iParm1, s32 iParm2) {
    u8* puVar1;

    puVar1 = *(u8**)(iParm1 + 8);
    if (puVar1 < puVar1 + iParm2) {
        *puVar1 = 0;
        while (puVar1++ < (u8*)(*(s32*)(iParm1 + 8) + iParm2)) {
            *puVar1 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041978.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800419B0.s")

u32 func_80041A28(CollisionContext* a0, u32 a1, u32 a2) {
    u32 uVar1;

    uVar1 = func_800419B0(a0, a1, a2, 0);
    return uVar1 & 0xff;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D4C.s")

u32 func_80041D94(u32 a0, u32 a1, u32 a2) {
    u32 uVar1;

    uVar1 = func_800419B0(a0, a1, a2, 0);
    return uVar1 >> 0x15 & 0x1f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EEC.s")

u32 func_80041F10(u32 a0, u32 a1, u32 a2) {
    u32 uVar1;

    uVar1 = func_800419B0(a0, a1, a2, 1);
    return uVar1 & 0xf;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004200C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042084.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800420E4.s")

u32 func_80042108(u32 a0, u32 a1, u32 a2) {
    u32 result;
    s32 var1;

    var1 = func_800419B0(a0, a1, a2, 1);

    if (var1 << 4 < 0) {
        result = 1;
    } else {
        result = 0;
    }

    return result;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

u8 func_80042538(CollisionContext* colCtx, s32 iParm2) {
    u32 var1 = *(u32*)(iParm2 + 0xc);
    return var1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042548.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004259C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800427B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042868.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042C3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042FC4.s")
