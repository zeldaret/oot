.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099FF20
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF34
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF48
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF5C
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF70
    .asciz "../z_eff_ss_bomb2.c"
    .balign 4

glabel D_8099FF84
 .word 0x3C23D70A
glabel D_8099FF88
 .word 0x3F6CCCCD
glabel D_8099FF8C
 .word 0x3C23D70A
glabel D_8099FF90
 .word 0x3CA3D70A
glabel D_8099FF94
 .word 0x3E19999A, 0x00000000, 0x00000000


