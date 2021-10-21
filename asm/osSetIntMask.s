#include "ultra64/r4300.h"
#include "ultra64/hardware.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel __osRcpImTable
    .half 0x0555, 0x0556, 0x0559, 0x055A, 0x0565, 0x0566, 0x0569, 0x056A
    .half 0x0595, 0x0596, 0x0599, 0x059A, 0x05A5, 0x05A6, 0x05A9, 0x05AA
    .half 0x0655, 0x0656, 0x0659, 0x065A, 0x0665, 0x0666, 0x0669, 0x066A
    .half 0x0695, 0x0696, 0x0699, 0x069A, 0x06A5, 0x06A6, 0x06A9, 0x06AA
    .half 0x0955, 0x0956, 0x0959, 0x095A, 0x0965, 0x0966, 0x0969, 0x096A
    .half 0x0995, 0x0996, 0x0999, 0x099A, 0x09A5, 0x09A6, 0x09A9, 0x09AA
    .half 0x0A55, 0x0A56, 0x0A59, 0x0A5A, 0x0A65, 0x0A66, 0x0A69, 0x0A6A
    .half 0x0A95, 0x0A96, 0x0A99, 0x0A9A, 0x0AA5, 0x0AA6, 0x0AA9, 0x0AAA

.section .text

.balign 16

glabel osSetIntMask
    mfc0    $t4, Status
    andi    $v0, $t4, (SR_IMASK | SR_IE)
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t3, ($t0)
    li      $at, -1
    xor     $t0, $t3, $at
    andi    $t0, $t0, SR_IMASK
    or      $v0, $v0, $t0
    lui     $t2, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    lw      $t2, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($t2)
    beqz    $t2, .L80004F84
     srl    $t1, $t3, 0x10
    li      $at, -1
    xor     $t1, $t1, $at
    andi    $t1, $t1, 0x3f
    or      $t2, $t2, $t1
.L80004F84:
    sll     $t2, $t2, 0x10
    or      $v0, $v0, $t2
    lui     $at, 0x3f
    and     $t0, $a0, $at
    and     $t0, $t0, $t3
    srl     $t0, $t0, 0xf
    lui     $t2, %hi(__osRcpImTable)
    addu    $t2, $t2, $t0
    lhu     $t2, %lo(__osRcpImTable)($t2)
    lui     $at, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    sw      $t2, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($at)
    andi    $t0, $a0, (SR_IMASK | SR_IE)
    andi    $t1, $t3, SR_IMASK
    and     $t0, $t0, $t1
    lui     $at, ((~SR_IMASK) >> 0x10) & 0xFFFF
    ori     $at, (~SR_IMASK) & 0xFFFF
    and     $t4, $t4, $at
    or      $t4, $t4, $t0
    mtc0    $t4, Status
    nop
    nop
    jr      $ra
     nop
