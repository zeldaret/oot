#include "ultra64/asm.h"
#include "ultra64/R4300.h"
#include "ultra64/thread.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(__osDisableInt)
    lui     $t2, %hi(__OSGlobalIntMask)
    addiu   $t2, $t2, %lo(__OSGlobalIntMask)
    lw      $t3, ($t2)
    andi    $t3, $t3, SR_IMASK
    mfc0    $t0, C0_SR
    li      $at, ~SR_IE
    and     $t1, $t0, $at
    mtc0    $t1, C0_SR
    andi    $v0, $t0, SR_IE
    lw      $t0, ($t2)
    andi    $t0, $t0, SR_IMASK
    beq     $t0, $t3, No_Change_Global_Int
     lui    $t2, %hi(__osRunningThread)
    //! @bug this addiu should be lw, it may never come up in practice as to reach this code
    //! the CPU bits of __OSGlobalIntMask must have changed while this function is running.
    addiu   $t2, $t2, %lo(__osRunningThread)
    lw      $t1, THREAD_SR($t2)
    andi    $t2, $t1, SR_IMASK
    and     $t2, $t2, $t0
    li      $at, ~SR_IMASK
    and     $t1, $t1, $at
    or      $t1, $t1, $t2
    li      $at, ~SR_IE
    and     $t1, $t1, $at
    mtc0    $t1, C0_SR
    nop
    nop
No_Change_Global_Int:
    jr      $ra
     nop
END(__osDisableInt)

LEAF(__osRestoreInt)
    mfc0    $t0, C0_SR
    or      $t0, $t0, $a0
    mtc0    $t0, C0_SR
    nop
    nop
    jr      $ra
     nop
END(__osRestoreInt)
