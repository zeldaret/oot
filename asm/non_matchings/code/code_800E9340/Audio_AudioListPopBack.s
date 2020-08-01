glabel Audio_AudioListPopBack
/* B60E08 800E9C68 8C830000 */  lw    $v1, ($a0)
/* B60E0C 800E9C6C 54640004 */  bnel  $v1, $a0, .L800E9C80
/* B60E10 800E9C70 8C6E0000 */   lw    $t6, ($v1)
/* B60E14 800E9C74 03E00008 */  jr    $ra
/* B60E18 800E9C78 00001025 */   move  $v0, $zero
/* B60E1C 800E9C7C 8C6E0000 */  lw    $t6, ($v1)
.L800E9C80:
/* B60E20 800E9C80 ADC40004 */  sw    $a0, 4($t6)
/* B60E24 800E9C84 8C6F0000 */  lw    $t7, ($v1)
/* B60E28 800E9C88 AC8F0000 */  sw    $t7, ($a0)
/* B60E2C 800E9C8C AC600000 */  sw    $zero, ($v1)
/* B60E30 800E9C90 8C980008 */  lw    $t8, 8($a0)
/* B60E34 800E9C94 2719FFFF */  addiu $t9, $t8, -1
/* B60E38 800E9C98 AC990008 */  sw    $t9, 8($a0)
/* B60E3C 800E9C9C 8C620008 */  lw    $v0, 8($v1)
/* B60E40 800E9CA0 03E00008 */  jr    $ra
/* B60E44 800E9CA4 00000000 */   nop   

