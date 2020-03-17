.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808C09F0
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A04
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A18
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A2C
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A40
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A54
    .asciz "../z_bg_ydan_sp.c"
    .balign 4

glabel D_808C0A68
 .word 0x462AA800
glabel D_808C0A6C
 .word 0x3C088889
glabel D_808C0A70
 .word 0x3F333333
glabel D_808C0A74
 .word 0x3E20D97C
glabel D_808C0A78
 .word 0x443B8000
glabel D_808C0A7C
 .word 0x3DCCCCCD
glabel D_808C0A80
 .word 0x3EE5C8FA
glabel D_808C0A84
 .word 0x462AA800
glabel D_808C0A88
 .word 0x3BEA0EA1
glabel D_808C0A8C
 .word 0x3F266666
glabel D_808C0A90
 .word 0x3DCCCCCD
glabel D_808C0A94
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


