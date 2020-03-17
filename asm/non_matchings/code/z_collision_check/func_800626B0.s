glabel func_800626B0
/* AD9850 800626B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9854 800626B4 8FAE0030 */  lw    $t6, 0x30($sp)
/* AD9858 800626B8 8FAF0034 */  lw    $t7, 0x34($sp)
/* AD985C 800626BC AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9860 800626C0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AD9864 800626C4 0C01894C */  jal   func_80062530
/* AD9868 800626C8 AFAF0014 */   sw    $t7, 0x14($sp)
/* AD986C 800626CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9870 800626D0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9874 800626D4 03E00008 */  jr    $ra
/* AD9878 800626D8 00000000 */   nop   

