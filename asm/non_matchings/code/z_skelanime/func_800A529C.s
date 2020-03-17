glabel func_800A529C
/* B1C43C 800A529C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C440 800A52A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C444 800A52A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C448 800A52A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C44C 800A52AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1C450 800A52B0 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C454 800A52B4 00A02025 */   move  $a0, $a1
/* B1C458 800A52B8 44822000 */  mtc1  $v0, $f4
/* B1C45C 800A52BC 44800000 */  mtc1  $zero, $f0
/* B1C460 800A52C0 240E0002 */  li    $t6, 2
/* B1C464 800A52C4 468021A0 */  cvt.s.w $f6, $f4
/* B1C468 800A52C8 44070000 */  mfc1  $a3, $f0
/* B1C46C 800A52CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C470 800A52D0 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C474 800A52D4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C478 800A52D8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C47C 800A52DC E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C480 800A52E0 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C484 800A52E4 E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C488 800A52E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C48C 800A52EC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C490 800A52F0 03E00008 */  jr    $ra
/* B1C494 800A52F4 00000000 */   nop   

