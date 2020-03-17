.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809CBAC0
 .word 0x3D088889
glabel D_809CBAC4
 .word 0x3D888889
glabel D_809CBAC8
 .word 0x463B8000
glabel D_809CBACC
 .word 0x449C4000
glabel D_809CBAD0
 .word 0x45ABE000
glabel D_809CBAD4
 .word 0x45ABE000
glabel D_809CBAD8
 .word 0x466A6000, 0x00000000


