#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"
#include "libc64/sleep.h"
#include "array_count.h"
#include "fault.h"
#include "gfx.h"
#include "stackcheck.h"
#include "sys_freeze.h"
#include "versions.h"
#include "audio.h"
#include "line_numbers.h"

#pragma increment_block_number "ntsc-1.0:0 ntsc-1.1:0 ntsc-1.2:0 pal-1.0:0 pal-1.1:0"

s32 func_801C8310(struct_801E1598* arg0);

void* D_801D36D0 = gN64DDDiskReadTemporaryBuffer;
s32 (*D_801D36D4)(struct_801E1598*) = func_801C8310;

struct_801C79DC D_801DA410;
struct_801DA5C8 D_801DA4B0;
struct_801DA5C8* D_801DA5C8;
struct_801DA5D0 D_801DA5D0;
OSMesgQueue D_801DA600;
OSMesgQueue D_801DA618;
OSMesg D_801DA630;
OSMesg D_801DA634;
vu8 D_801DA638;
volatile OSTime D_801DA640;
s32 D_801DA648;
s32 D_801DA64C;
s32 D_801DA650;
s32 D_801DA654;
OSThread D_801DA658;
STACK(D_801DA808, 0x1000);
StackEntry D_801DB808;
STACK(D_801DB828, 0x1000);
StackEntry D_801DC828;
s32 D_801DC844;

u32 func_801C6E80(void) {
#if OOT_NTSC
    return LeoDriveExist();
#else
    return 0;
#endif
}

void func_801C6EA0(Gfx** gfxP) {
}

void func_801C776C(void) {
    if (D_80121214 == 0) {
        func_800F6BDC();
        D_80121214 = 1;
    }
}

s32 func_801C77B0(void) {
    return D_80121214 != 0;
}

s32 func_801C77C8(void) {
    if (D_80121214 != 0) {
        return 1;
    }
    return 1;
}

void func_801C77F0(void) {
    func_801C776C();
    while (func_801C77C8() == 0) {
        Sleep_Usec(1000000 / 60);
    }
}

void func_801C7838(void) {
    if (D_80121214 != 0) {
        D_80121214 = 0;
        func_800F6B3C();
    }
}

s32 func_801C786C(void) {
    if (D_80121213 == 0) {
        return 0;
    }
    D_80121213 = 0;
    return 1;
}

void func_801C7898(void) {
    while (func_801C786C() == 0) {
        Sleep_Usec(1000000 / 60);
    }
}

void func_801C78D8(void) {
    if (D_80121213 != 0) {
        Fault_AddHungupAndCrash("../z_n64dd.c", LN2(503, 551, 573));
    }
    D_80121213 = 1;
}

s32 func_801C7924(void) {
    s32 (*p)(struct_801DA5D0*);

    D_801DA5D0.unk0 = 5;
    p = func_801C8860;
    return p(&D_801DA5D0);
}

s32 func_801C7958(void) {
    s32 sp1C;
    s32 (*p)(struct_801DA5D0*);

#if OOT_VERSION <= NTSC_1_1
    if (1) {}
#endif

    D_801DA5D0.unk0 = 0xA;
    p = func_801C8860;
    sp1C = p(&D_801DA5D0);
    if (sp1C < 0) {
        Freeze_CurrentThread();
    }
    return sp1C;
}

s32 func_801C79A4(void) {
    return D_801DA648 == 1;
}

s32 func_801C70FC(void) {
    return func_801C79A4();
}

void func_801C79DC(void* arg) {
    static void* D_801DC848;

    struct_801C79DC* arg0 = arg;
    OSMesg sp58;
    s32 var_s0;
    void* temp_v0;

    sp58 = NULL;
    arg0->unk98 = &gIrqMgr;
    osCreateMesgQueue(&arg0->unk78, arg0->unk0, ARRAY_COUNT(arg0->unk0));
    IrqMgr_AddClient(arg0->unk98, &arg0->unk90, &arg0->unk78);
    var_s0 = 0;
    while (var_s0 == 0) {
        osRecvMesg(&arg0->unk78, &sp58, OS_MESG_BLOCK);
        switch (*(s16*)sp58) {
            case 1:
                temp_v0 = osViGetNextFramebuffer();
                if (D_801DC848 != temp_v0) {
                    D_801DC848 = temp_v0;
                    D_801DA638 = 1;
                }
                func_801C9318();
                break;
            case 4:
                LeoReset();
                break;
            case 3:
                var_s0 = 1;
                break;
        }
    }
    IrqMgr_RemoveClient(arg0->unk98, &arg0->unk90);
}

LEODiskID D_801DC850;
s32 D_801DC870;

#if OOT_VERSION > NTSC_1_0
void func_801C7B28(void) {
    s32 temp_v1_2;

    if (D_801DA640 != 0) {
        temp_v1_2 = OS_CYCLES_TO_USEC(osGetTime() - D_801DA640);
        if ((1000000 - temp_v1_2) > 0) {
            Sleep_Usec(1000000 - temp_v1_2);
        }
    }
}
#endif

void func_801C7268(void) {
    s32 pad;
    s32 sp18;

    sp18 = func_801C77B0();
    if (sp18 == 0) {
        func_801C77F0();
    }
    D_801DA638 = 1;
    D_801DA640 = 0;
    if (func_801C7924() == 1) {
        func_801C7958();
    } else if (D_801DA648 != 0) {
        D_801DA648 = 0;
    }
#if OOT_VERSION == NTSC_1_0
    if (D_801DA640 != 0) {
        s32 temp_v1_2;

        temp_v1_2 = OS_CYCLES_TO_USEC(osGetTime() - D_801DA640);

        (void)(osGetTime() - D_801DA640);
        (void)OS_CYCLES_TO_USEC(osGetTime() - D_801DA640);
        (void)OS_CYCLES_TO_USEC(osGetTime() - D_801DA640);

        if ((1000000 - temp_v1_2) > 0) {
            Sleep_Usec(1000000 - temp_v1_2);
        }
    }
#else
    if ((D_801D3728 == 1) || (D_801E17E0 == 1) || (D_801E17E4 == 1)) {
        D_801DA640 = osGetTime();
    }
    func_801C7B28();
#endif
    if (sp18 == 0) {
        func_801C7838();
    }
}

void func_801C7CB8(u16* arg0) {
    u16* var_v0;

    var_v0 = arg0;
    while (var_v0 < (arg0 + (SCREEN_WIDTH * SCREEN_HEIGHT))) {
        *var_v0 = 1;
        var_v0++;
    }
}

void func_801C7CEC(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp2C;

    if ((arg0 != 0) || (arg1 != 0) || (arg2 != 0)) {
        sp2C = (intptr_t)osViGetNextFramebuffer() + 0x20000000;
        if ((sp2C & 0xFFFFFF) != 0) {
            if (D_801DA638 != 0) {
                D_801DA638 = 0;
                func_801C7CB8((u16*)sp2C);
                D_801DA640 = osGetTime();
            }
            if (arg0 != 0) {
                func_801CAA60(BADCASTP arg0, 0x60, 0x20, 0xC0, 0x10, 0xB, BADCASTP sp2C, 0x140);
            }
            if (arg1 != 0) {
                func_801CAA60(BADCASTP arg1, 0, 0x50, 0x140, 0x40, 0xB, BADCASTP sp2C, 0x140);
            }
            if (arg2 != 0) {
                func_801CAA60(BADCASTP arg2, 0, 0xB0, 0x140, 0x20, 0xB, BADCASTP sp2C, 0x140);
            }
#if OOT_VERSION <= NTSC_1_1
            osViBlack(0);
#endif
        }
    }
}

void func_801C7E34(s32 arg0, s32 arg1, s32 arg2) {
    if ((arg0 == 0) && (arg1 == 0) && (arg2 == 0)) {
        return;
    }
    if (D_801DA638) {}
    if (arg0 != 0) {
        D_801DA64C = arg0;
    }
    if (arg1 != 0) {
        D_801DA650 = arg1;
    }
    if (arg2 != 0) {
        D_801DA654 = arg2;
    }
    func_801C7CEC(arg0, arg1, arg2);
}

void func_801C7E94(void) {
    Sleep_Msec(100);
    func_801C7CEC(D_801DA64C, D_801DA650, D_801DA654);
}

s32 func_801C7658(void) {
    if (D_80121212 != 0) {
        return 0;
    }
#if OOT_VERSION <= NTSC_1_1
    StackCheck_Init(&D_801DB808, D_801DA808, STACK_TOP(D_801DA808), 0, 0x100, "ddmsg");
    osCreateThread(&D_801DA658, 9, func_801C79DC, &D_801DA410, STACK_TOP(D_801DA808), 0xD);
    osStartThread(&D_801DA658);
#endif
    osCreateMesgQueue(&D_801DA600, &D_801DA630, 1);
    osCreateMesgQueue(&D_801DA618, &D_801DA634, 1);
    StackCheck_Init(&D_801DC828, D_801DB828, STACK_TOP(D_801DB828), 0, 0x100, "n64dd");
    D_801DA5D0.unk1C_1.unk1C = &D_801DA600;
    D_801DA5D0.unk1C_1.unk20 = &D_801DA618;
    D_801DA5D0.unk1C_1.unk24 = 8;
    D_801DA5D0.unk1C_1.unk28 = STACK_TOP(D_801DB828);
    D_801DA5D0.unk1C_1.unk2C = 0xD;
    D_801DA5D0.unk0 = 1;
    (&func_801C8860)(&D_801DA5D0);
    D_80121213 = 1;
    func_801C7898();
    D_801DA5D0.unk0 = 2;
    D_801DA5D0.unk10 = 6;
    D_801DA5D0.unk14 = DmaMgr_DmaFromDriveRom;
    D_801DA5D0.unkC = &func_801C7E34;
    (&func_801C8860)(&D_801DA5D0);
    D_801DA5D0.unk0 = 0xD;
    (&func_801C8860)(&D_801DA5D0);
#if OOT_VERSION > NTSC_1_1
    StackCheck_Init(&D_801DB808, D_801DA808, STACK_TOP(D_801DA808), 0, 0x100, "ddmsg");
    osCreateThread(&D_801DA658, 9, func_801C79DC, &D_801DA410, STACK_TOP(D_801DA808), 0xD);
    osStartThread(&D_801DA658);
#endif
    return 0;
}

s32 func_801C7818(void) {
    s32 (*p)(struct_801DA5D0*) = func_801C8860;

#if OOT_VERSION > NTSC_1_0
    D_801DA638 = 1;
    D_801DA640 = 0;
#endif
    D_801DA5D0.unk0 = 0xC;
    p(&D_801DA5D0);
    while (func_801C8A24() == 0) {
        Sleep_Usec(1000000 / 60);
    }
#if OOT_VERSION > NTSC_1_0
    if ((D_801D3728 == 1) || (D_801E17E0 == 1) || (D_801E17E4 == 1)) {
        D_801DA640 = osGetTime();
    }
    func_801C7B28();
#endif
    if (func_801C8A24() != 2) {
        func_801C7E94();
        Freeze_CurrentThread();
        return -3;
    }
    func_801C78D8();
    D_80121212 = 1;
    return 0;
}

s32 func_801C81AC(void) {
    s32 var_v1;

    var_v1 = func_801C7658();
    if (var_v1 == 0) {
        var_v1 = func_801C7818();
    }
    return var_v1;
}

void func_801C81E4(void) {
    D_801DA5D0.unk0 = 0;
    (&func_801C8860)(&D_801DA5D0);
}

void func_801C8214(s32 arg0, void* arg1, s32 arg2) {
    s32 (*p)(struct_801DA5D0*) = func_801C8860;

    D_801DA5D0.unk18 = arg1;
    D_801DA5D0.unk1C_3_4.unk1C = arg0;
    D_801DA5D0.unk1C_3_4.unk20 = arg2;
    D_801DA5D0.unk0 = 3;
    p(&D_801DA5D0);
    osGetTime();
    D_801DA5D0.unk0 = 6;
    while (p(&D_801DA5D0) != 0) {
        Sleep_Usec(1000000 / 60);
    }
    D_801DA5D0.unk0 = 7;
    if (p(&D_801DA5D0) != 0) {
        Freeze_CurrentThread();
    }
}

void func_801C82C0(void* arg0, s32 arg1, s32 arg2) {
    D_801DA5D0.unk18 = arg0;
    D_801DA5D0.unk1C_3_4.unk1C = arg1;
    D_801DA5D0.unk1C_3_4.unk20 = arg2;
    D_801DA5D0.unk0 = 4;
    (&func_801C8860)(&D_801DA5D0);
}

void func_801C8304(LEODiskID* arg0) {
}

s32 func_801C8310(struct_801E1598* arg0) {
    func_801C8304(&arg0->unk38);
    if (D_801DC870 == 0) {
        if (
#if OOT_NTSC
            (bcmp(&arg0->unk38, "EZLJ", 4) == 0) || (bcmp(&arg0->unk38, "EZLE", 4) == 0)
#else
            (bcmp(&arg0->unk38, "EZLP", 4) == 0)
#endif
        ) {
            D_801DC850 = arg0->unk38;
            D_801DC870 = 1;
            D_801DA648 = 1;
        } else {
            D_801DA648 = 2;
        }
    } else if (bcmp(&D_801DC850, &arg0->unk38, 0x20) == 0) {
        D_801DA648 = 1;
    } else {
        D_801DA648 = 2;
    }
    return D_801DA648 == 1;
}

s32 func_801C843C(s32 arg0, s32* arg1, s32* arg2) {
    s32 sp2C;
    s32 pad;
    u32 sp24;
    s32 sp20;
    s32 v;

    v = LeoByteToLBA(1, arg0 + 1, &sp2C);
    if (v != 0) {
        return v;
    }
    sp24 = sp2C - 1;
    if (sp2C == 1) {
        sp20 = 0;
    } else {
        v = LeoLBAToByte(1, sp24, &sp20);
        if (v != 0) {
            return v;
        }
    }
    *arg1 = sp24 + 1;
    *arg2 = arg0 - sp20;
    return 0;
}

s32 func_801C84E0(s32 arg0) {
    s32 sp1C;

    if (LeoLBAToByte(arg0, 1, &sp1C) == 0) {
        return sp1C;
    }
    return 0;
}

void func_801C7C1C(void* arg0, s32 arg1, s32 arg2) {
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    void* sp34;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s1;

    func_801C7898();
    func_801C77F0();
    D_801DA638 = 1;
    D_801DA640 = 0;
    func_801C843C(arg1, &sp44, &sp3C);
    func_801C843C(arg1 + arg2, &sp40, &sp38);
    sp34 = D_801D36D0;
    if (sp44 == sp40) {
        func_801C8214(sp44, sp34, func_801C84E0(sp44));
        bcopy((char*)sp34 + sp3C, arg0, arg2);
    } else {
        var_s1 = 0;
        func_801C8214(sp44, sp34, func_801C84E0(sp44));
        bcopy((char*)sp34 + sp3C, arg0, func_801C84E0(sp44) - sp3C);
        temp_v0 = sp44 + 1;
        if (temp_v0 < sp40) {
            var_s0 = temp_v0;
            if (temp_v0 < sp40) {
                do {
                    var_s1 += func_801C84E0(var_s0);
                    var_s0 += 1;
                } while (var_s0 < sp40);
            }
            func_801C8214(sp44 + 1, (void*)((func_801C84E0(sp44) + (s32)arg0) - sp3C), var_s1);
        }
        if (sp38 > 0) {
            func_801C8214(sp40, sp34, func_801C84E0(sp40));
            bcopy(sp34, (void*)(((func_801C84E0(sp44) + (s32)arg0) - sp3C) + var_s1), sp38);
        }
    }
#if OOT_VERSION == NTSC_1_0
    if (D_801DA640 != 0) {
        s32 temp_v1_2;

        temp_v1_2 = OS_CYCLES_TO_USEC(osGetTime() - D_801DA640);
        if ((1000000 - temp_v1_2) > 0) {
            Sleep_Usec(1000000 - temp_v1_2);
        }
    }
#else
    func_801C7B28();
#endif
    func_801C78D8();
    func_801C7838();
}

void func_801C7E78(void) {
}

s32 func_801C86F8(void) {
    s32 sp24;
    s32 sp20;
    s32 pad;
    void* sp18;

    if (D_801DA5C8 != NULL) {
        return -1;
    }
    D_801DA5C8 = &D_801DA4B0;
    func_801C7C1C(D_801DA5C8, 0x1060, sizeof(*D_801DA5C8));
    sp24 = D_801DA5C8->unk4 - D_801DA5C8->unk0;
    sp20 = (char*)D_801DA5C8->unkC - (char*)D_801DA5C8->unk8;
    sp18 = (char*)D_801DA5C8->unk8 + sp24;
    func_801C7C1C(D_801DA5C8->unk8, D_801DA5C8->unk0, sp24);
    bzero(sp18, sp20 - sp24);
    func_800AD4C0(D_801DA5C8->unk10);
    return 0;
}

s32 func_801C879C(void) {
    if (D_801DA5C8 == NULL) {
        return -1;
    }
    func_800AD51C();
    bzero(D_801DA5C8->unk8, (char*)D_801DA5C8->unkC - (char*)D_801DA5C8->unk8);
    bzero(D_801DA5C8, sizeof(*D_801DA5C8));
    D_801DA5C8 = NULL;
    return 0;
}

void n64dd_SetDiskVersion(s32 arg0) {
    if (arg0 != 0) {
        if (D_801DA5C8 == 0) {
            func_801C86F8();
        }
    } else if (D_801DA5C8 != 0) {
        func_801C879C();
    }
}
