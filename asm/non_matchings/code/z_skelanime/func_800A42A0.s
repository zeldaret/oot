glabel func_800A42A0
/* B1B440 800A42A0 44876000 */  mtc1  $a3, $f12
/* B1B444 800A42A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B448 800A42A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B44C 800A42AC 4600610D */  trunc.w.s $f4, $f12
/* B1B450 800A42B0 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B454 800A42B4 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B458 800A42B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B45C 800A42BC 8DF80020 */  lw    $t8, 0x20($t7)
/* B1B460 800A42C0 00C02825 */  move  $a1, $a2
/* B1B464 800A42C4 44062000 */  mfc1  $a2, $f4
/* B1B468 800A42C8 91E70000 */  lbu   $a3, ($t7)
/* B1B46C 800A42CC 0C028CDB */  jal   func_800A336C
/* B1B470 800A42D0 AFB80010 */   sw    $t8, 0x10($sp)
/* B1B474 800A42D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B478 800A42D8 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B47C 800A42DC 03E00008 */  jr    $ra
/* B1B480 800A42E0 00000000 */   nop   

