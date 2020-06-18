.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_8014A640
    .word L800F9588
    .word L800F95F4
    .word L800F9614
    .word L800F97E4
    .word L800F9940
    .word L800F9A00
    .word L800F9BD8
    .word L800F9CE4
    .word L800F9D20
    .word L800F9DB4
    .word L800F9DE8
    .word L800F9E84
    .word L800F9EB8
    .word L800F9B00
    .word L800F9F68
    .word L800F9FB8

glabel jtbl_8014A680
    .word L800FAAE4
    .word L800FAB28
    .word L800FAB48
    .word L800FAB84
    .word L800FABAC
    .word L800FABD0
    .word L800FAC18
    .word L800FAAFC
    .word L800FAC24
    .word L800FAC84
    .word L800FACA4
    .word L800FACD4
    .word L800FACD4
    .word L800FACD4
    .word L800FAC3C

.balign 16 # file split? const data below used in multiple files

glabel D_8014A6C0
    .half 0x1C00
    .half 0x0030

glabel D_8014A6C4
    .word 0x37F00

glabel D_8014A6C8
    .word 0xE0E0

glabel D_8014A6CC
    .word 0xBCE0
