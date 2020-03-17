glabel func_800A42E4
/* B1B484 800A42E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B488 800A42E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B48C 800A42EC AFA50024 */  sw    $a1, 0x24($sp)
/* B1B490 800A42F0 00A07025 */  move  $t6, $a1
/* B1B494 800A42F4 44866000 */  mtc1  $a2, $f12
/* B1B498 800A42F8 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B49C 800A42FC 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B4A0 800A4300 90A50000 */  lbu   $a1, ($a1)
/* B1B4A4 800A4304 0C028D37 */  jal   func_800A34DC
/* B1B4A8 800A4308 E7AC0010 */   swc1  $f12, 0x10($sp)
/* B1B4AC 800A430C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B4B0 800A4310 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B4B4 800A4314 03E00008 */  jr    $ra
/* B1B4B8 800A4318 00000000 */   nop   

