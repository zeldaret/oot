.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B18980
    .asciz "../z_en_tg.c"
    .balign 4

glabel D_80B18990
    .asciz "../z_en_tg.c"
    .balign 4

glabel jtbl_80B189A0
.word L80B18430
.word L80B18430
.word L80B18438
.word L80B18430
.word L80B18430
.word L80B18430
.word L80B18430
.word L80B18430
.word L80B18430
.word L80B18430
.word 0x00000000, 0x00000000


