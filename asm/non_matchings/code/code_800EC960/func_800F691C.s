glabel func_800F691C
/* B6DABC 800F691C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6DAC0 800F6920 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6DAC4 800F6924 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B6DAC8 800F6928 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6DACC 800F692C AFBF001C */  sw    $ra, 0x1c($sp)
/* B6DAD0 800F6930 AFA40020 */  sw    $a0, 0x20($sp)
/* B6DAD4 800F6934 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B6DAD8 800F6938 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B6DADC 800F693C 3084FFFF */  andi  $a0, $a0, 0xffff
/* B6DAE0 800F6940 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B6DAE4 800F6944 AFAE0014 */  sw    $t6, 0x14($sp)
/* B6DAE8 800F6948 AFA70010 */  sw    $a3, 0x10($sp)
/* B6DAEC 800F694C 0C03DA35 */  jal   func_800F68D4
/* B6DAF0 800F6950 24060004 */   li    $a2, 4
/* B6DAF4 800F6954 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6DAF8 800F6958 27BD0020 */  addiu $sp, $sp, 0x20
/* B6DAFC 800F695C 03E00008 */  jr    $ra
/* B6DB00 800F6960 00000000 */   nop   

