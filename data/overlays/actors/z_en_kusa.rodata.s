.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A9C2A0
    .asciz "[43;30m"
    .balign 4

glabel D_80A9C2AC
    .asciz "地面に付着失敗(%s %d)\n"
    .balign 4

glabel D_80A9C2C4
    .asciz "../z_en_kusa.c"
    .balign 4

glabel D_80A9C2D4
    .asciz "\x1b[m"
    .balign 4

glabel D_80A9C2D8
    .asciz "Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_80A9C308
    .asciz "../z_en_kusa.c"
    .balign 4

glabel D_80A9C318
    .float 0.2
    .balign 4

glabel D_80A9C31C
    .float 0.1
    .balign 4

glabel D_80A9C320
 .word 0x3DF5C290
glabel D_80A9C324
 .word 0x3E23D70B
glabel D_80A9C328
 .word 0x42DE3333
glabel D_80A9C32C
 .word 0x477FFF00
glabel D_80A9C330
 .word 0xBDCCCCCD
glabel D_80A9C334
 .word 0xC04CCCCD, 0x00000000, 0x00000000


