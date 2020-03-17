.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B94100
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B94140
    .asciz "../z_obj_hsblock.c"
    .balign 4

glabel D_80B94154
    .asciz "../z_obj_hsblock.c"
    .balign 4

glabel D_80B94168
    .asciz "../z_obj_hsblock.c"
    .balign 4

glabel D_80B9417C
    .asciz "../z_obj_hsblock.c"
    .balign 4

glabel D_80B94190
 .word 0x3E99999A
glabel D_80B94194
 .word 0x3A83126F, 0x00000000, 0x00000000


