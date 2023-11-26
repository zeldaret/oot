/* --------------------------------------------------------------------------------*/
/* Depending on the toolchain used, an appropriate precompiled libgcc library      */
/* may not exist and cannot be linked against. Until we have a better work around, */
/* necessary gcc functions are hosted here in order to properly compile.           */
/* This file is NOT a part of the original game and only exists to help gcc work.  */
/* --------------------------------------------------------------------------------*/

#include "global.h"

// Self-hosted libc memory functions, gcc assumes these exist even in a freestanding
// environment and there is no way to tell it otherwise.

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

// Conversions involving 64-bit integer types required by the O32 MIPS ABI.

// f32 -> u64, negative values become 0
u64 __fixunssfdi(f32 a) {
    if (a > 0.0f) {
        register union {
            f64 f;
            u64 i;
        } m;

        __asm__("cvt.l.s %0, %1" : "=f"(m.f) : "f"(a));
        return m.i;
    }
    return 0;
}

// f64 -> u64, negative values become 0
u64 __fixunsdfdi(f64 a) {
    if (a > 0.0) {
        register union {
            f64 f;
            u64 i;
        } m;

        __asm__("cvt.l.d %0, %1" : "=f"(m.f) : "f"(a));
        return m.i;
    }
    return 0;
}

// f32 -> s64
s64 __fixsfdi(f32 c) {
    register union {
        f64 f;
        s64 i;
    } m;

    __asm__("cvt.l.s %0, %1" : "=f"(m.f) : "f"(c));
    return m.i;
}

// f64 -> s64
s64 __fixdfdi(f64 c) {
    register union {
        f64 f;
        s64 i;
    } m;

    __asm__("cvt.l.d %0, %1" : "=f"(m.f) : "f"(c));
    return m.i;
}

// s64 -> f32
f32 __floatdisf(s64 c) {
    register union {
        f64 f;
        s64 i;
    } m;
    register f32 v;

    m.i = c;
    __asm__("cvt.s.l %0, %1" : "=f"(v) : "f"(m.f));
    return v;
}

// s64 -> f64
f64 __floatdidf(s64 c) {
    register union {
        f64 f;
        s64 i;
    } m;
    register f64 v;

    m.i = c;
    __asm__("cvt.d.l %0, %1" : "=f"(v) : "f"(m.f));
    return v;
}

// u64 -> f32
f32 __floatundisf(u64 c) {
    register union {
        f64 f;
        u64 i;
    } m;
    register f32 v;

    m.i = c;
    __asm__("cvt.s.l %0, %1" : "=f"(v) : "f"(m.f));
    if ((s64)c < 0) {
        // cvt.s.l assumes signed input, adjust output
        v += 4294967296.0f; // 2^32
    }
    return v;
}

// u64 -> f64
f64 __floatundidf(u64 c) {
    register union {
        f64 f;
        u64 i;
    } m;
    register f64 v;

    m.i = c;
    __asm__("cvt.d.l %0, %1" : "=f"(v) : "f"(m.f));
    if ((s64)c < 0) {
        // cvt.d.l assumes signed input, adjust output
        v += 18446744073709551616.0; // 2^64
    }
    return v;
}

// Compute x^m by binary exponentiation

f32 __powisf2(f32 x, s32 m) {
    u32 n = (m < 0) ? -m : m;
    f32 y = (n % 2 != 0) ? x : 1.0f;

    while (n >>= 1) {
        x = x * x;

        if (n % 2 != 0) {
            y = y * x;
        }
    }
    return (m < 0) ? (1.0f / y) : y;
}

// Compute division and modulo of 64-bit signed and unsigned integers

__asm__("                                   \n\
    .set push                               \n\
    .set noreorder                          \n\
    .set gp=64                              \n\
                                            \n\
.global __umoddi3                           \n\
__umoddi3:                                  \n\
  .type __umoddi3, @function                \n\
  .ent __umoddi3                            \n\
    sw      $a0, 0x0($sp)                   \n\
    sw      $a1, 0x4($sp)                   \n\
    sw      $a2, 0x8($sp)                   \n\
    sw      $a3, 0xC($sp)                   \n\
    ld      $t6, 0($sp)                     \n\
    ld      $t7, 8($sp)                     \n\
    dremu   $v0, $t6, $t7                   \n\
    dsll32  $v1, $v0, 0                     \n\
    dsra32  $v1, $v1, 0                     \n\
    jr      $ra                             \n\
     dsra32 $v0, $v0, 0                     \n\
  .end __umoddi3                            \n\
  .size __umoddi3, . - __umoddi3            \n\
                                            \n\
.global __udivdi3                           \n\
__udivdi3:                                  \n\
  .type __udivdi3, @function                \n\
  .ent __udivdi3                            \n\
    sw      $a0, 0x0($sp)                   \n\
    sw      $a1, 0x4($sp)                   \n\
    sw      $a2, 0x8($sp)                   \n\
    sw      $a3, 0xC($sp)                   \n\
    ld      $t6, 0($sp)                     \n\
    ld      $t7, 8($sp)                     \n\
    ddivu   $v0, $t6, $t7                   \n\
    dsll32  $v1, $v0, 0                     \n\
    dsra32  $v1, $v1, 0                     \n\
    jr      $ra                             \n\
     dsra32 $v0, $v0, 0                     \n\
  .end __udivdi3                            \n\
  .size __udivdi3, . - __udivdi3            \n\
                                            \n\
.global __moddi3                            \n\
__moddi3:                                   \n\
  .type __moddi3, @function                 \n\
  .ent __moddi3                             \n\
    sw      $a0, 0x0($sp)                   \n\
    sw      $a1, 0x4($sp)                   \n\
    sw      $a2, 0x8($sp)                   \n\
    sw      $a3, 0xC($sp)                   \n\
    ld      $t6, 0($sp)                     \n\
    ld      $t7, 8($sp)                     \n\
    drem    $v0, $t6, $t7                   \n\
    dsll32  $v1, $v0, 0                     \n\
    dsra32  $v1, $v1, 0                     \n\
    jr      $ra                             \n\
     dsra32 $v0, $v0, 0                     \n\
  .end __moddi3                             \n\
  .size __moddi3, . - __moddi3              \n\
                                            \n\
.global __divdi3                            \n\
__divdi3:                                   \n\
  .type __divdi3, @function                 \n\
  .ent __divdi3                             \n\
    sw    $a0, 0x0($sp)                     \n\
    sw    $a1, 0x4($sp)                     \n\
    sw    $a2, 0x8($sp)                     \n\
    sw    $a3, 0xC($sp)                     \n\
    ld    $t6, 0($sp)                       \n\
    ld    $t7, 8($sp)                       \n\
    ddiv  $v0, $t6, $t7                     \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
  .end __divdi3                             \n\
  .size __divdi3, . - __divdi3              \n\
                                            \n\
    .set pop                                \n\
                                            \n");
