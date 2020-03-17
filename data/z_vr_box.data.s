.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012AC90
    .incbin "baserom.z64", 0xBA1E30, 0x10

glabel D_8012ACA0
    .incbin "baserom.z64", 0xBA1E40, 0x80

glabel D_8012AD20
    .incbin "baserom.z64", 0xBA1EC0, 0xC

glabel D_8012AD2C
    .incbin "baserom.z64", 0xBA1ECC, 0x14

glabel D_8012AD40
    .incbin "baserom.z64", 0xBA1EE0, 0x80

glabel D_8012ADC0
    .incbin "baserom.z64", 0xBA1F60, 0x18

glabel D_8012ADD8
    .incbin "baserom.z64", 0xBA1F78, 0x40

glabel D_8012AE18
    .incbin "baserom.z64", 0xBA1FB8, 0xC

glabel D_8012AE24
    .incbin "baserom.z64", 0xBA1FC4, 0xC

glabel D_8012AE30
    .incbin "baserom.z64", 0xBA1FD0, 0xC

glabel D_8012AE3C
    .incbin "baserom.z64", 0xBA1FDC, 0x80

glabel D_8012AEBC
    .incbin "baserom.z64", 0xBA205C, 0x50

glabel D_8012AF0C
    .incbin "baserom.z64", 0xBA20AC, 0x84
