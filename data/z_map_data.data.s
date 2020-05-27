.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80123A70
    .incbin "baserom.z64", 0xB9AC10, 0xA0

glabel D_80123B10
    .incbin "baserom.z64", 0xB9ACB0, 0x10

glabel D_80123B20
    .incbin "baserom.z64", 0xB9ACC0, 0x280

glabel D_80123DA0
    .incbin "baserom.z64", 0xB9AF40, 0x14

glabel D_80123DB4
    .incbin "baserom.z64", 0xB9AF54, 0x8C0

glabel D_80124674
    .incbin "baserom.z64", 0xB9B814, 0x370

glabel D_801249E4
    .incbin "baserom.z64", 0xB9BB84, 0x370

glabel D_80124D54
    .incbin "baserom.z64", 0xB9BEF4, 0xC

glabel D_80124D60
    .incbin "baserom.z64", 0xB9BF00, 0x14

glabel D_80124D74
    .incbin "baserom.z64", 0xB9BF14, 0x30

glabel D_80124DA4
    .incbin "baserom.z64", 0xB9BF44, 0x30

glabel D_80124DD4
    .incbin "baserom.z64", 0xB9BF74, 0x30

glabel D_80124E04
    .incbin "baserom.z64", 0xB9BFA4, 0x30

glabel D_80124E34
    .incbin "baserom.z64", 0xB9BFD4, 0xC0

glabel D_80124EF4
    .incbin "baserom.z64", 0xB9C094, 0x14

glabel D_80124F08
    .incbin "baserom.z64", 0xB9C0A8, 0x50

glabel D_80124F58
    .incbin "baserom.z64", 0xB9C0F8, 0x30

glabel D_80124F88
    .incbin "baserom.z64", 0xB9C128, 0x30

glabel D_80124FB8
    .incbin "baserom.z64", 0xB9C158, 0x30

glabel D_80124FE8
    .incbin "baserom.z64", 0xB9C188, 0x30

glabel D_80125018
    .incbin "baserom.z64", 0xB9C1B8, 0x28

glabel D_80125040
    .incbin "baserom.z64", 0xB9C1E0, 0x140

glabel D_80125180
    .incbin "baserom.z64", 0xB9C320, 0x14

glabel D_80125194
    .incbin "baserom.z64", 0xB9C334, 0x200

glabel D_80125394
    .incbin "baserom.z64", 0xB9C534, 0x200

glabel D_80125594
    .incbin "baserom.z64", 0xB9C734, 0x200

glabel D_80125794
    .incbin "baserom.z64", 0xB9C934, 0x50

glabel D_801257E4
    .incbin "baserom.z64", 0xB9C984, 0x14

glabel gMapDataTable
    .word D_80123A70
    .word D_80123B10
    .word D_80123B20
    .word D_80123DA0
    .word D_80123DB4
    .word D_80124674
    .word D_801249E4
    .word D_80124D54
    .word D_80124D60
    .word D_80124D74
    .word D_80124DA4
    .word D_80124DD4
    .word D_80124E04
    .word D_80124E34
    .word D_80124EF4
    .word D_80124F08
    .word D_80124F58
    .word D_80124F88
    .word D_80124FB8
    .word D_80124FE8
    .word D_80125018
    .word D_80125040
    .word D_80125180
    .word D_80125194
    .word D_80125394
    .word D_80125594
    .word D_80125794
    .word D_801257E4
