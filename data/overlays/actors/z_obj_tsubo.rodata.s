.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA1BE0
 .word 0xC3CFCCCC, 0xA4CBC9D5, 0xC3E5BCBA, 0xC7D40A00
glabel D_80BA1BF0
    .asciz "Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_80BA1C20
    .asciz "../z_obj_tsubo.c"
    .balign 4

glabel D_80BA1C34
    .asciz "(dungeon keep 壷)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80BA1C58
 .word 0x3E6B851F
glabel D_80BA1C5C
 .word 0x3E4CCCCD
glabel D_80BA1C60
 .word 0x3F19999A
glabel D_80BA1C64
 .word 0x3E4CCCCD
glabel D_80BA1C68
 .word 0x3E4CCCCD
glabel D_80BA1C6C
 .word 0x3F333333


