glabel func_800E9B44
/* B60CE4 800E9B44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60CE8 800E9B48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60CEC 800E9B4C 908F0000 */  lbu   $t7, ($a0)
/* B60CF0 800E9B50 35F80040 */  ori   $t8, $t7, 0x40
/* B60CF4 800E9B54 0C03A6DB */  jal   func_800E9B6C
/* B60CF8 800E9B58 A0980000 */   sb    $t8, ($a0)
/* B60CFC 800E9B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60D00 800E9B60 27BD0018 */  addiu $sp, $sp, 0x18
/* B60D04 800E9B64 03E00008 */  jr    $ra
/* B60D08 800E9B68 00000000 */   nop   

