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

glabel sAudioIncreasingTranspose
    .incbin "baserom.z64", 0xBA776C, 0x4

glabel gMorphaTransposeTable
    .incbin "baserom.z64", 0xBA7770, 0x10

glabel sPrevChargeLevel
    .incbin "baserom.z64", 0xBA7780, 0x4

glabel D_801305E4
    .incbin "baserom.z64", 0xBA7784, 0x10

glabel D_801305F4
    .incbin "baserom.z64", 0xBA7794, 0x4

glabel D_801305F8
    .incbin "baserom.z64", 0xBA7798, 0x8

glabel D_80130600
    .incbin "baserom.z64", 0xBA77A0, 0x4

glabel D_80130604
    .incbin "baserom.z64", 0xBA77A4, 0x4

glabel D_80130608
    .incbin "baserom.z64", 0xBA77A8, 0x4

glabel sAudioCutsceneFlag
    .incbin "baserom.z64", 0xBA77AC, 0x4

glabel sSpecReverb
    .incbin "baserom.z64", 0xBA77B0, 0x4

glabel sAudioEnvReverb
    .incbin "baserom.z64", 0xBA77B4, 0x4

glabel sAudioCodeReverb
    .incbin "baserom.z64", 0xBA77B8, 0x4

glabel D_8013061C
    .incbin "baserom.z64", 0xBA77BC, 0x4

glabel sAudioEnemyDist
    .incbin "baserom.z64", 0xBA77C0, 0x4

glabel sAudioEnemyVol
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

glabel sSariaBgmPtr
    .incbin "baserom.z64", 0xBA77EC, 0x4

glabel D_80130650
    .incbin "baserom.z64", 0xBA77F0, 0x4

glabel D_80130654
    .incbin "baserom.z64", 0xBA77F4, 0x4

glabel D_80130658
    .incbin "baserom.z64", 0xBA77F8, 0x70

glabel sSpecReverbs
    .incbin "baserom.z64", 0xBA7868, 0x14

glabel D_801306DC
    .incbin "baserom.z64", 0xBA787C, 0x820

glabel sOcarinaAllowedBtnMask
    .incbin "baserom.z64", 0xBA809C, 0x4

glabel sOcarinaABtnMap
    .incbin "baserom.z64", 0xBA80A0, 0x4

glabel sOcarinaCUPBtnMap
    .incbin "baserom.z64", 0xBA80A4, 0x4

glabel sOcarinaCDownBtnMap
    .incbin "baserom.z64", 0xBA80A8, 0x4

glabel sOcarinaInpEnabled
    .incbin "baserom.z64", 0xBA80AC, 0x4

glabel D_80130F10
    .incbin "baserom.z64", 0xBA80B0, 0x4

glabel sCurOcarinaBtnVal
    .incbin "baserom.z64", 0xBA80B4, 0x4

glabel sPrevOcarinaNoteVal
    .incbin "baserom.z64", 0xBA80B8, 0x4

glabel sCurOcarinaBtnIdx
    .incbin "baserom.z64", 0xBA80BC, 0x4

glabel sLearnSongLastBtn
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

glabel sPlaybackState
    .incbin "baserom.z64", 0xBA80D8, 0x4

glabel D_80130F3C
    .incbin "baserom.z64", 0xBA80DC, 0x4

glabel sNotePlaybackTimer
    .incbin "baserom.z64", 0xBA80E0, 0x4

glabel sPlaybackNotePos
    .incbin "baserom.z64", 0xBA80E4, 0x4

glabel sStaffPlaybackPos
    .incbin "baserom.z64", 0xBA80E8, 0x4

glabel D_80130F4C
    .incbin "baserom.z64", 0xBA80EC, 0x4

glabel sDisplayedNoteValue
    .incbin "baserom.z64", 0xBA80F0, 0x4

glabel sNotePlaybackVolume
    .incbin "baserom.z64", 0xBA80F4, 0x4

glabel sNotePlaybackVibrato
    .incbin "baserom.z64", 0xBA80F8, 0x4

glabel sNotePlaybackTone
    .incbin "baserom.z64", 0xBA80FC, 0x4

glabel sNormalizedNotePlaybackTone
    .incbin "baserom.z64", 0xBA8100, 0x4

glabel sNormalizedNotePlaybackVolume
    .incbin "baserom.z64", 0xBA8104, 0x4

glabel D_80130F68
    .incbin "baserom.z64", 0xBA8108, 0x4

glabel sOcarinaNoteValues
    .incbin "baserom.z64", 0xBA810C, 0x8

glabel sOcaMinigameApndPos
    .incbin "baserom.z64", 0xBA8114, 0x4

glabel sOcaMinigameEndPos
    .incbin "baserom.z64", 0xBA8118, 0x4

glabel sOcaMinigameNoteCnts
    .incbin "baserom.z64", 0xBA811C, 0x4

glabel sOcarinaSongs
    .incbin "baserom.z64", 0xBA8120, 0x8C0

glabel sPlaybackSong
    .word sOcarinaSongs

glabel D_80131844
    .incbin "baserom.z64", 0xBA89E4, 0x10

glabel gFrogsSongPtr
    .word D_80131844

glabel D_80131858
    .incbin "baserom.z64", 0xBA89F8, 0x4

glabel sRecordSongPos
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

glabel sPierresSong
    .incbin "baserom.z64", 0xBA8A24, 0x360

glabel gScarecrowCustomSongPtr
    .word sPierresSong

glabel gScarecrowSpawnSongPtr
    .word sOcarinaSongs+0x780

glabel D_80131BEC
    .word sOcarinaSongs+0x820

glabel sNoteValueIndexMap
    .incbin "baserom.z64", 0xBA8D90, 0x10

glabel gOcarinaSongNotes
    .incbin "baserom.z64", 0xBA8DA0, 0x80

glabel D_80131C80
    .incbin "baserom.z64", 0xBA8E20, 0x4

glabel D_80131C84
    .incbin "baserom.z64", 0xBA8E24, 0x4

glabel D_80131C88
    .incbin "baserom.z64", 0xBA8E28, 0x4

glabel D_80131C8C
    .incbin "baserom.z64", 0xBA8E2C, 0x4

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
