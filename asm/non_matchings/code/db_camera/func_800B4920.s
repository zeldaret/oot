glabel func_800B4920
/* B2BAC0 800B4920 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B2BAC4 800B4924 AFA50044 */  sw    $a1, 0x44($sp)
/* B2BAC8 800B4928 00802825 */  move  $a1, $a0
/* B2BACC 800B492C AFA40040 */  sw    $a0, 0x40($sp)
/* B2BAD0 800B4930 AFBF003C */  sw    $ra, 0x3c($sp)
/* B2BAD4 800B4934 AFB20020 */  sw    $s2, 0x20($sp)
/* B2BAD8 800B4938 3C048014 */  lui   $a0, %hi(D_801434D8) # $a0, 0x8014
/* B2BADC 800B493C 00C09025 */  move  $s2, $a2
/* B2BAE0 800B4940 AFBE0038 */  sw    $fp, 0x38($sp)
/* B2BAE4 800B4944 AFB70034 */  sw    $s7, 0x34($sp)
/* B2BAE8 800B4948 AFB60030 */  sw    $s6, 0x30($sp)
/* B2BAEC 800B494C AFB5002C */  sw    $s5, 0x2c($sp)
/* B2BAF0 800B4950 AFB40028 */  sw    $s4, 0x28($sp)
/* B2BAF4 800B4954 AFB30024 */  sw    $s3, 0x24($sp)
/* B2BAF8 800B4958 AFB1001C */  sw    $s1, 0x1c($sp)
/* B2BAFC 800B495C AFB00018 */  sw    $s0, 0x18($sp)
/* B2BB00 800B4960 0C00084C */  jal   osSyncPrintf
/* B2BB04 800B4964 248434D8 */   addiu $a0, %lo(D_801434D8) # addiu $a0, $a0, 0x34d8
/* B2BB08 800B4968 87AE0046 */  lh    $t6, 0x46($sp)
/* B2BB0C 800B496C 00008825 */  move  $s1, $zero
/* B2BB10 800B4970 02408025 */  move  $s0, $s2
/* B2BB14 800B4974 19C0002D */  blez  $t6, .L800B4A2C
/* B2BB18 800B4978 3C178014 */   lui   $s7, %hi(D_80143598) # $s7, 0x8014
/* B2BB1C 800B497C 3C1E8014 */  lui   $fp, %hi(D_801435C4) # $fp, 0x8014
/* B2BB20 800B4980 3C168014 */  lui   $s6, %hi(D_80143578) # $s6, 0x8014
/* B2BB24 800B4984 3C158014 */  lui   $s5, %hi(D_80143558) # $s5, 0x8014
/* B2BB28 800B4988 3C148014 */  lui   $s4, %hi(D_80143538) # $s4, 0x8014
/* B2BB2C 800B498C 3C138014 */  lui   $s3, %hi(D_80143518) # $s3, 0x8014
/* B2BB30 800B4990 3C128014 */  lui   $s2, %hi(D_801434F8) # $s2, 0x8014
/* B2BB34 800B4994 265234F8 */  addiu $s2, %lo(D_801434F8) # addiu $s2, $s2, 0x34f8
/* B2BB38 800B4998 26733518 */  addiu $s3, %lo(D_80143518) # addiu $s3, $s3, 0x3518
/* B2BB3C 800B499C 26943538 */  addiu $s4, %lo(D_80143538) # addiu $s4, $s4, 0x3538
/* B2BB40 800B49A0 26B53558 */  addiu $s5, %lo(D_80143558) # addiu $s5, $s5, 0x3558
/* B2BB44 800B49A4 26D63578 */  addiu $s6, %lo(D_80143578) # addiu $s6, $s6, 0x3578
/* B2BB48 800B49A8 27DE35C4 */  addiu $fp, %lo(D_801435C4) # addiu $fp, $fp, 0x35c4
/* B2BB4C 800B49AC 26F73598 */  addiu $s7, %lo(D_80143598) # addiu $s7, $s7, 0x3598
/* B2BB50 800B49B0 02402025 */  move  $a0, $s2
.L800B49B4:
/* B2BB54 800B49B4 0C00084C */  jal   osSyncPrintf
/* B2BB58 800B49B8 02202825 */   move  $a1, $s1
/* B2BB5C 800B49BC 02602025 */  move  $a0, $s3
/* B2BB60 800B49C0 0C00084C */  jal   osSyncPrintf
/* B2BB64 800B49C4 82050000 */   lb    $a1, ($s0)
/* B2BB68 800B49C8 02802025 */  move  $a0, $s4
/* B2BB6C 800B49CC 0C00084C */  jal   osSyncPrintf
/* B2BB70 800B49D0 82050001 */   lb    $a1, 1($s0)
/* B2BB74 800B49D4 02A02025 */  move  $a0, $s5
/* B2BB78 800B49D8 0C00084C */  jal   osSyncPrintf
/* B2BB7C 800B49DC 96050002 */   lhu   $a1, 2($s0)
/* B2BB80 800B49E0 C6040004 */  lwc1  $f4, 4($s0)
/* B2BB84 800B49E4 02C02025 */  move  $a0, $s6
/* B2BB88 800B49E8 460021A1 */  cvt.d.s $f6, $f4
/* B2BB8C 800B49EC 44073000 */  mfc1  $a3, $f6
/* B2BB90 800B49F0 44063800 */  mfc1  $a2, $f7
/* B2BB94 800B49F4 0C00084C */  jal   osSyncPrintf
/* B2BB98 800B49F8 00000000 */   nop   
/* B2BB9C 800B49FC 02E02025 */  move  $a0, $s7
/* B2BBA0 800B4A00 86050008 */  lh    $a1, 8($s0)
/* B2BBA4 800B4A04 8606000A */  lh    $a2, 0xa($s0)
/* B2BBA8 800B4A08 0C00084C */  jal   osSyncPrintf
/* B2BBAC 800B4A0C 8607000C */   lh    $a3, 0xc($s0)
/* B2BBB0 800B4A10 0C00084C */  jal   osSyncPrintf
/* B2BBB4 800B4A14 03C02025 */   move  $a0, $fp
/* B2BBB8 800B4A18 87AF0046 */  lh    $t7, 0x46($sp)
/* B2BBBC 800B4A1C 26310001 */  addiu $s1, $s1, 1
/* B2BBC0 800B4A20 26100010 */  addiu $s0, $s0, 0x10
/* B2BBC4 800B4A24 562FFFE3 */  bnel  $s1, $t7, .L800B49B4
/* B2BBC8 800B4A28 02402025 */   move  $a0, $s2
.L800B4A2C:
/* B2BBCC 800B4A2C 3C048014 */  lui   $a0, %hi(D_801435D0) # $a0, 0x8014
/* B2BBD0 800B4A30 0C00084C */  jal   osSyncPrintf
/* B2BBD4 800B4A34 248435D0 */   addiu $a0, %lo(D_801435D0) # addiu $a0, $a0, 0x35d0
/* B2BBD8 800B4A38 8FBF003C */  lw    $ra, 0x3c($sp)
/* B2BBDC 800B4A3C 8FB00018 */  lw    $s0, 0x18($sp)
/* B2BBE0 800B4A40 8FB1001C */  lw    $s1, 0x1c($sp)
/* B2BBE4 800B4A44 8FB20020 */  lw    $s2, 0x20($sp)
/* B2BBE8 800B4A48 8FB30024 */  lw    $s3, 0x24($sp)
/* B2BBEC 800B4A4C 8FB40028 */  lw    $s4, 0x28($sp)
/* B2BBF0 800B4A50 8FB5002C */  lw    $s5, 0x2c($sp)
/* B2BBF4 800B4A54 8FB60030 */  lw    $s6, 0x30($sp)
/* B2BBF8 800B4A58 8FB70034 */  lw    $s7, 0x34($sp)
/* B2BBFC 800B4A5C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B2BC00 800B4A60 03E00008 */  jr    $ra
/* B2BC04 800B4A64 27BD0040 */   addiu $sp, $sp, 0x40

