.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80878B60

    .asciz "../z_bg_gjyo_bridge.c"
    .balign 4

glabel D_80878B78

    .asciz "../z_bg_gjyo_bridge.c"
    .balign 4

glabel D_80878B90

    .asciz "../z_bg_gjyo_bridge.c"
    .balign 4

glabel D_80878BA8
 .word 0x44A78000
glabel D_80878BAC
 .word 0x44CFC000


