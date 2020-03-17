.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8087EFF0

.incbin "baserom/ovl_Bg_Haka_Sgami", 0xB10, 0x00000110
