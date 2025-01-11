/* More subroutines needed by GCC output code on some machines.  */
/* Compile this one with gcc.  */
/* Copyright (C) 1989, 92-97, 1998 Free Software Foundation, Inc.

This file is part of GNU CC.

GNU CC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

GNU CC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU CC; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */

/* As a special exception, if you link this library with other files,
   some of which are compiled with GCC, to produce an executable,
   this library does not by itself cause the resulting executable
   to be covered by the GNU General Public License.
   This exception does not however invalidate any other reasons why
   the executable file might be covered by the GNU General Public License.  */

/* Modified by ZeldaRET to keep only the parts that are relevant to the iQue build of OoT.  */

#include "ultra64/ultratypes.h"

typedef u8 UQItype;
typedef s32 SItype;
typedef u32 USItype;
typedef s64 DItype;
typedef u64 UDItype;

typedef f32 SFtype;
typedef f64 DFtype;

typedef s32 word_type;

#define SI_TYPE_SIZE 32

#define DI_SIZE 64
#define DF_SIZE 53
#define SF_SIZE 24

#define WORD_SIZE 32
#define HIGH_HALFWORD_COEFF (((UDItype)1) << (WORD_SIZE / 2))
#define HIGH_WORD_COEFF (((UDItype)1) << WORD_SIZE)

/* DIstructs are pairs of SItype values in big-endian order.  */

struct DIstruct {
    SItype high, low;
};

/* We need this union to unpack/pack DImode values, since we don't have
   any arithmetic yet.  Incoming DImode parameters are stored into the
   `ll' field, and the unpacked result is read from the struct `s'.  */

typedef union {
    struct DIstruct s;
    DItype ll;
} DIunion;

extern DItype __fixunssfdi(SFtype original_a);
extern DItype __fixunsdfdi(DFtype a);

#if defined(L_divdi3) || defined(L_moddi3)
static inline DItype __negdi2(DItype u) {
    DIunion w;
    DIunion uu;

    uu.ll = u;

    w.s.low = -uu.s.low;
    w.s.high = -uu.s.high - ((USItype)w.s.low > 0);

    return w.ll;
}
#endif

#if defined(L_udivdi3) || defined(L_divdi3) || defined(L_umoddi3) || defined(L_moddi3)
static const UQItype __clz_tab[] = {
    0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
    7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
    7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
    8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
    8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
    8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
};

#include "src/libgcc/longlong.h"

static inline UDItype __udivmoddi4(UDItype n, UDItype d, UDItype* rp) {
    DIunion ww;
    DIunion nn, dd;
    DIunion rr;
    USItype d0, d1, n0, n1, n2;
    USItype q0, q1;
    USItype b, bm;

    nn.ll = n;
    dd.ll = d;

    d0 = dd.s.low;
    d1 = dd.s.high;
    n0 = nn.s.low;
    n1 = nn.s.high;

    if (d1 == 0) {
        if (d0 > n1) {
            /* 0q = nn / 0D */

            count_leading_zeros(bm, d0);

            if (bm != 0) {
                /* Normalize, i.e. make the most significant bit of the
                   denominator set.  */

                d0 = d0 << bm;
                n1 = (n1 << bm) | (n0 >> (SI_TYPE_SIZE - bm));
                n0 = n0 << bm;
            }

            udiv_qrnnd(q0, n0, n1, n0, d0);
            q1 = 0;

            /* Remainder in n0 >> bm.  */
        } else {
            /* qq = NN / 0d */

            if (d0 == 0) {
                d0 = 1 / d0; /* Divide intentionally by zero.  */
            }

            count_leading_zeros(bm, d0);

            if (bm == 0) {
                /* From (n1 >= d0) /\ (the most significant bit of d0 is set),
                   conclude (the most significant bit of n1 is set) /\ (the
                   leading quotient digit q1 = 1).

                   This special case is necessary, not an optimization.
                   (Shifts counts of SI_TYPE_SIZE are undefined.)  */

                n1 -= d0;
                q1 = 1;
            } else {
                /* Normalize.  */

                b = SI_TYPE_SIZE - bm;

                d0 = d0 << bm;
                n2 = n1 >> b;
                n1 = (n1 << bm) | (n0 >> b);
                n0 = n0 << bm;

                udiv_qrnnd(q1, n1, n2, n1, d0);
            }

            /* n1 != d0...  */

            udiv_qrnnd(q0, n0, n1, n0, d0);

            /* Remainder in n0 >> bm.  */
        }

        if (rp != 0) {
            rr.s.low = n0 >> bm;
            rr.s.high = 0;
            *rp = rr.ll;
        }
    } else {
        if (d1 > n1) {
            /* 00 = nn / DD */

            q0 = 0;
            q1 = 0;

            /* Remainder in n1n0.  */
            if (rp != 0) {
                rr.s.low = n0;
                rr.s.high = n1;
                *rp = rr.ll;
            }
        } else {
            /* 0q = NN / dd */

            count_leading_zeros(bm, d1);
            if (bm == 0) {
                /* From (n1 >= d1) /\ (the most significant bit of d1 is set),
                   conclude (the most significant bit of n1 is set) /\ (the
                   quotient digit q0 = 0 or 1).

                   This special case is necessary, not an optimization.  */

                /* The condition on the next line takes advantage of that
                   n1 >= d1 (true due to program flow).  */
                if (n1 > d1 || n0 >= d0) {
                    q0 = 1;
                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
                } else {
                    q0 = 0;
                }

                q1 = 0;

                if (rp != 0) {
                    rr.s.low = n0;
                    rr.s.high = n1;
                    *rp = rr.ll;
                }
            } else {
                USItype m1, m0;
                /* Normalize.  */

                b = SI_TYPE_SIZE - bm;

                d1 = (d1 << bm) | (d0 >> b);
                d0 = d0 << bm;
                n2 = n1 >> b;
                n1 = (n1 << bm) | (n0 >> b);
                n0 = n0 << bm;

                udiv_qrnnd(q0, n1, n2, n1, d1);
                umul_ppmm(m1, m0, q0, d0);

                if (m1 > n1 || (m1 == n1 && m0 > n0)) {
                    q0--;
                    sub_ddmmss(m1, m0, m1, m0, d1, d0);
                }

                q1 = 0;

                /* Remainder in (n1n0 - m1m0) >> bm.  */
                if (rp != 0) {
                    sub_ddmmss(n1, n0, n1, n0, m1, m0);
                    rr.s.low = (n1 << b) | (n0 >> bm);
                    rr.s.high = n1 >> bm;
                    *rp = rr.ll;
                }
            }
        }
    }

    ww.s.low = q0;
    ww.s.high = q1;
    return ww.ll;
}
#endif

#ifdef L_divdi3
DItype __divdi3(DItype u, DItype v) {
    word_type c = 0;
    DIunion uu, vv;
    DItype w;

    uu.ll = u;
    vv.ll = v;

    if (uu.s.high < 0) {
        c = ~c, uu.ll = __negdi2(uu.ll);
    }
    if (vv.s.high < 0) {
        c = ~c, vv.ll = __negdi2(vv.ll);
    }

    w = __udivmoddi4(uu.ll, vv.ll, (UDItype*)0);
    if (c) {
        w = __negdi2(w);
    }

    return w;
}
#endif

#ifdef L_moddi3
DItype __moddi3(DItype u, DItype v) {
    word_type c = 0;
    DIunion uu, vv;
    DItype w;

    uu.ll = u;
    vv.ll = v;

    if (uu.s.high < 0) {
        c = ~c, uu.ll = __negdi2(uu.ll);
    }
    if (vv.s.high < 0) {
        vv.ll = __negdi2(vv.ll);
    }

    (void)__udivmoddi4(uu.ll, vv.ll, (UDItype*)&w);
    if (c) {
        w = __negdi2(w);
    }

    return w;
}
#endif

#ifdef L_umoddi3
UDItype __umoddi3(UDItype u, UDItype v) {
    UDItype w;

    (void)__udivmoddi4(u, v, &w);

    return w;
}
#endif

#ifdef L_udivdi3
UDItype __udivdi3(UDItype n, UDItype d) {
    return __udivmoddi4(n, d, (UDItype*)0);
}
#endif

#ifdef L_cmpdi2
word_type __cmpdi2(DItype a, DItype b) {
    DIunion au, bu;

    au.ll = a, bu.ll = b;

    if (au.s.high < bu.s.high) {
        return 0;
    } else if (au.s.high > bu.s.high) {
        return 2;
    }
    if ((USItype)au.s.low < (USItype)bu.s.low) {
        return 0;
    } else if ((USItype)au.s.low > (USItype)bu.s.low) {
        return 2;
    }
    return 1;
}
#endif

#ifdef L_fixunsdfdi
DItype __fixunsdfdi(DFtype a) {
    DFtype b;
    UDItype v;

    if (a < 0) {
        return 0;
    }

    /* Compute high word of result, as a flonum.  */
    b = (a / HIGH_WORD_COEFF);
    /* Convert that to fixed (but not to DItype!),
       and shift it into the high word.  */
    v = (USItype)b;
    v <<= WORD_SIZE;
    /* Remove high part from the DFtype, leaving the low part as flonum.  */
    a -= (DFtype)v;
    /* Convert that to fixed (but not to DItype!) and add it in.
       Sometimes A comes out negative.  This is significant, since
       A has more bits than a long int does.  */
    if (a < 0) {
        v -= (USItype)(-a);
    } else {
        v += (USItype)a;
    }
    return v;
}
#endif

#ifdef L_fixdfdi
DItype __fixdfdi(DFtype a) {
    if (a < 0) {
        return -__fixunsdfdi(-a);
    }
    return __fixunsdfdi(a);
}
#endif

#ifdef L_fixunssfdi
DItype __fixunssfdi(SFtype original_a) {
    /* Convert the SFtype to a DFtype, because that is surely not going
       to lose any bits.  Some day someone else can write a faster version
       that avoids converting to DFtype, and verify it really works right.  */
    DFtype a = original_a;
    DFtype b;
    UDItype v;

    if (a < 0) {
        return 0;
    }

    /* Compute high word of result, as a flonum.  */
    b = (a / HIGH_WORD_COEFF);
    /* Convert that to fixed (but not to DItype!),
       and shift it into the high word.  */
    v = (USItype)b;
    v <<= WORD_SIZE;
    /* Remove high part from the DFtype, leaving the low part as flonum.  */
    a -= (DFtype)v;
    /* Convert that to fixed (but not to DItype!) and add it in.
       Sometimes A comes out negative.  This is significant, since
       A has more bits than a long int does.  */
    if (a < 0) {
        v -= (USItype)(-a);
    } else {
        v += (USItype)a;
    }
    return v;
}
#endif

#ifdef L_fixsfdi
DItype __fixsfdi(SFtype a) {
    if (a < 0) {
        return -__fixunssfdi(-a);
    }
    return __fixunssfdi(a);
}
#endif

#ifdef L_floatdidf
DFtype __floatdidf(DItype u) {
    DFtype d;

    d = (SItype)(u >> WORD_SIZE);
    d *= HIGH_HALFWORD_COEFF;
    d *= HIGH_HALFWORD_COEFF;
    d += (USItype)(u & (HIGH_WORD_COEFF - 1));

    return d;
}
#endif

#ifdef L_floatdisf
SFtype __floatdisf(DItype u) {
    /* Do the calculation in DFmode
       so that we don't lose any of the precision of the high word
       while multiplying it.  */
    DFtype f;

    /* Protect against double-rounding error.
       Represent any low-order bits, that might be truncated in DFmode,
       by a bit that won't be lost.  The bit can go in anywhere below the
       rounding position of the SFmode.  A fixed mask and bit position
       handles all usual configurations.  It doesn't handle the case
       of 128-bit DImode, however.  */
    if (DF_SIZE < DI_SIZE && DF_SIZE > (DI_SIZE - DF_SIZE + SF_SIZE)) {
#define REP_BIT ((USItype)1 << (DI_SIZE - DF_SIZE))
        if (!(-((DItype)1 << DF_SIZE) < u && u < ((DItype)1 << DF_SIZE))) {
            if ((USItype)u & (REP_BIT - 1)) {
                u |= REP_BIT;
            }
        }
    }
    f = (SItype)(u >> WORD_SIZE);
    f *= HIGH_HALFWORD_COEFF;
    f *= HIGH_HALFWORD_COEFF;
    f += (USItype)(u & (HIGH_WORD_COEFF - 1));

    return (SFtype)f;
}
#endif
