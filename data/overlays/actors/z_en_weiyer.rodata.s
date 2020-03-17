.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B33AF0
    .asciz "../z_en_weiyer.c"
    .balign 4

glabel D_80B33B04
    .asciz "../z_en_weiyer.c"
    .balign 4

glabel D_80B33B18
 .word 0xBEC90FDB
glabel D_80B33B1C
 .word 0x3DA0D97C
glabel D_80B33B20
 .word 0x3EAAA64C
glabel D_80B33B24
 .word 0x3DCCCCCD
glabel D_80B33B28
 .word 0x3DA0D97C
glabel D_80B33B2C
 .word 0x3F20D97C


