glabel func_800AA4FC
/* B2169C 800AA4FC 8CAF0000 */  lw    $t7, ($a1)
/* B216A0 800AA500 8C980120 */  lw    $t8, 0x120($a0)
/* B216A4 800AA504 AC8F0008 */  sw    $t7, 8($a0)
/* B216A8 800AA508 8CAE0004 */  lw    $t6, 4($a1)
/* B216AC 800AA50C 37190002 */  ori   $t9, $t8, 2
/* B216B0 800AA510 AC8E000C */  sw    $t6, 0xc($a0)
/* B216B4 800AA514 8CAF0008 */  lw    $t7, 8($a1)
/* B216B8 800AA518 AC8F0010 */  sw    $t7, 0x10($a0)
/* B216BC 800AA51C 8CAE000C */  lw    $t6, 0xc($a1)
/* B216C0 800AA520 AC990120 */  sw    $t9, 0x120($a0)
/* B216C4 800AA524 03E00008 */  jr    $ra
/* B216C8 800AA528 AC8E0014 */   sw    $t6, 0x14($a0)

