.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8095DF50
 .space 0x8980
glabel D_809668D0
 .space 0x01
glabel D_809668D1
 .space 0x01
glabel D_809668D2
 .space 0x06
glabel D_809668D8
 .space 0x04
glabel D_809668DC
 .space 0x04
glabel D_809668E0
 .space 0x08
glabel D_809668E8
 .space 0x04
glabel D_809668EC
 .space 0x04
glabel D_809668F0
 .space 0x08
glabel D_809668F8
 .space 0x04
glabel D_809668FC
 .space 0x04
glabel D_80966900
 .space 0x08
glabel D_80966908
 .space 0x04
glabel D_8096690C
 .space 0x04
glabel D_80966910
 .space 0x08
glabel D_80966918
 .space 0x04
glabel D_8096691C
 .space 0x04
glabel D_80966920
 .space 0x08
glabel D_80966928
 .space 0x04
glabel D_8096692C
 .space 0x04
glabel D_80966930
 .space 0x04
glabel D_80966934
 .space 0x02
glabel D_80966936
 .space 0x02
glabel D_80966938
 .space 0x02
glabel D_8096693A
 .space 0x02
glabel D_8096693C
 .space 0x02
glabel D_8096693E
 .space 0x02
glabel D_80966940
 .space 0x10

