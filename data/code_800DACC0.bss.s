.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8016B6E0
    .space 0x18

glabel D_8016B6F8
    .space 0x40

glabel D_8016B738
    .space 0x48

glabel D_8016B780
    .space 0x20

glabel D_8016B7A0
    .space 0x4

glabel D_8016B7A4
    .space 0x4

glabel D_8016B7A8
    .space 0x4

glabel D_8016B7AC
    .space 0x4

glabel D_8016B7B0
    .space 0x8

glabel D_8016B7B8
    .space 0x10

glabel D_8016B7C8
    .space 0x10

glabel D_8016B7D8
    .space 0x4

glabel D_8016B7DC
    .space 0x4

glabel D_8016B7E0
    .space 0x8

glabel D_8016B7E8
    .space 0x6

glabel D_8016B7EE
    .space 0xC2

glabel D_8016B8B0
    .space 0x1

glabel D_8016B8B1
    .space 0x1

glabel D_8016B8B2
    .space 0x1

glabel D_8016B8B3
    .space 0x1

glabel D_8016B8B4
    .space 0x4

glabel D_8016B8B8
    .space 0xA

glabel D_8016B8C2
    .space 0xF6

glabel D_8016B9B8
    .space 0x20

glabel D_8016B9D8
    .space 0x8

glabel D_8016B9E0
    .space 0x12

glabel D_8016B9F2
    .space 0x1

glabel D_8016B9F3
    .space 0x1

glabel D_8016B9F4
    .space 0x2

glabel D_8016B9F6
    .space 0x2

glabel D_8016B9F8
    .space 0x1

glabel D_8016B9F9
    .space 0x3

glabel D_8016B9FC
    .space 0x4

glabel D_8016BA00
    .space 0x4

glabel D_8016BA04
    .space 0x4

glabel D_8016BA08
    .space 0x1

glabel D_8016BA09
    .space 0x3

glabel D_8016BA0C
    .space 0x4

glabel D_8016BA10
    .space 0x4

glabel D_8016BA14
    .space 0x4

glabel D_8016BA18
    .space 0x8

glabel D_8016BA20
    .space 0x8

glabel D_8016BA28
    .space 0x1

glabel D_8016BA29
    .space 0x1

glabel D_8016BA2A
    .space 0x1

glabel D_8016BA2B
    .space 0x1

glabel D_8016BA2C
    .space 0x2

glabel D_8016BA2E
    .space 0x2

glabel D_8016BA30
    .space 0x20

glabel D_8016BA50
    .space 0x20

glabel D_8016BA70
    .space 0x20

glabel D_8016BA90
    .space 0x10

glabel D_8016BAA0
    .space 0x8

glabel D_8016BAA8
    .space 0x4

glabel D_8016BAAC
    .space 0x4

glabel D_8016BAB0
    .space 0x4

glabel D_8016BAB4
    .space 0x4

glabel D_8016BAB8
    .space 0x4

glabel D_8016BABC
    .space 0x4

glabel D_8016BAC0
    .space 0xEE0

glabel D_8016C9A0
    .space 0x1800

glabel D_8016E1A0
    .space 0x8

glabel D_8016E1A8
    .space 0x8

glabel D_8016E1B0
    .space 0x8

glabel D_8016E1B8
    .space 0xA8

glabel D_8016E260
    .space 0x4

glabel D_8016E264
    .space 0xC

glabel D_8016E270
    .space 0x70

glabel D_8016E2E0
    .space 0x18

glabel D_8016E2F8
    .space 0x18

glabel D_8016E310
    .space 0x10

glabel D_8016E320
    .space 0x28

glabel D_8016E348
    .space 0x8

glabel D_8016E350
    .space 0x400

glabel D_8016E750
    .space 0x254

glabel D_8016E9A4
    .space 0x4E7

glabel D_8016EE8B
    .space 0x2F5

glabel D_8016F180
    .space 0x1

glabel D_8016F181
    .space 0x5

glabel D_8016F186
    .space 0x2

glabel D_8016F188
    .space 0x4

glabel D_8016F18C
    .space 0x4

glabel D_8016F190
    .space 0x8

glabel D_8016F198
    .space 0x18

glabel D_8016F1B0
    .space 0x50

glabel D_8016F200
    .space 0x48

glabel D_8016F248
    .space 0x38

glabel D_8016F280
    .space 0x1A0

glabel D_8016F420
    .space 0x10

glabel D_8016F430
    .space 0x2D0

glabel D_8016F700
    .space 0x5A0

glabel D_8016FCA0
    .space 0xC4C

glabel D_801708EC
    .space 0x584

glabel D_80170E70
    .space 0x58

glabel D_80170EC8
    .space 0xD8

glabel D_80170FA0
    .space 0x18

glabel D_80170FB8
    .space 0x40

glabel D_80170FF8
    .space 0x18

glabel D_80171010
    .space 0x40

glabel D_80171050
    .space 0x18

glabel D_80171068
    .space 0x118

glabel D_80171180
    .space 0x5E8

glabel D_80171768
    .space 0x18

glabel D_80171780
    .space 0x4

glabel D_80171784
    .space 0x22C

glabel D_801719B0
    .space 0x4

glabel D_801719B4
    .space 0x4

glabel D_801719B8
    .space 0x4

glabel D_801719BC
    .space 0x4

glabel D_801719C0
    .space 0x4

glabel D_801719C4
    .space 0x4

glabel D_801719C8
    .space 0xC

glabel D_801719D4
    .space 0x8

glabel D_801719DC
    .space 0x8

glabel D_801719E4
    .space 0x4

glabel D_801719E8
    .space 0x4

glabel D_801719EC
    .space 0x28

glabel D_80171A14
    .space 0x4

glabel D_80171A18
    .space 0x2

glabel D_80171A1A
    .space 0x2

glabel D_80171A1C
    .space 0xE0

glabel D_80171AFC
    .space 0x14

glabel D_80171B10
    .space 0x10

glabel D_80171B20
    .space 0x10

glabel D_80171B30
    .space 0x10

glabel D_80171B40
    .space 0x4

glabel D_80171B44
    .space 0x4

glabel D_80171B48
    .space 0x28

glabel D_80171B70
    .space 0x10

glabel D_80171B80
    .space 0x10

glabel D_80171B90
    .space 0x10

glabel D_80171BA0
    .space 0x4

glabel D_80171BA4
    .space 0x4

glabel D_80171BA8
    .space 0x4

glabel D_80171BAC
    .space 0x12

glabel D_80171BBE
    .space 0xB6

glabel D_80171C74
    .space 0x4

glabel D_80171C78
    .space 0x8

glabel D_80171C80
    .space 0xC

glabel D_80171C8C
    .space 0x7

glabel D_80171C93
    .space 0x5

glabel D_80171C98
    .space 0x7

glabel D_80171C9F
    .space 0x11

glabel D_80171CB0
    .space 0x4

glabel D_80171CB4
    .space 0x4

glabel D_80171CB8
    .space 0x4

glabel D_80171CBC
    .space 0x12

glabel D_80171CCE
    .space 0xB6

glabel D_80171D84
    .space 0x4

glabel D_80171D88
    .space 0x8

glabel D_80171D90
    .space 0xC

glabel D_80171D9C
    .space 0x6

glabel D_80171DA2
    .space 0x1

glabel D_80171DA3
    .space 0x5

glabel D_80171DA8
    .space 0x6

glabel D_80171DAE
    .space 0x1

glabel D_80171DAF
    .space 0x11

glabel D_80171DC0
    .space 0x4

glabel D_80171DC4
    .space 0xD0

glabel D_80171E94
    .space 0x4

glabel D_80171E98
    .space 0x1A

glabel D_80171EB2
    .space 0xC

glabel D_80171EBE
    .space 0x12

glabel D_80171ED0
    .space 0x4

glabel D_80171ED4
    .space 0x4

glabel D_80171ED8
    .space 0x4

glabel D_80171EDC
    .space 0x184

glabel D_80172060
    .space 0x8

glabel D_80172068
    .space 0x8

glabel D_80172070
    .space 0x280

glabel D_801722F0
    .space 0x4

glabel D_801722F4
    .space 0x4

glabel D_801722F8
    .space 0xC

glabel D_80172304
    .space 0x280

glabel D_80172584
    .space 0x4

glabel D_80172588
    .space 0xC

glabel D_80172594
    .space 0x4

glabel D_80172598
    .space 0x8

glabel D_801725A0
    .space 0xC

glabel D_801725AC
    .space 0xC

glabel D_801725B8
    .space 0x30

glabel D_801725E8
    .space 0x30

glabel D_80172618
    .space 0x81

glabel D_80172699
    .space 0x7

glabel D_801726A0
    .space 0x4

glabel D_801726A4
    .space 0x8

glabel D_801726AC
    .space 0x4

glabel D_801726B0
    .space 0x38

glabel D_801726E8
    .space 0x120

glabel D_80172808
    .space 0x2

glabel D_8017280A
    .space 0x1

glabel D_8017280B
    .space 0x1

glabel D_8017280C
    .space 0x1

glabel D_8017280D
    .space 0x87

glabel D_80172894
    .space 0x114

glabel D_801729A8
    .space 0x288

glabel D_80172C30
    .space 0x70

glabel D_80172CA0
    .space 0x1F90

glabel D_80174C30
    .space 0x70

glabel D_80174CA0
    .space 0x68

glabel D_80174D08
    .space 0x10

glabel D_80174D18
    .space 0x10

glabel D_80174D28
    .space 0x10

glabel D_80174D38
    .space 0x10

glabel D_80174D48
    .space 0x1C

glabel D_80174D64
    .space 0x4

glabel D_80174D68
    .space 0x8

glabel D_80174D70
    .space 0x18

glabel D_80174D88
    .space 0x18

glabel D_80174DA0
    .space 0x18

glabel D_80174DB8
    .space 0x4

glabel D_80174DBC
    .space 0x4

glabel D_80174DC0
    .space 0x810

glabel D_801755D0
    .space 0x20
