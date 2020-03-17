.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809E5640

.incbin "baserom/ovl_En_Daiku_Kakariko", 0x1320, 0x00000190
