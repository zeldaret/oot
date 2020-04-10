.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A6D560
    .asciz "../z_en_horse_normal.c"
    .balign 4

glabel D_80A6D578
    .asciz "../z_en_horse_normal.c"
    .balign 4

glabel D_80A6D590
    .asciz "../z_en_horse_normal.c"
    .balign 4

glabel D_80A6D5A8
 .word 0x3EAAAAAB
glabel D_80A6D5AC
    .float 0.2
    .balign 4

glabel D_80A6D5B0
 .word 0xC4368000
glabel D_80A6D5B4
 .word 0xC4898000
glabel D_80A6D5B8
 .word 0xC4924000
glabel D_80A6D5BC
 .word 0x4567B000
glabel D_80A6D5C0
 .word 0x44B0A000
glabel D_80A6D5C4
 .word 0xC4264000
glabel D_80A6D5C8
 .word 0x4622F983
glabel D_80A6D5CC
    .float 0.1
    .balign 4

glabel D_80A6D5D0
    .float 0.1
    .balign 4

glabel D_80A6D5D4
    .float 0.4
    .balign 4

glabel D_80A6D5D8
    .float 0.8
    .balign 4

glabel D_80A6D5DC
    .float 0.4
    .balign 4

glabel D_80A6D5E0
    .float 0.8
    .balign 4

glabel D_80A6D5E4
 .word 0x4622F983
glabel D_80A6D5E8
 .word 0x43B18000
glabel D_80A6D5EC
 .word 0xC4368000
glabel D_80A6D5F0
 .word 0xC4898000
glabel D_80A6D5F4
 .word 0xC4924000
glabel D_80A6D5F8
    .float 0.01
    .balign 4

glabel D_80A6D5FC
    .float 9.58738019108e-05
    .balign 4



