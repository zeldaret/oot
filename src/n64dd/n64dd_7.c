/**
 * Some sort of GfxPrint like utility?
 */

#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"
#include "libc64/aprintf.h"
#include "attributes.h"
#include "color.h"

typedef struct struct_801CAF10 {
    /* 0x00 */ PrintCallback callback;
    /* 0x04 */ u8* unk4;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 posX;
    /* 0x0C */ u16 posY;
    /* 0x0E */ char padE[2];
    /* 0x10 */ Color_RGBA8_u32 color;
    /* 0x14 */ u16 baseX;
    /* 0x16 */ u16 baseY;
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ char pad1D[3];
    /* 0x20 */ s16* unk20;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u16 unk26;
} struct_801CAF10; /* size = 0x28 */

u32 D_801D9460[0x5F] = {
    0x9D14,     0x232A14,   0x296314,   0x2F8A14,   0x457E18,   0x63CA14,   0x84AA14,   0xA03314,   0xA45E14,
    0xBB4E14,   0xCA6514,   0xD3770E,   0xE33302,   0xE78108,   0xEB2102,   0xEC6C14,   0x01008A14, 0x01163A14,
    0x01217A14, 0x01377A14, 0x014D8A14, 0x01638A14, 0x01798A14, 0x018F7A14, 0x01A58A14, 0x01BB8A14, 0x01D1170E,
    0x01D5490E, 0x01DF770E, 0x01EF740A, 0x01F9770E, 0x02097A14, 0x021FDC16, 0x024DBA14, 0x026E7A14, 0x0284BA14,
    0x02A59A14, 0x02C16A14, 0x02D26A14, 0x02E3BA14, 0x03048A14, 0x031A1A14, 0x03206A14, 0x03318A14, 0x03476A14,
    0x0358CA14, 0x03799A14, 0x0395CA14, 0x03B67A14, 0x03CCCA14, 0x03ED8A14, 0x04037A14, 0x04196A14, 0x042A8A14,
    0x0440AA14, 0x045CDA14, 0x04839A14, 0x049F9A14, 0x04BB7A14, 0x04D14D14, 0x04DF5C14, 0x04F33D14, 0x05015216,
    0x050681FA, 0x050A9D14, 0x052D9810, 0x05449A14, 0x05609810, 0x05779A14, 0x05939810, 0x05AA5A14, 0x05BB9C10,
    0x05DC7A14, 0x05F22A14, 0x05F83D14, 0x06067A14, 0x061C2A14, 0x0622D810, 0x06427810, 0x06549810, 0x066B9B10,
    0x06899B10, 0x06A74810, 0x06B06810, 0x06BE5A14, 0x06CF770E, 0x06DF870E, 0x06EFB70E, 0x0707670E, 0x07138A0E,
    0x0729670E, 0x07356D14, 0x074A1F16, 0x07526D14, 0x07675216,
};

s32 func_801CA920(s32 arg0, u8* arg1, int* arg2, int* arg3, int* arg4) {
    s32 var_s0;
    OSPiHandle* sp58;
    OSMesgQueue sp40;
    void* sp3C;
    OSIoMesg sp24;

    sp58 = osDriveRomInit();
    if ((arg0 >= 0x20) && (arg0 < 0x7F)) {
        var_s0 = LeoGetAAdr2(D_801D9460[arg0 - 0x20], arg2, arg3, arg4);
    } else if (arg0 >= 0x8140) {
        var_s0 = LeoGetKAdr(arg0);
        *arg2 = 0x10;
        *arg3 = 0x10;
        *arg4 = 0xB;
    } else {
        return -1;
    }
    osCreateMesgQueue(&sp40, &sp3C, 1);
    // clang-format off
    sp24.hdr.retQueue = &sp40; sp24.devAddr = var_s0 + 0xA0000; sp24.dramAddr = (void*)arg1; sp24.hdr.pri = 0; sp24.size = 0x80;
    // clang-format on
    sp58->transferInfo.cmdType = 2;
    osEPiStartDma(sp58, &sp24, OS_READ);
    osRecvMesg(&sp40, NULL, OS_MESG_BLOCK);
    return 0;
}

const u16 D_801D9C10[0x10] = {
    0x0001, 0x1085, 0x2109, 0x318D, 0x4211, 0x5295, 0x6319, 0x739D,
    0x8C63, 0x9CE7, 0xAD6B, 0xBDEF, 0xCE73, 0xDEF7, 0xEF7B, 0xFFFF,
};

u16 func_801CAA44(s32 arg0) {
    return D_801D9C10[arg0 & 0xF];
}

void func_801CAA60(u8* arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s16* arg6, s32 arg7) {
    s32 var_a0;
    s32 var_s0;
    u8* var_s1;
    s32 var_s5;
    s16* var_s2;

    var_s1 = arg0;
    var_s2 = arg6;
    for (var_s5 = 0; var_s5 < arg4; var_s5++) {
        for (var_s0 = 0; var_s0 < arg3; var_s0++) {
            if (!(var_s0 & 1)) {
                var_a0 = (s32)*var_s1 >> 4;
            } else {
                var_a0 = *var_s1 & 0xF;
                var_s1 += 1;
            }
            var_s2[arg1 + (((arg2 - arg5) + var_s5 + 0xB) * arg7) + var_s0] = func_801CAA44(var_a0);
        }
        if (arg3 & 1) {
            var_s1 += 1;
        }
    }
}

void func_801CAB68(struct_801CAF10* arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    arg0->color.r = arg1;
    arg0->color.g = arg2;
    arg0->color.b = arg3;
    arg0->color.a = arg4;
}

void func_801CAB84(struct_801CAF10* arg0, s32 arg1, s32 arg2) {
    arg0->posX = (s16)(arg0->baseX + arg1);
    arg0->posY = (s16)(arg0->baseY + arg2);
}

void func_801CABA4(struct_801CAF10* arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    arg0->baseX = (u16)arg1;
    arg0->baseY = (u16)arg2;
    arg0->unk18 = (u16)arg3;
    arg0->unk1A = (u16)arg4;
}

void func_801CABC0(struct_801CAF10* arg0, s16* arg1, s32 arg2, s32 arg3) {
    arg0->unk20 = (s16*)((uintptr_t)arg1 + 0x20000000);
    arg0->unk24 = (u16)arg2;
    arg0->unk26 = (u16)arg3;
    func_801CABA4(arg0, 0, 0, arg2 - 1, arg3 - 1);
}

void func_801CAC24(struct_801CAF10* arg0, u8* arg1, s32 arg2) {
    arg0->unk4 = (u8*)((uintptr_t)arg1 + 0x20000000);
    arg0->unk8 = arg2;
}

void func_801CAC3C(struct_801CAF10* arg0, u8 arg1) {
    s32 var_a0;
    int sp48;
    int sp44;
    int sp40;
    s32 var_v0;

    if (arg0->unk1C != 0) {
        var_a0 = (arg0->unk1C << 8) | arg1;
    } else {
        if ((arg1 >= 0x80) && (arg1 < 0x99)) {
            arg0->unk1C = (u8)arg1;
            return;
        }
        var_a0 = arg1;
    }
    arg0->unk1C = 0;
    if (func_801CA920(var_a0, arg0->unk4, &sp48, &sp44, &sp40) == 0) {
        if ((s32)arg0->unk18 < (arg0->posX + sp48)) {
            arg0->posX = arg0->baseX;
            if ((s32)arg0->unk1A < arg0->posY + 0x10) {
                arg0->posY = arg0->baseY;
            } else {
                arg0->posY = arg0->posY + 0x10;
            }
        }
        func_801CAA60(arg0->unk4, arg0->posX, arg0->posY, sp48, sp44, sp40, arg0->unk20, (s32)arg0->unk24);
        if (sp48 == 0x10) {
            var_v0 = sp48;
        } else {
            var_v0 = sp48 + 2;
        }
        arg0->posX += var_v0;
    }
}

void func_801CAD64(struct_801CAF10* arg0, u8 arg1) {
    if ((arg1 >= 0x20) && (arg1 < 0x100)) {
        func_801CAC3C(arg0, arg1);
    } else {
        switch (arg1) {
            case 0:
                break;
            case 0xA:
                arg0->posY += 0x20;
                FALLTHROUGH;
            case 0xD:
                arg0->posX = arg0->baseX;
                break;
            case 9:
                do {
                    func_801CAC3C(arg0, 0x20);
                } while ((arg0->posX - arg0->baseX) % 256);
                break;
        }
    }
}

void func_801CAE2C(struct_801CAF10* arg0, const char* arg1, s32 arg2, size_t arg3) {
    const char* var_s0;
    s32 var_s1;

    var_s0 = arg1;
    for (var_s1 = arg2 * arg3; var_s1 != 0; var_s1--) {
        func_801CAD64(arg0, *var_s0++);
    }
}

void func_801CAE88(struct_801CAF10* arg0, u8* arg1) {
    while (*arg1 != 0) {
        func_801CAD64(arg0, *arg1++);
    }
}

void* func_801CAEE0(void* arg0, const char* arg1, size_t arg2) {
    func_801CAE2C(arg0, arg1, 1, arg2);
    return arg0;
}

void func_801CAF10(struct_801CAF10* arg0) {
    arg0->callback = func_801CAEE0;
    arg0->posX = 0;
    arg0->posY = 0;
    arg0->baseX = 0;
    arg0->baseY = 0;
    arg0->unk18 = 0;
    arg0->unk1A = 0;
    arg0->color.rgba = 0;
    arg0->unk1C = 0;
    arg0->unk4 = 0;
}

void func_801CAF48(struct_801CAF10* arg0) {
}

void func_801CAF54(struct_801CAF10* arg0, const char* arg1, va_list arg2) {
    PrintUtils_VPrintf(&arg0->callback, arg1, arg2);
}

void func_801CAF74(struct_801CAF10* arg0, const char* arg1, ...) {
    va_list varargs;

    va_start(varargs, arg1);
    func_801CAF54(arg0, arg1, varargs);
    va_end(varargs);
}
