.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A15B0
    .incbin "baserom/ovl_Effect_Ss_Dead_Dd", 0x5D0, 0x00000060
