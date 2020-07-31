glabel func_800DBE38
/* B52FD8 800DBE38 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B52FDC 800DBE3C 3C010300 */  lui   $at, 0x300
/* B52FE0 800DBE40 0005CC00 */  sll   $t9, $a1, 0x10
/* B52FE4 800DBE44 30C8FFFF */  andi  $t0, $a2, 0xffff
/* B52FE8 800DBE48 01C17825 */  or    $t7, $t6, $at
/* B52FEC 800DBE4C 03284825 */  or    $t1, $t9, $t0
/* B52FF0 800DBE50 AC8F0000 */  sw    $t7, ($a0)
/* B52FF4 800DBE54 03E00008 */  jr    $ra
/* B52FF8 800DBE58 AC890004 */   sw    $t1, 4($a0)

