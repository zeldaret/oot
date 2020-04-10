.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809BCB30
    .asciz "POWER\n"
    .balign 4

glabel D_809BCB38
    .asciz "../z_en_bdfire.c"
    .balign 4

glabel D_809BCB4C
    .asciz "../z_en_bdfire.c"
    .balign 4

glabel D_809BCB60
    .asciz "../z_en_bdfire.c"
    .balign 4

glabel D_809BCB74
 .word 0x40333333
glabel D_809BCB78
    .float 0.8
    .balign 4

glabel D_809BCB7C
 .word 0x3F666667
glabel D_809BCB80
    .float 0.6
    .balign 4

glabel D_809BCB84
 .word 0x40866667
glabel D_809BCB88
 .word 0xC4ADC000
glabel D_809BCB8C
 .word 0xC52F4000
glabel D_809BCB90
 .word 0xC56DC000
glabel D_809BCB94
 .word 0x40866667, 0x00000000, 0x00000000


