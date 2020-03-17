.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D200
    .incbin "baserom.z64", 0xBA43A0, 0x7

glabel D_8012D207
    .incbin "baserom.z64", 0xBA43A7, 0x9
