glabel func_800DBB9C
/* B52D3C 800DBB9C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B52D40 800DBBA0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B52D44 800DBBA4 00A17024 */  and   $t6, $a1, $at
/* B52D48 800DBBA8 3C010200 */  lui   $at, 0x200
/* B52D4C 800DBBAC 01C17825 */  or    $t7, $t6, $at
/* B52D50 800DBBB0 AC8F0000 */  sw    $t7, ($a0)
/* B52D54 800DBBB4 03E00008 */  jr    $ra
/* B52D58 800DBBB8 AC860004 */   sw    $a2, 4($a0)

