.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012AFB0
    .incbin "baserom.z64", 0xBA2150, 0x50

glabel D_8012B000
    .incbin "baserom.z64", 0xBA21A0, 0x30
