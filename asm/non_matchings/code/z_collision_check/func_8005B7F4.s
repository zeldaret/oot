glabel func_8005B7F4
/* AD2994 8005B7F4 AFA40000 */  sw    $a0, ($sp)
/* AD2998 8005B7F8 8CCE0000 */  lw    $t6, ($a2)
/* AD299C 8005B7FC 24020001 */  li    $v0, 1
/* AD29A0 8005B800 ACAE0000 */  sw    $t6, ($a1)
/* AD29A4 8005B804 90CF0004 */  lbu   $t7, 4($a2)
/* AD29A8 8005B808 A0AF0004 */  sb    $t7, 4($a1)
/* AD29AC 8005B80C 90D80005 */  lbu   $t8, 5($a2)
/* AD29B0 8005B810 03E00008 */  jr    $ra
/* AD29B4 8005B814 A0B80005 */   sb    $t8, 5($a1)

