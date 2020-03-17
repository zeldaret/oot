glabel func_800C3E40
/* B3AFE0 800C3E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AFE4 800C3E44 AFA40018 */  sw    $a0, 0x18($sp)
/* B3AFE8 800C3E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AFEC 800C3E4C 3C048014 */  lui   $a0, %hi(D_80144C80) # $a0, 0x8014
/* B3AFF0 800C3E50 0C00084C */  jal   osSyncPrintf
/* B3AFF4 800C3E54 24844C80 */   addiu $a0, %lo(D_80144C80) # addiu $a0, $a0, 0x4c80
/* B3AFF8 800C3E58 0C03DB05 */  jal   func_800F6C14
/* B3AFFC 800C3E5C 00000000 */   nop   
/* B3B000 800C3E60 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B004 800C3E64 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B008 800C3E68 03E00008 */  jr    $ra
/* B3B00C 800C3E6C 00000000 */   nop   

