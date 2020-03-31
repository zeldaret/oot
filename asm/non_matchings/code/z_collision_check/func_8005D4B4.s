glabel func_8005D4B4
/* AD4654 8005D4B4 AFA40000 */  sw    $a0, ($sp)
/* AD4658 8005D4B8 94AE0002 */  lhu   $t6, 2($a1)
/* AD465C 8005D4BC 35CF0001 */  ori   $t7, $t6, 1
/* AD4660 8005D4C0 03E00008 */  jr    $ra
/* AD4664 8005D4C4 A4AF0002 */   sh    $t7, 2($a1)

/* AD4668 8005D4C8 AFA40000 */  sw    $a0, ($sp)
/* AD466C 8005D4CC 94AE0002 */  lhu   $t6, 2($a1)
/* AD4670 8005D4D0 31CFFFFE */  andi  $t7, $t6, 0xfffe
/* AD4674 8005D4D4 03E00008 */  jr    $ra
/* AD4678 8005D4D8 A4AF0002 */   sh    $t7, 2($a1)

