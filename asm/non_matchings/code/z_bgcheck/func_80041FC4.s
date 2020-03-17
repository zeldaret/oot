glabel func_80041FC4
/* AB9164 80041FC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9168 80041FC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB916C 80041FCC 0C01066C */  jal   func_800419B0
/* AB9170 80041FD0 24070001 */   li    $a3, 1
/* AB9174 80041FD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9178 80041FD8 000212C2 */  srl   $v0, $v0, 0xb
/* AB917C 80041FDC 3042003F */  andi  $v0, $v0, 0x3f
/* AB9180 80041FE0 03E00008 */  jr    $ra
/* AB9184 80041FE4 27BD0018 */   addiu $sp, $sp, 0x18
glabel func_80041FE8
/* AB9188 80041FE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB918C 80041FEC AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9190 80041FF0 0C01066C */  jal   func_800419B0
/* AB9194 80041FF4 24070001 */   li    $a3, 1
/* AB9198 80041FF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB919C 80041FFC 00021442 */  srl   $v0, $v0, 0x11
/* AB91A0 80042000 30420001 */  andi  $v0, $v0, 1
/* AB91A4 80042004 03E00008 */  jr    $ra
/* AB91A8 80042008 27BD0018 */   addiu $sp, $sp, 0x18

