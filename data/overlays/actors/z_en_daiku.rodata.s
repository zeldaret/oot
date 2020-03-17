.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E4170
    .asciz "../z_en_daiku.c"
    .balign 4

glabel D_809E4180
    .asciz "../z_en_daiku.c"
    .balign 4

glabel D_809E4190
    .asciz "../z_en_daiku.c"
    .balign 4

glabel D_809E41A0
    .asciz "../z_en_daiku.c"
    .balign 4

glabel D_809E41B0
 .word 0x4622F983
glabel D_809E41B4
 .word 0x38C90FDB
glabel D_809E41B8
 .word 0x38C90FDB
glabel D_809E41BC
 .word 0x4622F983
glabel D_809E41C0
 .word 0x4622F983
glabel D_809E41C4
 .word 0x41A70A3D, 0x00000000, 0x00000000


