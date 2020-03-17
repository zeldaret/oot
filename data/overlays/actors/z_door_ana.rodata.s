.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80994510

    .asciz "../z_door_ana.c"
    .balign 4

glabel D_80994520

    .asciz "../z_door_ana.c"
    .balign 4

glabel D_80994530

    .asciz "../z_door_ana.c"
    .balign 4

glabel D_80994540
 .word 0x471C4000, 0x00000000, 0x00000000, 0x00000000


