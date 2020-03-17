glabel func_8005D3A4
/* AD4544 8005D3A4 AFA40000 */  sw    $a0, ($sp)
/* AD4548 8005D3A8 94AE0018 */  lhu   $t6, 0x18($a1)
/* AD454C 8005D3AC 24020001 */  li    $v0, 1
/* AD4550 8005D3B0 31CFFFFE */  andi  $t7, $t6, 0xfffe
/* AD4554 8005D3B4 03E00008 */  jr    $ra
/* AD4558 8005D3B8 A4AF0018 */   sh    $t7, 0x18($a1)

