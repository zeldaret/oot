.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012DCA0
    .incbin "baserom.z64", 0xBA4E40, 0x58

glabel D_8012DCF8
    .incbin "baserom.z64", 0xBA4E98, 0x24

glabel D_8012DD1C
    .incbin "baserom.z64", 0xBA4EBC, 0xC0

glabel D_8012DDDC
    .incbin "baserom.z64", 0xBA4F7C, 0x40

glabel D_8012DE1C
    .incbin "baserom.z64", 0xBA4FBC, 0x210

glabel D_8012E02C
    .incbin "baserom.z64", 0xBA51CC, 0xE64

glabel D_8012EE90
    .incbin "baserom.z64", 0xBA6030, 0x200
