.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80885D20

.incbin "baserom/ovl_Bg_Hidan_Curtain", 0xB80, 0x00000100
