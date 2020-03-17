.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B96A20
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B96A60
    .asciz "../z_obj_lift.c"
    .balign 4

glabel D_80B96A70
    .asciz "(Dungeon Lift)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B96A94
 .word 0x3F4CCCCD
glabel D_80B96A98
 .word 0x477FFF80
glabel D_80B96A9C
 .word 0x477FFF80
glabel D_80B96AA0
 .word 0x477FFF80
glabel D_80B96AA4
 .word 0x3A83126F, 0x00000000, 0x00000000


