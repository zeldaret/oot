.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809EABE0

.incbin "baserom/ovl_En_Dekunuts", 0x1680, 0x00000160
