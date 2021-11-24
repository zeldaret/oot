#include "ultra64/r4300.h"
#include "ultra64/thread.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

BEGIN __osDisableInt
    lui     $t2, %hi(__OSGlobalIntMask)
    addiu   $t2, $t2, %lo(__OSGlobalIntMask)
    lw      $t3, ($t2)
    andi    $t3, $t3, SR_IMASK
    mfc0    $t0, Status
    li      $at, ~SR_IE
    and     $t1, $t0, $at
    mtc0    $t1, Status
    andi    $v0, $t0, SR_IE
    lw      $t0, ($t2)
    andi    $t0, $t0, SR_IMASK
    beq     $t0, $t3, 1f
     lui    $t2, %hi(__osRunningThread)
    addiu   $t2, $t2, %lo(__osRunningThread)
    lw      $t1, THREAD_SR($t2)
    andi    $t2, $t1, SR_IMASK
    and     $t2, $t2, $t0
    li      $at, ~SR_IMASK
    and     $t1, $t1, $at
    or      $t1, $t1, $t2
    li      $at, ~SR_IE
    and     $t1, $t1, $at
    mtc0    $t1, Status
    nop
    nop
1:
    jr      $ra
     nop
END __osDisableInt
