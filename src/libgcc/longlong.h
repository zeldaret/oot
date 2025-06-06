/* longlong.h -- definitions for mixed size 32/64 bit arithmetic.
   Copyright (C) 1991, 92, 94, 95, 96, 1997 Free Software Foundation, Inc.

   This definition file is free software; you can redistribute it
   and/or modify it under the terms of the GNU General Public
   License as published by the Free Software Foundation; either
   version 2, or (at your option) any later version.

   This definition file is distributed in the hope that it will be
   useful, but WITHOUT ANY WARRANTY; without even the implied
   warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
   See the GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

/* Modified by ZeldaRET to keep only the parts that are relevant to the iQue build of OoT.  */

#define __BITS4 (SI_TYPE_SIZE / 4)
#define __ll_B (1L << (SI_TYPE_SIZE / 2))
#define __ll_lowpart(t) ((USItype)(t) % __ll_B)
#define __ll_highpart(t) ((USItype)(t) / __ll_B)

/* Define auxiliary asm macros.

   1) umul_ppmm(high_prod, low_prod, multipler, multiplicand)
   multiplies two USItype integers MULTIPLER and MULTIPLICAND,
   and generates a two-part USItype product in HIGH_PROD and
   LOW_PROD.

   2) __umulsidi3(a,b) multiplies two USItype integers A and B,
   and returns a UDItype product.  This is just a variant of umul_ppmm.

   3) udiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
   denominator) divides a two-word unsigned integer, composed by the
   integers HIGH_NUMERATOR and LOW_NUMERATOR, by DENOMINATOR and
   places the quotient in QUOTIENT and the remainder in REMAINDER.
   HIGH_NUMERATOR must be less than DENOMINATOR for correct operation.
   If, in addition, the most significant bit of DENOMINATOR must be 1,
   then the pre-processor symbol UDIV_NEEDS_NORMALIZATION is defined to 1.

   4) sdiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
   denominator).  Like udiv_qrnnd but the numbers are signed.  The
   quotient is rounded towards 0.

   5) count_leading_zeros(count, x) counts the number of zero-bits from
   the msb to the first non-zero bit.  This is the number of steps X
   needs to be shifted left to set the msb.  Undefined for X == 0.

   6) add_ssaaaa(high_sum, low_sum, high_addend_1, low_addend_1,
   high_addend_2, low_addend_2) adds two two-word unsigned integers,
   composed by HIGH_ADDEND_1 and LOW_ADDEND_1, and HIGH_ADDEND_2 and
   LOW_ADDEND_2 respectively.  The result is placed in HIGH_SUM and
   LOW_SUM.  Overflow (i.e. carry out) is not stored anywhere, and is
   lost.

   7) sub_ddmmss(high_difference, low_difference, high_minuend,
   low_minuend, high_subtrahend, low_subtrahend) subtracts two
   two-word unsigned integers, composed by HIGH_MINUEND_1 and
   LOW_MINUEND_1, and HIGH_SUBTRAHEND_2 and LOW_SUBTRAHEND_2
   respectively.  The result is placed in HIGH_DIFFERENCE and
   LOW_DIFFERENCE.  Overflow (i.e. carry out) is not stored anywhere,
   and is lost.

   If any of these macros are left undefined for a particular CPU,
   C macros are used.  */

#define add_ssaaaa(sh, sl, ah, al, bh, bl) \
    do {                                   \
        USItype __x;                       \
        __x = (al) + (bl);                 \
        (sh) = (ah) + (bh) + (__x < (al)); \
        (sl) = __x;                        \
    } while (0)

#define sub_ddmmss(sh, sl, ah, al, bh, bl) \
    do {                                   \
        USItype __x;                       \
        __x = (al) - (bl);                 \
        (sh) = (ah) - (bh) - (__x > (al)); \
        (sl) = __x;                        \
    } while (0)

#if __GNUC__ < 3
#define umul_ppmm(w1, w0, u, v) \
    __asm__("multu %2,%3" : "=l"((USItype)(w0)), "=h"((USItype)(w1)) : "d"((USItype)(u)), "d"((USItype)(v)))
#else
/* Non-matching version for modern GCC  */
#define umul_ppmm(w1, w0, u, v)  \
    __asm__("multu %2,%3\n\t"    \
            "mflo %0\n\t"        \
            "mfhi %1"            \
            : "=d"(w0), "=d"(w1) \
            : "d"((USItype)(u)), "d"((USItype)(v)))
#endif

#define udiv_qrnnd(q, r, n1, n0, d)                                             \
    do {                                                                        \
        USItype __d1, __d0, __q1, __q0;                                         \
        USItype __r1, __r0, __m;                                                \
        __d1 = __ll_highpart(d);                                                \
        __d0 = __ll_lowpart(d);                                                 \
                                                                                \
        __r1 = (n1) % __d1;                                                     \
        __q1 = (n1) / __d1;                                                     \
        __m = (USItype)__q1 * __d0;                                             \
        __r1 = __r1 * __ll_B | __ll_highpart(n0);                               \
        if (__r1 < __m) {                                                       \
            __q1--, __r1 += (d);                                                \
            if (__r1 >= (d)) /* i.e. we didn't get carry when adding to __r1 */ \
                if (__r1 < __m)                                                 \
                    __q1--, __r1 += (d);                                        \
        }                                                                       \
        __r1 -= __m;                                                            \
                                                                                \
        __r0 = __r1 % __d1;                                                     \
        __q0 = __r1 / __d1;                                                     \
        __m = (USItype)__q0 * __d0;                                             \
        __r0 = __r0 * __ll_B | __ll_lowpart(n0);                                \
        if (__r0 < __m) {                                                       \
            __q0--, __r0 += (d);                                                \
            if (__r0 >= (d))                                                    \
                if (__r0 < __m)                                                 \
                    __q0--, __r0 += (d);                                        \
        }                                                                       \
        __r0 -= __m;                                                            \
                                                                                \
        (q) = (USItype)__q1 * __ll_B | __q0;                                    \
        (r) = __r0;                                                             \
    } while (0)

#define count_leading_zeros(count, x)                                                     \
    do {                                                                                  \
        USItype __xr = (x);                                                               \
        USItype __a;                                                                      \
                                                                                          \
        if (SI_TYPE_SIZE <= 32) {                                                         \
            __a = __xr < ((USItype)1 << 2 * __BITS4)                                      \
                      ? (__xr < ((USItype)1 << __BITS4) ? 0 : __BITS4)                    \
                      : (__xr < ((USItype)1 << 3 * __BITS4) ? 2 * __BITS4 : 3 * __BITS4); \
        } else {                                                                          \
            for (__a = SI_TYPE_SIZE - 8; __a > 0; __a -= 8)                               \
                if (((__xr >> __a) & 0xff) != 0)                                          \
                    break;                                                                \
        }                                                                                 \
                                                                                          \
        (count) = SI_TYPE_SIZE - (__clz_tab[__xr >> __a] + __a);                          \
    } while (0)
