.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809B6200

.incbin "baserom/ovl_En_Attack_Niw", 0x1100, 0x00000150
