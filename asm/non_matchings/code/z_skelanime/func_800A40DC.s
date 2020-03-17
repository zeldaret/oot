glabel func_800A40DC
/* B1B27C 800A40DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B280 800A40E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B284 800A40E4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B288 800A40E8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B28C 800A40EC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B290 800A40F0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B294 800A40F4 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B298 800A40F8 00C02025 */   move  $a0, $a2
/* B1B29C 800A40FC 44822000 */  mtc1  $v0, $f4
/* B1B2A0 800A4100 44800000 */  mtc1  $zero, $f0
/* B1B2A4 800A4104 240E0002 */  li    $t6, 2
/* B1B2A8 800A4108 468021A0 */  cvt.s.w $f6, $f4
/* B1B2AC 800A410C AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B2B0 800A4110 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B2B4 800A4114 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B2B8 800A4118 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B2BC 800A411C 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B2C0 800A4120 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B2C4 800A4124 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B2C8 800A4128 0C028FC2 */  jal   func_800A3F08
/* B1B2CC 800A412C E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B2D0 800A4130 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B2D4 800A4134 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B2D8 800A4138 03E00008 */  jr    $ra
/* B1B2DC 800A413C 00000000 */   nop   

