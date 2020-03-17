.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B958A0
    .asciz "(dungeon keep 木箱)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B958C8
 .word 0xBF99999A
glabel D_80B958CC
 .word 0x3E4CCCCD
glabel D_80B958D0
 .word 0x3DCCCCCD
glabel D_80B958D4
 .word 0x3F333333
glabel D_80B958D8
 .word 0x3E3851EC
glabel D_80B958DC
 .word 0x3E4CCCCD
glabel D_80B958E0
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


