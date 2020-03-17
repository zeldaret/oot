.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087FAD0
 .word 0xA5B7A1BC, 0xA5F320B3, 0xB0CED8C1, 0xA5202E2E, 0x2E2020A5, 0xA2A5A1A5, 0xAFA5B7A5, 0xE7A5F3A1, 0xAAA1AA0A, 0x00000000
glabel D_8087FAF8
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB0C
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB20
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB34
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB48
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB5C
    .asciz "../z_bg_haka_ship.c"
    .balign 4

glabel D_8087FB70
 .word 0x3E00ADFD
glabel D_8087FB74
 .word 0x3E00ADFD
glabel D_8087FB78
 .word 0x45EF1000
glabel D_8087FB7C
 .word 0x45ED8000
glabel D_8087FB80
 .word 0x424989D9
glabel D_8087FB84
 .word 0x3E00ADFD
glabel D_8087FB88
 .word 0x38C90FDB
glabel D_8087FB8C
 .word 0xC5656000
glabel D_8087FB90
 .word 0xC3B78000, 0x00000000, 0x00000000, 0x00000000


