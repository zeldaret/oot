#ifdef __GNUC__

#include "global.h"

// Define functions needed for the GCC build here.

// Self-hosted memcmp.
int memcmp(void* s1, const void* s2, size_t n) {
    u8* m1 = (u8*)s1;
    u8* m2 = (u8*)s2;
    u32 i;
    for (i = 0; i < n; i++) {
        if (m1[i] < m2[i]) {
            return -1;
        } else if (m1[i] > m2[i]) {
            return 1;
        }
    }
    return 0;
}

void* memset(void* str, s32 c, size_t n) {
    u8* m1 = (u8*)str;
    u32 i;
    for (i = 0; i < n; i++) {
        m1[i] = c;
    }
    return str;
}

// These functions convert c to an unsigned integer, rounding toward zero. Negative values
// all become zero.
u32 __fixunssfdi(f32 a) {
    if (a < 0.0f) {
        a = 0.0f;
    }
    return (u32)a;
}

u32 __fixunsdfdi(f64 a) {
    if (a < 0.0) {
        a = 0.0;
    }
    return (u32)a;
}

// These functions convert c to a signed integer, rounding toward zero.
s32 __fixsfdi(f32 c) {
    return (s32)c;
}

s32 __fixdfdi(f64 c) {
    return (s32)c;
}

// These functions convert c, a signed integer, to floating point.
f32 __floatdisf(s32 c) {
    return (f32)c;
}

f64 __floatdidf(s32 c) {
    return (f64)c;
}

// These functions convert c, an unsigned integer, to floating point.
f32 __floatundisf(u32 c) {
    return (f32)c;
}

f64 __floatundidf(u32 c) {
    return (f64)c;
}

f32 __powisf2(f32 a, s32 b) {
    const s32 recip = b < 0;
    f32 r = 1;

    while (1) {
        if (b & 1) {
            r *= a;
        }

        b /= 2;

        if (b == 0) {
            break;
        }

        a *= a;
    }
    return recip ? 1 / r : r;
}

unsigned long __umoddi3(unsigned long a, unsigned long b) {
    __asm__(".set push;"
            ".set noat;"
            ".set noreorder;"
            ".set gp=64;"
            "sw    $a0, ($sp);"
            "sw    $a1, 4($sp);"
            "sw    $a2, 8($sp);"
            "sw    $a3, 0xc($sp);"
            "ld    $t7, 8($sp);"
            "ld    $t6, ($sp);"
            "ddivu $zero, $t6, $t7;"
            "bnez  $t7, .L80324144;"
            " nop;"
            "break 7;"
            ".L80324144:"
            "mfhi  $v0;"
            "dsll32 $v1, $v0, 0;"
            "dsra32 $v1, $v1, 0;"
            "dsra32 $v0, $v0, 0;"
            ".set pop;");
}

unsigned long __udivdi3(unsigned long a, unsigned long b) {
    __asm__(".set push;"
            ".set noat;"
            ".set noreorder;"
            ".set gp=64;"
            "sw    $a0, ($sp);"
            "sw    $a1, 4($sp);"
            "sw    $a2, 8($sp);"
            "sw    $a3, 0xc($sp);"
            "ld    $t7, 8($sp);"
            "ld    $t6, ($sp);"
            "ddivu $zero, $t6, $t7;"
            "bnez  $t7, .L80324180;"
            " nop;"
            "break 7;"
            ".L80324180:"
            "mflo  $v0;"
            "dsll32 $v1, $v0, 0;"
            "dsra32 $v1, $v1, 0;"
            " dsra32 $v0, $v0, 0;"
            ".set pop;");
}

long __moddi3(long a, long b) {
    __asm__(".set push;"
            ".set noat;"
            ".set noreorder;"
            ".set gp=64;"
            "sw    $a0, ($sp);"
            "sw    $a1, 4($sp);"
            "sw    $a2, 8($sp);"
            "sw    $a3, 0xc($sp);"
            "ld    $t7, 8($sp);"
            "ld    $t6, ($sp);"
            "ddivu $zero, $t6, $t7;"
            "bnez  $t7, .L803241E8;"
            " nop;"
            "break 7;"
            ".L803241E8:"
            "mfhi  $v0;"
            "dsll32 $v1, $v0, 0;"
            "dsra32 $v1, $v1, 0;"
            " dsra32 $v0, $v0, 0;"
            ".set pop;");
}

long __divdi3(long a, long b) {
    __asm__(".set push;"
            ".set noat;"
            ".set noreorder;"
            ".set gp=64;"
            "sw    $a0, ($sp);"
            "sw    $a1, 4($sp);"
            "sw    $a2, 8($sp);"
            "sw    $a3, 0xc($sp);"
            "ld    $t7, 8($sp);"
            "ld    $t6, ($sp);"
            "ddiv  $zero, $t6, $t7;"
            "nop;"
            "bnez  $t7, .L80324228;"
            " nop;"
            "break 7;"
            ".L80324228:"
            "daddiu $at, $zero, -1;"
            "bne   $t7, $at, .L80324244;"
            " daddiu $at, $zero, 1;"
            "dsll32 $at, $at, 0x1f;"
            "bne   $t6, $at, .L80324244;"
            " nop;"
            "break 6;"
            ".L80324244:"
            "mflo  $v0;"
            "dsll32 $v1, $v0, 0;"
            "dsra32 $v1, $v1, 0;"
            " dsra32 $v0, $v0, 0;"
            ".set pop;");
}

#endif
