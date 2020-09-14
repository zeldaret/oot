glabel func_800F6BB8
/* B6DD58 800F6BB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6DD5C 800F6BBC AFBF0014 */  sw    $ra, 0x14($sp)
/* B6DD60 800F6BC0 0C0399A0 */  jal   func_800E6680
/* B6DD64 800F6BC4 00000000 */   nop   
/* B6DD68 800F6BC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6DD6C 800F6BCC 00021600 */  sll   $v0, $v0, 0x18
/* B6DD70 800F6BD0 00021603 */  sra   $v0, $v0, 0x18
/* B6DD74 800F6BD4 03E00008 */  jr    $ra
/* B6DD78 800F6BD8 27BD0018 */   addiu $sp, $sp, 0x18

