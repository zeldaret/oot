.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801550D0
    .incbin "baserom.z64", 0xBCC270, 0x270

glabel D_80155340
    .incbin "baserom.z64", 0xBCC4E0, 0x1C0

glabel D_80155500
    .incbin "baserom.z64", 0xBCC6A0, 0x6F0

glabel D_80155BF0
    .incbin "baserom.z64", 0xBCCD90, 0x80

glabel D_80155C70
    .incbin "baserom.z64", 0xBCCE10, 0x2E0

glabel D_80155F50
    .incbin "baserom.z64", 0xBCD0F0, 0x1630

glabel D_80157580
    .incbin "baserom.z64", 0xBCE720, 0x7B0

glabel D_80157D30
    .incbin "baserom.z64", 0xBCEED0, 0x60
