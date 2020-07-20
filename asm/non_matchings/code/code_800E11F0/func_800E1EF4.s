glabel func_800E1EF4
/* B59094 800E1EF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B59098 800E1EF8 AFA7002C */  sw    $a3, 0x2c($sp)
/* B5909C 800E1EFC 8FAE002C */  lw    $t6, 0x2c($sp)
/* B590A0 800E1F00 AFA50024 */  sw    $a1, 0x24($sp)
/* B590A4 800E1F04 00802825 */  move  $a1, $a0
/* B590A8 800E1F08 00C03825 */  move  $a3, $a2
/* B590AC 800E1F0C AFBF001C */  sw    $ra, 0x1c($sp)
/* B590B0 800E1F10 AFA40020 */  sw    $a0, 0x20($sp)
/* B590B4 800E1F14 AFA60028 */  sw    $a2, 0x28($sp)
/* B590B8 800E1F18 00003025 */  move  $a2, $zero
/* B590BC 800E1F1C 24040001 */  li    $a0, 1
/* B590C0 800E1F20 0C03878D */  jal   func_800E1E34
/* B590C4 800E1F24 AFAE0010 */   sw    $t6, 0x10($sp)
/* B590C8 800E1F28 8FBF001C */  lw    $ra, 0x1c($sp)
/* B590CC 800E1F2C 27BD0020 */  addiu $sp, $sp, 0x20
/* B590D0 800E1F30 03E00008 */  jr    $ra
/* B590D4 800E1F34 00000000 */   nop

