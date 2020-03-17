.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8088AFA0

.incbin "baserom/ovl_Bg_Hidan_Kowarerukabe", 0xF80, 0x000000E0
