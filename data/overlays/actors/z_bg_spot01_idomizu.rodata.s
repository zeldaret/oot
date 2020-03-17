.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808ABDC0
    .asciz "../z_bg_spot01_idomizu.c"
    .balign 4

glabel D_808ABDDC
    .asciz "../z_bg_spot01_idomizu.c"
    .balign 4

glabel D_808ABDF8
    .asciz "../z_bg_spot01_idomizu.c"
    .balign 4

glabel D_808ABE14
 .word 0xC4098000
glabel D_808ABE18
 .word 0xC4098000, 0x00000000


