glabel func_8005B76C
/* AD290C 8005B76C AFA40000 */  sw    $a0, ($sp)
/* AD2910 8005B770 90AE0010 */  lbu   $t6, 0x10($a1)
/* AD2914 8005B774 ACA00004 */  sw    $zero, 4($a1)
/* AD2918 8005B778 31CFFFF9 */  andi  $t7, $t6, 0xfff9
/* AD291C 8005B77C 03E00008 */  jr    $ra
/* AD2920 8005B780 A0AF0010 */   sb    $t7, 0x10($a1)

