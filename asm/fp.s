.include "macro.inc"

# assembler directives
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

BEGINDATA qNaN0x3FFFFF
    .word 0x7FBFFFFF
ENDDATA qNaN0x3FFFFF

BEGINDATA qNaN0x10000
    .word 0x7F810000
ENDDATA qNaN0x10000

BEGINDATA sNaN0x3FFFFF
    .word 0x7FFFFFFF
ENDDATA sNaN0x3FFFFF

.section .text

.balign 16

BEGIN floorf
    floor.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END floorf

BEGIN floor
    floor.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END floor

BEGIN lfloorf
    floor.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lfloorf

BEGIN lfloor
    floor.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lfloor

BEGIN ceilf
    ceil.w.s    $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END ceilf

BEGIN ceil
    ceil.w.d    $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END ceil

BEGIN lceilf
    ceil.w.s    $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lceilf

BEGIN lceil
    ceil.w.d    $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lceil

BEGIN truncf
    trunc.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END truncf

BEGIN trunc
    trunc.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END trunc

BEGIN ltruncf
    trunc.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END ltruncf

BEGIN ltrunc
    trunc.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END ltrunc

BEGIN nearbyintf
    round.w.s   $f12, $f12
    jr          $ra
     cvt.s.w    $f0, $f12
END nearbyintf

BEGIN nearbyint
    round.w.d   $f12, $f12
    jr          $ra
     cvt.d.w    $f0, $f12
END nearbyint

BEGIN lnearbyintf
    round.w.s   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lnearbyintf

BEGIN lnearbyint
    round.w.d   $f4, $f12
    mfc1        $v0, $f4
    jr          $ra
     nop
END lnearbyint

BEGIN roundf
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    jr          $ra
     cvt.s.w     $f0, $f0
END roundf

BEGIN round
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    jr          $ra
     cvt.d.w     $f0, $f0
END round

BEGIN lroundf
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    mfc1        $v0, $f0
    jr          $ra
     nop
END lroundf

BEGIN lround
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    mfc1        $v0, $f0
    jr          $ra
     nop
END lround
