glabel func_800F66C0
/* B6D860 800F66C0 AFA40000 */  sw    $a0, ($sp)
/* B6D864 800F66C4 00042600 */  sll   $a0, $a0, 0x18
/* B6D868 800F66C8 00042603 */  sra   $a0, $a0, 0x18
/* B6D86C 800F66CC 308E007F */  andi  $t6, $a0, 0x7f
/* B6D870 800F66D0 3C018013 */  lui   $at, %hi(D_80130614)
/* B6D874 800F66D4 03E00008 */  jr    $ra
/* B6D878 800F66D8 A02E0614 */   sb    $t6, %lo(D_80130614)($at)

