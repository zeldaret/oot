.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808C1040
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_808C107C
    .asciz "../z_bg_zg.c"
    .balign 4

glabel D_808C108C
    .asciz "../z_bg_zg.c"
    .balign 4

glabel D_808C109C
    .asciz "../z_bg_zg.c"
    .balign 4

glabel D_808C10AC
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_808C10E4
 .word 0x3F99999A
glabel D_808C10E8
 .word 0x3FA66666
glabel D_808C10EC
 .word 0x3F99999A


