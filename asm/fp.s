.include    "macro.inc"


.section    .data

glabel      qNaN0x3FFFFF
    .word       0x7FBFFFFF

glabel      qNaN0x10000
    .word       0x7F810000

glabel      sNaN0x3FFFFF
    .word       0x7FFFFFFF


.section    .text

glabel      floorf
    floor.w.s   $f12, $f12
    cvt.s.w     $f0, $f12
    jr          $ra

glabel      floor
    floor.w.d   $f12, $f12
    cvt.d.w     $f0, $f12
    jr          $ra

glabel      lfloorf
    floor.w.s   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      lfloor
    floor.w.d   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      ceilf
    ceil.w.s    $f12, $f12
    cvt.s.w     $f0, $f12
    jr          $ra

glabel      ceil
    ceil.w.d    $f12, $f12
    cvt.d.w     $f0, $f12
    jr          $ra

glabel      lceilf
    ceil.w.s    $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      lceil
    ceil.w.d    $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      truncf
    trunc.w.s   $f12, $f12
    cvt.s.w     $f0, $f12
    jr          $ra

glabel      trunc
    trunc.w.d   $f12, $f12
    cvt.d.w     $f0, $f12
    jr          $ra

glabel      ltruncf
    trunc.w.s   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      ltrunc
    trunc.w.d   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      nearbyintf
    round.w.s   $f12, $f12
    cvt.s.w     $f0, $f12
    jr          $ra

glabel      nearbyint
    round.w.d   $f12, $f12
    cvt.d.w     $f0, $f12
    jr          $ra

glabel      lnearbyintf
    round.w.s   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      lnearbyint
    round.w.d   $f4, $f12
    mfc1        $v0, $f4
    nop
    jr          $ra

glabel      roundf
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    cvt.s.w     $f0, $f0
    jr          $ra

glabel      round
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    cvt.d.w     $f0, $f0
    jr          $ra

glabel      lroundf
    li.s        $f4, 0.5
    nop
    add.s       $f0, $f12, $f4
    floor.w.s   $f0, $f0
    mfc1        $v0, $f0
    nop
    jr          $ra

glabel      lround
    li.d        $f4, 0.5
    nop
    add.d       $f0, $f12, $f4
    floor.w.d   $f0, $f0
    mfc1        $v0, $f0
    nop
    jr          $ra
