glabel func_8005B824
/* AD29C4 8005B824 3C0E8012 */  lui   $t6, %hi(D_8011DE20) # $t6, 0x8012
/* AD29C8 8005B828 AFA40000 */  sw    $a0, ($sp)
/* AD29CC 8005B82C 25CEDE20 */  addiu $t6, %lo(D_8011DE20) # addiu $t6, $t6, -0x21e0
/* AD29D0 8005B830 8DD80000 */  lw    $t8, ($t6)
/* AD29D4 8005B834 24020001 */  li    $v0, 1
/* AD29D8 8005B838 ACB80000 */  sw    $t8, ($a1)
/* AD29DC 8005B83C 8DCF0004 */  lw    $t7, 4($t6)
/* AD29E0 8005B840 ACAF0004 */  sw    $t7, 4($a1)
/* AD29E4 8005B844 8DD80008 */  lw    $t8, 8($t6)
/* AD29E8 8005B848 03E00008 */  jr    $ra
/* AD29EC 8005B84C ACB80008 */   sw    $t8, 8($a1)

