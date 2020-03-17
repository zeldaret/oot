.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A019D0
    .asciz "../z_en_eiyer.c"
    .balign 4

glabel D_80A019E0
    .asciz "../z_en_eiyer.c"
    .balign 4

glabel D_80A019F0
 .word 0xBEC90FDB
glabel D_80A019F4
 .word 0x3F7D70A4
glabel D_80A019F8
 .word 0x3E858150
glabel D_80A019FC
 .word 0x3F4CCCCD
glabel D_80A01A00
 .word 0x3DA0D97C
glabel D_80A01A04
 .word 0x3D4CCCCD
glabel D_80A01A08
 .word 0x3F8CCCCD
glabel D_80A01A0C
 .word 0x3F20D97C
glabel D_80A01A10
 .word 0x451C4000, 0x00000000, 0x00000000, 0x00000000


