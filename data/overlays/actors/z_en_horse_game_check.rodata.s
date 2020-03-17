.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A68530
    .asciz "../z_en_horse_game_check.c"
    .balign 4

glabel D_80A6854C
    .asciz "En_HGC_Spot20_Ta_end():対応せず\n"
    .balign 4

glabel D_80A68570
 .word 0xC4CE4000, 0x00000000, 0x00000000, 0x00000000


