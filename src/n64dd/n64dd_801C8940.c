#include "global.h"
#include "n64dd.h"

s32 D_801D2EA0 = 0;
u8* D_801D2EA4 = NULL;
s32 D_801D2EA8 = 0;
u8* D_801D2EAC = NULL;
u8* D_801D2EB0 = NULL;
void (*D_801D2EB4)(void*, void*, void*) = NULL;

s32 B_801E0F60;
s32 B_801E0F64;

// Set error message title texture?
void func_801C8940(s32 errorNum) {
    D_801D2EA4 = func_801C9E28(errorNum);
    D_801D2EA8 = 1;
}

// Clear error message title texture?
void func_801C8974(void) {
    if (D_801D2EA8 == 1) {
        D_801D2EA4 = func_801C9EC0();
        D_801D2EA8 = 0;
    }
}

// Set error message something
void func_801C89B8(s32 errorNum) {
    D_801D2EAC = func_801C9F90(errorNum);
    B_801E0F60 = 1;
}

// Clear error message something
void func_801C89EC(void) {
    if (B_801E0F60 == 1) {
        D_801D2EAC = func_801C9FFC();
        B_801E0F60 = 0;
    }
}

// Set error message something
void func_801C8A30(s32 errorNum) {
    D_801D2EB0 = func_801CA030(errorNum);
    B_801E0F64 = 1;
}

// Clear error message something
void func_801C8A64(void) {
    if (B_801E0F64 == 1) {
        D_801D2EB0 = func_801CA070();
        B_801E0F64 = 0;
    }
}

void func_801C8AA8(void) {
    osRecvMesg(B_801E0D10[1], NULL, OS_MESG_NOBLOCK);

    if ((D_801D2EB4 != NULL) && (D_801D2EA0 == 0)) {
        u32 temp_v0 = osSetIntMask(OS_IM_NONE);
        void* sp20 = D_801D2EA4;
        void* sp1C = D_801D2EAC;
        void* sp18 = D_801D2EB0;

        D_801D2EA4 = NULL;
        D_801D2EAC = NULL;
        D_801D2EB0 = NULL;
        osSetIntMask(temp_v0);
        D_801D2EB4(sp20, sp1C, sp18);
    }
}

void func_801C8B58(s32 arg0, s32 arg1, s32 arg2) {
    func_801C8940(arg0);
    func_801C89B8(arg1);
    func_801C8A30(arg2);
}

void func_801C8B90(void) {
    func_801C8974();
    func_801C89EC();
    func_801C8A64();
}

s32 func_801C8BC0(struct_801E0D18* arg0) {
    if ((arg0->unk_68 < 0x25) || (arg0->unk_68 >= 0x29)) {
        if ((arg0->unk_68 != 0x1F) && (arg0->unk_68 != 0x20)) {
            func_801C8940(arg0->unk_68);
            func_801C89B8(3);
        }
    }
    LeoClearQueue();
    return 4;
}

s32 func_801C8C1C(struct_801E0D18* arg0) {
    s32 var_s0;

    do {
        var_s0 = 0;
        Sleep_Msec(60);
        func_801C82E0(arg0);

        switch (arg0->unk_68) {
            case 0x2A:
                func_801C8A64();
                return 0;
            case 0x22:
                func_801C8A64();
                LeoClearQueue();
                return 3;
            case 0:
                func_801C8A30(6);
                FALLTHROUGH;
            case 0x23:
                var_s0 = 1;
                break;
        }
    } while (var_s0 != 0);

    func_801C8A64();
    return func_801C8BC0(arg0);
}

s32 func_801C8CEC(struct_801E0D18* arg0) {
    switch (arg0->unk_68) {
        case 0x22:
            func_801C8B90();
            LeoClearQueue();
            return 3;
        case 0x2:
            func_801C8940(arg0->unk_68);
            func_801C8A30(5);
            return 9;
        case 0x0:
            func_801C8B90();
            return 0;
        case 0x2B:
            if (arg0->unk_65 == 0) {
                func_801C8B90();
                arg0->unk_65 = 2;
                return 1;
            }
            FALLTHROUGH;
        default:
            func_801C8B90();
            return func_801C8BC0(arg0);
        case 0x23:
            return 9;
    }
}

s32 func_801C8DC0(struct_801E0D18* arg0) {
    s32 temp_v0;

    while (true) {
        func_801C8298(arg0);
        switch (arg0->unk_68) {
            case 0x31:
                func_801C8940(arg0->unk_68);
                func_801C89B8(2);
                return 5;
            case 0x2A:
                func_801C8B90();
                return 5;
        }
        temp_v0 = func_801C8CEC(arg0);
        if (temp_v0 != 9) {
            return temp_v0;
        }
        Sleep_Msec(60);
    }
}

s32 func_801C8E70(struct_801E0D18* arg0) {
    s32 temp_a0;
    s32 temp_v0;

    while (true) {
        Sleep_Msec(60);
        func_801C8298(arg0);

        switch (arg0->unk_68) {
            case 0x23:
                continue;
            case 0x31:
                func_801C8940(arg0->unk_68);
                func_801C89B8(2);
                FALLTHROUGH;
            case 0x2A:
                func_801C8A30(4);
                continue;
        }

        temp_v0 = func_801C8CEC(arg0);
        if (temp_v0 != 9) {
            return temp_v0;
        }
    }
}

s32 func_801C8F1C(struct_801E0D18* arg0) {
    if (D_801D2E54 != NULL) {
        return D_801D2E54(arg0);
    }
    return 1;
}

s32 func_801C8F58(struct_801E0D18* arg0) {
    s32 temp_v0;

    while (true) {
        temp_v0 = func_801C8E70(arg0);
        if (temp_v0 == 3 || temp_v0 == 4) {
            return temp_v0;
        }

        // Fake match?
        if ((temp_v0 & 0xFFFFFFFF) == 0) {
            if (func_801C8F1C(arg0) != 0) {
                return 2;
            }
            func_801C89B8(1);
            temp_v0 = func_801C8C1C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            func_801C89EC();
        }
    }
}

s32 func_801C9000(struct_801E0D18* arg0) {
    s32 phi_s0;
    s32 temp_s4;

    while (true) {
        phi_s0 = func_801C8E70(arg0);
        if (phi_s0 == 3 || phi_s0 == 4) {
            return phi_s0;
        }

        // Fake match?
        if ((phi_s0 & 0xFFFFFFFF) == 0) {
            func_801C8B90();

            temp_s4 = func_801C8F1C(arg0);
            if (temp_s4 == 3 || temp_s4 == 4) {}
            if (temp_s4 != 0) {
                return 2;
            }

            func_801C89B8(1);

            phi_s0 = func_801C8C1C(arg0);
            if (phi_s0 == 3 || phi_s0 == 4) {}
            if (phi_s0 != 0) {
                return phi_s0;
            }

            func_801C89EC();
            if (temp_s4 != 0) {
                return phi_s0;
            }
        }
    }
}

s32 func_801C90C4(struct_801E0D18* arg0) {
    func_801C8940(arg0->unk_68);
    func_801C89B8(2);
    return func_801C9000(arg0);
}

s32 func_801C90FC(struct_801E0D18* arg0) {
    func_801C8940(arg0->unk_68);
    return func_801C9000(arg0);
}

s32 func_801C912C(struct_801E0D18* arg0) {
    s32 i = 0;
    s32 temp_v0;

    do {
        LeoResetClear();

        temp_v0 = func_801C8DC0(arg0);
        if (temp_v0 == 3 || temp_v0 == 4) {
            return temp_v0;
        }
        if (temp_v0 != 1) {
            if (temp_v0 == 0) {
                return temp_v0;
            } else {
                return temp_v0;
            }
        }

        Sleep_Msec(250);
    } while (i++ < 30);

    return func_801C8BC0(arg0);
}

s32 func_801C91E0(struct_801E0D18* arg0) {
    if (arg0->unk_68 == 0x29) {
        return func_801C8BC0(arg0);
    }

    if (osMemSize < 0x800000) {
        // LEO_ERROR_RAMPACK_NOT_CONNECTED?
        func_801C8B58(0x2C, 0, 3);
        return 4;
    }

    if (func_801C912C(arg0) == 0) {
        D_801D2E90 = 1;
    }
    return 0;
}

s32 func_801C9260(struct_801E0D18* arg0) {
    s32 temp_v0;

    switch (arg0->unk_68) {
        case 0x17:
            func_801C873C(arg0);
            temp_v0 = func_801C8C1C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            func_801C8B90();
            return 2;

        case 0x2:
            return func_801C8F58(arg0);

        case 0x22:
            LeoClearQueue();
            return 3;

        case 0x31:
            return func_801C90C4(arg0);

        case 0x2F:
            return func_801C9000(arg0);

        case 0x2A:
            return func_801C90FC(arg0);

        case 0x0:
            return 0;

        case 0x23:
            return 2;
    }

    return func_801C8BC0(arg0);
}

s32 func_801C9334(struct_801E0D18* arg0) {
    while (true) {
        u32 temp_v0 = func_801C8DC0(arg0);

        if (temp_v0 == 3 || temp_v0 == 4 || temp_v0 == 5) {
            return temp_v0;
        }

        // Fake match?
        if ((temp_v0 & 0xFFFFFFFF) == 0) {
            if (func_801C8F1C(arg0) != 0) {
                return 0;
            }
            return 7;
        }

        if (1) {}
    }
}

s32 func_801C93C4(struct_801E0D18* arg0) {
    s32 temp_v0;
    s32 temp_v0_2;

    while (true) {
        temp_v0_2 = func_801C9334(arg0);
        if (temp_v0_2 != 7) {
            return temp_v0_2;
        }
        func_801C89B8(1);
        temp_v0 = func_801C8C1C(arg0);
        if (temp_v0 != 0) {
            return temp_v0;
        }
        func_801C89EC();
    }
}
