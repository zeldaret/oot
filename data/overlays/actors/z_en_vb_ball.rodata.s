.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B2A090
    .asciz "../z_en_vb_ball.c"
    .balign 4

glabel D_80B2A0A4
    .asciz "../z_en_vb_ball.c"
    .balign 4

glabel D_80B2A0B8
    .asciz "../z_en_vb_ball.c"
    .balign 4

glabel D_80B2A0CC
    .asciz "../z_en_vb_ball.c"
    .balign 4

glabel D_80B2A0E0
 .word 0xBF4CCCCD
glabel D_80B2A0E4
 .word 0x461C4000
glabel D_80B2A0E8
 .word 0x453B8000
glabel D_80B2A0EC
 .word 0x459C4000
glabel D_80B2A0F0
 .word 0xC51C4000
glabel D_80B2A0F4
 .word 0x3E99999A
glabel D_80B2A0F8
 .word 0x44D48000
glabel D_80B2A0FC
 .word 0x43CCCCCD
glabel D_80B2A100
 .word 0x4622F983, 0x00000000, 0x00000000, 0x00000000


