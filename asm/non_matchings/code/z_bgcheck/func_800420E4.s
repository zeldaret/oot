glabel func_800420E4
/* AB9284 800420E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9288 800420E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB928C 800420EC 0C01066C */  jal   func_800419B0
/* AB9290 800420F0 24070001 */   li    $a3, 1
/* AB9294 800420F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9298 800420F8 00021542 */  srl   $v0, $v0, 0x15
/* AB929C 800420FC 3042003F */  andi  $v0, $v0, 0x3f
/* AB92A0 80042100 03E00008 */  jr    $ra
/* AB92A4 80042104 27BD0018 */   addiu $sp, $sp, 0x18

