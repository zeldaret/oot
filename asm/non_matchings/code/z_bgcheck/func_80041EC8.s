glabel func_80041EC8
/* AB9068 80041EC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB906C 80041ECC AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9070 80041ED0 0C01066C */  jal   func_800419B0
/* AB9074 80041ED4 00003825 */   move  $a3, $zero
/* AB9078 80041ED8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB907C 80041EDC 00021782 */  srl   $v0, $v0, 0x1e
/* AB9080 80041EE0 30420001 */  andi  $v0, $v0, 1
/* AB9084 80041EE4 03E00008 */  jr    $ra
/* AB9088 80041EE8 27BD0018 */   addiu $sp, $sp, 0x18

