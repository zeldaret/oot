glabel func_800C0ED8
/* B38078 800C0ED8 AC850000 */  sw    $a1, ($a0)
/* B3807C 800C0EDC AC860004 */  sw    $a2, 4($a0)
/* B38080 800C0EE0 AC870010 */  sw    $a3, 0x10($a0)
/* B38084 800C0EE4 8FAE0010 */  lw    $t6, 0x10($sp)
/* B38088 800C0EE8 24AFFFFF */  addiu $t7, $a1, -1
/* B3808C 800C0EEC 24D8FFFF */  addiu $t8, $a2, -1
/* B38090 800C0EF0 AC800034 */  sw    $zero, 0x34($a0)
/* B38094 800C0EF4 AC800038 */  sw    $zero, 0x38($a0)
/* B38098 800C0EF8 AC8F003C */  sw    $t7, 0x3c($a0)
/* B3809C 800C0EFC AC980040 */  sw    $t8, 0x40($a0)
/* B380A0 800C0F00 03E00008 */  jr    $ra
/* B380A4 800C0F04 AC8E001C */   sw    $t6, 0x1c($a0)

