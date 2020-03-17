.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012AC00
    .incbin "baserom.z64", 0xBA1DA0, 0x28

glabel D_8012AC28
    .incbin "baserom.z64", 0xBA1DC8, 0x18

glabel D_8012AC40
    .incbin "baserom.z64", 0xBA1DE0, 0x18

glabel D_8012AC58
    .incbin "baserom.z64", 0xBA1DF8, 0x38
