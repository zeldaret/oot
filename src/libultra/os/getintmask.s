#include "ultra64/asm.h"
#include "ultra64/R4300.h"
#include "ultra64/rcp.h"
#include "ultra64/exception.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(osGetIntMask)
    // Extract interrupt enable bits from current SR
    mfc0    $v0, C0_SR
    andi    $v0, $v0, (SR_IMASK | SR_IE)
    // Get value of __OSGlobalIntMask
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t1, 0($t0)
    // Bitwise-OR in the disabled CPU bits of __OSGlobalIntMask
    li      $at, ~0
    xor     $t0, $t1, $at
    andi    $t0, $t0, SR_IMASK
    or      $v0, $v0, $t0
    // Fetch MI_INTR_MASK_REG
    lui     $t1, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    lw      $t1, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($t1)
    // If there are RCP interrupts masked
    beqz    $t1, 1f
    // Get value of __OSGlobalIntMask
     lui    $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, 0($t0)
    // Bitwise-OR in the disabled RCP bits of __OSGlobalIntMask
    srl     $t0, $t0, RCP_IMASKSHIFT
    li      $at, ~0
    xor     $t0, $t0, $at
    andi    $t0, $t0, (RCP_IMASK >> RCP_IMASKSHIFT)
    or      $t1, $t1, $t0
1:
    // Shift the RCP bits to not conflict with the CPU bits
    sll     $t2, $t1, RCP_IMASKSHIFT
    // OR the CPU and RCP bits together
    or      $v0, $v0, $t2
    jr      $ra
     nop
END(osGetIntMask)
