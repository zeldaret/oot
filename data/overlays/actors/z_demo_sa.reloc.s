.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80990F40

.incbin "baserom/ovl_Demo_Sa", 0x2AE0, 0x000002F0
