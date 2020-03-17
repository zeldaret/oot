.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012D230
    .incbin "baserom.z64", 0xBA43D0, 0x18

glabel D_8012D248
    .incbin "baserom.z64", 0xBA43E8, 0x18

glabel D_8012D260
    .incbin "baserom.z64", 0xBA4400, 0x4

glabel D_8012D264
    .incbin "baserom.z64", 0xBA4404, 0xC
