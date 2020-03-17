.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A3A2E0

.incbin "baserom/ovl_En_GeldB", 0x4FD0, 0x00000470
