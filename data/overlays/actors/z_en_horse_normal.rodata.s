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
 .word 0x3E4CCCCD
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
 .word 0x3DCCCCCD
glabel D_80A6D5D0
 .word 0x3DCCCCCD
glabel D_80A6D5D4
 .word 0x3ECCCCCD
glabel D_80A6D5D8
 .word 0x3F4CCCCD
glabel D_80A6D5DC
 .word 0x3ECCCCCD
glabel D_80A6D5E0
 .word 0x3F4CCCCD
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
 .word 0x3C23D70A
glabel D_80A6D5FC
 .word 0x38C90FDB


