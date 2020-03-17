.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808D64F0

.incbin "baserom/ovl_Boss_Fd2", 0x3E80, 0x00000380
