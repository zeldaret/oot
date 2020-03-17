.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809EF1D0

.incbin "baserom/ovl_En_Diving_Game", 0x1960, 0x00000180
