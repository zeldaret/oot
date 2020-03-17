.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809BF5A0

.incbin "baserom/ovl_En_Bigokuta", 0x2940, 0x00000300
