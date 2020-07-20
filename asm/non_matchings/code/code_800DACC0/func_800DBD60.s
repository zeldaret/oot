glabel func_800DBD60
/* B52F00 800DBD60 0005C400 */  sll   $t8, $a1, 0x10
/* B52F04 800DBD64 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52F08 800DBD68 3C0E1600 */  lui   $t6, 0x1600
/* B52F0C 800DBD6C 03194025 */  or    $t0, $t8, $t9
/* B52F10 800DBD70 AC8E0000 */  sw    $t6, ($a0)
/* B52F14 800DBD74 03E00008 */  jr    $ra
/* B52F18 800DBD78 AC880004 */   sw    $t0, 4($a0)

