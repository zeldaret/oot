glabel func_80093708
/* B0A8A8 80093708 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B0A8AC 8009370C 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0A8B0 80093710 8FAF003C */  lw    $t7, 0x3c($sp)
/* B0A8B4 80093714 8FB80040 */  lw    $t8, 0x40($sp)
/* B0A8B8 80093718 AFBF0024 */  sw    $ra, 0x24($sp)
/* B0A8BC 8009371C AFAE0010 */  sw    $t6, 0x10($sp)
/* B0A8C0 80093720 AFAF0014 */  sw    $t7, 0x14($sp)
/* B0A8C4 80093724 0C024CDC */  jal   func_80093370
/* B0A8C8 80093728 AFB80018 */   sw    $t8, 0x18($sp)
/* B0A8CC 8009372C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B0A8D0 80093730 27BD0028 */  addiu $sp, $sp, 0x28
/* B0A8D4 80093734 03E00008 */  jr    $ra
/* B0A8D8 80093738 00000000 */   nop   

