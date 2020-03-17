.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809E91E0

.incbin "baserom/ovl_En_Dekubaba", 0x3A10, 0x00000380
