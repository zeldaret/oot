.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B045D0
    .asciz "../z_en_ssh.c"
    .balign 4

glabel D_80B045E0
    .asciz "../z_en_ssh.c"
    .balign 4

glabel D_80B045F0
 .word 0x3D23D70A
glabel D_80B045F4
 .word 0x461C4000
glabel D_80B045F8
 .word 0x3E2AAAAB
glabel D_80B045FC
 .word 0x43360B61
glabel D_80B04600
 .word 0x38C90FDB
glabel D_80B04604
 .word 0x40490FDB, 0x00000000, 0x00000000


