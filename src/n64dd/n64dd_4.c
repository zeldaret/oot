#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"

void (*D_801D3740)(void*, uintptr_t, size_t) = NULL;

s32 D_801E17F0;

int func_801C9CB0(const char* arg0) {
    if (((*arg0 >= 0x8E) && (*arg0 < 0xFF)) || ((*arg0 != 0x8F) && (*arg0 != 0xA0))) {
        arg0++;
        return (*arg0 >= 0xA0) && (*arg0 < 0xFF);
    }
    return 0;
}

int func_801C9D04(u8* arg0) {
    if (((*arg0 >= 0x81) && (*arg0 < 0xA0)) || ((*arg0 >= 0xE0) && (*arg0 < 0xFD))) {
        arg0++;
        return (*arg0 >= 0x40) && (*arg0 < 0xFD) && (*arg0 != 0x7F);
    }
    return 0;
}

void func_801C9D68(char* arg0, u16 arg1) {
    arg0[0] = arg1 >> 8;
    arg0[1] = arg1 & 0xFF;
}

u16 func_801C9D84(u16 arg0) {
    return arg0 - 0x8080;
}

u16 func_801C9DA4(u16 arg0) {
    u8 temp_a2;
    u8 temp_v0;

    temp_v0 = (arg0 >> 8) & 0xFF;
    temp_a2 = arg0 & 0xFF;
    if (temp_v0 & 1) {
        temp_a2 += 0x1F;
        if (temp_a2 >= 0x7F) {
            temp_a2 += 1;
        }
    } else {
        temp_a2 += 0x7E;
    }
    temp_v0 = ((temp_v0 - 0x21) / 2) + 0x81;
    if (temp_v0 >= 0xA0) {
        temp_v0 += 0x40;
    }
    return (temp_v0 << 8) + temp_a2;
}

void func_801C9E30(void* arg0, uintptr_t arg1, size_t arg2) {
    if (D_801D3740 != NULL) {
        D_801D3740(arg0, arg1, arg2);
    }
}

s32 func_801C9E60(const char* arg0) {
    return LeoGetKAdr(func_801C9DA4(func_801C9D84(((arg0[0] << 8) | arg0[1])))) + 0xA0000;
}

s32 func_801C9EAC(s32* arg0, int* arg1, int* arg2, int* arg3, char arg4) {
    u16 v;
    s32 temp_v0;

    v = arg4 - 0x20;
    v += D_801E17F0 * 0xC0;
    temp_v0 = LeoGetAAdr(v, arg1, arg2, arg3);
    *arg0 = (temp_v0 - (temp_v0 & 0xF)) + 0xA0000;
    return temp_v0 & 0xF;
}

s32 func_801C9F0C(void* arg0, int* arg1, int* arg2, int* arg3, const char* arg4) {
    s32 sp24;
    s32 var_v1;

    if (func_801C9CB0(arg4) != 0) {
        sp24 = func_801C9E60(arg4);
        *arg1 = 0x10;
        var_v1 = 0;
        *arg2 = 0x10;
        *arg3 = 0xB;
    } else {
        var_v1 = func_801C9EAC(&sp24, arg1, arg2, arg3, *arg4);
    }
    func_801C9E30(arg0, sp24, 0x80);
    return var_v1;
}

s32 func_801C9FB0(u8* arg0, s32 arg1, u8 arg2) {
    if (arg1 == 1) {
        *arg0 = arg2 * 0x10;
        return 0;
    } else {
        *arg0 |= arg2;
        return 1;
    }
}

void* func_801C9FE8(void* arg0, s32* arg1, s32 arg2) {
    arg0 = BADCASTP((uintptr_t)arg0 + (arg2 >> 1));
    if (((*arg1 == 1) && ((arg2 & 1) == 0)) || ((*arg1 == 0) && ((arg2 & 1) != 0))) {
        arg0 = BADCASTP((uintptr_t)arg0 + (arg2 & 1));
        *arg1 = 1;
    } else {
        *arg1 = 0;
    }
    return arg0;
}

s32 func_801CA034(void** arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, u8* arg5, s32 arg6, s32 arg7, s32 arg8) {
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    void* var_fp;
    s32 sp4C;
    s32 var_s4;
    s32 sp44;

    sp4C = arg2;
    var_s4 = 1;
    sp44 = arg6 + arg3 + arg4;
    var_fp = func_801C9FE8(*arg0, &sp4C, arg3);
    arg1 >>= 1;
    var_fp = BADCASTP((s32)var_fp + ((0xB - arg8) * arg1));
    if (arg6 & 1) {
        arg6 += 1;
    }

    while (arg7--) {
        var_s0 = BADCASTI var_fp;
        var_s1 = sp4C;

        for (var_s3 = 0; var_s3 < arg6; var_s3++, var_s4 ^= 1, var_s1 ^= 1) {
            if (var_s4 == 1) {
                if (func_801C9FB0(BADCASTP var_s0, var_s1, (*arg5) >> 4) != 0) {
                    var_s0++;
                }
            } else {
                if (func_801C9FB0(BADCASTP var_s0, var_s1, (*arg5) & 0xF) != 0) {
                    var_s0++;
                }
                arg5++;
            }
        }
        var_fp = BADCASTP((s32)var_fp + arg1);
    }

    *arg0 = func_801C9FE8(*arg0, &arg2, sp44);
    return arg2;
}

void func_801CA1C4(const char* arg0, s32* arg1, s32* arg2) {
    char v1, v2;

    if (func_801C9CB0(arg0) != 0) {
        *arg2 = 0;
        *arg1 = 0;
        return;
    }
    *arg2 = 0;
    *arg1 = 0;
    v1 = arg0[-1];
    v2 = arg0[1];
    switch ((u8)arg0[0]) {
        case 0x20:
            *arg2 = 0;
            *arg1 = 0;
            return;
        case 0x49:
        case 0x69:
#if OOT_NTSC
            *arg2 = 2;
            if (1) {}
#endif
            *arg1 = 2;
            *arg2 = 2;
            if (v1 == 0x20) {
                *arg1 = 0;
            }
            if (v2 == 0x20) {
                *arg2 = 0;
            }
            return;
    }
#if OOT_NTSC
    *arg2 = 1;
    if (1) {}
#endif
    *arg1 = 1;
    *arg2 = 1;
}

void func_801CA280(void* arg0, s32 arg1, const char* arg2) {
    u8 megatemp[0xA0];
    u8* temp_s1 = (u8*)(((((u32)megatemp + 0xF)) >> 4) << 4); // align to 0x10 on the stack
    int sp78;
    int sp74;
    int sp70;
    u8* var_s0;
    s32 sp68;
    s32 sp64;
    s32 temp_v1;
    s32 var_s2 = 1;

    if (arg2 == NULL) {
        return;
    }

    while (*arg2 != 0) {
        func_801CA1C4(arg2, &sp68, &sp64);
        temp_v1 = func_801C9F0C(temp_s1, &sp78, &sp74, &sp70, arg2);
        if (sp78 & 1) {
            sp78++;
        }
        var_s2 = func_801CA034(&arg0, arg1, var_s2, sp68, sp64, &temp_s1[temp_v1], sp78, sp74, sp70);
        if (func_801C9CB0(arg2) != 0) {
            arg2++;
        }
        arg2++;
    }
}

void func_801CA3C0(s32 arg0, void (*arg1)(void*, uintptr_t, size_t)) {
    D_801E17F0 = arg0;
    D_801D3740 = arg1;
}
