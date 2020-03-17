glabel func_800AA840
/* B219E0 800AA840 AFA50004 */  sw    $a1, 4($sp)
/* B219E4 800AA844 AFA60008 */  sw    $a2, 8($sp)
/* B219E8 800AA848 AFA7000C */  sw    $a3, 0xc($sp)
/* B219EC 800AA84C 27AE0004 */  addiu $t6, $sp, 4
/* B219F0 800AA850 8DD80000 */  lw    $t8, ($t6)
/* B219F4 800AA854 27B90010 */  addiu $t9, $sp, 0x10
/* B219F8 800AA858 AC9800E8 */  sw    $t8, 0xe8($a0)
/* B219FC 800AA85C 8DCF0004 */  lw    $t7, 4($t6)
/* B21A00 800AA860 AC8F00EC */  sw    $t7, 0xec($a0)
/* B21A04 800AA864 8DD80008 */  lw    $t8, 8($t6)
/* B21A08 800AA868 AC9800F0 */  sw    $t8, 0xf0($a0)
/* B21A0C 800AA86C 8F290000 */  lw    $t1, ($t9)
/* B21A10 800AA870 AC8900F4 */  sw    $t1, 0xf4($a0)
/* B21A14 800AA874 8F280004 */  lw    $t0, 4($t9)
/* B21A18 800AA878 AC8800F8 */  sw    $t0, 0xf8($a0)
/* B21A1C 800AA87C 8F290008 */  lw    $t1, 8($t9)
/* B21A20 800AA880 AC8900FC */  sw    $t1, 0xfc($a0)
/* B21A24 800AA884 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* B21A28 800AA888 03E00008 */  jr    $ra
/* B21A2C 800AA88C E4840100 */   swc1  $f4, 0x100($a0)

