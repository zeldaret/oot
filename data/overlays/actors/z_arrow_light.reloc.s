.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8086BBA0

.incbin "baserom/ovl_Arrow_Light", 0x1EF0, 0x00000100
