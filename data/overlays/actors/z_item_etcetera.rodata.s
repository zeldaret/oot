.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B85DA0
 .word 0x6E6F203D, 0x2025640A, 0x00000000
glabel D_80B85DAC
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_80B85DBC
 .word 0x30000000
glabel D_80B85DC0
    .asciz "../z_item_etcetera.c"
    .balign 4

glabel D_80B85DD8
    .asciz "../z_item_etcetera.c"
    .balign 4

glabel D_80B85DF0
    .asciz "(game_play->demo_play.npcdemopnt[0]->dousa) = %d\n"
    .balign 4

glabel jtbl_80B85E24
.word L80B85710
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B8574C
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778
glabel D_80B85E58
 .word 0x3E051EB8
glabel D_80B85E5C
 .word 0xBD4CCCCD
glabel D_80B85E60
 .word 0xBCCCCCCD
glabel D_80B85E64
 .word 0xBDCCCCCD
glabel D_80B85E68
 .word 0xBDCCCCCD, 0x00000000


