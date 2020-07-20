glabel func_800E1E6C
/* B5900C 800E1E6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B59010 800E1E70 AFA7002C */  sw    $a3, 0x2c($sp)
/* B59014 800E1E74 8FAE002C */  lw    $t6, 0x2c($sp)
/* B59018 800E1E78 AFA50024 */  sw    $a1, 0x24($sp)
/* B5901C 800E1E7C 00802825 */  move  $a1, $a0
/* B59020 800E1E80 00C03825 */  move  $a3, $a2
/* B59024 800E1E84 AFBF001C */  sw    $ra, 0x1c($sp)
/* B59028 800E1E88 AFA40020 */  sw    $a0, 0x20($sp)
/* B5902C 800E1E8C AFA60028 */  sw    $a2, 0x28($sp)
/* B59030 800E1E90 00003025 */  move  $a2, $zero
/* B59034 800E1E94 00002025 */  move  $a0, $zero
/* B59038 800E1E98 0C03878D */  jal   func_800E1E34
/* B5903C 800E1E9C AFAE0010 */   sw    $t6, 0x10($sp)
/* B59040 800E1EA0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B59044 800E1EA4 27BD0020 */  addiu $sp, $sp, 0x20
/* B59048 800E1EA8 03E00008 */  jr    $ra
/* B5904C 800E1EAC 00000000 */   nop

