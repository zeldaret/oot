.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

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
    .incbin "baserom.z64", 0xBA51CC, 0x64

glabel D_8012E090
    .incbin "baserom.z64", 0xBA5230, 0x200

glabel D_8012E290
    .incbin "baserom.z64", 0xBA5430, 0x200

glabel D_8012E490
    .incbin "baserom.z64", 0xBA5630, 0x200

glabel D_8012E690
    .incbin "baserom.z64", 0xBA5830, 0x200

glabel D_8012E890
    .incbin "baserom.z64", 0xBA5A30, 0x200

glabel D_8012EA90
    .incbin "baserom.z64", 0xBA5C30, 0x200

glabel D_8012EC90
    .incbin "baserom.z64", 0xBA5E30, 0x200

glabel D_8012EE90
    .incbin "baserom.z64", 0xBA6030, 0x200
