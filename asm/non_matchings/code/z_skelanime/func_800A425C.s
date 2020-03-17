glabel func_800A425C
/* B1B3FC 800A425C 44876000 */  mtc1  $a3, $f12
/* B1B400 800A4260 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B404 800A4264 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B408 800A4268 4600610D */  trunc.w.s $f4, $f12
/* B1B40C 800A426C 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B410 800A4270 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B414 800A4274 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B418 800A4278 8DF80024 */  lw    $t8, 0x24($t7)
/* B1B41C 800A427C 00C02825 */  move  $a1, $a2
/* B1B420 800A4280 44062000 */  mfc1  $a2, $f4
/* B1B424 800A4284 91E70000 */  lbu   $a3, ($t7)
/* B1B428 800A4288 0C028CDB */  jal   func_800A336C
/* B1B42C 800A428C AFB80010 */   sw    $t8, 0x10($sp)
/* B1B430 800A4290 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B434 800A4294 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B438 800A4298 03E00008 */  jr    $ra
/* B1B43C 800A429C 00000000 */   nop   

