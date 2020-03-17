.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809FCF10
    .asciz "../z_en_door.c"
    .balign 4

glabel D_809FCF20
    .asciz "../z_en_door.c"
    .balign 4

glabel D_809FCF30
 .word 0x3E19999A, 0x00000000, 0x00000000, 0x00000000


