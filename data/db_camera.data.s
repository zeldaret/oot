.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012CED0
    .incbin "baserom.z64", 0xBA4070, 0x4

glabel D_8012CED4
    .incbin "baserom.z64", 0xBA4074, 0x4

glabel D_8012CED8
    .incbin "baserom.z64", 0xBA4078, 0x8

glabel D_8012CEE0
    .incbin "baserom.z64", 0xBA4080, 0x4

glabel D_8012CEE4
    .incbin "baserom.z64", 0xBA4084, 0x4

glabel D_8012CEE8
    .incbin "baserom.z64", 0xBA4088, 0x4

glabel D_8012CEEC
    .incbin "baserom.z64", 0xBA408C, 0x4

glabel D_8012CEF0
    .incbin "baserom.z64", 0xBA4090, 0x4

glabel D_8012CEF4
    .incbin "baserom.z64", 0xBA4094, 0x4

glabel D_8012CEF8
    .incbin "baserom.z64", 0xBA4098, 0xC

glabel D_8012CF04
    .incbin "baserom.z64", 0xBA40A4, 0x4

glabel D_8012CF08
    .incbin "baserom.z64", 0xBA40A8, 0x4

glabel D_8012CF0C
    .incbin "baserom.z64", 0xBA40AC, 0x4

glabel D_8012CF10
    .incbin "baserom.z64", 0xBA40B0, 0x4

glabel D_8012CF14
    .incbin "baserom.z64", 0xBA40B4, 0x4

glabel D_8012CF18
    .incbin "baserom.z64", 0xBA40B8, 0xC

glabel D_8012CF24
    .incbin "baserom.z64", 0xBA40C4, 0xC

glabel D_8012CF30
    .incbin "baserom.z64", 0xBA40D0, 0x4

glabel D_8012CF34
    .incbin "baserom.z64", 0xBA40D4, 0x4

glabel D_8012CF38
    .incbin "baserom.z64", 0xBA40D8, 0x4

glabel D_8012CF3C
    .incbin "baserom.z64", 0xBA40DC, 0x4

glabel D_8012CF40
    .incbin "baserom.z64", 0xBA40E0, 0x4

glabel D_8012CF44
    .incbin "baserom.z64", 0xBA40E4, 0x4

glabel D_8012CF48
    .incbin "baserom.z64", 0xBA40E8, 0x4

glabel D_8012CF4C
    .incbin "baserom.z64", 0xBA40EC, 0x4

glabel D_8012CF50
    .incbin "baserom.z64", 0xBA40F0, 0x10

glabel D_8012CF60
    .incbin "baserom.z64", 0xBA4100, 0x4

glabel D_8012CF64
    .incbin "baserom.z64", 0xBA4104, 0x4

glabel D_8012CF68
    .incbin "baserom.z64", 0xBA4108, 0x4

glabel D_8012CF6C
    .incbin "baserom.z64", 0xBA410C, 0x4

glabel D_8012CF70
    .incbin "baserom.z64", 0xBA4110, 0x4

glabel D_8012CF74
    .incbin "baserom.z64", 0xBA4114, 0x4

glabel D_8012CF78
    .incbin "baserom.z64", 0xBA4118, 0x4

glabel D_8012CF7C
    .incbin "baserom.z64", 0xBA411C, 0x4

glabel D_8012CF80
    .incbin "baserom.z64", 0xBA4120, 0x4

glabel D_8012CF84
    .incbin "baserom.z64", 0xBA4124, 0x4

glabel D_8012CF88
    .incbin "baserom.z64", 0xBA4128, 0xC

glabel D_8012CF94
    .incbin "baserom.z64", 0xBA4134, 0x4

glabel D_8012CF98
    .incbin "baserom.z64", 0xBA4138, 0x4

glabel D_8012CF9C
    .incbin "baserom.z64", 0xBA413C, 0x8

glabel D_8012CFA4
    .incbin "baserom.z64", 0xBA4144, 0x4

glabel D_8012CFA8
    .incbin "baserom.z64", 0xBA4148, 0x4

glabel D_8012CFAC
    .incbin "baserom.z64", 0xBA414C, 0x4

glabel D_8012CFB0
    .incbin "baserom.z64", 0xBA4150, 0x4

glabel D_8012CFB4
    .incbin "baserom.z64", 0xBA4154, 0x8

glabel D_8012CFBC
    .incbin "baserom.z64", 0xBA415C, 0x8

glabel D_8012CFC4
    .incbin "baserom.z64", 0xBA4164, 0xC

glabel D_8012CFD0
    .incbin "baserom.z64", 0xBA4170, 0x14

glabel D_8012CFE4
    .incbin "baserom.z64", 0xBA4184, 0x14

glabel D_8012CFF8
    .incbin "baserom.z64", 0xBA4198, 0x14

glabel D_8012D00C
    .incbin "baserom.z64", 0xBA41AC, 0x14

glabel D_8012D020
    .incbin "baserom.z64", 0xBA41C0, 0x14

glabel D_8012D034
    .incbin "baserom.z64", 0xBA41D4, 0x28

glabel D_8012D05C
    .incbin "baserom.z64", 0xBA41FC, 0xA

glabel D_8012D066
    .incbin "baserom.z64", 0xBA4206, 0xA

glabel D_8012D070
    .incbin "baserom.z64", 0xBA4210, 0x9

glabel D_8012D079
    .incbin "baserom.z64", 0xBA4219, 0xB

glabel D_8012D084
    .incbin "baserom.z64", 0xBA4224, 0xA

glabel D_8012D08E
    .incbin "baserom.z64", 0xBA422E, 0x1E

glabel D_8012D0AC
    .incbin "baserom.z64", 0xBA424C, 0x14

glabel D_8012D0C0
    .incbin "baserom.z64", 0xBA4260, 0xA

glabel D_8012D0CA
    .incbin "baserom.z64", 0xBA426A, 0xA

glabel D_8012D0D4
    .incbin "baserom.z64", 0xBA4274, 0x7

glabel D_8012D0DB
    .incbin "baserom.z64", 0xBA427B, 0x1

glabel D_8012D0DC
    .incbin "baserom.z64", 0xBA427C, 0x8

glabel D_8012D0E4
    .incbin "baserom.z64", 0xBA4284, 0xA

glabel D_8012D0EE
    .incbin "baserom.z64", 0xBA428E, 0x1

glabel D_8012D0EF
    .incbin "baserom.z64", 0xBA428F, 0x9

glabel D_8012D0F8
    .incbin "baserom.z64", 0xBA4298, 0xA

glabel D_8012D102
    .incbin "baserom.z64", 0xBA42A2, 0x1

glabel D_8012D103
    .incbin "baserom.z64", 0xBA42A3, 0x9

glabel D_8012D10C
    .incbin "baserom.z64", 0xBA42AC, 0x4

glabel D_8012D110
    .incbin "baserom.z64", 0xBA42B0, 0x4

glabel D_8012D114
    .incbin "baserom.z64", 0xBA42B4, 0xA

glabel D_8012D11E
    .incbin "baserom.z64", 0xBA42BE, 0xA

glabel D_8012D128
    .incbin "baserom.z64", 0xBA42C8, 0xA

glabel D_8012D132
    .incbin "baserom.z64", 0xBA42D2, 0xA

glabel D_8012D13C
    .incbin "baserom.z64", 0xBA42DC, 0x10

glabel D_8012D14C
    .incbin "baserom.z64", 0xBA42EC, 0xC

glabel D_8012D158
    .incbin "baserom.z64", 0xBA42F8, 0x18

glabel D_8012D170
    .incbin "baserom.z64", 0xBA4310, 0x2

glabel D_8012D172
    .incbin "baserom.z64", 0xBA4312, 0xE
