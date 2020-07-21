glabel func_800DBDB0
/* B52F50 800DBDB0 8FB90010 */  lw    $t9, 0x10($sp)
/* B52F54 800DBDB4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52F58 800DBDB8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52F5C 800DBDBC 3C010E00 */  lui   $at, 0xe00
/* B52F60 800DBDC0 01E1C025 */  or    $t8, $t7, $at
/* B52F64 800DBDC4 00065C00 */  sll   $t3, $a2, 0x10
/* B52F68 800DBDC8 30ECFFFF */  andi  $t4, $a3, 0xffff
/* B52F6C 800DBDCC 3328FFFF */  andi  $t0, $t9, 0xffff
/* B52F70 800DBDD0 03084825 */  or    $t1, $t8, $t0
/* B52F74 800DBDD4 016C6825 */  or    $t5, $t3, $t4
/* B52F78 800DBDD8 AC890000 */  sw    $t1, ($a0)
/* B52F7C 800DBDDC 03E00008 */  jr    $ra
/* B52F80 800DBDE0 AC8D0004 */   sw    $t5, 4($a0)

