#include "ultra64/asm.h"

.set noreorder

.section .data

.balign 16

DATA(qNaN0x3FFFFF)
    .word 0x7FBFFFFF
ENDDATA(qNaN0x3FFFFF)

DATA(qNaN0x10000)
    .word 0x7F810000
ENDDATA(qNaN0x10000)

DATA(sNaN0x3FFFFF)
    .word 0x7FFFFFFF
ENDDATA(sNaN0x3FFFFF)

.section .text

.balign 16

LEAF(floorf)
    floor.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END(floorf)

LEAF(floor)
    floor.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END(floor)

LEAF(lfloorf)
    floor.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lfloorf)

LEAF(lfloor)
    floor.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lfloor)

LEAF(ceilf)
    ceil.w.s    $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END(ceilf)

LEAF(ceil)
    ceil.w.d    $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END(ceil)

LEAF(lceilf)
    ceil.w.s    $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lceilf)

LEAF(lceil)
    ceil.w.d    $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lceil)

LEAF(truncf)
    trunc.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END(truncf)

LEAF(trunc)
    trunc.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END(trunc)

LEAF(ltruncf)
    trunc.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(ltruncf)

LEAF(ltrunc)
    trunc.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(ltrunc)

LEAF(nearbyintf)
    round.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END(nearbyintf)

LEAF(nearbyint)
    round.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END(nearbyint)

LEAF(lnearbyintf)
    round.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lnearbyintf)

LEAF(lnearbyint)
    round.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END(lnearbyint)

LEAF(roundf)
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    jr          $ra
     cvt.s.w     $f0, $f0
END(roundf)

LEAF(round)
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    jr          $ra
     cvt.d.w     $f0, $f0
END(round)

LEAF(lroundf)
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    mfc1        $v0, $f0
    jr          $ra
     nop
END(lroundf)

LEAF(lround)
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    mfc1        $v0, $f0
    jr          $ra
     nop
END(lround)
