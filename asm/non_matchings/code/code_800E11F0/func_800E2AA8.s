glabel func_800E2AA8
/* B59C48 800E2AA8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B59C4C 800E2AAC AFB20038 */  sw    $s2, 0x38($sp)
/* B59C50 800E2AB0 AFB00030 */  sw    $s0, 0x30($sp)
/* B59C54 800E2AB4 00809025 */  move  $s2, $a0
/* B59C58 800E2AB8 AFB10034 */  sw    $s1, 0x34($sp)
/* B59C5C 800E2ABC 24D0000F */  addiu $s0, $a2, 0xf
/* B59C60 800E2AC0 2401FFF0 */  li    $at, -16
/* B59C64 800E2AC4 00A08825 */  move  $s1, $a1
/* B59C68 800E2AC8 AFBF004C */  sw    $ra, 0x4c($sp)
/* B59C6C 800E2ACC AFB50044 */  sw    $s5, 0x44($sp)
/* B59C70 800E2AD0 02018024 */  and   $s0, $s0, $at
/* B59C74 800E2AD4 00A02025 */  move  $a0, $a1
/* B59C78 800E2AD8 00E0A825 */  move  $s5, $a3
/* B59C7C 800E2ADC AFB60048 */  sw    $s6, 0x48($sp)
/* B59C80 800E2AE0 AFB40040 */  sw    $s4, 0x40($sp)
/* B59C84 800E2AE4 AFB3003C */  sw    $s3, 0x3c($sp)
/* B59C88 800E2AE8 0C039A10 */  jal   func_800E6840
/* B59C8C 800E2AEC 02002825 */   move  $a1, $s0
/* B59C90 800E2AF0 3C168017 */  lui   $s6, %hi(D_80171784) # $s6, 0x8017
/* B59C94 800E2AF4 3C148015 */  lui   $s4, %hi(D_8014942C) # $s4, 0x8015
/* B59C98 800E2AF8 3C138017 */  lui   $s3, %hi(D_80171768) # $s3, 0x8017
/* B59C9C 800E2AFC 26731768 */  addiu $s3, %lo(D_80171768) # addiu $s3, $s3, 0x1768
/* B59CA0 800E2B00 2694942C */  addiu $s4, %lo(D_8014942C) # addiu $s4, $s4, -0x6bd4
/* B59CA4 800E2B04 26D61784 */  addiu $s6, %lo(D_80171784) # addiu $s6, $s6, 0x1784
/* B59CA8 800E2B08 2E010400 */  sltiu $at, $s0, 0x400
/* B59CAC 800E2B0C 14200014 */  bnez  $at, .L800E2B60
.L800E2B10:
/* B59CB0 800E2B10 240E0400 */   li    $t6, 1024
/* B59CB4 800E2B14 AFAE0014 */  sw    $t6, 0x14($sp)
/* B59CB8 800E2B18 02C02025 */  move  $a0, $s6
/* B59CBC 800E2B1C 24050001 */  li    $a1, 1
/* B59CC0 800E2B20 00003025 */  move  $a2, $zero
/* B59CC4 800E2B24 02403825 */  move  $a3, $s2
/* B59CC8 800E2B28 AFB10010 */  sw    $s1, 0x10($sp)
/* B59CCC 800E2B2C AFB30018 */  sw    $s3, 0x18($sp)
/* B59CD0 800E2B30 AFB5001C */  sw    $s5, 0x1c($sp)
/* B59CD4 800E2B34 0C038AF8 */  jal   func_800E2BE0
/* B59CD8 800E2B38 AFB40020 */   sw    $s4, 0x20($sp)
/* B59CDC 800E2B3C 02602025 */  move  $a0, $s3
/* B59CE0 800E2B40 00002825 */  move  $a1, $zero
/* B59CE4 800E2B44 0C000CA0 */  jal   osRecvMesg
/* B59CE8 800E2B48 24060001 */   li    $a2, 1
/* B59CEC 800E2B4C 2610FC00 */  addiu $s0, $s0, -0x400
/* B59CF0 800E2B50 2E010400 */  sltiu $at, $s0, 0x400
/* B59CF4 800E2B54 26520400 */  addiu $s2, $s2, 0x400
/* B59CF8 800E2B58 1020FFED */  beqz  $at, .L800E2B10
/* B59CFC 800E2B5C 26310400 */   addiu $s1, $s1, 0x400
.L800E2B60:
/* B59D00 800E2B60 12000010 */  beqz  $s0, .L800E2BA4
/* B59D04 800E2B64 02C02025 */   move  $a0, $s6
/* B59D08 800E2B68 3C0F8015 */  lui   $t7, %hi(D_80149438) # $t7, 0x8015
/* B59D0C 800E2B6C 25EF9438 */  addiu $t7, %lo(D_80149438) # addiu $t7, $t7, -0x6bc8
/* B59D10 800E2B70 AFAF0020 */  sw    $t7, 0x20($sp)
/* B59D14 800E2B74 24050001 */  li    $a1, 1
/* B59D18 800E2B78 00003025 */  move  $a2, $zero
/* B59D1C 800E2B7C 02403825 */  move  $a3, $s2
/* B59D20 800E2B80 AFB10010 */  sw    $s1, 0x10($sp)
/* B59D24 800E2B84 AFB00014 */  sw    $s0, 0x14($sp)
/* B59D28 800E2B88 AFB30018 */  sw    $s3, 0x18($sp)
/* B59D2C 800E2B8C 0C038AF8 */  jal   func_800E2BE0
/* B59D30 800E2B90 AFB5001C */   sw    $s5, 0x1c($sp)
/* B59D34 800E2B94 02602025 */  move  $a0, $s3
/* B59D38 800E2B98 00002825 */  move  $a1, $zero
/* B59D3C 800E2B9C 0C000CA0 */  jal   osRecvMesg
/* B59D40 800E2BA0 24060001 */   li    $a2, 1
.L800E2BA4:
/* B59D44 800E2BA4 8FBF004C */  lw    $ra, 0x4c($sp)
/* B59D48 800E2BA8 8FB00030 */  lw    $s0, 0x30($sp)
/* B59D4C 800E2BAC 8FB10034 */  lw    $s1, 0x34($sp)
/* B59D50 800E2BB0 8FB20038 */  lw    $s2, 0x38($sp)
/* B59D54 800E2BB4 8FB3003C */  lw    $s3, 0x3c($sp)
/* B59D58 800E2BB8 8FB40040 */  lw    $s4, 0x40($sp)
/* B59D5C 800E2BBC 8FB50044 */  lw    $s5, 0x44($sp)
/* B59D60 800E2BC0 8FB60048 */  lw    $s6, 0x48($sp)
/* B59D64 800E2BC4 03E00008 */  jr    $ra
/* B59D68 800E2BC8 27BD0050 */   addiu $sp, $sp, 0x50

