glabel func_800DBE74
/* B53014 800DBE74 30AE00FF */  andi  $t6, $a1, 0xff
/* B53018 800DBE78 000E7C00 */  sll   $t7, $t6, 0x10
/* B5301C 800DBE7C 3C010700 */  lui   $at, 0x700
/* B53020 800DBE80 01E1C025 */  or    $t8, $t7, $at
/* B53024 800DBE84 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B53028 800DBE88 03194025 */  or    $t0, $t8, $t9
/* B5302C 800DBE8C AC880000 */  sw    $t0, ($a0)
/* B53030 800DBE90 03E00008 */  jr    $ra
/* B53034 800DBE94 AC870004 */   sw    $a3, 4($a0)

