.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80ABB7C0

.incbin "baserom/ovl_En_Niw_Lady", 0x1B80, 0x00000290
