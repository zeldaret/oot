glabel func_800E5B50
/* B5CCF0 800E5B50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5CCF4 800E5B54 00A03025 */  move  $a2, $a1
/* B5CCF8 800E5B58 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5CCFC 800E5B5C AFA50024 */  sw    $a1, 0x24($sp)
/* B5CD00 800E5B60 00067400 */  sll   $t6, $a2, 0x10
/* B5CD04 800E5B64 AFAE001C */  sw    $t6, 0x1c($sp)
/* B5CD08 800E5B68 0C0396A3 */  jal   func_800E5A8C
/* B5CD0C 800E5B6C 27A5001C */   addiu $a1, $sp, 0x1c
/* B5CD10 800E5B70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5CD14 800E5B74 27BD0020 */  addiu $sp, $sp, 0x20
/* B5CD18 800E5B78 03E00008 */  jr    $ra
/* B5CD1C 800E5B7C 00000000 */   nop

