glabel func_80029CC8
/* AA0E68 80029CC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AA0E6C 80029CCC AFA60020 */  sw    $a2, 0x20($sp)
/* AA0E70 80029CD0 00063400 */  sll   $a2, $a2, 0x10
/* AA0E74 80029CD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E78 80029CD8 0C00A714 */  jal   func_80029C50
/* AA0E7C 80029CDC 00063403 */   sra   $a2, $a2, 0x10
/* AA0E80 80029CE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0E84 80029CE4 27BD0018 */  addiu $sp, $sp, 0x18
/* AA0E88 80029CE8 03E00008 */  jr    $ra
/* AA0E8C 80029CEC 00000000 */   nop   

