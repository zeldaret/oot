.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A2F000

.incbin "baserom/ovl_En_Ganon_Organ", 0x7000, 0x00000180
