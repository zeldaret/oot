.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.bss

glabel D_8090EB20
 .space 0x0C
glabel D_8090EB2C
 .space 0x04
glabel D_8090EB30
 .space 0x08
glabel D_8090EB38
 .space 0x1A90
glabel D_809105C8
 .space 0x04
glabel D_809105CC
 .space 0x04
glabel D_809105D0
 .space 0x08
glabel D_809105D8
 .space 0x0C
glabel D_809105E4
 .space 0x0C
glabel D_809105F0
 .space 0x0C
glabel D_809105FC
 .space 0x0C
glabel D_80910608
 .space 0x0C
glabel D_80910614
 .space 0x0C
glabel D_80910620
 .space 0x0C
glabel D_8091062C
 .space 0x0C
glabel D_80910638
 .space 0x08

