.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809BCB30
 .word 0x504F5745, 0x520A0000
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
 .word 0x3F4CCCCD
glabel D_809BCB7C
 .word 0x3F666667
glabel D_809BCB80
 .word 0x3F19999A
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


