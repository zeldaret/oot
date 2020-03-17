.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8099FFA0

.incbin "baserom/ovl_Effect_Ss_Bomb2", 0x950, 0x000000A0
