glabel func_800E1EB0
/* B59050 800E1EB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B59054 800E1EB4 AFA7002C */  sw    $a3, 0x2c($sp)
/* B59058 800E1EB8 8FAE002C */  lw    $t6, 0x2c($sp)
/* B5905C 800E1EBC AFA50024 */  sw    $a1, 0x24($sp)
/* B59060 800E1EC0 00802825 */  move  $a1, $a0
/* B59064 800E1EC4 00C03825 */  move  $a3, $a2
/* B59068 800E1EC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B5906C 800E1ECC AFA40020 */  sw    $a0, 0x20($sp)
/* B59070 800E1ED0 AFA60028 */  sw    $a2, 0x28($sp)
/* B59074 800E1ED4 00003025 */  move  $a2, $zero
/* B59078 800E1ED8 24040002 */  li    $a0, 2
/* B5907C 800E1EDC 0C03878D */  jal   func_800E1E34
/* B59080 800E1EE0 AFAE0010 */   sw    $t6, 0x10($sp)
/* B59084 800E1EE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B59088 800E1EE8 27BD0020 */  addiu $sp, $sp, 0x20
/* B5908C 800E1EEC 03E00008 */  jr    $ra
/* B59090 800E1EF0 00000000 */   nop

