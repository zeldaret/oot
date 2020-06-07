.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80A12EF0
    .incbin "baserom/ovl_En_Fire_Rock", 0x12D0, 0x00000180
