.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8088C060

.incbin "baserom/ovl_Bg_Hidan_Rock", 0xFE0, 0x000001A0
