glabel func_800E64F8
/* B5D698 800E64F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D69C 800E64FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D6A0 800E6500 3C04FA00 */  lui   $a0, 0xfa00
/* B5D6A4 800E6504 0C0396BF */  jal   func_800E5AFC
/* B5D6A8 800E6508 00002825 */   move  $a1, $zero
/* B5D6AC 800E650C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D6B0 800E6510 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D6B4 800E6514 03E00008 */  jr    $ra
/* B5D6B8 800E6518 00000000 */   nop

