#include "ultra64/asm.h"
#include "ultra64/r4300.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

LEAF(osMapTLBRdb)
    mfc0    $t0, C0_ENTRYHI
    li      $t1, NTLBENTRIES
    mtc0    $t1, C0_INX
    mtc0    $zero, C0_PAGEMASK
    li      $t2, (TLBLO_UNCACHED | TLBLO_D | TLBLO_V | TLBLO_G)
    li      $t1, K2BASE
    mtc0    $t1, C0_ENTRYHI
    li      $t1, K0BASE
    srl     $t3, $t1, TLBLO_PFNSHIFT
    or      $t3, $t3, $t2
    mtc0    $t3, C0_ENTRYLO0
    li      $t1, TLBLO_G
    mtc0    $t1, C0_ENTRYLO1
    nop
    tlbwi
    nop
    nop
    nop
    nop
    mtc0    $t0, C0_ENTRYHI
    jr      $ra
     nop
END(osMapTLBRdb)
