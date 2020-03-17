.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80125B70
    .incbin "baserom.z64", 0xB9CD10, 0x8

glabel D_80125B78
    .incbin "baserom.z64", 0xB9CD18, 0xCC

glabel D_80125C44
    .incbin "baserom.z64", 0xB9CDE4, 0x44

glabel D_80125C88
    .incbin "baserom.z64", 0xB9CE28, 0x10

glabel D_80125C98
    .incbin "baserom.z64", 0xB9CE38, 0x1

glabel D_80125C99
    .incbin "baserom.z64", 0xB9CE39, 0x1

glabel D_80125C9A
    .incbin "baserom.z64", 0xB9CE3A, 0x1

glabel D_80125C9B
    .incbin "baserom.z64", 0xB9CE3B, 0x1

glabel D_80125C9C
    .incbin "baserom.z64", 0xB9CE3C, 0xCC

glabel D_80125D68
    .incbin "baserom.z64", 0xB9CF08, 0xA0

glabel D_80125E08
    .incbin "baserom.z64", 0xB9CFA8, 0x10

glabel D_80125E18
    .incbin "baserom.z64", 0xB9CFB8, 0x40

glabel D_80125E58
    .incbin "baserom.z64", 0xB9CFF8, 0xC0

glabel D_80125F18
    .incbin "baserom.z64", 0xB9D0B8, 0x8

glabel D_80125F20
    .incbin "baserom.z64", 0xB9D0C0, 0x8

glabel D_80125F28
    .incbin "baserom.z64", 0xB9D0C8, 0x8

glabel D_80125F30
    .incbin "baserom.z64", 0xB9D0D0, 0x8

glabel D_80125F38
    .incbin "baserom.z64", 0xB9D0D8, 0x8

glabel D_80125F40
    .incbin "baserom.z64", 0xB9D0E0, 0x58

glabel D_80125F98
    .incbin "baserom.z64", 0xB9D138, 0x20

glabel D_80125FB8
    .incbin "baserom.z64", 0xB9D158, 0x1

glabel D_80125FB9
    .incbin "baserom.z64", 0xB9D159, 0x1F

glabel D_80125FD8
    .incbin "baserom.z64", 0xB9D178, 0x20

glabel D_80125FF8
    .incbin "baserom.z64", 0xB9D198, 0x10

glabel D_80126008
    .incbin "baserom.z64", 0xB9D1A8, 0xC

glabel D_80126014
    .incbin "baserom.z64", 0xB9D1B4, 0x8

glabel D_8012601C
    .incbin "baserom.z64", 0xB9D1BC, 0x10

glabel D_8012602C
    .incbin "baserom.z64", 0xB9D1CC, 0xC

glabel D_80126038
    .incbin "baserom.z64", 0xB9D1D8, 0x18

glabel D_80126050
    .incbin "baserom.z64", 0xB9D1F0, 0x8

glabel D_80126058
    .incbin "baserom.z64", 0xB9D1F8, 0x8

glabel D_80126060
    .incbin "baserom.z64", 0xB9D200, 0x8

glabel D_80126068
    .incbin "baserom.z64", 0xB9D208, 0x8

glabel D_80126070
    .incbin "baserom.z64", 0xB9D210, 0xC

glabel D_8012607C
    .incbin "baserom.z64", 0xB9D21C, 0x4

glabel D_80126080
    .incbin "baserom.z64", 0xB9D220, 0xC

glabel D_8012608C
    .incbin "baserom.z64", 0xB9D22C, 0xC

glabel D_80126098
    .incbin "baserom.z64", 0xB9D238, 0xC

glabel D_801260A4
    .incbin "baserom.z64", 0xB9D244, 0xC

glabel D_801260B0
    .incbin "baserom.z64", 0xB9D250, 0xC

glabel D_801260BC
    .incbin "baserom.z64", 0xB9D25C, 0xC

glabel D_801260C8
    .incbin "baserom.z64", 0xB9D268, 0x8

glabel D_801260D0
    .incbin "baserom.z64", 0xB9D270, 0x4

glabel D_801260D4
    .incbin "baserom.z64", 0xB9D274, 0xC

glabel D_801260E0
    .incbin "baserom.z64", 0xB9D280, 0x18

glabel D_801260F8
    .incbin "baserom.z64", 0xB9D298, 0x8

glabel D_80126100
    .incbin "baserom.z64", 0xB9D2A0, 0x28

glabel D_80126128
    .incbin "baserom.z64", 0xB9D2C8, 0xC

glabel D_80126134
    .incbin "baserom.z64", 0xB9D2D4, 0x20

glabel D_80126154
    .incbin "baserom.z64", 0xB9D2F4, 0x30

glabel D_80126184
    .incbin "baserom.z64", 0xB9D324, 0xC

glabel D_80126190
    .incbin "baserom.z64", 0xB9D330, 0xC

glabel D_8012619C
    .incbin "baserom.z64", 0xB9D33C, 0x30

glabel D_801261CC
    .incbin "baserom.z64", 0xB9D36C, 0xC

glabel D_801261D8
    .incbin "baserom.z64", 0xB9D378, 0x8

glabel D_801261E0
    .incbin "baserom.z64", 0xB9D380, 0x17

glabel D_801261F7
    .incbin "baserom.z64", 0xB9D397, 0x9

glabel D_80126200
    .incbin "baserom.z64", 0xB9D3A0, 0x10

glabel D_80126210
    .incbin "baserom.z64", 0xB9D3B0, 0x8

glabel D_80126218
    .incbin "baserom.z64", 0xB9D3B8, 0x10

glabel D_80126228
    .incbin "baserom.z64", 0xB9D3C8, 0xC

glabel D_80126234
    .incbin "baserom.z64", 0xB9D3D4, 0xC

glabel D_80126240
    .incbin "baserom.z64", 0xB9D3E0, 0x10
