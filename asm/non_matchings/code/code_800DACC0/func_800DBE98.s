glabel func_800DBE98
/* B53038 800DBE98 30AEFFFF */  andi  $t6, $a1, 0xffff
/* B5303C 800DBE9C 3C010702 */  lui   $at, 0x702
/* B53040 800DBEA0 01C17825 */  or    $t7, $t6, $at
/* B53044 800DBEA4 AC8F0000 */  sw    $t7, ($a0)
/* B53048 800DBEA8 03E00008 */  jr    $ra
/* B5304C 800DBEAC AC860004 */   sw    $a2, 4($a0)

