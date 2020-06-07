glabel func_80041EEC
/* AB908C 80041EEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9090 80041EF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9094 80041EF4 0C01066C */  jal   func_800419B0
/* AB9098 80041EF8 00003825 */   move  $a3, $zero
/* AB909C 80041EFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB90A0 80041F00 000217C2 */  srl   $v0, $v0, 0x1f
/* AB90A4 80041F04 30420001 */  andi  $v0, $v0, 1
/* AB90A8 80041F08 03E00008 */  jr    $ra
/* AB90AC 80041F0C 27BD0018 */   addiu $sp, $sp, 0x18

