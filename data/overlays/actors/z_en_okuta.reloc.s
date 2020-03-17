.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AC2990

.incbin "baserom/ovl_En_Okuta", 0x2330, 0x00000310
