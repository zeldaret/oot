glabel func_800F68BC
/* B6DA5C 800F68BC AFA40000 */  sw    $a0, ($sp)
/* B6DA60 800F68C0 00042600 */  sll   $a0, $a0, 0x18
/* B6DA64 800F68C4 00042603 */  sra   $a0, $a0, 0x18
/* B6DA68 800F68C8 3C018013 */  lui   $at, %hi(D_8013060C)
/* B6DA6C 800F68CC 03E00008 */  jr    $ra
/* B6DA70 800F68D0 A024060C */   sb    $a0, %lo(D_8013060C)($at)

