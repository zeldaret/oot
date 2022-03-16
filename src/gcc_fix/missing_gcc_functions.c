/* --------------------------------------------------------------------------------*/
/* Depending on the toolchain used, an appropriate precompiled libgcc library      */
/* may not exist and cannot be linked against. Until we have a better work around, */
/* necessary gcc functions are hosted here in order to properly compile.           */
/* This file is NOT a part of the original game and only exists to help gcc work.  */
/* --------------------------------------------------------------------------------*/

#include "global.h"

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

__asm__("                                   \n\
    .set push                               \n\
    .set noat                               \n\
    .set noreorder                          \n\
    .set gp=64                              \n\
                                            \n\
.global __umoddi3                           \n\
__umoddi3:                                  \n\
    .type __umoddi3, @function              \n\
    .ent __umoddi3                          \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mfhi  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __umoddi3                          \n\
    .size __umoddi3, . - __umoddi3          \n\
                                            \n\
.global __udivdi3                           \n\
__udivdi3:                                  \n\
    .type __udivdi3, @function              \n\
    .ent __udivdi3                          \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mflo  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __udivdi3                          \n\
    .size __udivdi3, . - __udivdi3          \n\
                                            \n\
.global __moddi3                            \n\
__moddi3:                                   \n\
    .type __moddi3, @function               \n\
    .ent __moddi3                           \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mfhi  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __moddi3                           \n\
    .size __moddi3, . - __moddi3            \n\
                                            \n\
.global __divdi3                            \n\
__divdi3:                                   \n\
    .type __divdi3, @function               \n\
    .ent __divdi3                           \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddiv  $zero, $t6, $t7                   \n\
    nop                                     \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    daddiu $at, $zero, -1                   \n\
    bne   $t7, $at, 2f                      \n\
     daddiu $at, $zero, 1                   \n\
    dsll32 $at, $at, 0x1f                   \n\
    bne   $t6, $at, 2f                      \n\
     nop                                    \n\
    break 6                                 \n\
2:                                          \n\
    mflo  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __divdi3                           \n\
    .size __divdi3, . - __divdi3            \n\
                                            \n\
    .set pop                                \n\
                                            \n");
