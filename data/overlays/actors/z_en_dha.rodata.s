.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809ED780
 .word 0x44E38000
glabel D_809ED784
 .word 0xC63B8000
glabel D_809ED788
 .word 0x461C4000, 0x00000000


