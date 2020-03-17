.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808BAD70

.incbin "baserom/ovl_Bg_Toki_Hikari", 0xE70, 0x000000D0
