.rdata
glabel D_80145240
    .asciz "\x1b[31m"
    .balign 4

glabel D_80145248
    .asciz "RCPが帰ってきませんでした。"
    .balign 4

glabel D_80145264
    .asciz "\x1b[m"
    .balign 4

glabel D_80145268
    .asciz "RCP is HUNG UP!!"
    .balign 4

glabel D_8014527C
    .asciz "Oh! MY GOD!!"
    .balign 4

glabel D_8014528C
    .asciz "../graph.c"
    .balign 4

glabel D_80145298
    .asciz "../graph.c"
    .balign 4


.text
glabel Graph_TaskSet00
/* B3CF60 800C5DC0 27BDFF68 */  addiu $sp, $sp, -0x98
/* B3CF64 800C5DC4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3CF68 800C5DC8 AFB10028 */  sw    $s1, 0x28($sp)
/* B3CF6C 800C5DCC 00808825 */  move  $s1, $a0
/* B3CF70 800C5DD0 0C001A78 */  jal   osGetTime
/* B3CF74 800C5DD4 AFB00024 */   sw    $s0, 0x24($sp)
/* B3CF78 800C5DD8 3C0E8016 */  lui   $t6, %hi(sGraphSetTaskTime) # $t6, 0x8016
/* B3CF7C 800C5DDC 3C0F8016 */  lui   $t7, %hi(sGraphSetTaskTime+4) # $t7, 0x8016
/* B3CF80 800C5DE0 8DEF65DC */  lw    $t7, %lo(sGraphSetTaskTime+4)($t7)
/* B3CF84 800C5DE4 8DCE65D8 */  lw    $t6, %lo(sGraphSetTaskTime)($t6)
/* B3CF88 800C5DE8 3C108017 */  lui   $s0, %hi(D_8016A558) # $s0, 0x8017
/* B3CF8C 800C5DEC 2610A558 */  addiu $s0, %lo(D_8016A558) # addiu $s0, $s0, -0x5aa8
/* B3CF90 800C5DF0 8E080000 */  lw    $t0, ($s0)
/* B3CF94 800C5DF4 8E090004 */  lw    $t1, 4($s0)
/* B3CF98 800C5DF8 006F082B */  sltu  $at, $v1, $t7
/* B3CF9C 800C5DFC 004EC023 */  subu  $t8, $v0, $t6
/* B3CFA0 800C5E00 0301C023 */  subu  $t8, $t8, $at
/* B3CFA4 800C5E04 006FC823 */  subu  $t9, $v1, $t7
/* B3CFA8 800C5E08 3C0C8017 */  lui   $t4, %hi(D_8016A528) # $t4, 0x8017
/* B3CFAC 800C5E0C 03085023 */  subu  $t2, $t8, $t0
/* B3CFB0 800C5E10 0329082B */  sltu  $at, $t9, $t1
/* B3CFB4 800C5E14 01415023 */  subu  $t2, $t2, $at
/* B3CFB8 800C5E18 258CA528 */  addiu $t4, %lo(D_8016A528) # addiu $t4, $t4, -0x5ad8
/* B3CFBC 800C5E1C AD8A0000 */  sw    $t2, ($t4)
/* B3CFC0 800C5E20 03295823 */  subu  $t3, $t9, $t1
/* B3CFC4 800C5E24 AD8B0004 */  sw    $t3, 4($t4)
/* B3CFC8 800C5E28 240F0000 */  li    $t7, 0
/* B3CFCC 800C5E2C 240E0000 */  li    $t6, 0
/* B3CFD0 800C5E30 3C070861 */  lui   $a3, (0x0861C468 >> 16) # lui $a3, 0x861
/* B3CFD4 800C5E34 2625005C */  addiu $a1, $s1, 0x5c
/* B3CFD8 800C5E38 240D029A */  li    $t5, 666
/* B3CFDC 800C5E3C AFAD001C */  sw    $t5, 0x1c($sp)
/* B3CFE0 800C5E40 AFA50018 */  sw    $a1, 0x18($sp)
/* B3CFE4 800C5E44 AFA50038 */  sw    $a1, 0x38($sp)
/* B3CFE8 800C5E48 34E7C468 */  ori   $a3, (0x0861C468 & 0xFFFF) # ori $a3, $a3, 0xc468
/* B3CFEC 800C5E4C AFAE0010 */  sw    $t6, 0x10($sp)
/* B3CFF0 800C5E50 AFAF0014 */  sw    $t7, 0x14($sp)
/* B3CFF4 800C5E54 27A40070 */  addiu $a0, $sp, 0x70
/* B3CFF8 800C5E58 0C0418B8 */  jal   osSetTimer
/* B3CFFC 800C5E5C 24060000 */   li    $a2, 0
/* B3D000 800C5E60 8FA40038 */  lw    $a0, 0x38($sp)
/* B3D004 800C5E64 27A5006C */  addiu $a1, $sp, 0x6c
/* B3D008 800C5E68 0C000CA0 */  jal   osRecvMesg
/* B3D00C 800C5E6C 24060001 */   li    $a2, 1
/* B3D010 800C5E70 0C0408CC */  jal   osStopTimer
/* B3D014 800C5E74 27A40070 */   addiu $a0, $sp, 0x70
/* B3D018 800C5E78 8FB8006C */  lw    $t8, 0x6c($sp)
/* B3D01C 800C5E7C 2401029A */  li    $at, 666
/* B3D020 800C5E80 1701002C */  bne   $t8, $at, .L800C5F34
/* B3D024 800C5E84 3C048014 */   lui   $a0, %hi(D_80145240) # $a0, 0x8014
/* B3D028 800C5E88 0C00084C */  jal   osSyncPrintf
/* B3D02C 800C5E8C 24845240 */   addiu $a0, %lo(D_80145240) # addiu $a0, $a0, 0x5240
/* B3D030 800C5E90 3C048014 */  lui   $a0, %hi(D_80145248) # $a0, 0x8014
/* B3D034 800C5E94 0C00084C */  jal   osSyncPrintf
/* B3D038 800C5E98 24845248 */   addiu $a0, %lo(D_80145248) # addiu $a0, $a0, 0x5248
/* B3D03C 800C5E9C 3C048014 */  lui   $a0, %hi(D_80145264) # $a0, 0x8014
/* B3D040 800C5EA0 0C00084C */  jal   osSyncPrintf
/* B3D044 800C5EA4 24845264 */   addiu $a0, %lo(D_80145264) # addiu $a0, $a0, 0x5264
/* B3D048 800C5EA8 3C04A404 */  lui   $a0, 0xa404
/* B3D04C 800C5EAC 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D050 800C5EB0 24050020 */   li    $a1, 32
/* B3D054 800C5EB4 3C04A410 */  lui   $a0, 0xa410
/* B3D058 800C5EB8 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D05C 800C5EBC 24050020 */   li    $a1, 32
/* B3D060 800C5EC0 3C04801B */  lui   $a0, %hi(gGfxSPTaskYieldBuffer) # $a0, 0x801b
/* B3D064 800C5EC4 248431C0 */  addiu $a0, %lo(gGfxSPTaskYieldBuffer) # addiu $a0, $a0, 0x31c0
/* B3D068 800C5EC8 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D06C 800C5ECC 24050C00 */   li    $a1, 3072
/* B3D070 800C5ED0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D074 800C5ED4 3C048013 */  lui   $a0, %hi(D_8012D260) # $a0, 0x8013
/* B3D078 800C5ED8 8C84D260 */  lw    $a0, %lo(D_8012D260)($a0)
/* B3D07C 800C5EDC 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3D080 800C5EE0 8C480000 */  lw    $t0, ($v0)
/* B3D084 800C5EE4 2419FFFF */  li    $t9, -1
/* B3D088 800C5EE8 1080000D */  beqz  $a0, .L800C5F20
/* B3D08C 800C5EEC A51900E0 */   sh    $t9, 0xe0($t0)
/* B3D090 800C5EF0 8C4A0000 */  lw    $t2, ($v0)
/* B3D094 800C5EF4 24090007 */  li    $t1, 7
/* B3D098 800C5EF8 240B0001 */  li    $t3, 1
/* B3D09C 800C5EFC A5491074 */  sh    $t1, 0x1074($t2)
/* B3D0A0 800C5F00 8C4C0000 */  lw    $t4, ($v0)
/* B3D0A4 800C5F04 240E0002 */  li    $t6, 2
/* B3D0A8 800C5F08 3C018013 */  lui   $at, %hi(D_8012D260) # $at, 0x8013
/* B3D0AC 800C5F0C A58B1076 */  sh    $t3, 0x1076($t4)
/* B3D0B0 800C5F10 8C4F0000 */  lw    $t7, ($v0)
/* B3D0B4 800C5F14 A5EE107A */  sh    $t6, 0x107a($t7)
/* B3D0B8 800C5F18 0C03162F */  jal   Graph_DisassembleUCode
/* B3D0BC 800C5F1C AC24D260 */   sw    $a0, %lo(D_8012D260)($at)
.L800C5F20:
/* B3D0C0 800C5F20 3C048014 */  lui   $a0, %hi(D_80145268) # $a0, 0x8014
/* B3D0C4 800C5F24 3C058014 */  lui   $a1, %hi(D_8014527C) # $a1, 0x8014
/* B3D0C8 800C5F28 24A5527C */  addiu $a1, %lo(D_8014527C) # addiu $a1, $a1, 0x527c
/* B3D0CC 800C5F2C 0C0359AD */  jal   Fault_AddHungupAndCrashImpl
/* B3D0D0 800C5F30 24845268 */   addiu $a0, %lo(D_80145268) # addiu $a0, $a0, 0x5268
.L800C5F34:
/* B3D0D4 800C5F34 8FA40038 */  lw    $a0, 0x38($sp)
/* B3D0D8 800C5F38 27A5006C */  addiu $a1, $sp, 0x6c
/* B3D0DC 800C5F3C 0C000CA0 */  jal   osRecvMesg
/* B3D0E0 800C5F40 00003025 */   move  $a2, $zero
/* B3D0E4 800C5F44 8E2602EC */  lw    $a2, 0x2ec($s1)
/* B3D0E8 800C5F48 8E2401B0 */  lw    $a0, 0x1b0($s1)
/* B3D0EC 800C5F4C 3C018013 */  lui   $at, %hi(D_8012D260) # $at, 0x8013
/* B3D0F0 800C5F50 10C00004 */  beqz  $a2, .L800C5F64
/* B3D0F4 800C5F54 AC24D260 */   sw    $a0, %lo(D_8012D260)($at)
/* B3D0F8 800C5F58 02202025 */  move  $a0, $s1
/* B3D0FC 800C5F5C 00C0F809 */  jalr  $a2
/* B3D100 800C5F60 8E2502F0 */  lw    $a1, 0x2f0($s1)
.L800C5F64:
/* B3D104 800C5F64 0C001A78 */  jal   osGetTime
/* B3D108 800C5F68 00000000 */   nop   
/* B3D10C 800C5F6C 3C048017 */  lui   $a0, %hi(D_8016A550) # $a0, 0x8017
/* B3D110 800C5F70 2484A550 */  addiu $a0, %lo(D_8016A550) # addiu $a0, $a0, -0x5ab0
/* B3D114 800C5F74 8C980000 */  lw    $t8, ($a0)
/* B3D118 800C5F78 8C990004 */  lw    $t9, 4($a0)
/* B3D11C 800C5F7C 57000004 */  bnezl $t8, .L800C5F90
/* B3D120 800C5F80 8E080000 */   lw    $t0, ($s0)
/* B3D124 800C5F84 53200012 */  beql  $t9, $zero, .L800C5FD0
/* B3D128 800C5F88 8E180000 */   lw    $t8, ($s0)
/* B3D12C 800C5F8C 8E080000 */  lw    $t0, ($s0)
.L800C5F90:
/* B3D130 800C5F90 8E090004 */  lw    $t1, 4($s0)
/* B3D134 800C5F94 8C8C0000 */  lw    $t4, ($a0)
/* B3D138 800C5F98 8C8D0004 */  lw    $t5, 4($a0)
/* B3D13C 800C5F9C 01235821 */  addu  $t3, $t1, $v1
/* B3D140 800C5FA0 0163082B */  sltu  $at, $t3, $v1
/* B3D144 800C5FA4 00285021 */  addu  $t2, $at, $t0
/* B3D148 800C5FA8 01425021 */  addu  $t2, $t2, $v0
/* B3D14C 800C5FAC 014C7023 */  subu  $t6, $t2, $t4
/* B3D150 800C5FB0 016D082B */  sltu  $at, $t3, $t5
/* B3D154 800C5FB4 01C17023 */  subu  $t6, $t6, $at
/* B3D158 800C5FB8 AE0E0000 */  sw    $t6, ($s0)
/* B3D15C 800C5FBC 016D7823 */  subu  $t7, $t3, $t5
/* B3D160 800C5FC0 AE0F0004 */  sw    $t7, 4($s0)
/* B3D164 800C5FC4 AC820000 */  sw    $v0, ($a0)
/* B3D168 800C5FC8 AC830004 */  sw    $v1, 4($a0)
/* B3D16C 800C5FCC 8E180000 */  lw    $t8, ($s0)
.L800C5FD0:
/* B3D170 800C5FD0 8E190004 */  lw    $t9, 4($s0)
/* B3D174 800C5FD4 3C088017 */  lui   $t0, %hi(D_8016A520) # $t0, 0x8017
/* B3D178 800C5FD8 2508A520 */  addiu $t0, %lo(D_8016A520) # addiu $t0, $t0, -0x5ae0
/* B3D17C 800C5FDC AD180000 */  sw    $t8, ($t0)
/* B3D180 800C5FE0 240A0000 */  li    $t2, 0
/* B3D184 800C5FE4 AD190004 */  sw    $t9, 4($t0)
/* B3D188 800C5FE8 AE0A0000 */  sw    $t2, ($s0)
/* B3D18C 800C5FEC 240B0000 */  li    $t3, 0
/* B3D190 800C5FF0 0C001A78 */  jal   osGetTime
/* B3D194 800C5FF4 AE0B0004 */   sw    $t3, 4($s0)
/* B3D198 800C5FF8 3C018016 */  lui   $at, %hi(sGraphSetTaskTime+4) # $at, 0x8016
/* B3D19C 800C5FFC AC2265D8 */  sw    $v0, %lo(sGraphSetTaskTime)($at)
/* B3D1A0 800C6000 AC2365DC */  sw    $v1, %lo(sGraphSetTaskTime+4)($at)
/* B3D1A4 800C6004 26300088 */  addiu $s0, $s1, 0x88
/* B3D1A8 800C6008 24090001 */  li    $t1, 1
/* B3D1AC 800C600C 240C0004 */  li    $t4, 4
/* B3D1B0 800C6010 AE090000 */  sw    $t1, ($s0)
/* B3D1B4 800C6014 0C034B7C */  jal   SysUcode_GetUCodeBoot
/* B3D1B8 800C6018 AE0C0004 */   sw    $t4, 4($s0)
/* B3D1BC 800C601C 0C034B7F */  jal   SysUcode_GetUCodeBootSize
/* B3D1C0 800C6020 AE020008 */   sw    $v0, 8($s0)
/* B3D1C4 800C6024 0C034B85 */  jal   SysUcode_GetUCode
/* B3D1C8 800C6028 AE02000C */   sw    $v0, 0xc($s0)
/* B3D1CC 800C602C 0C034B88 */  jal   SysUcode_GetUCodeData
/* B3D1D0 800C6030 AE020010 */   sw    $v0, 0x10($s0)
/* B3D1D4 800C6034 3C0F801B */  lui   $t7, %hi(gGfxSPTaskStack) # $t7, 0x801b
/* B3D1D8 800C6038 3C19801A */  lui   $t9, %hi(gGfxSPTaskOutputBuffer) # $t9, 0x801a
/* B3D1DC 800C603C 3C08801B */  lui   $t0, %hi(gGfxSPTaskYieldBuffer) # $t0, 0x801b
/* B3D1E0 800C6040 240D1000 */  li    $t5, 4096
/* B3D1E4 800C6044 240E0800 */  li    $t6, 2048
/* B3D1E8 800C6048 25EF3DC0 */  addiu $t7, %lo(gGfxSPTaskStack) # addiu $t7, $t7, 0x3dc0
/* B3D1EC 800C604C 24180400 */  li    $t8, 1024
/* B3D1F0 800C6050 2739B1C0 */  addiu $t9, %lo(gGfxSPTaskOutputBuffer) # addiu $t9, $t9, -0x4e40
/* B3D1F4 800C6054 250831C0 */  addiu $t0, %lo(gGfxSPTaskYieldBuffer) # addiu $t0, $t0, 0x31c0
/* B3D1F8 800C6058 AE020018 */  sw    $v0, 0x18($s0)
/* B3D1FC 800C605C AE0D0014 */  sw    $t5, 0x14($s0)
/* B3D200 800C6060 AE0E001C */  sw    $t6, 0x1c($s0)
/* B3D204 800C6064 AE0F0020 */  sw    $t7, 0x20($s0)
/* B3D208 800C6068 AE180024 */  sw    $t8, 0x24($s0)
/* B3D20C 800C606C AE190028 */  sw    $t9, 0x28($s0)
/* B3D210 800C6070 AE08002C */  sw    $t0, 0x2c($s0)
/* B3D214 800C6074 8E2A01B0 */  lw    $t2, 0x1b0($s1)
/* B3D218 800C6078 3C068014 */  lui   $a2, %hi(D_8014528C) # $a2, 0x8014
/* B3D21C 800C607C 24C6528C */  addiu $a2, %lo(D_8014528C) # addiu $a2, $a2, 0x528c
/* B3D220 800C6080 27A40048 */  addiu $a0, $sp, 0x48
/* B3D224 800C6084 02202825 */  move  $a1, $s1
/* B3D228 800C6088 2407033C */  li    $a3, 828
/* B3D22C 800C608C 0C031AB1 */  jal   Graph_OpenDisps
/* B3D230 800C6090 AE0A0030 */   sw    $t2, 0x30($s0)
/* B3D234 800C6094 8E2B01BC */  lw    $t3, 0x1bc($s1)
/* B3D238 800C6098 8E2901B0 */  lw    $t1, 0x1b0($s1)
/* B3D23C 800C609C 3C068014 */  lui   $a2, %hi(D_80145298) # $a2, 0x8014
/* B3D240 800C60A0 24C65298 */  addiu $a2, %lo(D_80145298) # addiu $a2, $a2, 0x5298
/* B3D244 800C60A4 01696023 */  subu  $t4, $t3, $t1
/* B3D248 800C60A8 AE0C0034 */  sw    $t4, 0x34($s0)
/* B3D24C 800C60AC 27A40048 */  addiu $a0, $sp, 0x48
/* B3D250 800C60B0 02202825 */  move  $a1, $s1
/* B3D254 800C60B4 0C031AD5 */  jal   Graph_CloseDisps
/* B3D258 800C60B8 2407033E */   li    $a3, 830
/* B3D25C 800C60BC 3C0D801B */  lui   $t5, %hi(gGfxSPTaskYieldBuffer) # $t5, 0x801b
/* B3D260 800C60C0 25AD31C0 */  addiu $t5, %lo(gGfxSPTaskYieldBuffer) # addiu $t5, $t5, 0x31c0
/* B3D264 800C60C4 240E0C00 */  li    $t6, 3072
/* B3D268 800C60C8 AE0D0038 */  sw    $t5, 0x38($s0)
/* B3D26C 800C60CC AE0E003C */  sw    $t6, 0x3c($s0)
/* B3D270 800C60D0 26250078 */  addiu $a1, $s1, 0x78
/* B3D274 800C60D4 240F0063 */  li    $t7, 99
/* B3D278 800C60D8 ACA00000 */  sw    $zero, ($a1)
/* B3D27C 800C60DC ACAF0008 */  sw    $t7, 8($a1)
/* B3D280 800C60E0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D284 800C60E4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D288 800C60E8 3C0E8016 */  lui   $t6, %hi(sGraphCfbInfos) # $t6, 0x8016
/* B3D28C 800C60EC 25CE65F0 */  addiu $t6, %lo(sGraphCfbInfos) # addiu $t6, $t6, 0x65f0
/* B3D290 800C60F0 84430116 */  lh    $v1, 0x116($v0)
/* B3D294 800C60F4 30780001 */  andi  $t8, $v1, 1
/* B3D298 800C60F8 13000009 */  beqz  $t8, .L800C6120
/* B3D29C 800C60FC 3079FFFE */   andi  $t9, $v1, 0xfffe
/* B3D2A0 800C6100 A4590116 */  sh    $t9, 0x116($v0)
/* B3D2A4 800C6104 8CA80008 */  lw    $t0, 8($a1)
/* B3D2A8 800C6108 2401FFBF */  li    $at, -65
/* B3D2AC 800C610C 01015024 */  and   $t2, $t0, $at
/* B3D2B0 800C6110 ACAA0008 */  sw    $t2, 8($a1)
/* B3D2B4 800C6114 8E2B02E8 */  lw    $t3, 0x2e8($s1)
/* B3D2B8 800C6118 2569FFFF */  addiu $t1, $t3, -1
/* B3D2BC 800C611C AE2902E8 */  sw    $t1, 0x2e8($s1)
.L800C6120:
/* B3D2C0 800C6120 3C038013 */  lui   $v1, %hi(sGraphCfbInfoIdx) # $v1, 0x8013
/* B3D2C4 800C6124 8C63D264 */  lw    $v1, %lo(sGraphCfbInfoIdx)($v1)
/* B3D2C8 800C6128 24010003 */  li    $at, 3
/* B3D2CC 800C612C 8FAC0038 */  lw    $t4, 0x38($sp)
/* B3D2D0 800C6130 000368C0 */  sll   $t5, $v1, 3
/* B3D2D4 800C6134 01A36823 */  subu  $t5, $t5, $v1
/* B3D2D8 800C6138 24630001 */  addiu $v1, $v1, 1
/* B3D2DC 800C613C 0061001A */  div   $zero, $v1, $at
/* B3D2E0 800C6140 ACA00054 */  sw    $zero, 0x54($a1)
/* B3D2E4 800C6144 ACAC0050 */  sw    $t4, 0x50($a1)
/* B3D2E8 800C6148 8E2F02DC */  lw    $t7, 0x2dc($s1)
/* B3D2EC 800C614C 000D6880 */  sll   $t5, $t5, 2
/* B3D2F0 800C6150 01AE1021 */  addu  $v0, $t5, $t6
/* B3D2F4 800C6154 AC4F0000 */  sw    $t7, ($v0)
/* B3D2F8 800C6158 8E3802DC */  lw    $t8, 0x2dc($s1)
/* B3D2FC 800C615C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B3D300 800C6160 00001810 */  mfhi  $v1
/* B3D304 800C6164 AC580004 */  sw    $t8, 4($v0)
/* B3D308 800C6168 8E390284 */  lw    $t9, 0x284($s1)
/* B3D30C 800C616C 3C018013 */  lui   $at, %hi(sGraphCfbInfoIdx) # $at, 0x8013
/* B3D310 800C6170 3C048016 */  lui   $a0, %hi(gSchedContext+0x38) # $a0, 0x8016
/* B3D314 800C6174 AC590008 */  sw    $t9, 8($v0)
/* B3D318 800C6178 8E2802E4 */  lw    $t0, 0x2e4($s1)
/* B3D31C 800C617C 248466A0 */  addiu $a0, %lo(gSchedContext+0x38) # addiu $a0, $a0, 0x66a0
/* B3D320 800C6180 24060001 */  li    $a2, 1
/* B3D324 800C6184 AC48000C */  sw    $t0, 0xc($v0)
/* B3D328 800C6188 C62402F4 */  lwc1  $f4, 0x2f4($s1)
/* B3D32C 800C618C E4440014 */  swc1  $f4, 0x14($v0)
/* B3D330 800C6190 C62602F8 */  lwc1  $f6, 0x2f8($s1)
/* B3D334 800C6194 A0400010 */  sb    $zero, 0x10($v0)
/* B3D338 800C6198 E4460018 */  swc1  $f6, 0x18($v0)
/* B3D33C 800C619C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B3D340 800C61A0 854B0110 */  lh    $t3, 0x110($t2)
/* B3D344 800C61A4 A04B0011 */  sb    $t3, 0x11($v0)
/* B3D348 800C61A8 ACA2000C */  sw    $v0, 0xc($a1)
/* B3D34C 800C61AC AC23D264 */  sw    $v1, %lo(sGraphCfbInfoIdx)($at)
/* B3D350 800C61B0 0C000C18 */  jal   osSendMesg
/* B3D354 800C61B4 AE240058 */   sw    $a0, 0x58($s1)
/* B3D358 800C61B8 3C048016 */  lui   $a0, %hi(gSchedContext) # $a0, 0x8016
/* B3D35C 800C61BC 0C03257E */  jal   func_800C95F8
/* B3D360 800C61C0 24846668 */   addiu $a0, %lo(gSchedContext) # addiu $a0, $a0, 0x6668
/* B3D364 800C61C4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3D368 800C61C8 8FB00024 */  lw    $s0, 0x24($sp)
/* B3D36C 800C61CC 8FB10028 */  lw    $s1, 0x28($sp)
/* B3D370 800C61D0 03E00008 */  jr    $ra
/* B3D374 800C61D4 27BD0098 */   addiu $sp, $sp, 0x98