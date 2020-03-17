.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D180
    .incbin "baserom.z64", 0xBA4320, 0x4

glabel D_8012D184
    .incbin "baserom.z64", 0xBA4324, 0x4

glabel D_8012D188
    .incbin "baserom.z64", 0xBA4328, 0x10

glabel D_8012D198
    .incbin "baserom.z64", 0xBA4338, 0x8
