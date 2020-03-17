.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80890520
 .word 0xC49D8000
glabel D_80890524
 .word 0xC4DE8000
glabel D_80890528
 .word 0xC4CF8000
glabel D_8089052C
 .word 0xC4848000
glabel D_80890530
 .word 0xC4C58000
glabel D_80890534
 .word 0xC4938000
glabel D_80890538
 .word 0x44AD6000, 0x00000000


