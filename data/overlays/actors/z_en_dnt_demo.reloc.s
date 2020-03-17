.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809F19B0

.incbin "baserom/ovl_En_Dnt_Demo", 0x10D0, 0x00000130
