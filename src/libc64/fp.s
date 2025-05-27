#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.data

#if !PLATFORM_N64

DATA(gPositiveInfinity)
    .word 0x7F800000
ENDDATA(gPositiveInfinity)

DATA(gNegativeInfinity)
    .word 0xFF800000
ENDDATA(gNegativeInfinity)

DATA(gPositiveZero)
    .word 0x00000000
ENDDATA(gPositiveZero)

DATA(gNegativeZero)
    .word 0x80000000
ENDDATA(gNegativeZero)

DATA(qNaN0x3FFFFF)
    .word 0x7FBFFFFF
ENDDATA(qNaN0x3FFFFF)

DATA(qNaN0x10000)
    .word 0x7F810000
ENDDATA(qNaN0x10000)

DATA(sNaN0x3FFFFF)
    .word 0x7FFFFFFF
ENDDATA(sNaN0x3FFFFF)

#endif

.text

LEAF(floorf)
    floor.w.s   fa0, fa0
    cvt.s.w     fv0, fa0
    jr          ra
END(floorf)

LEAF(floor)
    floor.w.d   fa0, fa0
    cvt.d.w     fv0, fa0
    jr          ra
END(floor)

LEAF(lfloorf)
    floor.w.s   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lfloorf)

LEAF(lfloor)
    floor.w.d   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lfloor)

LEAF(ceilf)
    ceil.w.s    fa0, fa0
    cvt.s.w     fv0, fa0
    jr          ra
END(ceilf)

LEAF(ceil)
    ceil.w.d    fa0, fa0
    cvt.d.w     fv0, fa0
    jr          ra
END(ceil)

LEAF(lceilf)
    ceil.w.s    ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lceilf)

LEAF(lceil)
    ceil.w.d    ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lceil)

LEAF(truncf)
    trunc.w.s   fa0, fa0
    cvt.s.w     fv0, fa0
    jr          ra
END(truncf)

LEAF(trunc)
    trunc.w.d   fa0, fa0
    cvt.d.w     fv0, fa0
    jr          ra
END(trunc)

LEAF(ltruncf)
    trunc.w.s   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(ltruncf)

LEAF(ltrunc)
    trunc.w.d   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(ltrunc)

LEAF(nearbyintf)
    round.w.s   fa0, fa0
    cvt.s.w     fv0, fa0
    jr          ra
END(nearbyintf)

LEAF(nearbyint)
    round.w.d   fa0, fa0
    cvt.d.w     fv0, fa0
    jr          ra
END(nearbyint)

LEAF(lnearbyintf)
    round.w.s   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lnearbyintf)

LEAF(lnearbyint)
    round.w.d   ft0, fa0
    mfc1        v0, ft0
    jr          ra
END(lnearbyint)

LEAF(roundf)
    li.s        ft0, 0.5
    add.s       fv0, fa0, ft0
    floor.w.s   fv0, fv0
    cvt.s.w     fv0, fv0
    jr          ra
END(roundf)

LEAF(round)
    li.d        ft0, 0.5
    add.d       fv0, fa0, ft0
    floor.w.d   fv0, fv0
    cvt.d.w     fv0, fv0
    jr          ra
END(round)

LEAF(lroundf)
    li.s        ft0, 0.5
    add.s       fv0, fa0, ft0
    floor.w.s   fv0, fv0
    mfc1        v0, fv0
    jr          ra
END(lroundf)

LEAF(lround)
    li.d        ft0, 0.5
    add.d       fv0, fa0, ft0
    floor.w.d   fv0, fv0
    mfc1        v0, fv0
    jr          ra
END(lround)
