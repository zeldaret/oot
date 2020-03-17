.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80830690

.incbin "baserom/ovl_kaleido_scope", 0x1CE70, 0x00001B10
