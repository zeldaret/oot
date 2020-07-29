glabel func_800C0E70
/* B38010 800C0E70 AC850008 */  sw    $a1, 8($a0)
/* B38014 800C0E74 AC86000C */  sw    $a2, 0xc($a0)
/* B38018 800C0E78 AC870014 */  sw    $a3, 0x14($a0)
/* B3801C 800C0E7C 8FAE0014 */  lw    $t6, 0x14($sp)
/* B38020 800C0E80 24B8FFFF */  addiu $t8, $a1, -1
/* B38024 800C0E84 24D9FFFF */  addiu $t9, $a2, -1
/* B38028 800C0E88 AC8E0018 */  sw    $t6, 0x18($a0)
/* B3802C 800C0E8C 8FAF0010 */  lw    $t7, 0x10($sp)
/* B38030 800C0E90 AC800024 */  sw    $zero, 0x24($a0)
/* B38034 800C0E94 AC800028 */  sw    $zero, 0x28($a0)
/* B38038 800C0E98 AC98002C */  sw    $t8, 0x2c($a0)
/* B3803C 800C0E9C AC990030 */  sw    $t9, 0x30($a0)
/* B38040 800C0EA0 03E00008 */  jr    $ra
/* B38044 800C0EA4 AC8F0020 */   sw    $t7, 0x20($a0)

