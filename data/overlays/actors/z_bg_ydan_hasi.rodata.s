.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808BEC30
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

glabel D_808BEC44
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

glabel D_808BEC58
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

glabel D_808BEC6C
 .word 0x3E19999A
glabel D_808BEC70
 .word 0x3CC90FDB
glabel D_808BEC74
 .word 0x3E00ADFD, 0x00000000, 0x00000000


