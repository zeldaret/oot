.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808D1FE0

.incbin "baserom/ovl_Boss_Fd", 0x7220, 0x00000690
