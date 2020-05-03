.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809AC690

.incbin "baserom/ovl_Effect_Ss_Stick", 0x3C0, 0x00000070
