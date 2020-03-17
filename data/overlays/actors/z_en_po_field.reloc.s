.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AD72B0

.incbin "baserom/ovl_En_Po_Field", 0x37B0, 0x00000400
