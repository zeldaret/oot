glabel func_800F4190
/* B6B330 800F4190 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6B334 800F4194 AFA50024 */  sw    $a1, 0x24($sp)
/* B6B338 800F4198 3C0E8013 */  lui   $t6, %hi(D_801333E0) # $t6, 0x8013
/* B6B33C 800F419C 3C0F8013 */  lui   $t7, %hi(D_801305B4) # $t7, 0x8013
/* B6B340 800F41A0 00802825 */  move  $a1, $a0
/* B6B344 800F41A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B348 800F41A8 AFA40020 */  sw    $a0, 0x20($sp)
/* B6B34C 800F41AC 25EF05B4 */  addiu $t7, %lo(D_801305B4) # addiu $t7, $t7, 0x5b4
/* B6B350 800F41B0 25CE33E0 */  addiu $t6, %lo(D_801333E0) # addiu $t6, $t6, 0x33e0
/* B6B354 800F41B4 3C078013 */  lui   $a3, %hi(D_801305B0) # $a3, 0x8013
/* B6B358 800F41B8 24E705B0 */  addiu $a3, %lo(D_801305B0) # addiu $a3, $a3, 0x5b0
/* B6B35C 800F41BC AFAE0010 */  sw    $t6, 0x10($sp)
/* B6B360 800F41C0 AFAF0014 */  sw    $t7, 0x14($sp)
/* B6B364 800F41C4 97A40026 */  lhu   $a0, 0x26($sp)
/* B6B368 800F41C8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B36C 800F41CC 24060004 */   li    $a2, 4
/* B6B370 800F41D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6B374 800F41D4 27BD0020 */  addiu $sp, $sp, 0x20
/* B6B378 800F41D8 03E00008 */  jr    $ra
/* B6B37C 800F41DC 00000000 */   nop   

