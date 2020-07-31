glabel func_800E5B20
/* B5CCC0 800E5B20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5CCC4 800E5B24 00A03025 */  move  $a2, $a1
/* B5CCC8 800E5B28 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5CCCC 800E5B2C AFA50024 */  sw    $a1, 0x24($sp)
/* B5CCD0 800E5B30 00067600 */  sll   $t6, $a2, 0x18
/* B5CCD4 800E5B34 AFAE001C */  sw    $t6, 0x1c($sp)
/* B5CCD8 800E5B38 0C0396A3 */  jal   func_800E5A8C
/* B5CCDC 800E5B3C 27A5001C */   addiu $a1, $sp, 0x1c
/* B5CCE0 800E5B40 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5CCE4 800E5B44 27BD0020 */  addiu $sp, $sp, 0x20
/* B5CCE8 800E5B48 03E00008 */  jr    $ra
/* B5CCEC 800E5B4C 00000000 */   nop

