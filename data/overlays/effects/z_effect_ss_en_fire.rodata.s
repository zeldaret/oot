.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A3260
    .asciz "../z_eff_en_fire.c"
    .balign 4

glabel D_809A3274
    .asciz "../z_eff_en_fire.c"
    .balign 4

glabel D_809A3288
    .asciz "../z_eff_en_fire.c"
    .balign 4

glabel D_809A329C
 .word 0x38C90FDB
glabel D_809A32A0
 .word 0x3851B717
glabel D_809A32A4
 .word 0x414B3333
glabel D_809A32A8
 .word 0x38C90FDB
glabel D_809A32AC
 .word 0x38C90FDB


