.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808756D0

.incbin "baserom/ovl_Bg_Dy_Yoseizo", 0x2EA0, 0x00000250
