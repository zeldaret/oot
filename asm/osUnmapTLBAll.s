#include "ultra64/asm.h"
#include "ultra64/r4300.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

LEAF(osUnmapTLBAll)
    mfc0    $t0, C0_ENTRYHI
    li      $t1, (NTLBENTRIES - 1)
    li      $t2, K0BASE
    mtc0    $t2, C0_ENTRYHI
    mtc0    $zero, C0_ENTRYLO0
    mtc0    $zero, C0_ENTRYLO1
1:
    mtc0    $t1, C0_INX
    nop
    tlbwi
    nop
    nop
    addi    $t1, $t1, -1
    bgez    $t1, 1b
     nop
    mtc0    $t0, C0_ENTRYHI
    jr      $ra
     nop
END(osUnmapTLBAll)
