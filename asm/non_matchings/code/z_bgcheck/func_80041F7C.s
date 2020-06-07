glabel func_80041F7C
/* AB911C 80041F7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9120 80041F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9124 80041F84 0C01066C */  jal   func_800419B0
/* AB9128 80041F88 24070001 */   li    $a3, 1
/* AB912C 80041F8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9130 80041F90 00021102 */  srl   $v0, $v0, 4
/* AB9134 80041F94 30420003 */  andi  $v0, $v0, 3
/* AB9138 80041F98 03E00008 */  jr    $ra
/* AB913C 80041F9C 27BD0018 */   addiu $sp, $sp, 0x18

