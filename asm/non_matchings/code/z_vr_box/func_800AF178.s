glabel func_800AF178
/* B26318 800AF178 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B2631C 800AF17C AFB40040 */  sw    $s4, 0x40($sp)
/* B26320 800AF180 AFB3003C */  sw    $s3, 0x3c($sp)
/* B26324 800AF184 AFB20038 */  sw    $s2, 0x38($sp)
/* B26328 800AF188 AFB10034 */  sw    $s1, 0x34($sp)
/* B2632C 800AF18C 00809825 */  move  $s3, $a0
/* B26330 800AF190 00A0A025 */  move  $s4, $a1
/* B26334 800AF194 AFBF0044 */  sw    $ra, 0x44($sp)
/* B26338 800AF198 AFB00030 */  sw    $s0, 0x30($sp)
/* B2633C 800AF19C 00009025 */  move  $s2, $zero
/* B26340 800AF1A0 18A00015 */  blez  $a1, .L800AF1F8
/* B26344 800AF1A4 00008825 */   move  $s1, $zero
/* B26348 800AF1A8 3C108013 */  lui   $s0, %hi(D_8012AF0C) # $s0, 0x8013
/* B2634C 800AF1AC 2610AF0C */  addiu $s0, %lo(D_8012AF0C) # addiu $s0, $s0, -0x50f4
.L800AF1B0:
/* B26350 800AF1B0 8E65013C */  lw    $a1, 0x13c($s3)
/* B26354 800AF1B4 8E0E0004 */  lw    $t6, 4($s0)
/* B26358 800AF1B8 8E0F0008 */  lw    $t7, 8($s0)
/* B2635C 800AF1BC 8E18000C */  lw    $t8, 0xc($s0)
/* B26360 800AF1C0 8E190010 */  lw    $t9, 0x10($s0)
/* B26364 800AF1C4 AFB10020 */  sw    $s1, 0x20($sp)
/* B26368 800AF1C8 02602025 */  move  $a0, $s3
/* B2636C 800AF1CC 02403025 */  move  $a2, $s2
/* B26370 800AF1D0 8E070000 */  lw    $a3, ($s0)
/* B26374 800AF1D4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B26378 800AF1D8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B2637C 800AF1DC AFB80018 */  sw    $t8, 0x18($sp)
/* B26380 800AF1E0 0C02B8B0 */  jal   func_800AE2C0
/* B26384 800AF1E4 AFB9001C */   sw    $t9, 0x1c($sp)
/* B26388 800AF1E8 26310001 */  addiu $s1, $s1, 1
/* B2638C 800AF1EC 26100014 */  addiu $s0, $s0, 0x14
/* B26390 800AF1F0 1634FFEF */  bne   $s1, $s4, .L800AF1B0
/* B26394 800AF1F4 00409025 */   move  $s2, $v0
.L800AF1F8:
/* B26398 800AF1F8 8FBF0044 */  lw    $ra, 0x44($sp)
/* B2639C 800AF1FC 8FB00030 */  lw    $s0, 0x30($sp)
/* B263A0 800AF200 8FB10034 */  lw    $s1, 0x34($sp)
/* B263A4 800AF204 8FB20038 */  lw    $s2, 0x38($sp)
/* B263A8 800AF208 8FB3003C */  lw    $s3, 0x3c($sp)
/* B263AC 800AF20C 8FB40040 */  lw    $s4, 0x40($sp)
/* B263B0 800AF210 03E00008 */  jr    $ra
/* B263B4 800AF214 27BD0048 */   addiu $sp, $sp, 0x48

