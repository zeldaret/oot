.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809FF440
    .asciz "../z_en_du.c"
    .balign 4

glabel D_809FF450
    .asciz "../z_en_du.c"
    .balign 4

glabel jtbl_809FF460
.word L809FDDA0
.word L809FDDA0
.word L809FDD14
.word L809FDDA0
.word L809FDDA0
.word L809FDDA0
.word L809FDD88
.word L809FDDA0
.word L809FDDA0
.word L809FDDA0
glabel D_809FF488
 .word 0x40490FDB
glabel D_809FF48C
 .word 0x40490FDB
glabel D_809FF490
 .word 0x40490FDB
glabel D_809FF494
 .word 0x40490FDB, 0x00000000, 0x00000000


