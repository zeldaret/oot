glabel func_800A419C
/* B1B33C 800A419C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B340 800A41A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B344 800A41A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B348 800A41A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B34C 800A41AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B350 800A41B0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B354 800A41B4 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B358 800A41B8 00C02025 */   move  $a0, $a2
/* B1B35C 800A41BC 44822000 */  mtc1  $v0, $f4
/* B1B360 800A41C0 44800000 */  mtc1  $zero, $f0
/* B1B364 800A41C4 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B368 800A41C8 468021A0 */  cvt.s.w $f6, $f4
/* B1B36C 800A41CC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B370 800A41D0 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B374 800A41D4 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B378 800A41D8 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B37C 800A41DC E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B380 800A41E0 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B384 800A41E4 0C028FC2 */  jal   func_800A3F08
/* B1B388 800A41E8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B38C 800A41EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B390 800A41F0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B394 800A41F4 03E00008 */  jr    $ra
/* B1B398 800A41F8 00000000 */   nop   

