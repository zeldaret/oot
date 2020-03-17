glabel func_8005B65C
/* AD27FC 8005B65C 3C0E8012 */  lui   $t6, %hi(D_8011DE00) # $t6, 0x8012
/* AD2800 8005B660 AFA40000 */  sw    $a0, ($sp)
/* AD2804 8005B664 25CEDE00 */  addiu $t6, %lo(D_8011DE00) # addiu $t6, $t6, -0x2200
/* AD2808 8005B668 8DD80000 */  lw    $t8, ($t6)
/* AD280C 8005B66C 24020001 */  li    $v0, 1
/* AD2810 8005B670 ACB80000 */  sw    $t8, ($a1)
/* AD2814 8005B674 8DCF0004 */  lw    $t7, 4($t6)
/* AD2818 8005B678 ACAF0004 */  sw    $t7, 4($a1)
/* AD281C 8005B67C 8DD80008 */  lw    $t8, 8($t6)
/* AD2820 8005B680 ACB80008 */  sw    $t8, 8($a1)
/* AD2824 8005B684 8DCF000C */  lw    $t7, 0xc($t6)
/* AD2828 8005B688 ACAF000C */  sw    $t7, 0xc($a1)
/* AD282C 8005B68C 8DD80010 */  lw    $t8, 0x10($t6)
/* AD2830 8005B690 ACB80010 */  sw    $t8, 0x10($a1)
/* AD2834 8005B694 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD2838 8005B698 03E00008 */  jr    $ra
/* AD283C 8005B69C ACAF0014 */   sw    $t7, 0x14($a1)

