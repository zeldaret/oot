.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808898D0

.incbin "baserom/ovl_Bg_Hidan_Hrock", 0x7A0, 0x00000090
