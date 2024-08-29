#include "global.h"
#include "fault.h"
#include "n64dd.h"
#include "stack.h"
#include "versions.h"

typedef struct struct_801D9C30 {
    /* 0x000 */ s32 unk_000;       // disk start
    /* 0x004 */ s32 unk_004;       // disk end
    /* 0x008 */ uintptr_t unk_008; // ram start
    /* 0x00C */ uintptr_t unk_00C; // ram end
    /* 0x010 */ UNK_PTR unk_010;
    /* 0x014 */ char unk_014[0x104];
} struct_801D9C30; // size = 0x118

typedef struct struct_801D9B90 {
    /* 0x00 */ OSMesg unk_00[30];
    /* 0x78 */ OSMesgQueue unk_78;
    /* 0x90 */ IrqMgrClient unk_90;
    /* 0x98 */ IrqMgr* unk_98;
} struct_801D9B90; // size = 0x9C

s32 func_801C7A1C(struct_801E0D18* arg0);

void* D_801D2E50 = &B_801DC000;
s32 (*D_801D2E54)(struct_801E0D18*) = func_801C7A1C;

struct_801D9B90 B_801D9B90;
struct_801D9C30 B_801D9C30;
struct_801D9C30* B_801D9D48;
struct_801D9D50 B_801D9D50;
OSMesgQueue B_801D9D80;
OSMesgQueue B_801D9D98;
OSMesg B_801D9DB0[1];
OSMesg B_801D9DB4[1];
volatile u8 B_801D9DB8;
volatile OSTime B_801D9DC0;
s32 B_801D9DC8; // 1 if disk gameName is correct, 2 otherwise
void* B_801D9DCC;
void* B_801D9DD0;
void* B_801D9DD4;
OSThread B_801D9DD8;
STACK(B_801D9F88, 0x1000);
StackEntry B_801DAF88;
STACK(B_801DAFA8, 0x1000);
StackEntry B_801DBFA8;
UNK_TYPE B_801DBFC4; // unused?

u32 func_801C6E80(void) {
#if OOT_NTSC
    return LeoDriveExist();
#else
    return 0;
#endif
}

void func_801C6EA0(Gfx** gfxP) {
}

void func_801C6EAC(void) {
    if (D_80121214 == 0) {
        func_800F6BDC();
        D_80121214 = 1;
    }
}

s32 func_801C6EF0(void) {
    return D_80121214 != 0;
}

s32 func_801C6F08(void) {
    if (D_80121214 != 0) {
        return 1;
    }
    return 1;
}

void func_801C6F30(void) {
    func_801C6EAC();
    while (func_801C6F08() == 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

void func_801C6F78(void) {
    if (D_80121214 != 0) {
        D_80121214 = 0;
        func_800F6B3C();
    }
}

// boolean
s32 func_801C6FAC(void) {
    if (D_80121213 == 0) {
        return false;
    } else {
        D_80121213 = 0;
        return true;
    }
}

void func_801C6FD8(void) {
    while (!func_801C6FAC()) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

// Adds a HungupAndCrash
void func_801C7018(void) {
    if (D_80121213 != 0) {
#if OOT_VERSION == NTSC_1_0
        Fault_AddHungupAndCrash("../z_n64dd.c", 503);
#elif OOT_VERSION == NTSC_1_1
        Fault_AddHungupAndCrash("../z_n64dd.c", 551);
#else
        Fault_AddHungupAndCrash("../z_n64dd.c", 573);
#endif
    }
    D_80121213 = 1;
}

s32 func_801C7064(void) {
    B_801D9D50.unk_00 = 5;
    return (&func_801C8000)(&B_801D9D50);
}

s32 func_801C7098(void) {
    s32 phi_v1;

#if OOT_VERSION <= NTSC_1_1
    if (0) {}
#endif

    B_801D9D50.unk_00 = 10;
    phi_v1 = (&func_801C8000)(&B_801D9D50);
    if (phi_v1 < 0) {
        func_800D31A0();
    }
    return phi_v1;
}

s32 func_801C70E4(void) {
    return B_801D9DC8 == 1;
}

// Used by EnMag and FileChoose
s32 func_801C70FC(void) {
    return func_801C70E4();
}

void func_801C711C(void* arg) {
    static void* B_801DBFC8;
    struct_801D9B90* arg0 = (struct_801D9B90*)arg;
    s16* sp58;
    s32 var_s0;
    void* temp_v0;

    sp58 = NULL;
    arg0->unk_98 = &gIrqMgr;
    osCreateMesgQueue(&arg0->unk_78, arg0->unk_00, ARRAY_COUNT(arg0->unk_00));
    IrqMgr_AddClient(arg0->unk_98, &arg0->unk_90, &arg0->unk_78);
    var_s0 = 0;
    do {
        osRecvMesg(&arg0->unk_78, (OSMesg*)&sp58, OS_MESG_BLOCK);
        switch (*sp58) {
            case 1:
                temp_v0 = osViGetNextFramebuffer();
                if (B_801DBFC8 != temp_v0) {
                    B_801DBFC8 = temp_v0;
                    B_801D9DB8 = 1;
                }
                func_801C8AA8();
                break;
            case 4:
                LeoReset();
                break;
            case 3:
                var_s0 = 1;
                break;
        }
    } while (var_s0 == 0);
    IrqMgr_RemoveClient(arg0->unk_98, &arg0->unk_90);
}

#if OOT_VERSION > NTSC_1_0
void func_801C7B28_ne2(void) {
    s32 temp;

    if (B_801D9DC0 != 0) {
        temp = (osGetTime() - B_801D9DC0) * 64 / 3000;
        if (1000000 - temp > 0) {
            Sleep_Usec(1000000 - temp);
        }
    }
}
#endif

void func_801C7268(void) {
    s32 pad;
    s32 sp20;
    s32 sp1C;

    sp20 = func_801C6EF0();
    if (sp20 == 0) {
        func_801C6F30();
    }
    B_801D9DB8 = 1;
    B_801D9DC0 = 0;
    if (func_801C7064() == 1) {
        func_801C7098();
    } else if (B_801D9DC8 != 0) {
        B_801D9DC8 = 0;
    }
#if OOT_VERSION == NTSC_1_0
    if (B_801D9DC0 != 0) {
        sp1C = (osGetTime() - B_801D9DC0) * 64 / 3000;

        // Remnants from debug statements?
        (void)(osGetTime() - B_801D9DC0);
        (void)((osGetTime() - B_801D9DC0) * 64 / 3000);
        (void)((osGetTime() - B_801D9DC0) * 64 / 3000);

        if (1000000 - sp1C > 0) {
            Sleep_Usec(1000000 - sp1C);
        }
    }
#else
    if (D_801D2EA8 == 1 || B_801E0F60 == 1 || B_801E0F64 == 1) {
        B_801D9DC0 = osGetTime();
    }
    func_801C7B28_ne2();
#endif
    if (sp20 == 0) {
        func_801C6F78();
    }
}

// Clears framebuffer
void func_801C7438(void* arg0) {
    u16* var_v0;

    for (var_v0 = (u16*)arg0; var_v0 < (u16*)arg0 + SCREEN_WIDTH * SCREEN_HEIGHT; var_v0++) {
        *var_v0 = 1;
    }
}

void func_801C746C(void* arg0, void* arg1, void* arg2) {
    void* sp2C;

    if (arg0 != NULL || arg1 != NULL || arg2 != NULL) {
        sp2C = (u8*)osViGetNextFramebuffer() + 0x20000000;
        if ((u32)sp2C & 0xFFFFFF) {
            if (B_801D9DB8 != 0) {
                B_801D9DB8 = 0;
                func_801C7438(sp2C);
                B_801D9DC0 = osGetTime();
            }
            if (arg0 != NULL) {
                func_801CA1F0(arg0, 96, 32, 192, 16, 11, sp2C, SCREEN_WIDTH);
            }
            if (arg1 != NULL) {
                func_801CA1F0(arg1, 0, 80, 320, 64, 11, sp2C, SCREEN_WIDTH);
            }
            if (arg2 != NULL) {
                func_801CA1F0(arg2, 0, 176, 320, 32, 11, sp2C, SCREEN_WIDTH);
            }
#if OOT_VERSION <= NTSC_1_1
            osViBlack(0);
#endif
        }
    }
}

void func_801C75BC(void* arg0, void* arg1, void* arg2) {
    s32 temp;

    if (arg0 == NULL && arg1 == NULL && arg2 == NULL) {
        return;
    }

    if (B_801D9DB8) {}

    if (arg0 != 0) {
        B_801D9DCC = arg0;
    }
    if (arg1 != 0) {
        B_801D9DD0 = arg1;
    }
    if (arg2 != 0) {
        B_801D9DD4 = arg2;
    }
    func_801C746C(arg0, arg1, arg2);
}

void func_801C761C(void) {
    Sleep_Msec(100);
    func_801C746C(B_801D9DCC, B_801D9DD0, B_801D9DD4);
}

s32 func_801C7658(void) {
    if (D_80121212 != 0) {
        return 0;
    }

#if OOT_VERSION <= NTSC_1_1
    StackCheck_Init(&B_801DAF88, B_801D9F88, STACK_TOP(B_801D9F88), 0, 0x100, "ddmsg");
    osCreateThread(&B_801D9DD8, THREAD_ID_DDMSG, &func_801C711C, &B_801D9B90, STACK_TOP(B_801D9F88), THREAD_PRI_DDMSG);
    osStartThread(&B_801D9DD8);
#endif

    osCreateMesgQueue(&B_801D9D80, B_801D9DB0, ARRAY_COUNT(B_801D9DB0));
    osCreateMesgQueue(&B_801D9D98, B_801D9DB4, ARRAY_COUNT(B_801D9DB4));

    StackCheck_Init(&B_801DBFA8, B_801DAFA8, STACK_TOP(B_801DAFA8), 0, 0x100, "n64dd");

    B_801D9D50.unk_1C = &B_801D9D80;
    B_801D9D50.unk_20 = &B_801D9D98;
    B_801D9D50.unk_24 = THREAD_ID_N64DD;
    B_801D9D50.unk_28 = STACK_TOP(B_801DAFA8);
    B_801D9D50.unk_2C = THREAD_PRI_N64DD;
    B_801D9D50.unk_00 = 1;

    (&func_801C8000)(&B_801D9D50);

    D_80121213 = 1;
    func_801C6FD8();

    B_801D9D50.unk_00 = 2;
    B_801D9D50.unk_10 = 6;
    B_801D9D50.unk_14 = &DmaMgr_DmaFromDriveRom;
    B_801D9D50.unk_0C = &func_801C75BC;
    (&func_801C8000)(&B_801D9D50);

    B_801D9D50.unk_00 = 13;
    (&func_801C8000)(&B_801D9D50);

#if OOT_VERSION > NTSC_1_1
    StackCheck_Init(&B_801DAF88, B_801D9F88, STACK_TOP(B_801D9F88), 0, 0x100, "ddmsg");
    osCreateThread(&B_801D9DD8, THREAD_ID_DDMSG, &func_801C711C, &B_801D9B90, STACK_TOP(B_801D9F88), THREAD_PRI_DDMSG);
    osStartThread(&B_801D9DD8);
#endif

    return 0;
}

s32 func_801C7818(void) {
#if OOT_VERSION > NTSC_1_0
    B_801D9DB8 = 1;
    B_801D9DC0 = 0;
#endif

    B_801D9D50.unk_00 = 12;
    (&func_801C8000)(&B_801D9D50);

    while (func_801C81C4() == 0) {
        // the number 16666 sounds like it could be 1 frame (at 60 frames per second)
        Sleep_Usec(1000000 * 1 / 60);
    }

#if OOT_VERSION > NTSC_1_0
    if (D_801D2EA8 == 1 || B_801E0F60 == 1 || B_801E0F64 == 1) {
        B_801D9DC0 = osGetTime();
    }
    func_801C7B28_ne2();
#endif

    if (func_801C81C4() != 2) {
        func_801C761C();
        func_800D31A0();
        return -3;
    }

    func_801C7018();
    D_80121212 = 1;
    return 0;
}

s32 func_801C78B8(void) {
    s32 phi_v1 = func_801C7658();

    if (phi_v1 == 0) {
        phi_v1 = func_801C7818();
    }
    return phi_v1;
}

s32 func_801C78F0(void) {
    B_801D9D50.unk_00 = 0;
    return (&func_801C8000)(&B_801D9D50);
}

void func_801C7920(s32 arg0, void* arg1, s32 arg2) {
    B_801D9D50.unk_18 = arg1;
    B_801D9D50.unk_1C = (void*)arg0;
    B_801D9D50.unk_20 = (void*)arg2;
    B_801D9D50.unk_00 = 3;
    (&func_801C8000)(&B_801D9D50);
    osGetTime();
    B_801D9D50.unk_00 = 6;
    while ((&func_801C8000)(&B_801D9D50) != 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
    B_801D9D50.unk_00 = 7;
    if ((&func_801C8000)(&B_801D9D50) != 0) {
        func_800D31A0();
    }
}

void func_801C79CC(void* arg0, s32 arg1, s32 arg2) {
    B_801D9D50.unk_18 = arg0;
    B_801D9D50.unk_1C = (void*)arg1;
    B_801D9D50.unk_20 = (void*)arg2;
    B_801D9D50.unk_00 = 4;
    (&func_801C8000)(&B_801D9D50);
}

void func_801C7A10(LEODiskID* arg0) {
}

// Checks diskId, sets B_801D9DC8 and returns true if diskId is correct
s32 func_801C7A1C(struct_801E0D18* arg0) {
    static LEODiskID B_801DBFD0;
    static s32 B_801DBFF0; // bool

    func_801C7A10(&arg0->diskId);
    if (!B_801DBFF0) {
        if (
#if OOT_NTSC
            bcmp(arg0->diskId.gameName, "EZLJ", 4) == 0 || bcmp(arg0->diskId.gameName, "EZLE", 4) == 0
#else
            bcmp(arg0->diskId.gameName, "EZLP", 4) == 0
#endif
        ) {
            B_801DBFD0 = arg0->diskId;
            B_801DBFF0 = true;
            B_801D9DC8 = 1;
        } else {
            B_801D9DC8 = 2;
        }
    } else if (bcmp(&B_801DBFD0, &arg0->diskId, sizeof(LEODiskID)) == 0) {
        B_801D9DC8 = 1;
    } else {
        B_801D9DC8 = 2;
    }
    return B_801D9DC8 == 1;
}

// Translates byte position to LBA and byte offset
s32 func_801C7B48(s32 arg0, s32* arg1, s32* arg2) {
    s32 sp2C;
    s32 temp_v0_2;
    s32 sp24;
    s32 sp20;
    s32 temp_v0;

    temp_v0_2 = LeoByteToLBA(1, arg0 + 1, &sp2C);
    if (temp_v0_2 != LEO_ERROR_GOOD) {
        return temp_v0_2;
    }
    sp24 = sp2C - 1;
    if (sp2C == 1) {
        sp20 = 0;
    } else {
        temp_v0 = LeoLBAToByte(1, sp24, &sp20);
        if (temp_v0 != LEO_ERROR_GOOD) {
            return temp_v0;
        }
    }
    *arg1 = sp24 + 1;
    *arg2 = arg0 - sp20;
    return LEO_ERROR_GOOD;
}

s32 func_801C7BEC(s32 startLBA) {
    s32 bytes;

    if (LeoLBAToByte(startLBA, 1, &bytes) == LEO_ERROR_GOOD) {
        return bytes;
    }
    return 0;
}

// Copies bytes from disk to arg0
void func_801C7C1C(void* dest, s32 offset, s32 size) {
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    void* sp4C;
    s32 var_s0;
    s32 var_s1;
    s32 temp_v1_2;

    func_801C6FD8();
    func_801C6F30();
    B_801D9DB8 = 1;
    B_801D9DC0 = 0;
    func_801C7B48(offset, &sp5C, &sp54);
    func_801C7B48(offset + size, &sp58, &sp50);
    sp4C = D_801D2E50;
    if (sp5C == sp58) {
        func_801C7920(sp5C, sp4C, func_801C7BEC(sp5C));
        bcopy((u8*)sp4C + sp54, dest, size);
    } else {
        var_s1 = 0;
        func_801C7920(sp5C, sp4C, func_801C7BEC(sp5C));
        bcopy((u8*)sp4C + sp54, dest, func_801C7BEC(sp5C) - sp54);
        if (sp5C + 1 < sp58) {
            for (var_s0 = sp5C + 1; var_s0 < sp58; var_s0++) {
                var_s1 += func_801C7BEC(var_s0);
            }
            func_801C7920(sp5C + 1, (u8*)dest + func_801C7BEC(sp5C) - sp54, var_s1);
        }
        if (sp50 > 0) {
            func_801C7920(sp58, sp4C, func_801C7BEC(sp58));
            bcopy((u8*)sp4C, (u8*)dest + func_801C7BEC(sp5C) - sp54 + var_s1, sp50);
        }
    }
#if OOT_VERSION == NTSC_1_0
    if (B_801D9DC0 != 0) {
        temp_v1_2 = (osGetTime() - B_801D9DC0) * 64 / 3000;
        if (1000000 - temp_v1_2 > 0) {
            Sleep_Usec(1000000 - temp_v1_2);
        }
    }
#else
    func_801C7B28_ne2();
#endif
    func_801C7018();
    func_801C6F78();
}

void func_801C7E78(void) {
}

s32 func_801C7E80(void) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    uintptr_t sp18;

    if (B_801D9D48 != NULL) {
        return -1;
    }
    B_801D9D48 = &B_801D9C30;
    func_801C7C1C(B_801D9D48, 0x1060, 0x118);
    sp24 = B_801D9D48->unk_004 - B_801D9D48->unk_000;
    sp20 = B_801D9D48->unk_00C - B_801D9D48->unk_008;
    sp18 = B_801D9D48->unk_008 + sp24;
    func_801C7C1C((void*)B_801D9D48->unk_008, B_801D9D48->unk_000, sp24);
    bzero((void*)sp18, sp20 - sp24);
    func_800AD4C0(B_801D9D48->unk_010);
    return 0;
}

s32 func_801C7F24(void) {
    uintptr_t temp_a0;
    struct_801D9C30* temp_v0;

    if (B_801D9D48 == 0) {
        return -1;
    }

    // Function from code
    func_800AD51C();

    temp_v0 = B_801D9D48;
    temp_a0 = temp_v0->unk_008;
    bzero((void*)temp_a0, temp_v0->unk_00C - temp_a0);
    bzero(B_801D9D48, sizeof(struct_801D9C30));
    B_801D9D48 = 0;
    return 0;
}

void n64dd_SetDiskVersion(s32 arg0) {
    if (arg0 != 0) {
        if (B_801D9D48 == 0) {
            func_801C7E80();
        }
    } else if (B_801D9D48 != 0) {
        func_801C7F24();
    }
}
