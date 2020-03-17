.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B8AFC0
    .asciz "../z_magic_fire.c"
    .balign 4

glabel D_80B8AFD4
    .asciz "../z_magic_fire.c"
    .balign 4

glabel D_80B8AFE8
    .asciz "../z_magic_fire.c"
    .balign 4

glabel D_80B8AFFC
 .word 0x43A28000
glabel D_80B8B000
 .word 0x3DA3D70A
glabel D_80B8B004
 .word 0x3A83126F
glabel D_80B8B008
 .word 0x3D4CCCCD
glabel D_80B8B00C
 .word 0x3D89AE40
glabel D_80B8B010
 .word 0x3E19999A, 0x00000000, 0x00000000, 0x00000000


