.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809DC140

.incbin "baserom/ovl_En_Clear_Tag", 0x8B90, 0x00000290
