.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_80154CF0
    .word L80110520
    .word L80110960
    .word L80110748
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L8011079C
    .word L801107D8
    .word L801108A4
    .word L801108E8
    .word L8011092C
