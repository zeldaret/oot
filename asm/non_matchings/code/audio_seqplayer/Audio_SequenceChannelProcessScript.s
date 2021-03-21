.late_rodata
glabel firstSwitch
    .word case_B0
    .word case_B1
    .word case_B2
    .word case_B3
    .word case_B4
    .word case_B5
    .word case_B6
    .word case_B7
    .word case_B8
    .word case_B9
    .word case_BA
    .word case_BB
    .word case_BC
    .word case_BD
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_C1
    .word case_C2
    .word case_C3
    .word case_C4
    .word case_C5
    .word case_C6
    .word case_C7
    .word case_C8_C9_CC
    .word case_C8_C9_CC
    .word case_CA
    .word case_CB
    .word case_C8_C9_CC
    .word case_CD
    .word case_CE
    .word case_CF
    .word case_D0
    .word case_D1
    .word case_D2
    .word case_D3
    .word case_D4
    .word mainLoop
    .word mainLoop
    .word case_D7
    .word case_D8
    .word case_D9
    .word case_DA
    .word case_DB
    .word case_DC
    .word case_DD
    .word case_DE
    .word case_DF
    .word case_E0
    .word case_E1
    .word case_E2
    .word case_E3
    .word case_E4
    .word case_E5
    .word case_E6
    .word case_E7
    .word case_E8
    .word case_E9
    .word case_EA
    .word case_EB
    .word case_EC
    .word case_ED
    .word case_EE
    .word mainLoop
    .word case_F0
    .word case_F1

glabel secondSwitch
    .word case_70
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word mainLoop
    .word case_78
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
    .word case_88
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
    .word case_98

glabel thirdSwitch
    .word case_0
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
    .word case_10
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
    .word case_20
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
    .word case_30
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

.text
glabel Audio_SequenceChannelProcessScript
/* B62208 800EB068 27BDFF78 */  addiu $sp, $sp, -0x88
/* B6220C 800EB06C AFBF003C */  sw    $ra, 0x3c($sp)
/* B62210 800EB070 AFBE0038 */  sw    $fp, 0x38($sp)
/* B62214 800EB074 AFB70034 */  sw    $s7, 0x34($sp)
/* B62218 800EB078 AFB60030 */  sw    $s6, 0x30($sp)
/* B6221C 800EB07C AFB5002C */  sw    $s5, 0x2c($sp)
/* B62220 800EB080 AFB40028 */  sw    $s4, 0x28($sp)
/* B62224 800EB084 AFB30024 */  sw    $s3, 0x24($sp)
/* B62228 800EB088 AFB20020 */  sw    $s2, 0x20($sp)
/* B6222C 800EB08C AFB1001C */  sw    $s1, 0x1c($sp)
/* B62230 800EB090 AFB00018 */  sw    $s0, 0x18($sp)
/* B62234 800EB094 8C8E0000 */  lw    $t6, ($a0)
/* B62238 800EB098 0080A025 */  move  $s4, $a0
/* B6223C 800EB09C 000EC080 */  sll   $t8, $t6, 2
/* B62240 800EB0A0 07030004 */  bgezl $t8, .readChannelScript # is channel->channelState << 2 >= 0?
/* B62244 800EB0A4 8E97004C */   lw    $s7, 0x4c($s4)
/* B62248 800EB0A8 10000315 */  b     .processLayers2 # else
/* B6224C 800EB0AC 00008025 */   move  $s0, $zero
/* B62250 800EB0B0 8E97004C */  lw    $s7, 0x4c($s4)
.readChannelScript:
/* B62254 800EB0B4 8EF90000 */  lw    $t9, ($s7)
/* B62258 800EB0B8 00194880 */  sll   $t1, $t9, 2
/* B6225C 800EB0BC 05230006 */  bgezl $t1, .playerNotMuted # is player->playerState not muted?
/* B62260 800EB0C0 9683001E */   lhu   $v1, 0x1e($s4)
/* B62264 800EB0C4 928A0003 */  lbu   $t2, 3($s4)
/* B62268 800EB0C8 314B0080 */  andi  $t3, $t2, 0x80
/* B6226C 800EB0CC 55600317 */  bnezl $t3, .return # is channel->muteBehavior not muted?
/* B62270 800EB0D0 8FBF003C */   lw    $ra, 0x3c($sp)
/* B62274 800EB0D4 9683001E */  lhu   $v1, 0x1e($s4)
.playerNotMuted:
/* B62278 800EB0D8 26960060 */  addiu $s6, $s4, 0x60
/* B6227C 800EB0DC 28610002 */  slti  $at, $v1, 2
/* B62280 800EB0E0 14200003 */  bnez  $at, .channelNotDelayed
/* B62284 800EB0E4 246CFFFF */   addiu $t4, $v1, -1
/* B62288 800EB0E8 10000304 */  b     .processLayers1
/* B6228C 800EB0EC A68C001E */   sh    $t4, 0x1e($s4)
.channelNotDelayed:
/* B62290 800EB0F0 241EFFFF */  li    $fp, -1
.mainLoop:
glabel mainLoop
/* B62294 800EB0F4 0C03A752 */  jal   Audio_M64ReadU8
/* B62298 800EB0F8 02C02025 */   move  $a0, $s6
/* B6229C 800EB0FC 284100B0 */  slti  $at, $v0, 0xb0
/* B622A0 800EB100 305200FF */  andi  $s2, $v0, 0xff
/* B622A4 800EB104 14200249 */  bnez  $at, .cmdBelowB0 # is command < 0xB0?
/* B622A8 800EB108 00402025 */   move  $a0, $v0
/* B622AC 800EB10C 3C038013 */  lui   $v1, %hi(D_80130470)
/* B622B0 800EB110 00641821 */  addu  $v1, $v1, $a0
/* B622B4 800EB114 90630470 */  lbu   $v1, %lo(D_80130470)($v1)
/* B622B8 800EB118 27B00060 */  addiu $s0, $sp, 0x60
/* B622BC 800EB11C 30650003 */  andi  $a1, $v1, 3
/* B622C0 800EB120 30AD00FF */  andi  $t5, $a1, 0xff
/* B622C4 800EB124 19A00013 */  blez  $t5, .cmdSubstateLEQZero
/* B622C8 800EB128 30B500FF */   andi  $s5, $a1, 0xff
/* B622CC 800EB12C 00157880 */  sll   $t7, $s5, 2
/* B622D0 800EB130 01F09821 */  addu  $s3, $t7, $s0
.shortLoopStart:
/* B622D4 800EB134 30780080 */  andi  $t8, $v1, 0x80
/* B622D8 800EB138 17000005 */  bnez  $t8, .cmdSubstateNegative
/* B622DC 800EB13C 00608825 */   move  $s1, $v1
/* B622E0 800EB140 0C03A752 */  jal   Audio_M64ReadU8
/* B622E4 800EB144 02C02025 */   move  $a0, $s6
/* B622E8 800EB148 10000004 */  b     .valueLoaded
/* B622EC 800EB14C AE020000 */   sw    $v0, ($s0)
.cmdSubstateNegative:
/* B622F0 800EB150 0C03A757 */  jal   Audio_M64ReadS16
/* B622F4 800EB154 02C02025 */   move  $a0, $s6
/* B622F8 800EB158 AE020000 */  sw    $v0, ($s0)
.valueLoaded:
/* B622FC 800EB15C 26100004 */  addiu $s0, $s0, 4
/* B62300 800EB160 0213082B */  sltu  $at, $s0, $s3
/* B62304 800EB164 00111840 */  sll   $v1, $s1, 1
/* B62308 800EB168 1420FFF2 */  bnez  $at, .shortLoopStart
/* B6230C 800EB16C 306300FF */   andi  $v1, $v1, 0xff
/* B62310 800EB170 00001025 */  move  $v0, $zero
.cmdSubstateLEQZero:
/* B62314 800EB174 2A4100F2 */  slti  $at, $s2, 0xf2
/* B62318 800EB178 14200010 */  bnez  $at, .cmdBelowF2
/* B6231C 800EB17C 02408025 */   move  $s0, $s2
/* B62320 800EB180 02E02025 */  move  $a0, $s7
/* B62324 800EB184 02C02825 */  move  $a1, $s6
/* B62328 800EB188 02003025 */  move  $a2, $s0
/* B6232C 800EB18C 0C03A4EA */  jal   Audio_HandleScriptFlowControl
/* B62330 800EB190 8FA70060 */   lw    $a3, 0x60($sp)
/* B62334 800EB194 1040FFD7 */  beqz  $v0, .mainLoop
/* B62338 800EB198 00000000 */   nop   
/* B6233C 800EB19C 145E0005 */  bne   $v0, $fp, .valueNotTerminator
/* B62340 800EB1A0 00000000 */   nop   
/* B62344 800EB1A4 0C03A632 */  jal   Audio_SequenceChannelDisable
/* B62348 800EB1A8 02802025 */   move  $a0, $s4
/* B6234C 800EB1AC 100002D4 */  b     .processLayers2
/* B62350 800EB1B0 00008025 */   move  $s0, $zero
.valueNotTerminator:
/* B62354 800EB1B4 100002D1 */  b     .processLayers1
/* B62358 800EB1B8 A682001E */   sh    $v0, 0x1e($s4)
.cmdBelowF2:
/* B6235C 800EB1BC 2619FF50 */  addiu $t9, $s0, -0xb0
/* B62360 800EB1C0 2F210042 */  sltiu $at, $t9, 0x42
/* B62364 800EB1C4 1020FFCB */  beqz  $at, .mainLoop
/* B62368 800EB1C8 0019C880 */   sll   $t9, $t9, 2
/* B6236C 800EB1CC 3C018015 */  lui   $at, %hi(firstSwitch)
/* B62370 800EB1D0 00390821 */  addu  $at, $at, $t9
/* B62374 800EB1D4 8C3996B4 */  lw    $t9, %lo(firstSwitch)($at)
/* B62378 800EB1D8 03200008 */  jr    $t9
/* B6237C 800EB1DC 00000000 */   nop   
glabel case_EA
/* B62380 800EB1E0 92890000 */  lbu   $t1, ($s4)
/* B62384 800EB1E4 352A0020 */  ori   $t2, $t1, 0x20
/* B62388 800EB1E8 100002C4 */  b     .processLayers1
/* B6238C 800EB1EC A28A0000 */   sb    $t2, ($s4)
glabel case_F1
/* B62390 800EB1F0 26900084 */  addiu $s0, $s4, 0x84
/* B62394 800EB1F4 0C039F80 */  jal   Audio_NotePoolClear
/* B62398 800EB1F8 02002025 */   move  $a0, $s0
/* B6239C 800EB1FC 93A50063 */  lbu   $a1, 0x63($sp)
/* B623A0 800EB200 0C039FD8 */  jal   Audio_NotePoolFill
/* B623A4 800EB204 02002025 */   move  $a0, $s0
/* B623A8 800EB208 1000FFBA */  b     .mainLoop
/* B623AC 800EB20C 00000000 */   nop   
glabel case_F0
/* B623B0 800EB210 0C039F80 */  jal   Audio_NotePoolClear
/* B623B4 800EB214 26840084 */   addiu $a0, $s4, 0x84
/* B623B8 800EB218 1000FFB6 */  b     .mainLoop
/* B623BC 800EB21C 00000000 */   nop   
glabel case_C2
/* B623C0 800EB220 97B10062 */  lhu   $s1, 0x62($sp)
/* B623C4 800EB224 8EEB0018 */  lw    $t3, 0x18($s7)
/* B623C8 800EB228 01716021 */  addu  $t4, $t3, $s1
/* B623CC 800EB22C 1000FFB1 */  b     .mainLoop
/* B623D0 800EB230 AE8C003C */   sw    $t4, 0x3c($s4)
glabel case_C5
/* B623D4 800EB234 82C20019 */  lb    $v0, 0x19($s6)
/* B623D8 800EB238 13C2FFAE */  beq   $fp, $v0, .mainLoop
/* B623DC 800EB23C 00000000 */   nop   
/* B623E0 800EB240 8E8D003C */  lw    $t5, 0x3c($s4)    # seqChannel->dynTable
/* B623E4 800EB244 00027840 */  sll   $t7, $v0, 1       # scriptState->value * 2
/* B623E8 800EB248 8EE80018 */  lw    $t0, 0x18($s7)    # player->seqData
/* B623EC 800EB24C 01AF8021 */  addu  $s0, $t5, $t7     # dynTable[scriptState->value]
/* B623F0 800EB250 92180000 */  lbu   $t8, ($s0)        # high = dynTable[scriptState->value][0]
/* B623F4 800EB254 920E0001 */  lbu   $t6, 1($s0)       # low = dynTable[scriptState->value][1]
/* B623F8 800EB258 0018CA00 */  sll   $t9, $t8, 8       # high << 8
/* B623FC 800EB25C 01D98821 */  addu  $s1, $t6, $t9     # (high << 8) + low
/* B62400 800EB260 3231FFFF */  andi  $s1, $s1, 0xffff  # addr = (u16)((high << 8) + low)
/* B62404 800EB264 01114821 */  addu  $t1, $t0, $s1     # player->seqData[addr]
/* B62408 800EB268 1000FFA2 */  b     .mainLoop
/* B6240C 800EB26C AE89003C */   sw    $t1, 0x3c($s4)   # seqChannel->dynTable = player->SeqData[addr]
glabel case_EB
/* B62410 800EB270 92EB0005 */  lbu   $t3, 5($s7)
/* B62414 800EB274 93AA0063 */  lbu   $t2, 0x63($sp)
/* B62418 800EB278 240100FF */  li    $at, 255
/* B6241C 800EB27C 1161000D */  beq   $t3, $at, .ebDefaultBankSet
/* B62420 800EB280 01409025 */   move  $s2, $t2
/* B62424 800EB284 92EC0004 */  lbu   $t4, 4($s7)
/* B62428 800EB288 3C028017 */  lui   $v0, %hi(gAudioContext+0x283c) # $v0, 0x8017
/* B6242C 800EB28C 8C4219BC */  lw    $v0, %lo(gAudioContext+0x283c)($v0)
/* B62430 800EB290 000C6840 */  sll   $t5, $t4, 1    # seqId << 1
/* B62434 800EB294 004D7821 */  addu  $t7, $v0, $t5  # unk_283C + (seqId * 2)
/* B62438 800EB298 95F10000 */  lhu   $s1, ($t7)     # x = unk_283C[seqId]
/* B6243C 800EB29C 0222C021 */  addu  $t8, $s1, $v0  # x + unk_283C
/* B62440 800EB2A0 93150000 */  lbu   $s5, ($t8)     # y = unk_283C[x]
/* B62444 800EB2A4 02357021 */  addu  $t6, $s1, $s5  # x + y
/* B62448 800EB2A8 01CAC823 */  subu  $t9, $t6, $t2  # (x + y) - last
/* B6244C 800EB2AC 03224021 */  addu  $t0, $t9, $v0  # ((x + y) - last) + unk_283C
/* B62450 800EB2B0 91120000 */  lbu   $s2, ($t0)     # last = unk_283C[(x + y) - last]
.ebDefaultBankSet:
/* B62454 800EB2B4 24040001 */  li    $a0, 1
/* B62458 800EB2B8 24050002 */  li    $a1, 2
/* B6245C 800EB2BC 0C037C1D */  jal   func_800DF074
/* B62460 800EB2C0 02403025 */   move  $a2, $s2
/* B62464 800EB2C4 50400003 */  beql  $v0, $zero, .L800EB2D4
/* B62468 800EB2C8 8FA90064 */   lw    $t1, 0x64($sp)
/* B6246C 800EB2CC A2920007 */  sb    $s2, 7($s4)
/* B62470 800EB2D0 8FA90064 */  lw    $t1, 0x64($sp)
.L800EB2D4:
/* B62474 800EB2D4 AFA90060 */  sw    $t1, 0x60($sp)
glabel case_C1
/* B62478 800EB2D8 93A50063 */  lbu   $a1, 0x63($sp)
/* B6247C 800EB2DC 0C03ABE6 */  jal   Audio_SetInstrument
/* B62480 800EB2E0 02802025 */   move  $a0, $s4
/* B62484 800EB2E4 1000FF83 */  b     .mainLoop
/* B62488 800EB2E8 00000000 */   nop   
glabel case_C3
/* B6248C 800EB2EC 928B0000 */  lbu   $t3, ($s4)
/* B62490 800EB2F0 316CFFFD */  andi  $t4, $t3, 0xfffd
/* B62494 800EB2F4 1000FF7F */  b     .mainLoop
/* B62498 800EB2F8 A28C0000 */   sb    $t4, ($s4)
glabel case_C4
/* B6249C 800EB2FC 928F0000 */  lbu   $t7, ($s4)
/* B624A0 800EB300 35F80002 */  ori   $t8, $t7, 2
/* B624A4 800EB304 1000FF7B */  b     .mainLoop
/* B624A8 800EB308 A2980000 */   sb    $t8, ($s4)
glabel case_DF
/* B624AC 800EB30C 93A50063 */  lbu   $a1, 0x63($sp)
/* B624B0 800EB310 0C03AC11 */  jal   Audio_SequenceChannelSetVolume
/* B624B4 800EB314 02802025 */   move  $a0, $s4
/* B624B8 800EB318 928A0001 */  lbu   $t2, 1($s4)
/* B624BC 800EB31C 35590040 */  ori   $t9, $t2, 0x40
/* B624C0 800EB320 1000FF74 */  b     .mainLoop
/* B624C4 800EB324 A2990001 */   sb    $t9, 1($s4)
glabel case_E0
/* B624C8 800EB328 93B20063 */  lbu   $s2, 0x63($sp)
/* B624CC 800EB32C 3C013C00 */  li    $at, 0x3C000000 # 0.000000
/* B624D0 800EB330 44814000 */  mtc1  $at, $f8
/* B624D4 800EB334 44922000 */  mtc1  $s2, $f4
/* B624D8 800EB338 92890001 */  lbu   $t1, 1($s4)
/* B624DC 800EB33C 468021A0 */  cvt.s.w $f6, $f4
/* B624E0 800EB340 352B0040 */  ori   $t3, $t1, 0x40
/* B624E4 800EB344 A28B0001 */  sb    $t3, 1($s4)
/* B624E8 800EB348 46083282 */  mul.s $f10, $f6, $f8
/* B624EC 800EB34C 1000FF69 */  b     .mainLoop
/* B624F0 800EB350 E68A0028 */   swc1  $f10, 0x28($s4)
glabel case_DE
/* B624F4 800EB354 97B10062 */  lhu   $s1, 0x62($sp)
/* B624F8 800EB358 3C014700 */  li    $at, 0x47000000 # 0.000000
/* B624FC 800EB35C 44812000 */  mtc1  $at, $f4
/* B62500 800EB360 44918000 */  mtc1  $s1, $f16
/* B62504 800EB364 928D0001 */  lbu   $t5, 1($s4)
/* B62508 800EB368 468084A0 */  cvt.s.w $f18, $f16
/* B6250C 800EB36C 35AF0080 */  ori   $t7, $t5, 0x80
/* B62510 800EB370 A28F0001 */  sb    $t7, 1($s4)
/* B62514 800EB374 46049183 */  div.s $f6, $f18, $f4
/* B62518 800EB378 1000FF5E */  b     .mainLoop
/* B6251C 800EB37C E6860038 */   swc1  $f6, 0x38($s4)
glabel case_D3
/* B62520 800EB380 93B20063 */  lbu   $s2, 0x63($sp)
/* B62524 800EB384 928A0001 */  lbu   $t2, 1($s4)
/* B62528 800EB388 3C018013 */  lui   $at, %hi(gPitchBendFrequencyScale)
/* B6252C 800EB38C 26520080 */  addiu $s2, $s2, 0x80
/* B62530 800EB390 325200FF */  andi  $s2, $s2, 0xff
/* B62534 800EB394 0012C080 */  sll   $t8, $s2, 2
/* B62538 800EB398 00380821 */  addu  $at, $at, $t8
/* B6253C 800EB39C C428F0B4 */  lwc1  $f8, %lo(gPitchBendFrequencyScale)($at)
/* B62540 800EB3A0 35590080 */  ori   $t9, $t2, 0x80
/* B62544 800EB3A4 A2990001 */  sb    $t9, 1($s4)
/* B62548 800EB3A8 1000FF52 */  b     .mainLoop
/* B6254C 800EB3AC E6880038 */   swc1  $f8, 0x38($s4)
glabel case_EE
/* B62550 800EB3B0 93B20063 */  lbu   $s2, 0x63($sp)
/* B62554 800EB3B4 928B0001 */  lbu   $t3, 1($s4)
/* B62558 800EB3B8 3C018013 */  lui   $at, %hi(D_8012F4B4)
/* B6255C 800EB3BC 26520080 */  addiu $s2, $s2, 0x80
/* B62560 800EB3C0 325200FF */  andi  $s2, $s2, 0xff
/* B62564 800EB3C4 00124080 */  sll   $t0, $s2, 2
/* B62568 800EB3C8 00280821 */  addu  $at, $at, $t0
/* B6256C 800EB3CC C42AF4B4 */  lwc1  $f10, %lo(D_8012F4B4)($at)
/* B62570 800EB3D0 356C0080 */  ori   $t4, $t3, 0x80
/* B62574 800EB3D4 A28C0001 */  sb    $t4, 1($s4)
/* B62578 800EB3D8 1000FF46 */  b     .mainLoop
/* B6257C 800EB3DC E68A0038 */   swc1  $f10, 0x38($s4)
glabel case_DD
/* B62580 800EB3E0 928F0001 */  lbu   $t7, 1($s4)
/* B62584 800EB3E4 93B20063 */  lbu   $s2, 0x63($sp)
/* B62588 800EB3E8 35F80020 */  ori   $t8, $t7, 0x20
/* B6258C 800EB3EC A2980001 */  sb    $t8, 1($s4)
/* B62590 800EB3F0 1000FF40 */  b     .mainLoop
/* B62594 800EB3F4 A292000A */   sb    $s2, 0xa($s4)
glabel case_DC
/* B62598 800EB3F8 928A0001 */  lbu   $t2, 1($s4)
/* B6259C 800EB3FC 93B20063 */  lbu   $s2, 0x63($sp)
/* B625A0 800EB400 35590020 */  ori   $t9, $t2, 0x20
/* B625A4 800EB404 A2990001 */  sb    $t9, 1($s4)
/* B625A8 800EB408 1000FF3A */  b     .mainLoop
/* B625AC 800EB40C A292000B */   sb    $s2, 0xb($s4)
glabel case_DB
/* B625B0 800EB410 83A20063 */  lb    $v0, 0x63($sp)
/* B625B4 800EB414 1000FF37 */  b     .mainLoop
/* B625B8 800EB418 A6820026 */   sh    $v0, 0x26($s4)
glabel case_DA
/* B625BC 800EB41C 97B10062 */  lhu   $s1, 0x62($sp)
/* B625C0 800EB420 8EE80018 */  lw    $t0, 0x18($s7)
/* B625C4 800EB424 01114821 */  addu  $t1, $t0, $s1
/* B625C8 800EB428 1000FF32 */  b     .mainLoop
/* B625CC 800EB42C AE890080 */   sw    $t1, 0x80($s4)
glabel case_D9
/* B625D0 800EB430 93B20063 */  lbu   $s2, 0x63($sp)
/* B625D4 800EB434 1000FF2F */  b     .mainLoop
/* B625D8 800EB438 A292007C */   sb    $s2, 0x7c($s4)
glabel case_D8
/* B625DC 800EB43C 93B20063 */  lbu   $s2, 0x63($sp)
/* B625E0 800EB440 A6800012 */  sh    $zero, 0x12($s4)
/* B625E4 800EB444 A680001A */  sh    $zero, 0x1a($s4)
/* B625E8 800EB448 001258C0 */  sll   $t3, $s2, 3
/* B625EC 800EB44C 1000FF29 */  b     .mainLoop
/* B625F0 800EB450 A68B0016 */   sh    $t3, 0x16($s4)
glabel case_D7
/* B625F4 800EB454 93B20063 */  lbu   $s2, 0x63($sp)
/* B625F8 800EB458 A6800018 */  sh    $zero, 0x18($s4)
/* B625FC 800EB45C 00121140 */  sll   $v0, $s2, 5
/* B62600 800EB460 A6820014 */  sh    $v0, 0x14($s4)
/* B62604 800EB464 1000FF23 */  b     .mainLoop
/* B62608 800EB468 A6820010 */   sh    $v0, 0x10($s4)
glabel case_E2
/* B6260C 800EB46C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62610 800EB470 001260C0 */  sll   $t4, $s2, 3
/* B62614 800EB474 A68C0012 */  sh    $t4, 0x12($s4)
/* B62618 800EB478 93B20067 */  lbu   $s2, 0x67($sp)
/* B6261C 800EB47C 001268C0 */  sll   $t5, $s2, 3
/* B62620 800EB480 A68D0016 */  sh    $t5, 0x16($s4)
/* B62624 800EB484 93B2006B */  lbu   $s2, 0x6b($sp)
/* B62628 800EB488 00127900 */  sll   $t7, $s2, 4
/* B6262C 800EB48C 1000FF19 */  b     .mainLoop
/* B62630 800EB490 A68F001A */   sh    $t7, 0x1a($s4)
glabel case_E1
/* B62634 800EB494 93B20063 */  lbu   $s2, 0x63($sp)
/* B62638 800EB498 0012C140 */  sll   $t8, $s2, 5
/* B6263C 800EB49C A6980010 */  sh    $t8, 0x10($s4)
/* B62640 800EB4A0 93B20067 */  lbu   $s2, 0x67($sp)
/* B62644 800EB4A4 00127140 */  sll   $t6, $s2, 5
/* B62648 800EB4A8 A68E0014 */  sh    $t6, 0x14($s4)
/* B6264C 800EB4AC 93B2006B */  lbu   $s2, 0x6b($sp)
/* B62650 800EB4B0 00125100 */  sll   $t2, $s2, 4
/* B62654 800EB4B4 1000FF0F */  b     .mainLoop
/* B62658 800EB4B8 A68A0018 */   sh    $t2, 0x18($s4)
glabel case_E3
/* B6265C 800EB4BC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62660 800EB4C0 0012C900 */  sll   $t9, $s2, 4
/* B62664 800EB4C4 1000FF0B */  b     .mainLoop
/* B62668 800EB4C8 A699001C */   sh    $t9, 0x1c($s4)
glabel case_D4
/* B6266C 800EB4CC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62670 800EB4D0 1000FF08 */  b     .mainLoop
/* B62674 800EB4D4 A2920004 */   sb    $s2, 4($s4)
glabel case_C6
/* B62678 800EB4D8 92E90005 */  lbu   $t1, 5($s7)      # defaultBank
/* B6267C 800EB4DC 93A80063 */  lbu   $t0, 0x63($sp)   # parameter[0]
/* B62680 800EB4E0 240100FF */  li    $at, 255
/* B62684 800EB4E4 1121000D */  beq   $t1, $at, .c6BankNotSet # is defaultBank == 255?
/* B62688 800EB4E8 01009025 */   move  $s2, $t0
/* B6268C 800EB4EC 92EB0004 */  lbu   $t3, 4($s7)      # seqId
/* B62690 800EB4F0 3C028017 */  lui   $v0, %hi(gAudioContext+0x283c) # $v0, 0x8017
/* B62694 800EB4F4 8C4219BC */  lw    $v0, %lo(gAudioContext+0x283c)($v0)
/* B62698 800EB4F8 000B6040 */  sll   $t4, $t3, 1
/* B6269C 800EB4FC 004C6821 */  addu  $t5, $v0, $t4
/* B626A0 800EB500 95B10000 */  lhu   $s1, ($t5)
/* B626A4 800EB504 02227821 */  addu  $t7, $s1, $v0
/* B626A8 800EB508 91F50000 */  lbu   $s5, ($t7)
/* B626AC 800EB50C 0235C021 */  addu  $t8, $s1, $s5
/* B626B0 800EB510 03087023 */  subu  $t6, $t8, $t0
/* B626B4 800EB514 01C25021 */  addu  $t2, $t6, $v0
/* B626B8 800EB518 91520000 */  lbu   $s2, ($t2)
.c6BankNotSet:
/* B626BC 800EB51C 24040001 */  li    $a0, 1
/* B626C0 800EB520 24050002 */  li    $a1, 2
/* B626C4 800EB524 0C037C1D */  jal   func_800DF074
/* B626C8 800EB528 02403025 */   move  $a2, $s2
/* B626CC 800EB52C 1040FEF1 */  beqz  $v0, .mainLoop
/* B626D0 800EB530 00000000 */   nop   
/* B626D4 800EB534 1000FEEF */  b     .mainLoop
/* B626D8 800EB538 A2920007 */   sb    $s2, 7($s4)
glabel case_C7
/* B626DC 800EB53C 93B20063 */  lbu   $s2, 0x63($sp)
/* B626E0 800EB540 97B10066 */  lhu   $s1, 0x66($sp)
/* B626E4 800EB544 8EF90018 */  lw    $t9, 0x18($s7)
/* B626E8 800EB548 92C90019 */  lbu   $t1, 0x19($s6)
/* B626EC 800EB54C 03311021 */  addu  $v0, $t9, $s1
/* B626F0 800EB550 01325821 */  addu  $t3, $t1, $s2
/* B626F4 800EB554 1000FEE7 */  b     .mainLoop
/* B626F8 800EB558 A04B0000 */   sb    $t3, ($v0)
glabel case_C8_C9_CC
/* B626FC 800EB55C 240100C8 */  li    $at, 200
/* B62700 800EB560 16010005 */  bne   $s0, $at, .L800EB578
/* B62704 800EB564 83A20063 */   lb    $v0, 0x63($sp)
/* B62708 800EB568 82CC0019 */  lb    $t4, 0x19($s6)
/* B6270C 800EB56C 01826823 */  subu  $t5, $t4, $v0
/* B62710 800EB570 1000FEE0 */  b     .mainLoop
/* B62714 800EB574 A2CD0019 */   sb    $t5, 0x19($s6)
.L800EB578:
/* B62718 800EB578 240100CC */  li    $at, 204
/* B6271C 800EB57C 56010004 */  bnel  $s0, $at, .L800EB590
/* B62720 800EB580 82CF0019 */   lb    $t7, 0x19($s6)
/* B62724 800EB584 1000FEDB */  b     .mainLoop
/* B62728 800EB588 A2C20019 */   sb    $v0, 0x19($s6)
/* B6272C 800EB58C 82CF0019 */  lb    $t7, 0x19($s6)
.L800EB590:
/* B62730 800EB590 01E2C024 */  and   $t8, $t7, $v0
/* B62734 800EB594 1000FED7 */  b     .mainLoop
/* B62738 800EB598 A2D80019 */   sb    $t8, 0x19($s6)
glabel case_CD
/* B6273C 800EB59C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62740 800EB5A0 00124080 */  sll   $t0, $s2, 2
/* B62744 800EB5A4 02E87021 */  addu  $t6, $s7, $t0
/* B62748 800EB5A8 0C03A632 */  jal   Audio_SequenceChannelDisable
/* B6274C 800EB5AC 8DC40038 */   lw    $a0, 0x38($t6)
/* B62750 800EB5B0 1000FED0 */  b     .mainLoop
/* B62754 800EB5B4 00000000 */   nop   
glabel case_CA
/* B62758 800EB5B8 92990001 */  lbu   $t9, 1($s4)
/* B6275C 800EB5BC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62760 800EB5C0 37290040 */  ori   $t1, $t9, 0x40
/* B62764 800EB5C4 A2890001 */  sb    $t1, 1($s4)
/* B62768 800EB5C8 1000FECA */  b     .mainLoop
/* B6276C 800EB5CC A2920003 */   sb    $s2, 3($s4)
glabel case_CB
/* B62770 800EB5D0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62774 800EB5D4 82CC0019 */  lb    $t4, 0x19($s6)
/* B62778 800EB5D8 8EEB0018 */  lw    $t3, 0x18($s7)
/* B6277C 800EB5DC 022C6821 */  addu  $t5, $s1, $t4
/* B62780 800EB5E0 016D7821 */  addu  $t7, $t3, $t5
/* B62784 800EB5E4 91F80000 */  lbu   $t8, ($t7)
/* B62788 800EB5E8 1000FEC2 */  b     .mainLoop
/* B6278C 800EB5EC A2D80019 */   sb    $t8, 0x19($s6)
glabel case_CE
/* B62790 800EB5F0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62794 800EB5F4 1000FEBF */  b     .mainLoop
/* B62798 800EB5F8 A6910022 */   sh    $s1, 0x22($s4)
glabel case_CF
/* B6279C 800EB5FC 97B10062 */  lhu   $s1, 0x62($sp)
/* B627A0 800EB600 8EE80018 */  lw    $t0, 0x18($s7)
/* B627A4 800EB604 968E0022 */  lhu   $t6, 0x22($s4)
/* B627A8 800EB608 01111021 */  addu  $v0, $t0, $s1
/* B627AC 800EB60C 000ECA03 */  sra   $t9, $t6, 8
/* B627B0 800EB610 A0590000 */  sb    $t9, ($v0)
/* B627B4 800EB614 968C0022 */  lhu   $t4, 0x22($s4)
/* B627B8 800EB618 1000FEB6 */  b     .mainLoop
/* B627BC 800EB61C A04C0001 */   sb    $t4, 1($v0)
glabel case_D0
/* B627C0 800EB620 93B00063 */  lbu   $s0, 0x63($sp)
/* B627C4 800EB624 320B0080 */  andi  $t3, $s0, 0x80
/* B627C8 800EB628 11600005 */  beqz  $t3, .L800EB640
/* B627CC 800EB62C 320A007F */   andi  $t2, $s0, 0x7f
/* B627D0 800EB630 928F0000 */  lbu   $t7, ($s4)
/* B627D4 800EB634 35F80004 */  ori   $t8, $t7, 4
/* B627D8 800EB638 10000004 */  b     .L800EB64C
/* B627DC 800EB63C A2980000 */   sb    $t8, ($s4)
.L800EB640:
/* B627E0 800EB640 92880000 */  lbu   $t0, ($s4)
/* B627E4 800EB644 310EFFFB */  andi  $t6, $t0, 0xfffb
/* B627E8 800EB648 A28E0000 */  sb    $t6, ($s4)
.L800EB64C:
/* B627EC 800EB64C 1000FEA9 */  b     .mainLoop
/* B627F0 800EB650 A28A00D0 */   sb    $t2, 0xd0($s4)
glabel case_D1
/* B627F4 800EB654 93B20063 */  lbu   $s2, 0x63($sp)
/* B627F8 800EB658 1000FEA6 */  b     .mainLoop
/* B627FC 800EB65C A2920002 */   sb    $s2, 2($s4)
glabel case_D2
/* B62800 800EB660 93B20063 */  lbu   $s2, 0x63($sp)
/* B62804 800EB664 1000FEA3 */  b     .mainLoop
/* B62808 800EB668 A292007D */   sb    $s2, 0x7d($s4)
glabel case_E5
/* B6280C 800EB66C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62810 800EB670 1000FEA0 */  b     .mainLoop
/* B62814 800EB674 A2920008 */   sb    $s2, 8($s4)
glabel case_E4
/* B62818 800EB678 82C20019 */  lb    $v0, 0x19($s6)
/* B6281C 800EB67C 13C2FE9D */  beq   $fp, $v0, .mainLoop
/* B62820 800EB680 00000000 */   nop   
/* B62824 800EB684 92CB0018 */  lbu   $t3, 0x18($s6)
/* B62828 800EB688 8ECC0000 */  lw    $t4, ($s6)
/* B6282C 800EB68C 8E99003C */  lw    $t9, 0x3c($s4)
/* B62830 800EB690 000B6880 */  sll   $t5, $t3, 2
/* B62834 800EB694 02CD7821 */  addu  $t7, $s6, $t5
/* B62838 800EB698 ADEC0004 */  sw    $t4, 4($t7)
/* B6283C 800EB69C 92D80018 */  lbu   $t8, 0x18($s6)
/* B62840 800EB6A0 00024840 */  sll   $t1, $v0, 1
/* B62844 800EB6A4 03298021 */  addu  $s0, $t9, $t1
/* B62848 800EB6A8 27080001 */  addiu $t0, $t8, 1
/* B6284C 800EB6AC A2C80018 */  sb    $t0, 0x18($s6)
/* B62850 800EB6B0 920A0000 */  lbu   $t2, ($s0)
/* B62854 800EB6B4 920E0001 */  lbu   $t6, 1($s0)
/* B62858 800EB6B8 8EE90018 */  lw    $t1, 0x18($s7)
/* B6285C 800EB6BC 000ACA00 */  sll   $t9, $t2, 8
/* B62860 800EB6C0 01D98821 */  addu  $s1, $t6, $t9
/* B62864 800EB6C4 3231FFFF */  andi  $s1, $s1, 0xffff
/* B62868 800EB6C8 01315821 */  addu  $t3, $t1, $s1
/* B6286C 800EB6CC 1000FE89 */  b     .mainLoop
/* B62870 800EB6D0 AECB0000 */   sw    $t3, ($s6)
glabel case_E6
/* B62874 800EB6D4 93B20063 */  lbu   $s2, 0x63($sp)
/* B62878 800EB6D8 1000FE86 */  b     .mainLoop
/* B6287C 800EB6DC A2920009 */   sb    $s2, 9($s4)
glabel case_E7
/* B62880 800EB6E0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62884 800EB6E4 8EED0018 */  lw    $t5, 0x18($s7)
/* B62888 800EB6E8 02802025 */  move  $a0, $s4
/* B6288C 800EB6EC 01B18021 */  addu  $s0, $t5, $s1
/* B62890 800EB6F0 920C0000 */  lbu   $t4, ($s0)
/* B62894 800EB6F4 26100003 */  addiu $s0, $s0, 3
/* B62898 800EB6F8 A28C0003 */  sb    $t4, 3($s4)
/* B6289C 800EB6FC 920FFFFE */  lbu   $t7, -2($s0)
/* B628A0 800EB700 A28F0002 */  sb    $t7, 2($s4)
/* B628A4 800EB704 0C03ABBD */  jal   func_800EAEF4
/* B628A8 800EB708 9205FFFF */   lbu   $a1, -1($s0)
/* B628AC 800EB70C 82180000 */  lb    $t8, ($s0)
/* B628B0 800EB710 928B0001 */  lbu   $t3, 1($s4)
/* B628B4 800EB714 26100004 */  addiu $s0, $s0, 4
/* B628B8 800EB718 A6980026 */  sh    $t8, 0x26($s4)
/* B628BC 800EB71C 9208FFFD */  lbu   $t0, -3($s0)
/* B628C0 800EB720 356D0020 */  ori   $t5, $t3, 0x20
/* B628C4 800EB724 A288000A */  sb    $t0, 0xa($s4)
/* B628C8 800EB728 920AFFFE */  lbu   $t2, -2($s0)
/* B628CC 800EB72C A28A000B */  sb    $t2, 0xb($s4)
/* B628D0 800EB730 920EFFFF */  lbu   $t6, -1($s0)
/* B628D4 800EB734 A28E0004 */  sb    $t6, 4($s4)
/* B628D8 800EB738 92190000 */  lbu   $t9, ($s0)
/* B628DC 800EB73C A28D0001 */  sb    $t5, 1($s4)
/* B628E0 800EB740 1000FE6C */  b     .mainLoop
/* B628E4 800EB744 A2990008 */   sb    $t9, 8($s4)
glabel case_E8
/* B628E8 800EB748 8FAC0060 */  lw    $t4, 0x60($sp)
/* B628EC 800EB74C 02802025 */  move  $a0, $s4
/* B628F0 800EB750 A28C0003 */  sb    $t4, 3($s4)
/* B628F4 800EB754 8FAF0064 */  lw    $t7, 0x64($sp)
/* B628F8 800EB758 A28F0002 */  sb    $t7, 2($s4)
/* B628FC 800EB75C 0C03ABBD */  jal   func_800EAEF4
/* B62900 800EB760 93A5006B */   lbu   $a1, 0x6b($sp)
/* B62904 800EB764 0C03A752 */  jal   Audio_M64ReadU8
/* B62908 800EB768 02C02025 */   move  $a0, $s6
/* B6290C 800EB76C 0002C600 */  sll   $t8, $v0, 0x18
/* B62910 800EB770 00184603 */  sra   $t0, $t8, 0x18
/* B62914 800EB774 A6880026 */  sh    $t0, 0x26($s4)
/* B62918 800EB778 0C03A752 */  jal   Audio_M64ReadU8
/* B6291C 800EB77C 02C02025 */   move  $a0, $s6
/* B62920 800EB780 A282000A */  sb    $v0, 0xa($s4)
/* B62924 800EB784 0C03A752 */  jal   Audio_M64ReadU8
/* B62928 800EB788 02C02025 */   move  $a0, $s6
/* B6292C 800EB78C A282000B */  sb    $v0, 0xb($s4)
/* B62930 800EB790 0C03A752 */  jal   Audio_M64ReadU8
/* B62934 800EB794 02C02025 */   move  $a0, $s6
/* B62938 800EB798 A2820004 */  sb    $v0, 4($s4)
/* B6293C 800EB79C 0C03A752 */  jal   Audio_M64ReadU8
/* B62940 800EB7A0 02C02025 */   move  $a0, $s6
/* B62944 800EB7A4 928E0001 */  lbu   $t6, 1($s4)
/* B62948 800EB7A8 A2820008 */  sb    $v0, 8($s4)
/* B6294C 800EB7AC 35D90020 */  ori   $t9, $t6, 0x20
/* B62950 800EB7B0 1000FE50 */  b     .mainLoop
/* B62954 800EB7B4 A2990001 */   sb    $t9, 1($s4)
glabel case_EC
/* B62958 800EB7B8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6295C 800EB7BC 44818000 */  mtc1  $at, $f16
/* B62960 800EB7C0 A6800016 */  sh    $zero, 0x16($s4)
/* B62964 800EB7C4 A6800012 */  sh    $zero, 0x12($s4)
/* B62968 800EB7C8 A680001A */  sh    $zero, 0x1a($s4)
/* B6296C 800EB7CC A6800014 */  sh    $zero, 0x14($s4)
/* B62970 800EB7D0 A6800010 */  sh    $zero, 0x10($s4)
/* B62974 800EB7D4 A6800018 */  sh    $zero, 0x18($s4)
/* B62978 800EB7D8 AE8000CC */  sw    $zero, 0xcc($s4)
/* B6297C 800EB7DC A280000C */  sb    $zero, 0xc($s4)
/* B62980 800EB7E0 A280007D */  sb    $zero, 0x7d($s4)
/* B62984 800EB7E4 A280000D */  sb    $zero, 0xd($s4)
/* B62988 800EB7E8 A280000E */  sb    $zero, 0xe($s4)
/* B6298C 800EB7EC A280000F */  sb    $zero, 0xf($s4)
/* B62990 800EB7F0 A6800020 */  sh    $zero, 0x20($s4)
/* B62994 800EB7F4 A2800009 */  sb    $zero, 9($s4)
/* B62998 800EB7F8 1000FE3E */  b     .mainLoop
/* B6299C 800EB7FC E6900038 */   swc1  $f16, 0x38($s4)
glabel case_E9
/* B629A0 800EB800 02802025 */  move  $a0, $s4
/* B629A4 800EB804 0C03ABBD */  jal   func_800EAEF4
/* B629A8 800EB808 93A50063 */   lbu   $a1, 0x63($sp)
/* B629AC 800EB80C 1000FE39 */  b     .mainLoop
/* B629B0 800EB810 00000000 */   nop   
glabel case_ED
/* B629B4 800EB814 93B20063 */  lbu   $s2, 0x63($sp)
/* B629B8 800EB818 1000FE36 */  b     .mainLoop
/* B629BC 800EB81C A292000C */   sb    $s2, 0xc($s4)
glabel case_B0
/* B629C0 800EB820 97B10062 */  lhu   $s1, 0x62($sp)
/* B629C4 800EB824 8EE90018 */  lw    $t1, 0x18($s7)
/* B629C8 800EB828 01318021 */  addu  $s0, $t1, $s1
/* B629CC 800EB82C 1000FE31 */  b     .mainLoop
/* B629D0 800EB830 AE9000CC */   sw    $s0, 0xcc($s4)
glabel case_B1
/* B629D4 800EB834 1000FE2F */  b     .mainLoop
/* B629D8 800EB838 AE8000CC */   sw    $zero, 0xcc($s4)
glabel case_B3
/* B629DC 800EB83C 8E8400CC */  lw    $a0, 0xcc($s4)
/* B629E0 800EB840 93B20063 */  lbu   $s2, 0x63($sp)
/* B629E4 800EB844 1080FE2B */  beqz  $a0, .mainLoop
/* B629E8 800EB848 0012A903 */   sra   $s5, $s2, 4
/* B629EC 800EB84C 02408025 */  move  $s0, $s2
/* B629F0 800EB850 32B5000F */  andi  $s5, $s5, 0xf
/* B629F4 800EB854 3252000F */  andi  $s2, $s2, 0xf
/* B629F8 800EB858 32A500FF */  andi  $a1, $s5, 0xff
/* B629FC 800EB85C 0C037DA2 */  jal   func_800DF688
/* B62A00 800EB860 324600FF */   andi  $a2, $s2, 0xff
/* B62A04 800EB864 1000FE23 */  b     .mainLoop
/* B62A08 800EB868 00000000 */   nop   
glabel case_B2
/* B62A0C 800EB86C 82CD0019 */  lb    $t5, 0x19($s6)
/* B62A10 800EB870 97B10062 */  lhu   $s1, 0x62($sp)
/* B62A14 800EB874 8EEB0018 */  lw    $t3, 0x18($s7)
/* B62A18 800EB878 000D6040 */  sll   $t4, $t5, 1   
/* B62A1C 800EB87C 022C7821 */  addu  $t7, $s1, $t4 
/* B62A20 800EB880 016FC021 */  addu  $t8, $t3, $t7 
/* B62A24 800EB884 97080000 */  lhu   $t0, ($t8)    
/* B62A28 800EB888 1000FE1A */  b     .mainLoop
/* B62A2C 800EB88C A6880022 */   sh    $t0, 0x22($s4)
glabel case_B4
/* B62A30 800EB890 8EEA0018 */  lw    $t2, 0x18($s7)
/* B62A34 800EB894 968E0022 */  lhu   $t6, 0x22($s4)
/* B62A38 800EB898 014EC821 */  addu  $t9, $t2, $t6
/* B62A3C 800EB89C 1000FE15 */  b     .mainLoop
/* B62A40 800EB8A0 AE99003C */   sw    $t9, 0x3c($s4)
glabel case_B5
/* B62A44 800EB8A4 82CD0019 */  lb    $t5, 0x19($s6)
/* B62A48 800EB8A8 8E89003C */  lw    $t1, 0x3c($s4)
/* B62A4C 800EB8AC 000D6040 */  sll   $t4, $t5, 1
/* B62A50 800EB8B0 012C5821 */  addu  $t3, $t1, $t4
/* B62A54 800EB8B4 956F0000 */  lhu   $t7, ($t3)
/* B62A58 800EB8B8 1000FE0E */  b     .mainLoop
/* B62A5C 800EB8BC A68F0022 */   sh    $t7, 0x22($s4)
glabel case_B6
/* B62A60 800EB8C0 8E98003C */  lw    $t8, 0x3c($s4)
/* B62A64 800EB8C4 82C80019 */  lb    $t0, 0x19($s6)
/* B62A68 800EB8C8 03085021 */  addu  $t2, $t8, $t0
/* B62A6C 800EB8CC 914E0000 */  lbu   $t6, ($t2)
/* B62A70 800EB8D0 1000FE08 */  b     .mainLoop
/* B62A74 800EB8D4 A2CE0019 */   sb    $t6, 0x19($s6)
glabel case_B7
/* B62A78 800EB8D8 8FB90060 */  lw    $t9, 0x60($sp)
/* B62A7C 800EB8DC 3C0C8017 */  lui   $t4, %hi(gAudioContext+0x297c) # $t4, 0x8017
/* B62A80 800EB8E0 8FAB0060 */  lw    $t3, 0x60($sp)
/* B62A84 800EB8E4 17200005 */  bnez  $t9, .L800EB8FC
/* B62A88 800EB8E8 00000000 */   nop   
/* B62A8C 800EB8EC 3C0D8017 */  lui   $t5, %hi(gAudioContext+0x297c) # $t5, 0x8017
/* B62A90 800EB8F0 8DA91AFC */  lw    $t1, %lo(gAudioContext+0x297c)($t5)
/* B62A94 800EB8F4 1000FDFF */  b     .mainLoop
/* B62A98 800EB8F8 A6890022 */   sh    $t1, 0x22($s4)
.L800EB8FC:
/* B62A9C 800EB8FC 8D8C1AFC */  lw    $t4, %lo(gAudioContext+0x297c)($t4)
/* B62AA0 800EB900 018B001B */  divu  $zero, $t4, $t3
/* B62AA4 800EB904 00007810 */  mfhi  $t7
/* B62AA8 800EB908 A68F0022 */  sh    $t7, 0x22($s4)
/* B62AAC 800EB90C 15600002 */  bnez  $t3, .L800EB918
/* B62AB0 800EB910 00000000 */   nop   
/* B62AB4 800EB914 0007000D */  break 7
.L800EB918:
/* B62AB8 800EB918 1000FDF6 */  b     .mainLoop
/* B62ABC 800EB91C 00000000 */   nop   
glabel case_B8
/* B62AC0 800EB920 8FB80060 */  lw    $t8, 0x60($sp)
/* B62AC4 800EB924 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x297c) # $t6, 0x8017
/* B62AC8 800EB928 8FB90060 */  lw    $t9, 0x60($sp)
/* B62ACC 800EB92C 17000005 */  bnez  $t8, .L800EB944
/* B62AD0 800EB930 00000000 */   nop   
/* B62AD4 800EB934 3C088017 */  lui   $t0, %hi(gAudioContext+0x297c) # $t0, 0x8017
/* B62AD8 800EB938 8D0A1AFC */  lw    $t2, %lo(gAudioContext+0x297c)($t0)
/* B62ADC 800EB93C 1000FDED */  b     .mainLoop
/* B62AE0 800EB940 A2CA0019 */   sb    $t2, 0x19($s6)
.L800EB944:
/* B62AE4 800EB944 8DCE1AFC */  lw    $t6, %lo(gAudioContext+0x297c)($t6)
/* B62AE8 800EB948 01D9001B */  divu  $zero, $t6, $t9
/* B62AEC 800EB94C 00006810 */  mfhi  $t5
/* B62AF0 800EB950 A2CD0019 */  sb    $t5, 0x19($s6)
/* B62AF4 800EB954 17200002 */  bnez  $t9, .L800EB960
/* B62AF8 800EB958 00000000 */   nop   
/* B62AFC 800EB95C 0007000D */  break 7
.L800EB960:
/* B62B00 800EB960 1000FDE4 */  b     .mainLoop
/* B62B04 800EB964 00000000 */   nop   
glabel case_BD
/* B62B08 800EB968 0C0399F0 */  jal   Audio_NextRandom
/* B62B0C 800EB96C 00000000 */   nop   
/* B62B10 800EB970 8FA90060 */  lw    $t1, 0x60($sp)
/* B62B14 800EB974 8FAB0060 */  lw    $t3, 0x60($sp)
/* B62B18 800EB978 15200003 */  bnez  $t1, .bdParameterSet
/* B62B1C 800EB97C 00000000 */   nop   
/* B62B20 800EB980 10000007 */  b     .bdPad22Set
/* B62B24 800EB984 A6820022 */   sh    $v0, 0x22($s4)
.bdParameterSet:
/* B62B28 800EB988 004B001B */  divu  $zero, $v0, $t3
/* B62B2C 800EB98C 00007810 */  mfhi  $t7
/* B62B30 800EB990 A68F0022 */  sh    $t7, 0x22($s4)
/* B62B34 800EB994 15600002 */  bnez  $t3, .bdPad22Set
/* B62B38 800EB998 00000000 */   nop   
/* B62B3C 800EB99C 0007000D */  break 7
.bdPad22Set:
/* B62B40 800EB9A0 96980022 */  lhu   $t8, 0x22($s4)   # channel->pad_22
/* B62B44 800EB9A4 8FA80064 */  lw    $t0, 0x64($sp)   # parameter[1]
/* B62B48 800EB9A8 03085021 */  addu  $t2, $t8, $t0    # channel->pad_22 + parameter[1]
/* B62B4C 800EB9AC 3142FFFF */  andi  $v0, $t2, 0xffff # (u16)(t2)
/* B62B50 800EB9B0 A68A0022 */  sh    $t2, 0x22($s4)   # pad_22 = t2
/* B62B54 800EB9B4 04410003 */  bgez  $v0, .L800EB9C4  # is (u16)(t2) >= 0?
/* B62B58 800EB9B8 00021A03 */   sra   $v1, $v0, 8     # (u16)(t2) >> 8
/* B62B5C 800EB9BC 244100FF */  addiu $at, $v0, 0xff   # 
/* B62B60 800EB9C0 00011A03 */  sra   $v1, $at, 8      # ((t2) + 255) >> 8
.L800EB9C4:
/* B62B64 800EB9C4 24630080 */  addiu $v1, $v1, 0x80
/* B62B68 800EB9C8 04410004 */  bgez  $v0, .L800EB9DC
/* B62B6C 800EB9CC 304400FF */   andi  $a0, $v0, 0xff
/* B62B70 800EB9D0 10800002 */  beqz  $a0, .L800EB9DC
/* B62B74 800EB9D4 00000000 */   nop   
/* B62B78 800EB9D8 2484FF00 */  addiu $a0, $a0, -0x100
.L800EB9DC:
/* B62B7C 800EB9DC 00037200 */  sll   $t6, $v1, 8
/* B62B80 800EB9E0 01C4C825 */  or    $t9, $t6, $a0
/* B62B84 800EB9E4 1000FDC3 */  b     .mainLoop
/* B62B88 800EB9E8 A6990022 */   sh    $t9, 0x22($s4)
glabel case_B9
/* B62B8C 800EB9EC 8FAD0060 */  lw    $t5, 0x60($sp)
/* B62B90 800EB9F0 1000FDC0 */  b     .mainLoop
/* B62B94 800EB9F4 A28D000D */   sb    $t5, 0xd($s4)
glabel case_BA
/* B62B98 800EB9F8 8FA90060 */  lw    $t1, 0x60($sp)
/* B62B9C 800EB9FC 1000FDBD */  b     .mainLoop
/* B62BA0 800EBA00 A289000E */   sb    $t1, 0xe($s4)
glabel case_BB
/* B62BA4 800EBA04 8FAC0060 */  lw    $t4, 0x60($sp)
/* B62BA8 800EBA08 A28C000F */  sb    $t4, 0xf($s4)
/* B62BAC 800EBA0C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B62BB0 800EBA10 1000FDB8 */  b     .mainLoop
/* B62BB4 800EBA14 A68B0020 */   sh    $t3, 0x20($s4)
glabel case_BC
/* B62BB8 800EBA18 968F0022 */  lhu   $t7, 0x22($s4)
/* B62BBC 800EBA1C 8FB80060 */  lw    $t8, 0x60($sp)
/* B62BC0 800EBA20 01F84021 */  addu  $t0, $t7, $t8
/* B62BC4 800EBA24 1000FDB3 */  b     .mainLoop
/* B62BC8 800EBA28 A6880022 */   sh    $t0, 0x22($s4)
.cmdBelowB0:
/* B62BCC 800EBA2C 28810070 */  slti  $at, $a0, 0x70
/* B62BD0 800EBA30 1420005D */  bnez  $at, .cmdBelow70
/* B62BD4 800EBA34 3085000F */   andi  $a1, $a0, 0xf
/* B62BD8 800EBA38 30850007 */  andi  $a1, $a0, 7
/* B62BDC 800EBA3C 308300F8 */  andi  $v1, $a0, 0xf8
/* B62BE0 800EBA40 24010070 */  li    $at, 112
/* B62BE4 800EBA44 10610006 */  beq   $v1, $at, .dontDefaultLayer
/* B62BE8 800EBA48 30B500FF */   andi  $s5, $a1, 0xff
/* B62BEC 800EBA4C 30AA00FF */  andi  $t2, $a1, 0xff
/* B62BF0 800EBA50 29410004 */  slti  $at, $t2, 4
/* B62BF4 800EBA54 54200003 */  bnezl $at, .dontDefaultLayer2
/* B62BF8 800EBA58 246EFF90 */   addiu $t6, $v1, -0x70
/* B62BFC 800EBA5C 0000A825 */  move  $s5, $zero
.dontDefaultLayer:
/* B62C00 800EBA60 246EFF90 */  addiu $t6, $v1, -0x70
.dontDefaultLayer2:
/* B62C04 800EBA64 2DC10029 */  sltiu $at, $t6, 0x29
/* B62C08 800EBA68 1020FDA2 */  beqz  $at, .mainLoop
/* B62C0C 800EBA6C 000E7080 */   sll   $t6, $t6, 2
/* B62C10 800EBA70 3C018015 */  lui   $at, %hi(secondSwitch)
/* B62C14 800EBA74 002E0821 */  addu  $at, $at, $t6
/* B62C18 800EBA78 8C2E97BC */  lw    $t6, %lo(secondSwitch)($at)
/* B62C1C 800EBA7C 01C00008 */  jr    $t6
/* B62C20 800EBA80 00000000 */   nop   
glabel case_80
/* B62C24 800EBA84 0015C880 */  sll   $t9, $s5, 2
/* B62C28 800EBA88 02996821 */  addu  $t5, $s4, $t9
/* B62C2C 800EBA8C 8DA20050 */  lw    $v0, 0x50($t5)
/* B62C30 800EBA90 10400006 */  beqz  $v0, .L800EBAAC
/* B62C34 800EBA94 00000000 */   nop   
/* B62C38 800EBA98 8C490000 */  lw    $t1, ($v0)
/* B62C3C 800EBA9C 00096040 */  sll   $t4, $t1, 1
/* B62C40 800EBAA0 000C5FC2 */  srl   $t3, $t4, 0x1f
/* B62C44 800EBAA4 1000FD93 */  b     .mainLoop
/* B62C48 800EBAA8 A2CB0019 */   sb    $t3, 0x19($s6)
.L800EBAAC:
/* B62C4C 800EBAAC 1000FD91 */  b     .mainLoop
/* B62C50 800EBAB0 A2DE0019 */   sb    $fp, 0x19($s6)
glabel case_88
/* B62C54 800EBAB4 0C03A757 */  jal   Audio_M64ReadS16
/* B62C58 800EBAB8 02C02025 */   move  $a0, $s6
/* B62C5C 800EBABC 3051FFFF */  andi  $s1, $v0, 0xffff
/* B62C60 800EBAC0 02802025 */  move  $a0, $s4
/* B62C64 800EBAC4 0C03A5B6 */  jal   Audio_SeqChannelSetLayer
/* B62C68 800EBAC8 02A02825 */   move  $a1, $s5
/* B62C6C 800EBACC 1440FD89 */  bnez  $v0, .mainLoop
/* B62C70 800EBAD0 00154080 */   sll   $t0, $s5, 2
/* B62C74 800EBAD4 8EEF0018 */  lw    $t7, 0x18($s7)
/* B62C78 800EBAD8 02885021 */  addu  $t2, $s4, $t0
/* B62C7C 800EBADC 8D4E0050 */  lw    $t6, 0x50($t2)
/* B62C80 800EBAE0 01F1C021 */  addu  $t8, $t7, $s1
/* B62C84 800EBAE4 1000FD83 */  b     .mainLoop
/* B62C88 800EBAE8 ADD80054 */   sw    $t8, 0x54($t6)
glabel case_90
/* B62C8C 800EBAEC 02802025 */  move  $a0, $s4
/* B62C90 800EBAF0 0C03A61E */  jal   Audio_SeqChannelLayerFree
/* B62C94 800EBAF4 02A02825 */   move  $a1, $s5
/* B62C98 800EBAF8 1000FD7E */  b     .mainLoop
/* B62C9C 800EBAFC 00000000 */   nop   
glabel case_98
/* B62CA0 800EBB00 82D90019 */  lb    $t9, 0x19($s6)
/* B62CA4 800EBB04 02802025 */  move  $a0, $s4
/* B62CA8 800EBB08 13D9FD7A */  beq   $fp, $t9, .mainLoop
/* B62CAC 800EBB0C 00000000 */   nop   
/* B62CB0 800EBB10 0C03A5B6 */  jal   Audio_SeqChannelSetLayer
/* B62CB4 800EBB14 02A02825 */   move  $a1, $s5
/* B62CB8 800EBB18 105EFD76 */  beq   $v0, $fp, .mainLoop
/* B62CBC 800EBB1C 00157080 */   sll   $t6, $s5, 2
/* B62CC0 800EBB20 82C90019 */  lb    $t1, 0x19($s6)
/* B62CC4 800EBB24 8E8D003C */  lw    $t5, 0x3c($s4)
/* B62CC8 800EBB28 8EEA0018 */  lw    $t2, 0x18($s7)
/* B62CCC 800EBB2C 00096040 */  sll   $t4, $t1, 1
/* B62CD0 800EBB30 01AC8021 */  addu  $s0, $t5, $t4
/* B62CD4 800EBB34 920F0000 */  lbu   $t7, ($s0)
/* B62CD8 800EBB38 920B0001 */  lbu   $t3, 1($s0)
/* B62CDC 800EBB3C 028EC821 */  addu  $t9, $s4, $t6
/* B62CE0 800EBB40 000F4200 */  sll   $t0, $t7, 8
/* B62CE4 800EBB44 01688821 */  addu  $s1, $t3, $t0
/* B62CE8 800EBB48 8F290050 */  lw    $t1, 0x50($t9)
/* B62CEC 800EBB4C 3231FFFF */  andi  $s1, $s1, 0xffff
/* B62CF0 800EBB50 0151C021 */  addu  $t8, $t2, $s1
/* B62CF4 800EBB54 1000FD67 */  b     .mainLoop
/* B62CF8 800EBB58 AD380054 */   sw    $t8, 0x54($t1)
glabel case_70
/* B62CFC 800EBB5C 82CD0019 */  lb    $t5, 0x19($s6)
/* B62D00 800EBB60 02956021 */  addu  $t4, $s4, $s5
/* B62D04 800EBB64 1000FD63 */  b     .mainLoop
/* B62D08 800EBB68 A18D00C4 */   sb    $t5, 0xc4($t4)
glabel case_78
/* B62D0C 800EBB6C 0C03A757 */  jal   Audio_M64ReadS16
/* B62D10 800EBB70 02C02025 */   move  $a0, $s6
/* B62D14 800EBB74 00028400 */  sll   $s0, $v0, 0x10
/* B62D18 800EBB78 00108403 */  sra   $s0, $s0, 0x10
/* B62D1C 800EBB7C 02802025 */  move  $a0, $s4
/* B62D20 800EBB80 0C03A5B6 */  jal   Audio_SeqChannelSetLayer
/* B62D24 800EBB84 02A02825 */   move  $a1, $s5
/* B62D28 800EBB88 1440FD5A */  bnez  $v0, .mainLoop
/* B62D2C 800EBB8C 00154080 */   sll   $t0, $s5, 2
/* B62D30 800EBB90 8ECF0000 */  lw    $t7, ($s6)
/* B62D34 800EBB94 02885021 */  addu  $t2, $s4, $t0
/* B62D38 800EBB98 8D4E0050 */  lw    $t6, 0x50($t2)
/* B62D3C 800EBB9C 01F05821 */  addu  $t3, $t7, $s0
/* B62D40 800EBBA0 1000FD54 */  b     .mainLoop
/* B62D44 800EBBA4 ADCB0054 */   sw    $t3, 0x54($t6)
.cmdBelow70:
/* B62D48 800EBBA8 309900F0 */  andi  $t9, $a0, 0xf0
/* B62D4C 800EBBAC 2F210061 */  sltiu $at, $t9, 0x61
/* B62D50 800EBBB0 1020FD50 */  beqz  $at, .mainLoop
/* B62D54 800EBBB4 30B500FF */   andi  $s5, $a1, 0xff
/* B62D58 800EBBB8 0019C880 */  sll   $t9, $t9, 2
/* B62D5C 800EBBBC 3C018015 */  lui   $at, %hi(thirdSwitch)
/* B62D60 800EBBC0 00390821 */  addu  $at, $at, $t9
/* B62D64 800EBBC4 8C399860 */  lw    $t9, %lo(thirdSwitch)($at)
/* B62D68 800EBBC8 03200008 */  jr    $t9
/* B62D6C 800EBBCC 00000000 */   nop   
glabel case_0
/* B62D70 800EBBD0 30B800FF */  andi  $t8, $a1, 0xff
/* B62D74 800EBBD4 10000049 */  b     .processLayers1
/* B62D78 800EBBD8 A698001E */   sh    $t8, 0x1e($s4)
glabel case_10
/* B62D7C 800EBBDC 30A900FF */  andi  $t1, $a1, 0xff
/* B62D80 800EBBE0 29210008 */  slti  $at, $t1, 8
/* B62D84 800EBBE4 1020000C */  beqz  $at, .L800EBC18
/* B62D88 800EBBE8 3255000F */   andi  $s5, $s2, 0xf
/* B62D8C 800EBBEC 324C000F */  andi  $t4, $s2, 0xf
/* B62D90 800EBBF0 028C1021 */  addu  $v0, $s4, $t4
/* B62D94 800EBBF4 A05E00C4 */  sb    $fp, 0xc4($v0)
/* B62D98 800EBBF8 82C50019 */  lb    $a1, 0x19($s6)
/* B62D9C 800EBBFC 92840007 */  lbu   $a0, 7($s4)
/* B62DA0 800EBC00 0C038D05 */  jal   func_800E3414
/* B62DA4 800EBC04 244600C4 */   addiu $a2, $v0, 0xc4
/* B62DA8 800EBC08 145EFD3A */  bne   $v0, $fp, .mainLoop
/* B62DAC 800EBC0C 00000000 */   nop   
/* B62DB0 800EBC10 1000FD38 */  b     .mainLoop
/* B62DB4 800EBC14 00000000 */   nop   
.L800EBC18:
/* B62DB8 800EBC18 26B5FFF8 */  addiu $s5, $s5, -8
/* B62DBC 800EBC1C 32B500FF */  andi  $s5, $s5, 0xff
/* B62DC0 800EBC20 02951021 */  addu  $v0, $s4, $s5
/* B62DC4 800EBC24 A05E00C4 */  sb    $fp, 0xc4($v0)
/* B62DC8 800EBC28 96850022 */  lhu   $a1, 0x22($s4)
/* B62DCC 800EBC2C 92840007 */  lbu   $a0, 7($s4)
/* B62DD0 800EBC30 244600C4 */  addiu $a2, $v0, 0xc4
/* B62DD4 800EBC34 0C038D05 */  jal   func_800E3414
/* B62DD8 800EBC38 24A50100 */   addiu $a1, $a1, 0x100
/* B62DDC 800EBC3C 145EFD2D */  bne   $v0, $fp, .mainLoop
/* B62DE0 800EBC40 00000000 */   nop   
/* B62DE4 800EBC44 1000FD2B */  b     .mainLoop
/* B62DE8 800EBC48 00000000 */   nop   
glabel case_60
/* B62DEC 800EBC4C 30A300FF */  andi  $v1, $a1, 0xff
/* B62DF0 800EBC50 02832021 */  addu  $a0, $s4, $v1
/* B62DF4 800EBC54 808F00C4 */  lb    $t7, 0xc4($a0)
/* B62DF8 800EBC58 28610002 */  slti  $at, $v1, 2
/* B62DFC 800EBC5C 1020FD25 */  beqz  $at, .mainLoop
/* B62E00 800EBC60 A2CF0019 */   sb    $t7, 0x19($s6)
/* B62E04 800EBC64 1000FD23 */  b     .mainLoop
/* B62E08 800EBC68 A09E00C4 */   sb    $fp, 0xc4($a0)
glabel case_50
/* B62E0C 800EBC6C 30AA00FF */  andi  $t2, $a1, 0xff
/* B62E10 800EBC70 028A5821 */  addu  $t3, $s4, $t2
/* B62E14 800EBC74 816E00C4 */  lb    $t6, 0xc4($t3)
/* B62E18 800EBC78 82C80019 */  lb    $t0, 0x19($s6)
/* B62E1C 800EBC7C 010EC823 */  subu  $t9, $t0, $t6
/* B62E20 800EBC80 1000FD1C */  b     .mainLoop
/* B62E24 800EBC84 A2D90019 */   sb    $t9, 0x19($s6)
glabel case_20
/* B62E28 800EBC88 0C03A757 */  jal   Audio_M64ReadS16
/* B62E2C 800EBC8C 02C02025 */   move  $a0, $s6
/* B62E30 800EBC90 8EF80018 */  lw    $t8, 0x18($s7)
/* B62E34 800EBC94 02402825 */  move  $a1, $s2
/* B62E38 800EBC98 3049FFFF */  andi  $t1, $v0, 0xffff
/* B62E3C 800EBC9C 30A5000F */  andi  $a1, $a1, 0xf
/* B62E40 800EBCA0 02E02025 */  move  $a0, $s7
/* B62E44 800EBCA4 0C03A6AB */  jal   Audio_SequenceChannelEnable
/* B62E48 800EBCA8 03093021 */   addu  $a2, $t8, $t1
/* B62E4C 800EBCAC 1000FD11 */  b     .mainLoop
/* B62E50 800EBCB0 00000000 */   nop   
glabel case_30
/* B62E54 800EBCB4 0C03A752 */  jal   Audio_M64ReadU8
/* B62E58 800EBCB8 02C02025 */   move  $a0, $s6
/* B62E5C 800EBCBC 00156080 */  sll   $t4, $s5, 2
/* B62E60 800EBCC0 02EC7821 */  addu  $t7, $s7, $t4
/* B62E64 800EBCC4 8DEA0038 */  lw    $t2, 0x38($t7)
/* B62E68 800EBCC8 82CD0019 */  lb    $t5, 0x19($s6)
/* B62E6C 800EBCCC 01425821 */  addu  $t3, $t2, $v0
/* B62E70 800EBCD0 1000FD08 */  b     .mainLoop
/* B62E74 800EBCD4 A16D00C4 */   sb    $t5, 0xc4($t3)
glabel case_40
/* B62E78 800EBCD8 0C03A752 */  jal   Audio_M64ReadU8
/* B62E7C 800EBCDC 02C02025 */   move  $a0, $s6
/* B62E80 800EBCE0 00154080 */  sll   $t0, $s5, 2
/* B62E84 800EBCE4 02E87021 */  addu  $t6, $s7, $t0
/* B62E88 800EBCE8 8DD90038 */  lw    $t9, 0x38($t6)
/* B62E8C 800EBCEC 0322C021 */  addu  $t8, $t9, $v0
/* B62E90 800EBCF0 830900C4 */  lb    $t1, 0xc4($t8)
/* B62E94 800EBCF4 1000FCFF */  b     .mainLoop
/* B62E98 800EBCF8 A2C90019 */   sb    $t1, 0x19($s6)
.processLayers1:
/* B62E9C 800EBCFC 00008025 */  move  $s0, $zero
.processLayers2:
/* B62EA0 800EBD00 02808825 */  move  $s1, $s4
/* B62EA4 800EBD04 24120010 */  li    $s2, 16
.layerLoop:
/* B62EA8 800EBD08 8E240050 */  lw    $a0, 0x50($s1)
/* B62EAC 800EBD0C 50800004 */  beql  $a0, $zero, .isLayerDisabled
/* B62EB0 800EBD10 26100004 */   addiu $s0, $s0, 4
/* B62EB4 800EBD14 0C03A775 */  jal   Audio_SeqChannelLayerProcessScript
/* B62EB8 800EBD18 00000000 */   nop   
/* B62EBC 800EBD1C 26100004 */  addiu $s0, $s0, 4
.isLayerDisabled:
/* B62EC0 800EBD20 1612FFF9 */  bne   $s0, $s2, .layerLoop
/* B62EC4 800EBD24 26310004 */   addiu $s1, $s1, 4
/* B62EC8 800EBD28 8FBF003C */  lw    $ra, 0x3c($sp)
.return:
/* B62ECC 800EBD2C 8FB00018 */  lw    $s0, 0x18($sp)
/* B62ED0 800EBD30 8FB1001C */  lw    $s1, 0x1c($sp)
/* B62ED4 800EBD34 8FB20020 */  lw    $s2, 0x20($sp)
/* B62ED8 800EBD38 8FB30024 */  lw    $s3, 0x24($sp)
/* B62EDC 800EBD3C 8FB40028 */  lw    $s4, 0x28($sp)
/* B62EE0 800EBD40 8FB5002C */  lw    $s5, 0x2c($sp)
/* B62EE4 800EBD44 8FB60030 */  lw    $s6, 0x30($sp)
/* B62EE8 800EBD48 8FB70034 */  lw    $s7, 0x34($sp)
/* B62EEC 800EBD4C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B62EF0 800EBD50 03E00008 */  jr    $ra
/* B62EF4 800EBD54 27BD0088 */   addiu $sp, $sp, 0x88

