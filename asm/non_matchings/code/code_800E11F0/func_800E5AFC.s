glabel func_800E5AFC
/* B5CC9C 800E5AFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5CCA0 800E5B00 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5CCA4 800E5B04 AFA5001C */  sw    $a1, 0x1c($sp)
/* B5CCA8 800E5B08 0C0396A3 */  jal   func_800E5A8C
/* B5CCAC 800E5B0C 27A5001C */   addiu $a1, $sp, 0x1c
/* B5CCB0 800E5B10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5CCB4 800E5B14 27BD0018 */  addiu $sp, $sp, 0x18
/* B5CCB8 800E5B18 03E00008 */  jr    $ra
/* B5CCBC 800E5B1C 00000000 */   nop

