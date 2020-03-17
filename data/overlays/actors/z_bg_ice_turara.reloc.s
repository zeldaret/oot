.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808926A0

.incbin "baserom/ovl_Bg_Ice_Turara", 0x780, 0x000000A0
