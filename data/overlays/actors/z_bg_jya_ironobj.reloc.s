.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80899620
    .incbin "baserom/ovl_Bg_Jya_Ironobj", 0xD80, 0x00000120
