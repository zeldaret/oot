.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80130570
    .incbin "baserom.z64", 0xBA7710, 0x8

glabel D_80130578
    .incbin "baserom.z64", 0xBA7718, 0x1C

glabel D_80130594
    .incbin "baserom.z64", 0xBA7734, 0x1C

glabel D_801305B0
    .incbin "baserom.z64", 0xBA7750, 0x4

glabel D_801305B4
    .incbin "baserom.z64", 0xBA7754, 0x4

glabel D_801305B8
    .incbin "baserom.z64", 0xBA7758, 0x4

glabel D_801305BC
    .incbin "baserom.z64", 0xBA775C, 0x4

glabel D_801305C0
    .incbin "baserom.z64", 0xBA7760, 0x4

glabel D_801305C4
    .incbin "baserom.z64", 0xBA7764, 0x8

glabel D_801305CC
    .incbin "baserom.z64", 0xBA776C, 0x4

glabel D_801305D0
    .incbin "baserom.z64", 0xBA7770, 0x10

glabel D_801305E0
    .incbin "baserom.z64", 0xBA7780, 0x4

glabel D_801305E4
    .incbin "baserom.z64", 0xBA7784, 0x10

glabel D_801305F4
    .incbin "baserom.z64", 0xBA7794, 0x4

glabel D_801305F8
    .incbin "baserom.z64", 0xBA7798, 0x7

glabel D_801305FF
    .incbin "baserom.z64", 0xBA779F, 0x1

glabel D_80130600
    .incbin "baserom.z64", 0xBA77A0, 0x4

glabel D_80130604
    .incbin "baserom.z64", 0xBA77A4, 0x4

glabel D_80130608
    .incbin "baserom.z64", 0xBA77A8, 0x4

glabel D_8013060C
    .incbin "baserom.z64", 0xBA77AC, 0x4

glabel D_80130610
    .incbin "baserom.z64", 0xBA77B0, 0x4

glabel D_80130614
    .incbin "baserom.z64", 0xBA77B4, 0x4

glabel D_80130618
    .incbin "baserom.z64", 0xBA77B8, 0x4

glabel D_8013061C
    .incbin "baserom.z64", 0xBA77BC, 0x4

glabel D_80130620
    .incbin "baserom.z64", 0xBA77C0, 0x4

glabel D_80130624
    .incbin "baserom.z64", 0xBA77C4, 0x4

glabel D_80130628
    .incbin "baserom.z64", 0xBA77C8, 0x4

glabel D_8013062C
    .incbin "baserom.z64", 0xBA77CC, 0x4

glabel D_80130630
    .incbin "baserom.z64", 0xBA77D0, 0x4

glabel D_80130634
    .incbin "baserom.z64", 0xBA77D4, 0x4

glabel D_80130638
    .incbin "baserom.z64", 0xBA77D8, 0x4

glabel D_8013063C
    .incbin "baserom.z64", 0xBA77DC, 0x4

glabel D_80130640
    .incbin "baserom.z64", 0xBA77E0, 0x4

glabel D_80130644
    .incbin "baserom.z64", 0xBA77E4, 0x4

glabel D_80130648
    .incbin "baserom.z64", 0xBA77E8, 0x4

glabel D_8013064C
    .incbin "baserom.z64", 0xBA77EC, 0x4

glabel D_80130650
    .incbin "baserom.z64", 0xBA77F0, 0x4

glabel D_80130654
    .incbin "baserom.z64", 0xBA77F4, 0x4

glabel D_80130658
    .incbin "baserom.z64", 0xBA77F8, 0x70

glabel D_801306C8
    .incbin "baserom.z64", 0xBA7868, 0x14

glabel D_801306DC
    .incbin "baserom.z64", 0xBA787C, 0x820

glabel D_80130EFC
    .incbin "baserom.z64", 0xBA809C, 0x4

glabel D_80130F00
    .incbin "baserom.z64", 0xBA80A0, 0x4

glabel D_80130F04
    .incbin "baserom.z64", 0xBA80A4, 0x4

glabel D_80130F08
    .incbin "baserom.z64", 0xBA80A8, 0x4

glabel D_80130F0C
    .incbin "baserom.z64", 0xBA80AC, 0x4

glabel D_80130F10
    .incbin "baserom.z64", 0xBA80B0, 0x4

glabel D_80130F14
    .incbin "baserom.z64", 0xBA80B4, 0x4

glabel D_80130F18
    .incbin "baserom.z64", 0xBA80B8, 0x4

glabel D_80130F1C
    .incbin "baserom.z64", 0xBA80BC, 0x4

glabel D_80130F20
    .incbin "baserom.z64", 0xBA80C0, 0x4

glabel D_80130F24
    .incbin "baserom.z64", 0xBA80C4, 0x4

glabel D_80130F28
    .incbin "baserom.z64", 0xBA80C8, 0x4

glabel D_80130F2C
    .incbin "baserom.z64", 0xBA80CC, 0x4

glabel D_80130F30
    .incbin "baserom.z64", 0xBA80D0, 0x4

glabel D_80130F34
    .incbin "baserom.z64", 0xBA80D4, 0x4

glabel D_80130F38
    .incbin "baserom.z64", 0xBA80D8, 0x4

glabel D_80130F3C
    .incbin "baserom.z64", 0xBA80DC, 0x2

glabel D_80130F3E
    .incbin "baserom.z64", 0xBA80DE, 0x2

glabel D_80130F40
    .incbin "baserom.z64", 0xBA80E0, 0x4

glabel D_80130F44
    .incbin "baserom.z64", 0xBA80E4, 0x4

glabel D_80130F48
    .incbin "baserom.z64", 0xBA80E8, 0x4

glabel D_80130F4C
    .incbin "baserom.z64", 0xBA80EC, 0x4

glabel D_80130F50
    .incbin "baserom.z64", 0xBA80F0, 0x4

glabel D_80130F54
    .incbin "baserom.z64", 0xBA80F4, 0x4

glabel D_80130F58
    .incbin "baserom.z64", 0xBA80F8, 0x4

glabel D_80130F5C
    .incbin "baserom.z64", 0xBA80FC, 0x4

glabel D_80130F60
    .incbin "baserom.z64", 0xBA8100, 0x4

glabel D_80130F64
    .incbin "baserom.z64", 0xBA8104, 0x4

glabel D_80130F68
    .incbin "baserom.z64", 0xBA8108, 0x4

glabel D_80130F6C
    .incbin "baserom.z64", 0xBA810C, 0x8

glabel D_80130F74
    .incbin "baserom.z64", 0xBA8114, 0x4

glabel D_80130F78
    .incbin "baserom.z64", 0xBA8118, 0x4

glabel D_80130F7C
    .incbin "baserom.z64", 0xBA811C, 0x4

glabel D_80130F80
    .incbin "baserom.z64", 0xBA8120, 0x180

glabel D_80131100
    .incbin "baserom.z64", 0xBA82A0, 0x600

glabel D_80131700
    .incbin "baserom.z64", 0xBA88A0, 0xC

glabel D_8013170C
    .incbin "baserom.z64", 0xBA88AC, 0x94

glabel D_801317A0
    .incbin "baserom.z64", 0xBA8940, 0xA0

glabel D_80131840
    .word D_80130F80

glabel D_80131844
    .incbin "baserom.z64", 0xBA89E4, 0x10

glabel D_80131854
    .word D_80131844

glabel D_80131858
    .incbin "baserom.z64", 0xBA89F8, 0x4

glabel D_8013185C
    .incbin "baserom.z64", 0xBA89FC, 0x4

glabel D_80131860
    .incbin "baserom.z64", 0xBA8A00, 0x4

glabel D_80131864
    .incbin "baserom.z64", 0xBA8A04, 0x4

glabel D_80131868
    .incbin "baserom.z64", 0xBA8A08, 0x4

glabel D_8013186C
    .incbin "baserom.z64", 0xBA8A0C, 0x4

glabel D_80131870
    .incbin "baserom.z64", 0xBA8A10, 0x4

glabel D_80131874
    .incbin "baserom.z64", 0xBA8A14, 0x4

glabel D_80131878
    .incbin "baserom.z64", 0xBA8A18, 0x4

glabel D_8013187C
    .incbin "baserom.z64", 0xBA8A1C, 0x4

glabel D_80131880
    .incbin "baserom.z64", 0xBA8A20, 0x4

glabel D_80131884
    .incbin "baserom.z64", 0xBA8A24, 0x8

glabel D_8013188C
    .incbin "baserom.z64", 0xBA8A2C, 0x358

glabel gScarecrowCustomSongPtr
    .word D_80131884

glabel gScarecrowSpawnSongPtr
    .word D_80131700

glabel D_80131BEC
    .word D_801317A0

glabel D_80131BF0
    .incbin "baserom.z64", 0xBA8D90, 0x10

glabel D_80131C00
    .incbin "baserom.z64", 0xBA8DA0, 0x80

glabel D_80131C80
    .incbin "baserom.z64", 0xBA8E20, 0x4

glabel D_80131C84
    .incbin "baserom.z64", 0xBA8E24, 0x4

glabel D_80131C88
    .incbin "baserom.z64", 0xBA8E28, 0x4

glabel D_80131C8C
    .incbin "baserom.z64", 0xBA8E2C, 0x4

glabel D_80131C90
    .incbin "baserom.z64", 0xBA8E30, 0x4

glabel D_80131C94
    .incbin "baserom.z64", 0xBA8E34, 0x4

glabel D_80131C98
    .incbin "baserom.z64", 0xBA8E38, 0x4

glabel D_80131C9C
    .incbin "baserom.z64", 0xBA8E3C, 0x4

glabel D_80131CA0
    .incbin "baserom.z64", 0xBA8E40, 0x4

glabel D_80131CA4
    .incbin "baserom.z64", 0xBA8E44, 0x4

glabel D_80131CA8
    .incbin "baserom.z64", 0xBA8E48, 0x4

glabel D_80131CAC
    .incbin "baserom.z64", 0xBA8E4C, 0x15C

glabel D_80131E08
    .incbin "baserom.z64", 0xBA8FA8, 0xC

glabel D_80131E14
    .incbin "baserom.z64", 0xBA8FB4, 0xC

glabel D_80131E20
    .incbin "baserom.z64", 0xBA8FC0, 0x4

glabel D_80131E24
    .incbin "baserom.z64", 0xBA8FC4, 0x14

glabel D_80131E38
    .incbin "baserom.z64", 0xBA8FD8, 0xB

glabel D_80131E43
    .incbin "baserom.z64", 0xBA8FE3, 0x16

glabel D_80131E59
    .incbin "baserom.z64", 0xBA8FF9, 0xB

glabel D_80131E64
    .incbin "baserom.z64", 0xBA9004, 0xB

glabel D_80131E6F
    .incbin "baserom.z64", 0xBA900F, 0xB

glabel D_80131E7A
    .incbin "baserom.z64", 0xBA901A, 0xE

glabel D_80131E88
    .incbin "baserom.z64", 0xBA9028, 0x34

glabel D_80131EBC
    .incbin "baserom.z64", 0xBA905C, 0x4

glabel D_80131EC0
    .incbin "baserom.z64", 0xBA9060, 0x4

glabel D_80131EC4
    .incbin "baserom.z64", 0xBA9064, 0x4

glabel D_80131EC8
    .incbin "baserom.z64", 0xBA9068, 0x8

glabel D_80131ED0
    .incbin "baserom.z64", 0xBA9070, 0x4

glabel D_80131ED4
    .incbin "baserom.z64", 0xBA9074, 0x4

glabel D_80131ED8
    .incbin "baserom.z64", 0xBA9078, 0x4

glabel D_80131EDC
    .incbin "baserom.z64", 0xBA907C, 0x4

glabel D_80131EE0
    .incbin "baserom.z64", 0xBA9080, 0x4

glabel D_80131EE4
    .incbin "baserom.z64", 0xBA9084, 0xA

glabel D_80131EEE
    .incbin "baserom.z64", 0xBA908E, 0x2

glabel D_80131EF0
    .incbin "baserom.z64", 0xBA9090, 0xC

glabel D_80131EFC
    .incbin "baserom.z64", 0xBA909C, 0x4

glabel D_80131F00
    .incbin "baserom.z64", 0xBA90A0, 0x4

glabel D_80131F04
    .incbin "baserom.z64", 0xBA90A4, 0x4

glabel D_80131F08
    .incbin "baserom.z64", 0xBA90A8, 0x4

glabel D_80131F0C
    .incbin "baserom.z64", 0xBA90AC, 0xC

glabel D_80131F18
    .incbin "baserom.z64", 0xBA90B8, 0x4

glabel D_80131F1C
    .incbin "baserom.z64", 0xBA90BC, 0x4

glabel D_80131F20
    .incbin "baserom.z64", 0xBA90C0, 0x8

glabel D_80131F28
    .incbin "baserom.z64", 0xBA90C8, 0x4

glabel D_80131F2C
    .incbin "baserom.z64", 0xBA90CC, 0x4

glabel D_80131F30
    .incbin "baserom.z64", 0xBA90D0, 0x14

glabel D_80131F44
    .incbin "baserom.z64", 0xBA90E4, 0x8

glabel D_80131F4C
    .incbin "baserom.z64", 0xBA90EC, 0x4

glabel D_80131F50
    .incbin "baserom.z64", 0xBA90F0, 0x4

glabel D_80131F54
    .incbin "baserom.z64", 0xBA90F4, 0x10

glabel D_80131F64
    .incbin "baserom.z64", 0xBA9104, 0x4

glabel D_80131F68
    .incbin "baserom.z64", 0xBA9108, 0x4

glabel D_80131F6C
    .incbin "baserom.z64", 0xBA910C, 0x4

glabel D_80131F70
    .incbin "baserom.z64", 0xBA9110, 0x7CC

glabel D_8013273C
    .incbin "baserom.z64", 0xBA98DC, 0x380

glabel D_80132ABC
    .incbin "baserom.z64", 0xBA9C5C, 0x140

glabel D_80132BFC
    .incbin "baserom.z64", 0xBA9D9C, 0x3E0

glabel D_80132FDC
    .incbin "baserom.z64", 0xBAA17C, 0x120

glabel D_801330FC
    .incbin "baserom.z64", 0xBAA29C, 0x20

glabel D_8013311C
    .incbin "baserom.z64", 0xBAA2BC, 0x200

glabel D_8013331C
    .word D_8013273C
    .word D_80132ABC
    .word D_80132BFC
    .word D_80131F70
    .word D_80132FDC
    .word D_801330FC
    .word D_8013311C
    .incbin "baserom.z64", 0xBAA4D8, 0x8
