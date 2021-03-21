.late_rodata
glabel highSeqCmdJmpTbl
    .word case_C4
    .word case_C5
    .word case_C6
    .word case_C7
    .word case_C8
    .word case_C9
    .word mainLoop
    .word mainLoop
    .word case_CC
    .word case_CD
    .word case_CE
    .word mainLoop
    .word case_D0
    .word case_D1_D2
    .word case_D1_D2
    .word case_D3
    .word case_D4
    .word case_D5
    .word case_D6
    .word case_D7
    .word mainLoop
    .word case_D9
    .word case_DA
    .word case_DB
    .word case_DC
    .word case_DD
    .word case_DE
    .word case_DF
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_EF
    .word case_F0
    .word case_F1

glabel lowSeqCmdJmpTbl
    .word case_40
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_50
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_60
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_70
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_80
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_90
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_A0
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_B0

.text
glabel Audio_SequencePlayerProcessSequence
/* B62EF8 800EBD58 27BDFF98 */  addiu $sp, $sp, -0x68
/* B62EFC 800EBD5C AFBF0024 */  sw    $ra, 0x24($sp)
/* B62F00 800EBD60 AFB20020 */  sw    $s2, 0x20($sp)
/* B62F04 800EBD64 AFB1001C */  sw    $s1, 0x1c($sp)
/* B62F08 800EBD68 AFB00018 */  sw    $s0, 0x18($sp)
/* B62F0C 800EBD6C 8C8E0000 */  lw    $t6, ($a0)
/* B62F10 800EBD70 00809025 */  move  $s2, $a0
/* B62F14 800EBD74 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B62F18 800EBD78 51E001F5 */  beql  $t7, $zero, .return2
/* B62F1C 800EBD7C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62F20 800EBD80 0C03864A */  jal   Audio_IsSeqLoadComplete
/* B62F24 800EBD84 90840004 */   lbu   $a0, 4($a0)
/* B62F28 800EBD88 10400005 */  beqz  $v0, .seqIsNotLoaded # is Audio_IsSeqLoadComplete() == false?
/* B62F2C 800EBD8C 00000000 */   nop   
/* B62F30 800EBD90 0C03862C */  jal   Audio_IsBankLoadComplete
/* B62F34 800EBD94 92440005 */   lbu   $a0, 5($s2)
/* B62F38 800EBD98 14400005 */  bnez  $v0, .bankIsLoaded # is Audio_IsBankLoadComplete() == true?
/* B62F3C 800EBD9C 24050002 */   li    $a1, 2

.seqIsNotLoaded:
/* B62F40 800EBDA0 0C03A6DB */  jal   Audio_SequencePlayerDisable
/* B62F44 800EBDA4 02402025 */   move  $a0, $s2
/* B62F48 800EBDA8 100001E9 */  b     .return2
/* B62F4C 800EBDAC 8FBF0024 */   lw    $ra, 0x24($sp)

.bankIsLoaded:
/* B62F50 800EBDB0 0C038692 */  jal   Audio_SetSeqLoadStatus
/* B62F54 800EBDB4 92440004 */   lbu   $a0, 4($s2)
/* B62F58 800EBDB8 92440005 */  lbu   $a0, 5($s2)
/* B62F5C 800EBDBC 0C038686 */  jal   Audio_SetBankLoadStatus
/* B62F60 800EBDC0 24050002 */   li    $a1, 2
/* B62F64 800EBDC4 8E580000 */  lw    $t8, ($s2)
/* B62F68 800EBDC8 3C048017 */  lui   $a0, %hi(gAudioContext+0x2898)
/* B62F6C 800EBDCC 00184080 */  sll   $t0, $t8, 2
/* B62F70 800EBDD0 05030006 */  bgezl $t0, .playerIsNotMuted # is seqPlayer.muted == false? (effectively)
/* B62F74 800EBDD4 964D000A */   lhu   $t5, 0xa($s2)
/* B62F78 800EBDD8 92490003 */  lbu   $t1, 3($s2)
/* B62F7C 800EBDDC 312A0080 */  andi  $t2, $t1, 0x80
/* B62F80 800EBDE0 554001DB */  bnezl $t2, .return2 # is seqPlayer->muteBehavior & 0x80 == true?
/* B62F84 800EBDE4 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62F88 800EBDE8 964D000A */  lhu   $t5, 0xa($s2)

.playerIsNotMuted:
/* B62F8C 800EBDEC 964E0008 */  lhu   $t6, 8($s2)
/* B62F90 800EBDF0 8E4B00E0 */  lw    $t3, 0xe0($s2)
/* B62F94 800EBDF4 8659000C */  lh    $t9, 0xc($s2)
/* B62F98 800EBDF8 01AEC021 */  addu  $t8, $t5, $t6
/* B62F9C 800EBDFC A658000A */  sh    $t8, 0xa($s2)
/* B62FA0 800EBE00 256C0001 */  addiu $t4, $t3, 1
/* B62FA4 800EBE04 03194021 */  addu  $t0, $t8, $t9
/* B62FA8 800EBE08 AE4C00E0 */  sw    $t4, 0xe0($s2)
/* B62FAC 800EBE0C A648000A */  sh    $t0, 0xa($s2)
/* B62FB0 800EBE10 84841A18 */  lh    $a0, %lo(gAudioContext+0x2898)($a0)
/* B62FB4 800EBE14 3102FFFF */  andi  $v0, $t0, 0xffff
/* B62FB8 800EBE18 0044082A */  slt   $at, $v0, $a0
/* B62FBC 800EBE1C 542001CC */  bnezl $at, .return2 # is seqPlayer->tempoAcc < gAudioContext.tempoInternalToExternal?
/* B62FC0 800EBE20 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62FC4 800EBE24 8E4B0000 */  lw    $t3, ($s2)
/* B62FC8 800EBE28 00445023 */  subu  $t2, $v0, $a0
/* B62FCC 800EBE2C 24010001 */  li    $at, 1
/* B62FD0 800EBE30 000B6180 */  sll   $t4, $t3, 6
/* B62FD4 800EBE34 000C6FC2 */  srl   $t5, $t4, 0x1f
/* B62FD8 800EBE38 11A101C4 */  beq   $t5, $at, .return1 # is seqPlayer->unk_0b2 == true?
/* B62FDC 800EBE3C A64A000A */   sh    $t2, 0xa($s2)
/* B62FE0 800EBE40 96420010 */  lhu   $v0, 0x10($s2)
/* B62FE4 800EBE44 28410002 */  slti  $at, $v0, 2
/* B62FE8 800EBE48 14200003 */  bnez  $at, .sequenceNotDelayed # is seqPlayer->delay < 2?
/* B62FEC 800EBE4C 244EFFFF */   addiu $t6, $v0, -1
/* B62FF0 800EBE50 100001B1 */  b     .secondLoopPreamble
/* B62FF4 800EBE54 A64E0010 */   sh    $t6, 0x10($s2)

.sequenceNotDelayed:
/* B62FF8 800EBE58 92580000 */  lbu   $t8, ($s2)
/* B62FFC 800EBE5C 26510078 */  addiu $s1, $s2, 0x78
/* B63000 800EBE60 37190004 */  ori   $t9, $t8, 4
/* B63004 800EBE64 A2590000 */  sb    $t9, ($s2)

.mainLoop:
glabel mainLoop
/* B63008 800EBE68 0C03A752 */  jal   Audio_M64ReadU8
/* B6300C 800EBE6C 02202025 */   move  $a0, $s1
/* B63010 800EBE70 284100F2 */  slti  $at, $v0, 0xf2
/* B63014 800EBE74 14200014 */  bnez  $at, .isNonFlowCmd # is Audio_M64ReadU8() < 0xF2?
/* B63018 800EBE78 305000FF */   andi  $s0, $v0, 0xff
/* B6301C 800EBE7C 02202025 */  move  $a0, $s1
/* B63020 800EBE80 0C03A4D0 */  jal   Audio_GetScriptControlFlowArgument
/* B63024 800EBE84 320500FF */   andi  $a1, $s0, 0xff
/* B63028 800EBE88 02402025 */  move  $a0, $s2
/* B6302C 800EBE8C 02202825 */  move  $a1, $s1
/* B63030 800EBE90 02003025 */  move  $a2, $s0
/* B63034 800EBE94 0C03A4EA */  jal   Audio_HandleScriptFlowControl
/* B63038 800EBE98 00403825 */   move  $a3, $v0
/* B6303C 800EBE9C 1040FFF2 */  beqz  $v0, .mainLoop # did Audio_HandleScriptFlowControl() return 0?
/* B63040 800EBEA0 00000000 */   nop   
/* B63044 800EBEA4 2401FFFF */  li    $at, -1
/* B63048 800EBEA8 14410005 */  bne   $v0, $at, .flowSetDelayValue # did Audio_HandleScriptFlowControl() return value != -1?
/* B6304C 800EBEAC 00000000 */   nop   
/* B63050 800EBEB0 0C03A6DB */  jal   Audio_SequencePlayerDisable
/* B63054 800EBEB4 02402025 */   move  $a0, $s2
/* B63058 800EBEB8 10000198 */  b     .secondLoopPreamble2 # else clause (value == -1)
/* B6305C 800EBEBC 02408825 */   move  $s1, $s2
.flowSetDelayValue:
/* B63060 800EBEC0 10000195 */  b     .secondLoopPreamble
/* B63064 800EBEC4 A6420010 */   sh    $v0, 0x10($s2)
.isNonFlowCmd:
/* B63068 800EBEC8 304300FF */  andi  $v1, $v0, 0xff
/* B6306C 800EBECC 286100C0 */  slti  $at, $v1, 0xc0
/* B63070 800EBED0 1420012E */  bnez  $at, .parseLowSeqCmd # is command < 0xC0?
/* B63074 800EBED4 306200F0 */   andi  $v0, $v1, 0xf0
/* B63078 800EBED8 2468FF3C */  addiu $t0, $v1, -0xc4
/* B6307C 800EBEDC 2D01002E */  sltiu $at, $t0, 0x2e
/* B63080 800EBEE0 1020FFE1 */  beqz  $at, .mainLoop # is command beyond the size of the switch?
/* B63084 800EBEE4 00084080 */   sll   $t0, $t0, 2
/* B63088 800EBEE8 3C018015 */  lui   $at, %hi(highSeqCmdJmpTbl)
/* B6308C 800EBEEC 00280821 */  addu  $at, $at, $t0
/* B63090 800EBEF0 8C2899E4 */  lw    $t0, %lo(highSeqCmdJmpTbl)($at)
/* B63094 800EBEF4 01000008 */  jr    $t0
/* B63098 800EBEF8 00000000 */   nop   
glabel case_F1
/* B6309C 800EBEFC 2650009C */  addiu $s0, $s2, 0x9c
/* B630A0 800EBF00 0C039F80 */  jal   Audio_NotePoolClear
/* B630A4 800EBF04 02002025 */   move  $a0, $s0
/* B630A8 800EBF08 0C03A752 */  jal   Audio_M64ReadU8
/* B630AC 800EBF0C 02202025 */   move  $a0, $s1
/* B630B0 800EBF10 02002025 */  move  $a0, $s0
/* B630B4 800EBF14 0C039FD8 */  jal   Audio_NotePoolFill
/* B630B8 800EBF18 00402825 */   move  $a1, $v0
/* B630BC 800EBF1C 1000FFD2 */  b     .mainLoop
/* B630C0 800EBF20 00000000 */   nop   
/* B630C4 800EBF24 1000FFD0 */  b     .mainLoop
/* B630C8 800EBF28 00000000 */   nop   
glabel case_F0
/* B630CC 800EBF2C 0C039F80 */  jal   Audio_NotePoolClear
/* B630D0 800EBF30 2644009C */   addiu $a0, $s2, 0x9c
/* B630D4 800EBF34 1000FFCC */  b     .mainLoop
/* B630D8 800EBF38 00000000 */   nop   
glabel case_DF
/* B630DC 800EBF3C A640000E */  sh    $zero, 0xe($s2)
glabel case_DE
/* B630E0 800EBF40 0C03A752 */  jal   Audio_M64ReadU8
/* B630E4 800EBF44 02202025 */   move  $a0, $s1
/* B630E8 800EBF48 8649000E */  lh    $t1, 0xe($s2)
/* B630EC 800EBF4C 00025600 */  sll   $t2, $v0, 0x18
/* B630F0 800EBF50 000A5E03 */  sra   $t3, $t2, 0x18
/* B630F4 800EBF54 012B6021 */  addu  $t4, $t1, $t3
/* B630F8 800EBF58 1000FFC3 */  b     .mainLoop
/* B630FC 800EBF5C A64C000E */   sh    $t4, 0xe($s2)
glabel case_DD
/* B63100 800EBF60 0C03A752 */  jal   Audio_M64ReadU8
/* B63104 800EBF64 02202025 */   move  $a0, $s1
/* B63108 800EBF68 00026880 */  sll   $t5, $v0, 2
/* B6310C 800EBF6C 01A26823 */  subu  $t5, $t5, $v0
/* B63110 800EBF70 000D6900 */  sll   $t5, $t5, 4
/* B63114 800EBF74 A64D0008 */  sh    $t5, 8($s2)
/* B63118 800EBF78 3C048017 */  lui   $a0, %hi(gAudioContext+0x2898)
/* B6311C 800EBF7C 84841A18 */  lh    $a0, %lo(gAudioContext+0x2898)($a0)
/* B63120 800EBF80 31A3FFFF */  andi  $v1, $t5, 0xffff
/* B63124 800EBF84 24180001 */  li    $t8, 1
/* B63128 800EBF88 0083082A */  slt   $at, $a0, $v1
/* B6312C 800EBF8C 50200004 */  beql  $at, $zero, .ddTempoOutOfRange # is tempo >= tempoInternalToExternal (tempoMax)?
/* B63130 800EBF90 00037400 */   sll   $t6, $v1, 0x10
/* B63134 800EBF94 A6440008 */  sh    $a0, 8($s2)
/* B63138 800EBF98 3083FFFF */  andi  $v1, $a0, 0xffff
/* B6313C 800EBF9C 00037400 */  sll   $t6, $v1, 0x10
.ddTempoOutOfRange:
/* B63140 800EBFA0 000E7C03 */  sra   $t7, $t6, 0x10
/* B63144 800EBFA4 1DE0FFB0 */  bgtz  $t7, .mainLoop # was tempo valid?
/* B63148 800EBFA8 00000000 */   nop   
/* B6314C 800EBFAC 1000FFAE */  b     .mainLoop
/* B63150 800EBFB0 A6580008 */   sh    $t8, 8($s2)
glabel case_DC
/* B63154 800EBFB4 0C03A752 */  jal   Audio_M64ReadU8
/* B63158 800EBFB8 02202025 */   move  $a0, $s1
/* B6315C 800EBFBC 0002CE00 */  sll   $t9, $v0, 0x18
/* B63160 800EBFC0 00194603 */  sra   $t0, $t9, 0x18
/* B63164 800EBFC4 00085080 */  sll   $t2, $t0, 2
/* B63168 800EBFC8 01485023 */  subu  $t2, $t2, $t0
/* B6316C 800EBFCC 000A5100 */  sll   $t2, $t2, 4
/* B63170 800EBFD0 1000FFA5 */  b     .mainLoop
/* B63174 800EBFD4 A64A000C */   sh    $t2, 0xc($s2)
glabel case_DA
/* B63178 800EBFD8 0C03A752 */  jal   Audio_M64ReadU8
/* B6317C 800EBFDC 02202025 */   move  $a0, $s1
/* B63180 800EBFE0 305000FF */  andi  $s0, $v0, 0xff
/* B63184 800EBFE4 0C03A757 */  jal   Audio_M64ReadS16
/* B63188 800EBFE8 02202025 */   move  $a0, $s1
/* B6318C 800EBFEC 12000008 */  beqz  $s0, .daParamIs0or1 # is first cmd param 0?
/* B63190 800EBFF0 02002025 */   move  $a0, $s0
/* B63194 800EBFF4 24010001 */  li    $at, 1
/* B63198 800EBFF8 10810005 */  beq   $a0, $at, .daParamIs0or1 # is first cmd param 1?
/* B6319C 800EBFFC 24010002 */   li    $at, 2
/* B631A0 800EC000 1081000A */  beq   $a0, $at, .daParamIs2 # is first cmd param 2?
/* B631A4 800EC004 304BFFFF */   andi  $t3, $v0, 0xffff
/* B631A8 800EC008 1000FF97 */  b     .mainLoop
/* B631AC 800EC00C 00000000 */   nop   
.daParamIs0or1:
/* B631B0 800EC010 92490001 */  lbu   $t1, 1($s2)
/* B631B4 800EC014 24010002 */  li    $at, 2
/* B631B8 800EC018 1121FF93 */  beq   $t1, $at, .mainLoop # is seqPlayer->state == 2?
/* B631BC 800EC01C 00000000 */   nop   
/* B631C0 800EC020 A6420014 */  sh    $v0, 0x14($s2)
/* B631C4 800EC024 1000FF90 */  b     .mainLoop
/* B631C8 800EC028 A2500001 */   sb    $s0, 1($s2)
.daParamIs2:
/* B631CC 800EC02C 448B5000 */  mtc1  $t3, $f10
/* B631D0 800EC030 44802000 */  mtc1  $zero, $f4
/* B631D4 800EC034 C646001C */  lwc1  $f6, 0x1c($s2)
/* B631D8 800EC038 46805420 */  cvt.s.w $f16, $f10
/* B631DC 800EC03C A6420012 */  sh    $v0, 0x12($s2)
/* B631E0 800EC040 A2500001 */  sb    $s0, 1($s2)
/* B631E4 800EC044 46062201 */  sub.s $f8, $f4, $f6
/* B631E8 800EC048 46104483 */  div.s $f18, $f8, $f16
/* B631EC 800EC04C 1000FF86 */  b     .mainLoop
/* B631F0 800EC050 E6520020 */   swc1  $f18, 0x20($s2)
glabel case_DB
/* B631F4 800EC054 0C03A752 */  jal   Audio_M64ReadU8
/* B631F8 800EC058 02202025 */   move  $a0, $s1
/* B631FC 800EC05C 92430001 */  lbu   $v1, 1($s2)
/* B63200 800EC060 24010001 */  li    $at, 1
/* B63204 800EC064 5060000B */  beql  $v1, $zero, .dbParamIs0 # is first cmd param 0?
/* B63208 800EC068 96430014 */   lhu   $v1, 0x14($s2)
/* B6320C 800EC06C 10610005 */  beq   $v1, $at, .dbParamIs1 # is first cmd param 1?
/* B63210 800EC070 24010002 */   li    $at, 2
/* B63214 800EC074 1061FF7C */  beq   $v1, $at, .mainLoop # is first cmd param 2?
/* B63218 800EC078 00000000 */   nop   
/* B6321C 800EC07C 1000FF7A */  b     .mainLoop
/* B63220 800EC080 00000000 */   nop   
.dbParamIs1:
/* B63224 800EC084 44802000 */  mtc1  $zero, $f4
/* B63228 800EC088 A2400001 */  sb    $zero, 1($s2)
/* B6322C 800EC08C E644001C */  swc1  $f4, 0x1c($s2)
/* B63230 800EC090 96430014 */  lhu   $v1, 0x14($s2)
.dbParamIs0:
/* B63234 800EC094 1060000E */  beqz  $v1, .dbNoFade # is fade timer == 0?
/* B63238 800EC098 A6430012 */   sh    $v1, 0x12($s2)
/* B6323C 800EC09C 44823000 */  mtc1  $v0, $f6
/* B63240 800EC0A0 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B63244 800EC0A4 44814000 */  mtc1  $at, $f8
/* B63248 800EC0A8 468032A0 */  cvt.s.w $f10, $f6
/* B6324C 800EC0AC 306CFFFF */  andi  $t4, $v1, 0xffff
/* B63250 800EC0B0 448C3000 */  mtc1  $t4, $f6
/* B63254 800EC0B4 C652001C */  lwc1  $f18, 0x1c($s2)
/* B63258 800EC0B8 46085403 */  div.s $f16, $f10, $f8
/* B6325C 800EC0BC 468032A0 */  cvt.s.w $f10, $f6
/* B63260 800EC0C0 46128101 */  sub.s $f4, $f16, $f18
/* B63264 800EC0C4 460A2203 */  div.s $f8, $f4, $f10
/* B63268 800EC0C8 1000FF67 */  b     .mainLoop
/* B6326C 800EC0CC E6480020 */   swc1  $f8, 0x20($s2)
.dbNoFade:
/* B63270 800EC0D0 44828000 */  mtc1  $v0, $f16
/* B63274 800EC0D4 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B63278 800EC0D8 44813000 */  mtc1  $at, $f6
/* B6327C 800EC0DC 468084A0 */  cvt.s.w $f18, $f16
/* B63280 800EC0E0 46069103 */  div.s $f4, $f18, $f6
/* B63284 800EC0E4 1000FF60 */  b     .mainLoop
/* B63288 800EC0E8 E644001C */   swc1  $f4, 0x1c($s2)
glabel case_D9
/* B6328C 800EC0EC 0C03A752 */  jal   Audio_M64ReadU8
/* B63290 800EC0F0 02202025 */   move  $a0, $s1
/* B63294 800EC0F4 00026E00 */  sll   $t5, $v0, 0x18
/* B63298 800EC0F8 000D7603 */  sra   $t6, $t5, 0x18
/* B6329C 800EC0FC 448E5000 */  mtc1  $t6, $f10
/* B632A0 800EC100 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B632A4 800EC104 44818000 */  mtc1  $at, $f16
/* B632A8 800EC108 46805220 */  cvt.s.w $f8, $f10
/* B632AC 800EC10C 46104483 */  div.s $f18, $f8, $f16
/* B632B0 800EC110 1000FF55 */  b     .mainLoop
/* B632B4 800EC114 E652002C */   swc1  $f18, 0x2c($s2)
glabel case_D7
/* B632B8 800EC118 0C03A757 */  jal   Audio_M64ReadS16
/* B632BC 800EC11C 02202025 */   move  $a0, $s1
/* B632C0 800EC120 02402025 */  move  $a0, $s2
/* B632C4 800EC124 0C03A64D */  jal   Audio_SequencePlayerInitChannels
/* B632C8 800EC128 3045FFFF */   andi  $a1, $v0, 0xffff
/* B632CC 800EC12C 1000FF4E */  b     .mainLoop
/* B632D0 800EC130 00000000 */   nop   
glabel case_D6
/* B632D4 800EC134 0C03A757 */  jal   Audio_M64ReadS16
/* B632D8 800EC138 02202025 */   move  $a0, $s1
/* B632DC 800EC13C 1000FF4A */  b     .mainLoop
/* B632E0 800EC140 00000000 */   nop   
glabel case_D5
/* B632E4 800EC144 0C03A752 */  jal   Audio_M64ReadU8
/* B632E8 800EC148 02202025 */   move  $a0, $s1
/* B632EC 800EC14C 00027E00 */  sll   $t7, $v0, 0x18
/* B632F0 800EC150 000FC603 */  sra   $t8, $t7, 0x18
/* B632F4 800EC154 44983000 */  mtc1  $t8, $f6
/* B632F8 800EC158 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B632FC 800EC15C 44815000 */  mtc1  $at, $f10
/* B63300 800EC160 46803120 */  cvt.s.w $f4, $f6
/* B63304 800EC164 460A2203 */  div.s $f8, $f4, $f10
/* B63308 800EC168 1000FF3F */  b     .mainLoop
/* B6330C 800EC16C E6480028 */   swc1  $f8, 0x28($s2)
glabel case_D4
/* B63310 800EC170 92480000 */  lbu   $t0, ($s2)
/* B63314 800EC174 350A0020 */  ori   $t2, $t0, 0x20
/* B63318 800EC178 1000FF3B */  b     .mainLoop
/* B6331C 800EC17C A24A0000 */   sb    $t2, ($s2)
glabel case_D3
/* B63320 800EC180 0C03A752 */  jal   Audio_M64ReadU8
/* B63324 800EC184 02202025 */   move  $a0, $s1
/* B63328 800EC188 1000FF37 */  b     .mainLoop
/* B6332C 800EC18C A2420003 */   sb    $v0, 3($s2)
glabel case_D1_D2
/* B63330 800EC190 0C03A757 */  jal   Audio_M64ReadS16
/* B63334 800EC194 02202025 */   move  $a0, $s1
/* B63338 800EC198 8E490018 */  lw    $t1, 0x18($s2)
/* B6333C 800EC19C 304BFFFF */  andi  $t3, $v0, 0xffff
/* B63340 800EC1A0 240100D2 */  li    $at, 210
/* B63344 800EC1A4 16010003 */  bne   $s0, $at, .d1Handler # is cmd != D2?
/* B63348 800EC1A8 012B1821 */   addu  $v1, $t1, $t3
/* B6334C 800EC1AC 1000FF2E */  b     .mainLoop
/* B63350 800EC1B0 AE430094 */   sw    $v1, 0x94($s2)
.d1Handler:
/* B63354 800EC1B4 1000FF2C */  b     .mainLoop
/* B63358 800EC1B8 AE430098 */   sw    $v1, 0x98($s2)
glabel case_D0
/* B6335C 800EC1BC 0C03A752 */  jal   Audio_M64ReadU8
/* B63360 800EC1C0 02202025 */   move  $a0, $s1
/* B63364 800EC1C4 1000FF28 */  b     .mainLoop
/* B63368 800EC1C8 A2420002 */   sb    $v0, 2($s2)
glabel case_CE
/* B6336C 800EC1CC 0C03A752 */  jal   Audio_M64ReadU8
/* B63370 800EC1D0 02202025 */   move  $a0, $s1
/* B63374 800EC1D4 14400006 */  bnez  $v0, .ceWithModulo # is cmd param not 0?
/* B63378 800EC1D8 3C0F8017 */   lui   $t7, %hi(gAudioContext+0x297c) # $t7, 0x8017
/* B6337C 800EC1DC 3C0C8017 */  lui   $t4, %hi(gAudioContext+0x297c) # $t4, 0x8017
/* B63380 800EC1E0 8D8C1AFC */  lw    $t4, %lo(gAudioContext+0x297c)($t4)
/* B63384 800EC1E4 000C7082 */  srl   $t6, $t4, 2
/* B63388 800EC1E8 1000FF1F */  b     .mainLoop
/* B6338C 800EC1EC A22E0019 */   sb    $t6, 0x19($s1)
.ceWithModulo:
/* B63390 800EC1F0 8DEF1AFC */  lw    $t7, %lo(gAudioContext+0x297c)($t7)
/* B63394 800EC1F4 305900FF */  andi  $t9, $v0, 0xff
/* B63398 800EC1F8 000FC082 */  srl   $t8, $t7, 2
/* B6339C 800EC1FC 0319001B */  divu  $zero, $t8, $t9
/* B633A0 800EC200 00004010 */  mfhi  $t0
/* B633A4 800EC204 A2280019 */  sb    $t0, 0x19($s1)
/* B633A8 800EC208 17200002 */  bnez  $t9, .ceValidDivisor # no divide by 0?
/* B633AC 800EC20C 00000000 */   nop   
/* B633B0 800EC210 0007000D */  break 7
.ceValidDivisor:
/* B633B4 800EC214 1000FF14 */  b     .mainLoop
/* B633B8 800EC218 00000000 */   nop   
glabel case_CD
/* B633BC 800EC21C 0C03A757 */  jal   Audio_M64ReadS16
/* B633C0 800EC220 02202025 */   move  $a0, $s1
/* B633C4 800EC224 82250019 */  lb    $a1, 0x19($s1)
/* B633C8 800EC228 2401FFFF */  li    $at, -1
/* B633CC 800EC22C 10A1FF0E */  beq   $a1, $at, .mainLoop # is current state value -1?
/* B633D0 800EC230 00000000 */   nop   
/* B633D4 800EC234 92260018 */  lbu   $a2, 0x18($s1)
/* B633D8 800EC238 24010003 */  li    $at, 3
/* B633DC 800EC23C 304AFFFF */  andi  $t2, $v0, 0xffff
/* B633E0 800EC240 10C1FF09 */  beq   $a2, $at, .mainLoop # is current state depth 3?
/* B633E4 800EC244 00054840 */   sll   $t1, $a1, 1
/* B633E8 800EC248 8E2D0000 */  lw    $t5, ($s1)
/* B633EC 800EC24C 00067080 */  sll   $t6, $a2, 2
/* B633F0 800EC250 8E4C0018 */  lw    $t4, 0x18($s2)
/* B633F4 800EC254 022E7821 */  addu  $t7, $s1, $t6
/* B633F8 800EC258 ADED0004 */  sw    $t5, 4($t7)
/* B633FC 800EC25C 92380018 */  lbu   $t8, 0x18($s1)
/* B63400 800EC260 01495821 */  addu  $t3, $t2, $t1
/* B63404 800EC264 018B1021 */  addu  $v0, $t4, $t3
/* B63408 800EC268 27190001 */  addiu $t9, $t8, 1
/* B6340C 800EC26C A2390018 */  sb    $t9, 0x18($s1)
/* B63410 800EC270 904A0000 */  lbu   $t2, ($v0)
/* B63414 800EC274 90480001 */  lbu   $t0, 1($v0)
/* B63418 800EC278 8E4C0018 */  lw    $t4, 0x18($s2)
/* B6341C 800EC27C 000A4A00 */  sll   $t1, $t2, 8
/* B63420 800EC280 01091821 */  addu  $v1, $t0, $t1
/* B63424 800EC284 3063FFFF */  andi  $v1, $v1, 0xffff
/* B63428 800EC288 01835821 */  addu  $t3, $t4, $v1
/* B6342C 800EC28C 1000FEF6 */  b     .mainLoop
/* B63430 800EC290 AE2B0000 */   sw    $t3, ($s1)
glabel case_CC
/* B63434 800EC294 0C03A752 */  jal   Audio_M64ReadU8
/* B63438 800EC298 02202025 */   move  $a0, $s1
/* B6343C 800EC29C 1000FEF2 */  b     .mainLoop
/* B63440 800EC2A0 A2220019 */   sb    $v0, 0x19($s1)
glabel case_C9
/* B63444 800EC2A4 0C03A752 */  jal   Audio_M64ReadU8
/* B63448 800EC2A8 02202025 */   move  $a0, $s1
/* B6344C 800EC2AC 822E0019 */  lb    $t6, 0x19($s1)
/* B63450 800EC2B0 01C26824 */  and   $t5, $t6, $v0
/* B63454 800EC2B4 1000FEEC */  b     .mainLoop
/* B63458 800EC2B8 A22D0019 */   sb    $t5, 0x19($s1)
glabel case_C8
/* B6345C 800EC2BC 0C03A752 */  jal   Audio_M64ReadU8
/* B63460 800EC2C0 02202025 */   move  $a0, $s1
/* B63464 800EC2C4 822F0019 */  lb    $t7, 0x19($s1)
/* B63468 800EC2C8 01E2C023 */  subu  $t8, $t7, $v0
/* B6346C 800EC2CC 1000FEE6 */  b     .mainLoop
/* B63470 800EC2D0 A2380019 */   sb    $t8, 0x19($s1)
glabel case_C7
/* B63474 800EC2D4 0C03A752 */  jal   Audio_M64ReadU8
/* B63478 800EC2D8 02202025 */   move  $a0, $s1
/* B6347C 800EC2DC 305000FF */  andi  $s0, $v0, 0xff
/* B63480 800EC2E0 0C03A757 */  jal   Audio_M64ReadS16
/* B63484 800EC2E4 02202025 */   move  $a0, $s1
/* B63488 800EC2E8 8E590018 */  lw    $t9, 0x18($s2)
/* B6348C 800EC2EC 92280019 */  lbu   $t0, 0x19($s1)
/* B63490 800EC2F0 304AFFFF */  andi  $t2, $v0, 0xffff
/* B63494 800EC2F4 032A2821 */  addu  $a1, $t9, $t2
/* B63498 800EC2F8 01104821 */  addu  $t1, $t0, $s0
/* B6349C 800EC2FC 1000FEDA */  b     .mainLoop
/* B634A0 800EC300 A0A90000 */   sb    $t1, ($a1)
glabel case_C6
/* B634A4 800EC304 924B0000 */  lbu   $t3, ($s2)
/* B634A8 800EC308 356E0002 */  ori   $t6, $t3, 2
/* B634AC 800EC30C 1000008F */  b     .return1
/* B634B0 800EC310 A24E0000 */   sb    $t6, ($s2)
glabel case_C5
/* B634B4 800EC314 0C03A757 */  jal   Audio_M64ReadS16
/* B634B8 800EC318 02202025 */   move  $a0, $s1
/* B634BC 800EC31C 304DFFFF */  andi  $t5, $v0, 0xffff
/* B634C0 800EC320 1000FED1 */  b     .mainLoop
/* B634C4 800EC324 AE4D00E0 */   sw    $t5, 0xe0($s2)
glabel case_EF
/* B634C8 800EC328 0C03A757 */  jal   Audio_M64ReadS16
/* B634CC 800EC32C 02202025 */   move  $a0, $s1
/* B634D0 800EC330 0C03A752 */  jal   Audio_M64ReadU8
/* B634D4 800EC334 02202025 */   move  $a0, $s1
/* B634D8 800EC338 1000FECB */  b     .mainLoop
/* B634DC 800EC33C 00000000 */   nop   
glabel case_C4
/* B634E0 800EC340 0C03A752 */  jal   Audio_M64ReadU8
/* B634E4 800EC344 02202025 */   move  $a0, $s1
/* B634E8 800EC348 240100FF */  li    $at, 255
/* B634EC 800EC34C 14410002 */  bne   $v0, $at, .c4Load # is first param < 255?
/* B634F0 800EC350 305000FF */   andi  $s0, $v0, 0xff
/* B634F4 800EC354 92500007 */  lbu   $s0, 7($s2)
.c4Load:
/* B634F8 800EC358 0C03A752 */  jal   Audio_M64ReadU8
/* B634FC 800EC35C 02202025 */   move  $a0, $s1
/* B63500 800EC360 02002025 */  move  $a0, $s0
/* B63504 800EC364 00402825 */  move  $a1, $v0
/* B63508 800EC368 00003025 */  move  $a2, $zero
/* B6350C 800EC36C 0C038835 */  jal   func_800E20D4
/* B63510 800EC370 AFB0002C */   sw    $s0, 0x2c($sp)
/* B63514 800EC374 8FA4002C */  lw    $a0, 0x2c($sp)
/* B63518 800EC378 924F0007 */  lbu   $t7, 7($s2)
/* B6351C 800EC37C 15E4FEBA */  bne   $t7, $a0, .mainLoop # is seqPlayer->seqVariationEu != $a0?
/* B63520 800EC380 00000000 */   nop   
/* B63524 800EC384 10000072 */  b     .return2
/* B63528 800EC388 8FBF0024 */   lw    $ra, 0x24($sp)

.parseLowSeqCmd:
/* B6352C 800EC38C 3064000F */  andi  $a0, $v1, 0xf
/* B63530 800EC390 1840000A */  blez  $v0, .cmdHighNotPositive # is commandHigh <= 0?
/* B63534 800EC394 A3A40066 */   sb    $a0, 0x66($sp)
/* B63538 800EC398 2458FFC0 */  addiu $t8, $v0, -0x40
/* B6353C 800EC39C 2F010071 */  sltiu $at, $t8, 0x71
/* B63540 800EC3A0 1020FEB1 */  beqz  $at, .mainLoop # is commandHigh in range of switch?
/* B63544 800EC3A4 0018C080 */   sll   $t8, $t8, 2
/* B63548 800EC3A8 3C018015 */  lui   $at, %hi(lowSeqCmdJmpTbl)
/* B6354C 800EC3AC 00380821 */  addu  $at, $at, $t8
/* B63550 800EC3B0 8C389A9C */  lw    $t8, %lo(lowSeqCmdJmpTbl)($at)
/* B63554 800EC3B4 03000008 */  jr    $t8 # switch
/* B63558 800EC3B8 00000000 */   nop   
.cmdHighNotPositive:
/* B6355C 800EC3BC 1440FEAA */  bnez  $v0, .mainLoop # is commandHigh != 0?
/* B63560 800EC3C0 309900FF */   andi  $t9, $a0, 0xff
/* B63564 800EC3C4 00195080 */  sll   $t2, $t9, 2
/* B63568 800EC3C8 024A4021 */  addu  $t0, $s2, $t2
/* B6356C 800EC3CC 8D090038 */  lw    $t1, 0x38($t0)
/* B63570 800EC3D0 8D2C0000 */  lw    $t4, ($t1)
/* B63574 800EC3D4 000C5FC2 */  srl   $t3, $t4, 0x1f
/* B63578 800EC3D8 396E0001 */  xori  $t6, $t3, 1
/* B6357C 800EC3DC 1000FEA2 */  b     .mainLoop
/* B63580 800EC3E0 A22E0019 */   sb    $t6, 0x19($s1)
glabel case_50
/* B63584 800EC3E4 308F00FF */  andi  $t7, $a0, 0xff
/* B63588 800EC3E8 024FC021 */  addu  $t8, $s2, $t7
/* B6358C 800EC3EC 83190158 */  lb    $t9, 0x158($t8)
/* B63590 800EC3F0 822D0019 */  lb    $t5, 0x19($s1)
/* B63594 800EC3F4 01B95023 */  subu  $t2, $t5, $t9
/* B63598 800EC3F8 1000FE9B */  b     .mainLoop
/* B6359C 800EC3FC A22A0019 */   sb    $t2, 0x19($s1)
glabel case_70
/* B635A0 800EC400 82280019 */  lb    $t0, 0x19($s1)
/* B635A4 800EC404 308900FF */  andi  $t1, $a0, 0xff
/* B635A8 800EC408 02496021 */  addu  $t4, $s2, $t1
/* B635AC 800EC40C 1000FE96 */  b     .mainLoop
glabel randomLabel # not sure why this was annotated
/* B635B0 800EC410 A1880158 */   sb    $t0, 0x158($t4)
glabel case_80
/* B635B4 800EC414 308200FF */  andi  $v0, $a0, 0xff
/* B635B8 800EC418 02421821 */  addu  $v1, $s2, $v0
/* B635BC 800EC41C 806B0158 */  lb    $t3, 0x158($v1)
/* B635C0 800EC420 28410002 */  slti  $at, $v0, 2
/* B635C4 800EC424 1020FE90 */  beqz  $at, .mainLoop # is commandLow >= 2?
/* B635C8 800EC428 A22B0019 */   sb    $t3, 0x19($s1)
/* B635CC 800EC42C 240EFFFF */  li    $t6, -1
/* B635D0 800EC430 1000FE8D */  b     .mainLoop
/* B635D4 800EC434 A06E0158 */   sb    $t6, 0x158($v1)
glabel case_40
/* B635D8 800EC438 3218000F */  andi  $t8, $s0, 0xf
/* B635DC 800EC43C 00186880 */  sll   $t5, $t8, 2
/* B635E0 800EC440 024DC821 */  addu  $t9, $s2, $t5
/* B635E4 800EC444 0C03A632 */  jal   Audio_SequenceChannelDisable
/* B635E8 800EC448 8F240038 */   lw    $a0, 0x38($t9)
/* B635EC 800EC44C 1000FE86 */  b     .mainLoop
/* B635F0 800EC450 00000000 */   nop   
glabel case_90
/* B635F4 800EC454 0C03A757 */  jal   Audio_M64ReadS16
/* B635F8 800EC458 02202025 */   move  $a0, $s1
/* B635FC 800EC45C 8E4A0018 */  lw    $t2, 0x18($s2)
/* B63600 800EC460 02002825 */  move  $a1, $s0
/* B63604 800EC464 3049FFFF */  andi  $t1, $v0, 0xffff
/* B63608 800EC468 30A5000F */  andi  $a1, $a1, 0xf
/* B6360C 800EC46C 02402025 */  move  $a0, $s2
/* B63610 800EC470 0C03A6AB */  jal   Audio_SequenceChannelEnable
/* B63614 800EC474 01493021 */   addu  $a2, $t2, $t1
/* B63618 800EC478 1000FE7B */  b     .mainLoop
/* B6361C 800EC47C 00000000 */   nop   
glabel case_A0
/* B63620 800EC480 0C03A757 */  jal   Audio_M64ReadS16
/* B63624 800EC484 02202025 */   move  $a0, $s1
/* B63628 800EC488 8E280000 */  lw    $t0, ($s1)
/* B6362C 800EC48C 02002825 */  move  $a1, $s0
/* B63630 800EC490 30A5000F */  andi  $a1, $a1, 0xf
/* B63634 800EC494 02402025 */  move  $a0, $s2
/* B63638 800EC498 0C03A6AB */  jal   Audio_SequenceChannelEnable
/* B6363C 800EC49C 01023021 */   addu  $a2, $t0, $v0
/* B63640 800EC4A0 1000FE71 */  b     .mainLoop
/* B63644 800EC4A4 00000000 */   nop   
glabel case_B0
/* B63648 800EC4A8 0C03A752 */  jal   Audio_M64ReadU8
/* B6364C 800EC4AC 02202025 */   move  $a0, $s1
/* B63650 800EC4B0 305000FF */  andi  $s0, $v0, 0xff
/* B63654 800EC4B4 0C03A757 */  jal   Audio_M64ReadS16
/* B63658 800EC4B8 02202025 */   move  $a0, $s1
/* B6365C 800EC4BC 93AE0066 */  lbu   $t6, 0x66($sp)
/* B63660 800EC4C0 8E4C0018 */  lw    $t4, 0x18($s2)
/* B63664 800EC4C4 304BFFFF */  andi  $t3, $v0, 0xffff
/* B63668 800EC4C8 024E3021 */  addu  $a2, $s2, $t6
/* B6366C 800EC4CC 24C60158 */  addiu $a2, $a2, 0x158
/* B63670 800EC4D0 02002025 */  move  $a0, $s0
/* B63674 800EC4D4 0C038E43 */  jal   func_800E390C
/* B63678 800EC4D8 018B2821 */   addu  $a1, $t4, $t3
/* B6367C 800EC4DC 1000FE62 */  b     .mainLoop
/* B63680 800EC4E0 00000000 */   nop   
glabel case_60
/* B63684 800EC4E4 0C03A752 */  jal   Audio_M64ReadU8
/* B63688 800EC4E8 02202025 */   move  $a0, $s1
/* B6368C 800EC4EC 00408025 */  move  $s0, $v0
/* B63690 800EC4F0 0C03A752 */  jal   Audio_M64ReadU8
/* B63694 800EC4F4 02202025 */   move  $a0, $s1
/* B63698 800EC4F8 93AF0066 */  lbu   $t7, 0x66($sp)
/* B6369C 800EC4FC 02002025 */  move  $a0, $s0
/* B636A0 800EC500 00402825 */  move  $a1, $v0
/* B636A4 800EC504 024F3021 */  addu  $a2, $s2, $t7
/* B636A8 800EC508 0C0393BB */  jal   func_800E4EEC
/* B636AC 800EC50C 24C60158 */   addiu $a2, $a2, 0x158
/* B636B0 800EC510 1000FE55 */  b     .mainLoop
/* B636B4 800EC514 00000000 */   nop   

.secondLoopPreamble:
/* B636B8 800EC518 02408825 */  move  $s1, $s2
.secondLoopPreamble2:
/* B636BC 800EC51C 24120040 */  li    $s2, 64
/* B636C0 800EC520 00008025 */  move  $s0, $zero

.secondLoop:
/* B636C4 800EC524 8E240038 */  lw    $a0, 0x38($s1)
/* B636C8 800EC528 8C980000 */  lw    $t8, ($a0)
/* B636CC 800EC52C 00186FC2 */  srl   $t5, $t8, 0x1f
/* B636D0 800EC530 51A00004 */  beql  $t5, $zero, .channelIsMuted # is seqPlayer->channels[i].enabled == false?
/* B636D4 800EC534 26100004 */   addiu $s0, $s0, 4
/* B636D8 800EC538 0C03AC1A */  jal   Audio_SequenceChannelProcessScript
/* B636DC 800EC53C 00000000 */   nop   
/* B636E0 800EC540 26100004 */  addiu $s0, $s0, 4
.channelIsMuted:
/* B636E4 800EC544 1612FFF7 */  bne   $s0, $s2, .secondLoop # have we looped over all of the channels?
/* B636E8 800EC548 26310004 */   addiu $s1, $s1, 4

.return1:
/* B636EC 800EC54C 8FBF0024 */  lw    $ra, 0x24($sp)
.return2:
/* B636F0 800EC550 8FB00018 */  lw    $s0, 0x18($sp)
/* B636F4 800EC554 8FB1001C */  lw    $s1, 0x1c($sp)
/* B636F8 800EC558 8FB20020 */  lw    $s2, 0x20($sp)
/* B636FC 800EC55C 03E00008 */  jr    $ra
/* B63700 800EC560 27BD0068 */   addiu $sp, $sp, 0x68

