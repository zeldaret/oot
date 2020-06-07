glabel func_80041FA0
/* AB9140 80041FA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9144 80041FA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9148 80041FA8 0C01066C */  jal   func_800419B0
/* AB914C 80041FAC 24070001 */   li    $a3, 1
/* AB9150 80041FB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9154 80041FB4 00021182 */  srl   $v0, $v0, 6
/* AB9158 80041FB8 3042001F */  andi  $v0, $v0, 0x1f
/* AB915C 80041FBC 03E00008 */  jr    $ra
/* AB9160 80041FC0 27BD0018 */   addiu $sp, $sp, 0x18

