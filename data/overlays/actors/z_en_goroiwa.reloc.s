.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A4E0B0

.incbin "baserom/ovl_En_Goroiwa", 0x2410, 0x00000270
