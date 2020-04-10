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
    .float -0.8
    .balign 4

glabel D_80B2A0E4
    .float 10000.0
    .balign 4

glabel D_80B2A0E8
    .float 3000.0
    .balign 4

glabel D_80B2A0EC
    .float 5000.0
    .balign 4

glabel D_80B2A0F0
 .word 0xC51C4000
glabel D_80B2A0F4
    .float 0.3
    .balign 4

glabel D_80B2A0F8
 .word 0x44D48000
glabel D_80B2A0FC
 .word 0x43CCCCCD
glabel D_80B2A100
 .word 0x4622F983, 0x00000000, 0x00000000, 0x00000000


