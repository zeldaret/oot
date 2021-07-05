.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osMapTLBRdb
    mfc0    $t0, EntryHi
    li      $t1, NTLBENTRIES
    mtc0    $t1, Index
    mtc0    $zero, PageMask
    li      $t2, (TLBLO_UNCACHED | TLBLO_D | TLBLO_V | TLBLO_G)
    lui     $t1, %hi(K2BASE)
    mtc0    $t1, EntryHi
    lui     $t1, %hi(K0BASE)
    srl     $t3, $t1, TLBLO_PFNSHIFT
    or      $t3, $t3, $t2
    mtc0    $t3, EntryLo0
    li      $t1, TLBLO_G
    mtc0    $t1, EntryLo1
    nop
    tlbwi
    nop
    nop
    nop
    nop
    mtc0    $t0, EntryHi
    jr      $ra
     nop
