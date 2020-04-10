.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809EC680
    .asciz "../z_en_dh.c"
    .balign 4

glabel D_809EC690
    .asciz "../z_en_dh.c"
    .balign 4

glabel D_809EC6A0
    .asciz "../z_en_dh.c"
    .balign 4

glabel D_809EC6B0
    .float 6.28
    .balign 4

glabel D_809EC6B4
 .word 0xC66A6000
glabel D_809EC6B8
 .word 0x40033333
glabel D_809EC6BC
    .float 1.2
    .balign 4

glabel jtbl_809EC6C0
.word L809EB730
.word L809EB708
.word L809EB750
.word L809EB81C
.word L809EB918
.word L809EB910
glabel D_809EC6D8
 .word 0x40033333
glabel D_809EC6DC
    .float 1.2
    .balign 4

glabel D_809EC6E0
    .float 0.6
    .balign 4

glabel D_809EC6E4
    .float 0.15
    .balign 4

glabel D_809EC6E8
 .word 0x389D4952
glabel D_809EC6EC
    .float 0.01
    .balign 4



