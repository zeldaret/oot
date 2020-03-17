.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809EABC0
 .word 0x3DAA9931
glabel D_809EABC4
 .word 0x3DEF0069
glabel D_809EABC8
 .word 0x3FD9999A
glabel D_809EABCC
 .word 0x3F333333
glabel D_809EABD0
 .word 0x3E2AB368, 0x00000000, 0x00000000, 0x00000000


