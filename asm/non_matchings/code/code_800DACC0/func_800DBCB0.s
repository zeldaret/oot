glabel func_800DBCB0
/* B52E50 800DBCB0 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B52E54 800DBCB4 3C011100 */  lui   $at, 0x1100
/* B52E58 800DBCB8 0005CC00 */  sll   $t9, $a1, 0x10
/* B52E5C 800DBCBC 30C8FFFF */  andi  $t0, $a2, 0xffff
/* B52E60 800DBCC0 01C17825 */  or    $t7, $t6, $at
/* B52E64 800DBCC4 03284825 */  or    $t1, $t9, $t0
/* B52E68 800DBCC8 AC8F0000 */  sw    $t7, ($a0)
/* B52E6C 800DBCCC 03E00008 */  jr    $ra
/* B52E70 800DBCD0 AC890004 */   sw    $t1, 4($a0)

