glabel func_8005B860
/* AD2A00 8005B860 AFA40000 */  sw    $a0, ($sp)
/* AD2A04 8005B864 8CCE0000 */  lw    $t6, ($a2)
/* AD2A08 8005B868 24020001 */  li    $v0, 1
/* AD2A0C 8005B86C ACAE0000 */  sw    $t6, ($a1)
/* AD2A10 8005B870 90CF0004 */  lbu   $t7, 4($a2)
/* AD2A14 8005B874 A0AF0004 */  sb    $t7, 4($a1)
/* AD2A18 8005B878 90D80005 */  lbu   $t8, 5($a2)
/* AD2A1C 8005B87C 03E00008 */  jr    $ra
/* AD2A20 8005B880 A0B80005 */   sb    $t8, 5($a1)

