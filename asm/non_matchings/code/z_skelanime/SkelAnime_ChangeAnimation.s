glabel SkelAnime_ChangeAnimation
/* B1C340 800A51A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C344 800A51A4 44866000 */  mtc1  $a2, $f12
/* B1C348 800A51A8 44877000 */  mtc1  $a3, $f14
/* B1C34C 800A51AC C7A40038 */  lwc1  $f4, 0x38($sp)
/* B1C350 800A51B0 93AE003F */  lbu   $t6, 0x3f($sp)
/* B1C354 800A51B4 C7A60040 */  lwc1  $f6, 0x40($sp)
/* B1C358 800A51B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C35C 800A51BC 44066000 */  mfc1  $a2, $f12
/* B1C360 800A51C0 44077000 */  mfc1  $a3, $f14
/* B1C364 800A51C4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1C368 800A51C8 E7A40010 */  swc1  $f4, 0x10($sp)
/* B1C36C 800A51CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C370 800A51D0 0C0293F9 */  jal   func_800A4FE4
/* B1C374 800A51D4 E7A60018 */   swc1  $f6, 0x18($sp)
/* B1C378 800A51D8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C37C 800A51DC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C380 800A51E0 03E00008 */  jr    $ra
/* B1C384 800A51E4 00000000 */   nop   

