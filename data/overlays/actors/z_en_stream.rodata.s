.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B0BCD0
    .asciz "../z_en_stream.c"
    .balign 4

glabel D_80B0BCE4
    .asciz "../z_en_stream.c"
    .balign 4

glabel D_80B0BCF8
    .asciz "../z_en_stream.c"
    .balign 4

glabel D_80B0BD0C
 .word 0x3C23D70A
glabel D_80B0BD10
 .word 0x4622F983, 0x00000000, 0x00000000, 0x00000000


