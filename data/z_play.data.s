.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D1F0
    .incbin "baserom.z64", 0xBA4390, 0x8

glabel D_8012D1F8
    .incbin "baserom.z64", 0xBA4398, 0x8
