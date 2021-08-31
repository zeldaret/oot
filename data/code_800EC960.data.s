.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel sAudioUpdateDuration
    .incbin "baserom.z64", 0xBA8E30, 0x4

glabel sAudioUpdateDurationMax
    .incbin "baserom.z64", 0xBA8E34, 0x4

glabel sAudioDebugEverOpened
    .incbin "baserom.z64", 0xBA8E38, 0x4

glabel sAudioSEMuted
    .incbin "baserom.z64", 0xBA8E3C, 0x4

glabel sAudioDebugPage
    .incbin "baserom.z64", 0xBA8E40, 0x4

glabel sAudioSndContSel
    .incbin "baserom.z64", 0xBA8E44, 0x4

glabel sAudioDebugTextColor
    .incbin "baserom.z64", 0xBA8E48, 0x4

glabel sAudioDebugPageNames
    .incbin "baserom.z64", 0xBA8E4C, 0x15C

glabel sAudioSndContWork
    .incbin "baserom.z64", 0xBA8FA8, 0x18

glabel sAudioSndContWorkLims
    .incbin "baserom.z64", 0xBA8FC0, 0x18

glabel sSoundBankNames
    .incbin "baserom.z64", 0xBA8FD8, 0xB
    .incbin "baserom.z64", 0xBA8FE3, 0xB
    .incbin "baserom.z64", 0xBA8FEE, 0xB
    .incbin "baserom.z64", 0xBA8FF9, 0xB
    .incbin "baserom.z64", 0xBA9004, 0xB
    .incbin "baserom.z64", 0xBA900F, 0xB
    .incbin "baserom.z64", 0xBA901A, 0xE

glabel sSoundModeNames
    .incbin "baserom.z64", 0xBA9028, 0x34

glabel sAudioIntInfoX
    .incbin "baserom.z64", 0xBA905C, 0x4

glabel sAudioIntInfoY
    .incbin "baserom.z64", 0xBA9060, 0x4

glabel sAudioIntInfoSel
    .incbin "baserom.z64", 0xBA9064, 0x4

glabel sAudioIntInfoBankPage
    .incbin "baserom.z64", 0xBA9068, 0x8

glabel sAudioScrPrtSel
    .incbin "baserom.z64", 0xBA9070, 0x4

glabel sAudioScrPrtInd
    .incbin "baserom.z64", 0xBA9074, 0x4

glabel sAudioScrPrtOverflow
    .incbin "baserom.z64", 0xBA9078, 0x4

glabel sAudioScrPrtX
    .incbin "baserom.z64", 0xBA907C, 0x4

glabel sAudioScrPrtY
    .incbin "baserom.z64", 0xBA9080, 0x4

glabel sAudioScrPrtWork
    .incbin "baserom.z64", 0xBA9084, 0xC

glabel sAudioScrPrtWorkLims
    .incbin "baserom.z64", 0xBA9090, 0xC

glabel sAudioSubTrackInfoSpec
    .incbin "baserom.z64", 0xBA909C, 0x4

glabel sAudioSEFlagSwapIsEditing
    .incbin "baserom.z64", 0xBA90A0, 0x4

glabel sAudioSEFlagSwapSel
    .incbin "baserom.z64", 0xBA90A4, 0x4

glabel sAudioSEFlagSwapNibbleSel
    .incbin "baserom.z64", 0xBA90A8, 0x4

glabel sAudioSEFlagSwapModeNames
    .incbin "baserom.z64", 0xBA90AC, 0xC

glabel sAudioSEParamChgSel
    .incbin "baserom.z64", 0xBA90B8, 0x4

glabel sAudioSEParamChgBitSel
    .incbin "baserom.z64", 0xBA90BC, 0x4

glabel sAudioSEParamChgWork
    .incbin "baserom.z64", 0xBA90C0, 0x8

glabel sAudioSubTrackInfoPlayerSel
    .incbin "baserom.z64", 0xBA90C8, 0x4

glabel sAudioSubTrackInfoChannelSel
    .incbin "baserom.z64", 0xBA90CC, 0x4

glabel sSeqPlayerPeakNumLayers
    .incbin "baserom.z64", 0xBA90D0, 0x14

glabel sAudioSceneNames
    .incbin "baserom.z64", 0xBA90E4, 0x8

glabel sAudioBlkChgBgmWork
    .incbin "baserom.z64", 0xBA90EC, 0x4

glabel sAudioBlkChgBgmSel
    .incbin "baserom.z64", 0xBA90F0, 0x4

glabel sBoolStrs
    .incbin "baserom.z64", 0xBA90F4, 0x10

glabel sAudioNatureFailed
    .incbin "baserom.z64", 0xBA9104, 0x4

glabel sPeakNumNotes
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
