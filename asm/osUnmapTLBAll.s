#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osUnmapTLBAll
    mfc0    $t0, EntryHi
    li      $t1, (NTLBENTRIES - 1)
    lui     $t2, %hi(K0BASE)
    mtc0    $t2, EntryHi
    mtc0    $zero, EntryLo0
    mtc0    $zero, EntryLo1
.all:
    mtc0    $t1, Index
    nop
    tlbwi
    nop
    nop
    addi    $t1, $t1, -1
    bgez    $t1, .all
     nop
    mtc0    $t0, EntryHi
    jr      $ra
     nop
