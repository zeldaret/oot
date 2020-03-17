.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D2D0
    .incbin "baserom.z64", 0xBA4470, 0x30

glabel D_8012D300
    .incbin "baserom.z64", 0xBA44A0, 0x10
