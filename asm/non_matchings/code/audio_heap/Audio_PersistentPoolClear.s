glabel Audio_PersistentPoolClear
/* B555FC 800DE45C 8C8E0004 */  lw    $t6, 4($a0)
/* B55600 800DE460 AC800010 */  sw    $zero, 0x10($a0)
/* B55604 800DE464 AC800000 */  sw    $zero, ($a0)
/* B55608 800DE468 03E00008 */  jr    $ra
/* B5560C 800DE46C AC8E0008 */   sw    $t6, 8($a0)

