.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A5DE0
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5DF8
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5E10
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5E28
 .word 0x3DCCCCCD
glabel D_809A5E2C
 .word 0x38C90FDB
glabel D_809A5E30
 .word 0x3C8EFA35
glabel D_809A5E34
 .word 0x3727C5AD
glabel D_809A5E38
 .word 0x3DCCCCCD
glabel D_809A5E3C
 .word 0x3C23D70A
glabel D_809A5E40
 .word 0x3F666666, 0x00000000, 0x00000000, 0x00000000


