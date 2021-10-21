#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osProbeTLB
    mfc0    $t0, EntryHi
    andi    $t1, $t0, TLBHI_PIDMASK
    li      $at, TLBHI_VPN2MASK
    and     $t2, $a0, $at
    or      $t1, $t1, $t2
    mtc0    $t1, EntryHi
    nop
    nop
    nop
    tlbp
    nop
    nop
    mfc0    $t3, Index
    li      $at, TLBINX_PROBE
    and     $t3, $t3, $at
    bnez    $t3, .L800050E8
     nop
    tlbr
    nop
    nop
    nop
    mfc0    $t3, PageMask
    addi    $t3, $t3, DCACHE_SIZE
    srl     $t3, $t3, 1
    and     $t4, $t3, $a0
    bnez    $t4, .L800050B8
     addi   $t3, $t3, -1
    mfc0    $v0, EntryLo0
    b       .L800050BC
     nop
.L800050B8:
    mfc0    $v0, EntryLo1
.L800050BC:
    andi    $t5, $v0, TLBLO_V
    beqz    $t5, .L800050E8
     nop
    li      $at, TLBLO_PFNMASK
    and     $v0, $v0, $at
    sll     $v0, $v0, TLBLO_PFNSHIFT
    and     $t5, $a0, $t3
    add     $v0, $v0, $t5
    b       .L800050EC
     nop
.L800050E8:
    li      $v0, -1
.L800050EC:
    mtc0    $t0, EntryHi
    jr      $ra
     nop
