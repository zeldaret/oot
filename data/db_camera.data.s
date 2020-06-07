.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16
glabel D_8012CED0
    .incbin "baserom.z64", 0xBA4070, 0x4

glabel D_8012CED4
    .incbin "baserom.z64", 0xBA4074, 0x4

glabel D_8012CED8
    .incbin "baserom.z64", 0xBA4078, 0x8

glabel D_8012CEE0
    .word D_80143170

glabel D_8012CEE4
    .word D_80143184


glabel D_8012CEE8
    .word D_80143194

glabel D_8012CEEC
    .word D_801431AC

glabel D_8012CEF0
    .word D_801431C4

glabel D_8012CEF4
    .word D_801431D8

glabel D_8012CEF8
    .word D_801431EC
    .word D_80143200
    .word D_80143214

glabel D_8012CF04
    .word D_80143224

glabel D_8012CF08
    .word D_80143234

glabel D_8012CF0C
    .word D_80143244

glabel D_8012CF10
    .word D_80143254

glabel D_8012CF14
    .word D_80143264

glabel D_8012CF18
    .word D_80143278
    .word D_80143290
    .word D_801432A4

glabel D_8012CF24
    .word D_801432B8
    .word D_801432C8
    .word D_801432DC

glabel D_8012CF30
    .word D_801432F0

glabel D_8012CF34
    .word D_80143300

glabel D_8012CF38
    .word D_80143310

glabel D_8012CF3C
    .word D_80143320

glabel D_8012CF40
    .word D_80143330

glabel D_8012CF44
    .word D_80143340

glabel D_8012CF48
    .word D_80143350

glabel D_8012CF4C
    .word  D_80143368

glabel D_8012CF50
    .word D_8014336C
    .word D_80143370
    .word D_80143374
    .word D_80143378

glabel D_8012CF60
    .word D_8014337C

glabel D_8012CF64
    .word D_8014338C

glabel D_8012CF68
    .word D_80143398

glabel D_8012CF6C
    .word D_801433A4

glabel D_8012CF70
    .word D_801433B0

glabel D_8012CF74
    .word D_801433C4

glabel D_8012CF78
    .word D_801433D4

glabel D_8012CF7C
    .word D_801433E4

glabel D_8012CF80
    .word D_801433F8

glabel D_8012CF84
    .word D_8014340C

glabel D_8012CF88
    .word D_8014341C
    .word D_80143434
    .word D_80143454

glabel D_8012CF94
    .word D_80143470

glabel D_8012CF98
    .word D_80143478

glabel D_8012CF9C
    .word D_80143480
    .word D_8014348C

glabel D_8012CFA4
    .word D_80143498

glabel D_8012CFA8
    .word D_801434A4

glabel D_8012CFAC
    .word D_801434B4

glabel D_8012CFB0
    .word D_801434C4

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
    .word func_800B8DB0
    .word func_800B8BB0
    .word func_800B8F30

glabel D_8012D158
    .incbin "baserom.z64", 0xBA42F8, 0x18

glabel D_8012D170
    .incbin "baserom.z64", 0xBA4310, 0x2

glabel D_8012D172
    .incbin "baserom.z64", 0xBA4312, 0xE
