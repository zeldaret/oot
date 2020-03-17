glabel func_800A5384
/* B1C524 800A5384 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C528 800A5388 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C52C 800A538C AFA40028 */  sw    $a0, 0x28($sp)
/* B1C530 800A5390 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C534 800A5394 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C538 800A5398 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C53C 800A539C 00A02025 */   move  $a0, $a1
/* B1C540 800A53A0 44822000 */  mtc1  $v0, $f4
/* B1C544 800A53A4 44800000 */  mtc1  $zero, $f0
/* B1C548 800A53A8 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C54C 800A53AC 468021A0 */  cvt.s.w $f6, $f4
/* B1C550 800A53B0 44070000 */  mfc1  $a3, $f0
/* B1C554 800A53B4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C558 800A53B8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C55C 800A53BC AFA00014 */  sw    $zero, 0x14($sp)
/* B1C560 800A53C0 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C564 800A53C4 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C568 800A53C8 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C56C 800A53CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C570 800A53D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C574 800A53D4 03E00008 */  jr    $ra
/* B1C578 800A53D8 00000000 */   nop   

