#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"
#include "libc64/sleep.h"
#include "attributes.h"

// TODO move to a header once we can easily fix bss orderings
extern struct_801E1590 D_801E1590;

s32 D_801D3720 = 0;
void* D_801D3724 = NULL;
s32 D_801D3728 = 0;
void* D_801D372C = NULL;
void* D_801D3730 = NULL;
void (*D_801D3734)(void*, void*, void*) = NULL;

s32 D_801E17E0;
s32 D_801E17E4;

void func_801C91B0(s32 arg0) {
    D_801D3724 = func_801CA698(arg0);
    D_801D3728 = 1;
}

void func_801C91E4(void) {
    if (D_801D3728 == 1) {
        D_801D3724 = func_801CA730();
        D_801D3728 = 0;
    }
}

void func_801C9228(s32 arg0) {
    D_801D372C = func_801CA800(arg0);
    D_801E17E0 = 1;
}

void func_801C925C(void) {
    if (D_801E17E0 == 1) {
        D_801D372C = func_801CA86C();
        D_801E17E0 = 0;
    }
}

void func_801C92A0(s32 arg0) {
    D_801D3730 = func_801CA8A0(arg0);
    D_801E17E4 = 1;
}

void func_801C92D4(void) {
    if (D_801E17E4 == 1) {
        D_801D3730 = func_801CA8E0();
        D_801E17E4 = 0;
    }
}

void func_801C9318(void) {
    u32 temp_v0;
    UNK_PTR sp20;
    UNK_PTR sp1C;
    UNK_PTR sp18;

    osRecvMesg(D_801E1590.unk4, NULL, OS_MESG_NOBLOCK);
    if ((D_801D3734 != NULL) && (D_801D3720 == 0)) {
        temp_v0 = osSetIntMask(OS_IM_NONE);
        sp20 = D_801D3724;
        sp1C = D_801D372C;
        sp18 = D_801D3730;
        D_801D3724 = NULL;
        D_801D372C = NULL;
        D_801D3730 = NULL;
        osSetIntMask(temp_v0);
        D_801D3734(sp20, sp1C, sp18);
    }
}

void func_801C93C8(s32 arg0, s32 arg1, s32 arg2) {
    func_801C91B0(arg0);
    func_801C9228(arg1);
    func_801C92A0(arg2);
}

void func_801C9400(void) {
    func_801C91E4();
    func_801C925C();
    func_801C92D4();
}

s32 func_801C9430(struct_801E1598* arg0) {
    s32 temp_a1;

    temp_a1 = arg0->unk68;
    if (((temp_a1 < 0x25) || (temp_a1 >= 0x29)) && (temp_a1 != 0x1F) && (temp_a1 != 0x20)) {
        func_801C91B0(temp_a1);
        func_801C9228(3);
    }
    LeoClearQueue();
    return 4;
}

s32 func_801C948C(struct_801E1598* arg0) {
    s32 var_s0;

    while (true) {
        var_s0 = 0;
        Sleep_Msec(60);
        func_801C8B40(arg0);
        switch (arg0->unk68) {
            case 0x2A:
                func_801C92D4();
                return 0;
            case 0x22:
                func_801C92D4();
                LeoClearQueue();
                return 3;
            case 0:
                func_801C92A0(6);
                FALLTHROUGH;
            case 0x23:
                var_s0 = 1;
                FALLTHROUGH;
            default:
                if (var_s0 == 0) {
                    func_801C92D4();
                    return func_801C9430(arg0);
                }
                break;
        }
        var_s0 = 1; //! FAKE
    }
}

s32 func_801C955C(struct_801E1598* arg0) {
    switch (arg0->unk68) {
        case 34:
            func_801C9400();
            LeoClearQueue();
            return 3;
        case 2:
            func_801C91B0(arg0->unk68);
            func_801C92A0(5);
            return 9;
        case 0:
            func_801C9400();
            return 0;
        case 43:
            if ((u8)arg0->unk65 == 0) {
                func_801C9400();
                arg0->unk65 = 2;
                return 1;
            }
            FALLTHROUGH;
        default:
            func_801C9400();
            return func_801C9430(arg0);
        case 35:
            return 9;
    }
}

s32 func_801C9630(struct_801E1598* arg0) {
    s32 temp_v0;

    while (true) {
        func_801C8AF8(arg0);
        switch (arg0->unk68) {
            case 0x31:
                func_801C91B0(arg0->unk68);
                func_801C9228(2);
                return 5;
            case 0x2A:
                func_801C9400();
                return 5;
            default:
                temp_v0 = func_801C955C(arg0);
                if (temp_v0 != 9) {
                    return temp_v0;
                }
                Sleep_Msec(60);
                break;
        }
    }
}

s32 func_801C96E0(struct_801E1598* arg0) {
    s32 temp_v0;

    while (true) {
        Sleep_Msec(60);
        func_801C8AF8(arg0);
        switch (arg0->unk68) {
            case 0x23:
                continue;
            case 0x31:
                func_801C91B0(arg0->unk68);
                func_801C9228(2);
                FALLTHROUGH;
            case 0x2A:
                func_801C92A0(4);
                continue;
        }
        temp_v0 = func_801C955C(arg0);
        if (temp_v0 != 9) {
            return temp_v0;
        }
    }
}

s32 func_801C978C(struct_801E1598* arg0) {
    if (D_801D36D4 != NULL) {
        return D_801D36D4(arg0);
    }
    return 1;
}

s32 func_801C97C8(struct_801E1598* arg0) {
    s32 temp_v0;
    s32 temp_v0_2;

    while (true) {
        temp_v0_2 = func_801C96E0(arg0);
        if ((temp_v0_2 == 3) || (temp_v0_2 == 4)) {
            return temp_v0_2;
        } else if ((temp_v0_2 & 0xFFFFFFFF) == 0) {
            if (func_801C978C(arg0) != 0) {
                return 2;
            }
            func_801C9228(1);
            temp_v0 = func_801C948C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            func_801C925C();
        }
    }
}

s32 func_801C9870(struct_801E1598* arg0) {
    s32 temp_v0_3;
    s32 var_s0;

    while (true) {
        var_s0 = func_801C96E0(arg0);
        if ((var_s0 == 3) || (var_s0 == 4)) {
            return var_s0;
        }

        if ((var_s0 & 0xFFFFFFFF) == 0) {
            func_801C9400();
            temp_v0_3 = func_801C978C(arg0);
            if (temp_v0_3 != 0) {
                return 2;
            }

            if (var_s0 == 3) {}
            if (var_s0 == 4) {}
            if (var_s0 == 3) {}
            if (var_s0 == 4) {}
            func_801C9228(1);

            var_s0 = func_801C948C(arg0);
            if (var_s0 != 0) {
                return var_s0;
            }
            func_801C925C();
            if (temp_v0_3 != 0) {
                return var_s0;
            }
        }
    }
}

s32 func_801C9934(struct_801E1598* arg0) {
    func_801C91B0(arg0->unk68);
    func_801C9228(2);
    return func_801C9870(arg0);
}

s32 func_801C996C(struct_801E1598* arg0) {
    func_801C91B0(arg0->unk68);
    return func_801C9870(arg0);
}

s32 func_801C999C(struct_801E1598* arg0) {
    s32 temp_v0;
    s32 var_s0 = 0;

    while (true) {
        LeoResetClear();
        temp_v0 = func_801C9630(arg0);
        if ((temp_v0 == 3) || (temp_v0 == 4)) {
            return temp_v0;
        }
        if (temp_v0 != 1) {
            if (temp_v0 == 0) {
                return temp_v0;
            }
            return temp_v0;
        }
        if (1) {}
        Sleep_Msec(250);
        if (var_s0++ < 0x1E) {
        } else {
            return func_801C9430(arg0);
        }
    }
}

s32 func_801C9A50(struct_801E1598* arg0) {
    if (arg0->unk68 == 0x29) {
        return func_801C9430(arg0);
    }
    if (osMemSize < 0x800000) {
        func_801C93C8(0x2C, 0, 3);
        return 4;
    }
    if (func_801C999C(arg0) == 0) {
        D_801D3710 = 1;
    }
    return 0;
}

s32 func_801C9AD0(struct_801E1598* arg0) {
    s32 temp_v0;

    switch (arg0->unk68) {
        case 23:
            func_801C8F9C(arg0);
            temp_v0 = func_801C948C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            func_801C9400();
            return 2;
        case 2:
            return func_801C97C8(arg0);
        case 34:
            LeoClearQueue();
            return 3;
        case 49:
            return func_801C9934(arg0);
        case 47:
            return func_801C9870(arg0);
        case 42:
            return func_801C996C(arg0);
        case 0:
            return 0;
        case 35:
            return 2;
        default:
            return func_801C9430(arg0);
    }
}

s32 func_801C9BA4(struct_801E1598* arg0) {
    s32 temp_v0;

    while (true) {
        if (1) {}
        temp_v0 = func_801C9630(arg0);
        if ((temp_v0 == 3) || (temp_v0 == 4) || (temp_v0 == 5)) {
            return temp_v0;
        }
        if ((temp_v0 & 0xFFFFFFFF) == 0) {
            if (func_801C978C(arg0) != 0) {
                return 0;
            }
            return 7;
        }
    }
}

s32 func_801C9C34(struct_801E1598* arg0) {
    s32 v;

    while (true) {
        v = func_801C9BA4(arg0);
        if (v != 7) {
            return v;
        }
        func_801C9228(1);
        v = func_801C948C(arg0);
        if (v != 0) {
            return v;
        }
        func_801C925C();
    }
}
