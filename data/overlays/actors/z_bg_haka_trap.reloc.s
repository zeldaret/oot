.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80881070

.incbin "baserom/ovl_Bg_Haka_Trap", 0x13D0, 0x000001E0
