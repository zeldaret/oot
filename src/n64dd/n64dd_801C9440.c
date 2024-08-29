#include "global.h"
#include "n64dd.h"

void (*D_801D2EC0)(void*, uintptr_t, size_t) = NULL;

s32 B_801E0F70;

/**
 * Seems to work out if a pair of bytes is a valid EUC-JP character, although there may be additions to the font that
 * make the strange first check make more sense.
 *
 * @param bytes Array 2 bytes to test
 * @return boolean
 */
s32 func_801C9440(u8* bytes) {
    // This is every possible first byte. May make more sense what was intended with the font files?
    if (((*bytes >= 0x8E) && (*bytes <= 0xFE)) || ((*bytes != 0x8F) && (*bytes != 0xA0))) {
        bytes++;
        return (*bytes >= 0xA0) && (*bytes <= 0xFE);
    }
    return false;
}

/**
 * A crude check for a valid 2-byte Shift-JIS character
 *
 * @param bytes Array containing a pair of bytes to test
 * @return boolean
 */
s32 func_801C9494(u8* bytes) {
    // Allowable first bytes.
    if (((*bytes >= 0x81) && (*bytes <= 0x9F)) || ((*bytes >= 0xE0) && (*bytes <= 0xFC))) {
        bytes++;
        // Allowable second bytes.
        return (*bytes >= 0x40) && (*bytes <= 0xFC) && *bytes != 0x7F;
    }
    return false;
}

// Extracts 2 bytes from a bytepacked big-endian short.
void func_801C94F8(u8* arg0, u16 arg1) {
    arg0[0] = arg1 >> 8;
    arg0[1] = arg1 & 0xFF;
}

// Convert EUC-JP to JIS X 0208
u16 func_801C9514(u16 eucjpCh) {
    return eucjpCh - 0x8080;
}

/**
 * @brief Converts a JIS X 0208 codepoint to a Shift-JIS one.
 *
 * @param jisCodepoint Two bytes, each between 0x21 and 0x7E, packed big-endian into a short.
 * @return u16 Shift-JIS character representation (expected to be big-endian)
 */
u16 func_801C9534(u16 jisCodepoint) {
    u8 hiByte = (jisCodepoint >> 8) & 0xFF;
    u8 loByte = jisCodepoint & 0xFF;

    if (hiByte & 1) {
        loByte += 0x1F;
        if (loByte >= 0x7F) {
            loByte++;
        }
    } else {
        loByte += 0x7E;
    }

    hiByte = (hiByte - 0x21) / 2 + 0x81;
    if (hiByte >= 0xA0) {
        hiByte += 0x40;
    }

    return (hiByte << 8) + loByte;
}

void func_801C95C0(void* arg0, uintptr_t arg1, size_t arg2) {
    if (D_801D2EC0 != NULL) {
        D_801D2EC0(arg0, arg1, arg2);
    }
}

s32 func_801C95F0(u8* arg0) {
    return LeoGetKAdr(func_801C9534(func_801C9514((arg0[0] << 8) | arg0[1]))) + DDROM_FONT_START;
}

s32 func_801C963C(s32* arg0, int* dx, int* dy, int* cy, u8 arg4) {
    s32 temp_v0;
    s32 temp_v1;

    u16 temp = arg4 - 0x20;
    temp += 0xC0 * B_801E0F70;

    temp_v0 = LeoGetAAdr(temp, dx, dy, cy);
    temp_v1 = temp_v0 & 0xF;
    *arg0 = (temp_v0 - temp_v1) + DDROM_FONT_START;
    return temp_v1;
}

s32 func_801C969C(void* arg0, int* dx, int* dy, int* cy, u8* arg4) {
    s32 sp24;
    s32 phi_v1;

    if (func_801C9440(arg4)) {
        sp24 = func_801C95F0(arg4);
        *dx = 16;
        *dy = 16;
        *cy = 11;
        phi_v1 = 0;
    } else {
        phi_v1 = func_801C963C(&sp24, dx, dy, cy, *arg4);
    }

    func_801C95C0(arg0, sp24, 0x80);
    return phi_v1;
}

// return boolean
s32 func_801C9740(u8* arg0, s32 arg1, u8 arg2) {
    if (arg1 == 1) {
        *arg0 = arg2 << 4;
        return false;
    } else {
        *arg0 |= arg2;
        return true;
    }
}

u8* func_801C9778(u8* arg0, s32* arg1, s32 arg2) {
    arg0 += (arg2 >> 1);

    if (((*arg1 == 1) && !(arg2 & 1)) || ((*arg1 == 0) && (arg2 & 1))) {
        arg0 += arg2 & 1;
        *arg1 = 1;
    } else {
        *arg1 = 0;
    }
    return arg0;
}

s32 func_801C97C4(u8** arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, u8* arg5, s32 dx, s32 dy, s32 cy) {
    u8* var_fp;
    u8* var_s0;
    s32 var_s1;
    s32 x;
    s32 sp4C;
    s32 var_s4;
    s32 sp44;

    sp4C = arg2;
    sp44 = dx + arg3 + arg4;
    var_s4 = 1;
    var_fp = func_801C9778(*arg0, &sp4C, arg3);
    arg1 >>= 1;
    var_fp += ((11 - cy) * arg1);
    if (dx & 1) {
        dx++;
    }
    while (dy--) {
        var_s0 = var_fp;
        var_s1 = sp4C;
        for (x = 0; x < dx; x++) {
            if (var_s4 == 1) {
                if (func_801C9740(var_s0, var_s1, *arg5 >> 4)) {
                    var_s0++;
                }
            } else {
                if (func_801C9740(var_s0, var_s1, *arg5 & 0xF)) {
                    var_s0++;
                }
                arg5++;
            }
            var_s4 ^= 1;
            var_s1 ^= 1;
        }
        var_fp += arg1;
    }
    *arg0 = func_801C9778(*arg0, &arg2, sp44);
    return arg2;
}

void func_801C9954(u8* bytes, s32* arg1, s32* arg2) {
    u8 prevCh;
    u8 nextCh;

    if (func_801C9440(bytes)) {
        *arg1 = *arg2 = 0;
        return;
    }

    *arg1 = *arg2 = 0;

    prevCh = bytes[-1];
    nextCh = bytes[1];

    switch (bytes[0]) {
        case ' ':
            *arg1 = *arg2 = 0;
            return;

        case 'I':
        case 'i':
#if OOT_NTSC
            *arg2 = 2;
            if (1) {}
#endif

            *arg1 = 2;
            *arg2 = 2;

            if (prevCh == ' ') {
                *arg1 = 0;
            }
            if (nextCh == ' ') {
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

void func_801C9A10(u8* arg0, s32 arg1, u8* str) {
    u8 sp80[0xA0];
    u8* temp_s1;
    int dx;
    int dy;
    int cy;
    s32 var_s2;
    s32 sp68;
    s32 sp64;
    s32 temp_v1;

    temp_s1 = (u8*)((((uintptr_t)&sp80 + 0xF) / 0x10) * 0x10);
    var_s2 = 1;
    if (str != NULL) {
        while (*str != '\0') {
            func_801C9954(str, &sp68, &sp64);
            temp_v1 = func_801C969C(temp_s1, &dx, &dy, &cy, str);
            if (dx & 1) {
                dx++;
            }
            var_s2 = func_801C97C4(&arg0, arg1, var_s2, sp68, sp64, &temp_s1[temp_v1], dx, dy, cy);
            if (func_801C9440(str)) {
                str++;
            }
            str++;
        }
    }
}

void func_801C9B50(s32 arg0, void (*arg1)(void*, uintptr_t, size_t)) {
    B_801E0F70 = arg0;
    D_801D2EC0 = arg1;
}
