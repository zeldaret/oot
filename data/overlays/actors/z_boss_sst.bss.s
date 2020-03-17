.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.bss

glabel D_80938C90
 .space 0x08
glabel D_80938C98
 .space 0x04
glabel D_80938C9C
 .space 0x04
glabel D_80938CA0
 .space 0x08
glabel D_80938CA8
 .space 0x08
glabel D_80938CB0
 .space 0x04
glabel D_80938CB4
 .space 0x08
glabel D_80938CBC
 .space 0x04
glabel D_80938CC0
 .space 0x04
glabel D_80938CC4
 .space 0x0C

